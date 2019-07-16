package com.crm.admin.calledallot.controller;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.repository.CalledAllotRepository;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.service.AccessRecordService;
import com.crm.common.enums.Laber;
import com.crm.common.enums.StatusEnum;
import com.crm.common.enums.VisitResult;
import com.crm.common.enums.VisitType;
import com.crm.common.utils.ResultVoUtil;
import com.crm.common.utils.StatusUtil;
import com.crm.common.vo.ResultVo;
import com.crm.component.excel.ExcelUtil;
import com.crm.component.shiro.ShiroUtil;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.repository.UserRepository;
import com.crm.modules.system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.*;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
@Controller
@RequestMapping("/calledallot/calledAllot")
@Slf4j
public class CalledAllotController {

    @Autowired
    private CalledAllotService calledAllotService;
    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private AccessRecordService accessRecordService;

    @Value("${project.upload.file-path}")
    private String uploadpath;

    /**
     * 列表页面
     */
    @GetMapping("/index")
    @RequiresPermissions("calledallot:calledAllot:index")
    public String index(Model model, CalledAllot calledAllot) {

        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users", allSales);
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching();
        // 获取数据列表
        Example<CalledAllot> example = Example.of(calledAllot, matcher);
        Page<CalledAllot> list = calledAllotService.getPageList(example);
        List<CalledAllot> content = list.getContent();
        for (CalledAllot ca : content) {
            if (StringUtils.isBlank(ca.getUsername())) {
                ca.setUsername(" ");
            } else {
                for (User user : allSales) {
                    if (user.getUsername().equals(ca.getUsername())) {
                        ca.setUsername(user.getNickname());
                        break;
                    }
                }
            }
        }
        // 封装数据
        model.addAttribute("list", content);
        model.addAttribute("page", list);
        return "/calledallot/index";
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("calledallot:calledAllot:add")
    public String toAdd() {
        return "/calledallot/add";
    }

    /**
     * 跳转到分配页面
     */
    @GetMapping("/allot")
    @RequiresPermissions("calledallot:calledAllot:allot")
    public String toAllot(Model model, @RequestParam(value = "ids", required = false) List<Integer> ids) {
        List<User> allEmplooyee = userService.getAllSales("6");
        model.addAttribute("allEmplooyee", allEmplooyee);
        model.addAttribute("ids", ids);
        return "/calledallot/allot";
    }

    /**
     * 分配
     */
    @PostMapping("/allot")
    @ResponseBody
    @RequiresPermissions("calledallot:calledAllot:allot")
    @Transactional
    public ResultVo editPassword(String username,
                                 @RequestParam(value = "ids", required = false) List<Long> ids) {
        for (Long id : ids) {
            CalledAllot byId = calledAllotService.getById(id);
            byId.setUsername(username);
            byId.setAllotUser(ShiroUtil.getSubject().getId());
            byId.setAllotTime(new Date());
            calledAllotService.save(byId);
        }
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 导入文件
     */
    @PostMapping("/upload")
    @RequiresPermissions("calledallot:calledAllot:add")
    @ResponseBody
    public Object uploadExcel(MultipartFile file, HttpServletRequest request) {
        try {
            if (!file.isEmpty()) {
                String filename = file.getOriginalFilename();
                String substring = filename.substring(filename.indexOf(".") + 1, filename.length());
                log.info("filename:{},substring:{}", filename, substring);
                if (!"xls".equalsIgnoreCase(substring) && !"xlsx".equalsIgnoreCase(substring)) {
                    return ResultVoUtil.error(-1, "上传文件类型不符，请上传正确的excel文件");
                }
                log.info(uploadpath);
                String ss = uploadpath + new Date().getTime() + "_" + filename;
                log.info(ss);
                file.transferTo(new File(ss));
                InputStream inputStream = (new FileInputStream(new File(ss)));
                Workbook workbook = null;
                if ("xlsx".equalsIgnoreCase(substring)) {
                    workbook = new XSSFWorkbook(inputStream);
                } else {
                    workbook = new HSSFWorkbook(inputStream);
                }
                Sheet sheet = workbook.getSheetAt(0);
                if (workbook == null) {
                    return ResultVoUtil.error("上传的文件错误,请检查后再上传");
                }
                if (sheet != null) {
                    //判断是否使用系统提供的模板
                    if (!isTemplate(sheet.getRow(0))) {
                        return ResultVoUtil.error("上传的文件错误,请检查后再上传");
                    } else {
                        DecimalFormat df = new DecimalFormat("#");
                        sheet.getLastRowNum();
                        Date now = new Date();
                        Map<String, Object> count = new HashMap<>();
                        count.put("SUCCESS_CALLED_ALLOT", 0);//保存号码条数
                        count.put("SUCCESS_ACCESS_RECORD", 0);//保存回访记录条数
                        count.put("NULL_ROW", 0);//空行数量
                        count.put("ERROR_NUM", 0);//异常数量
                        for (int i = 1; i < sheet.getLastRowNum(); i++) {
                            Row row = sheet.getRow(i);
                            Map<String, Integer> map = calledAllotService.saveToCalledAllot(row, now);
                            for (String key : map.keySet()) {//CalledAllot NULL AccessRecord
                                if ("CalledAllot".equals(key)) {
                                    count.put("SUCCESS_CALLED_ALLOT", (Integer) count.get("SUCCESS_CALLED_ALLOT") + 1);
                                } else if ("AccessRecord".equals(key)) {
                                    count.put("SUCCESS_ACCESS_RECORD", (Integer) count.get("SUCCESS_ACCESS_RECORD") + 1);
                                } else if ("NULL".equals(key)) {
                                    count.put("NULL_ROW", (Integer) count.get("NULL_ROW") + 1);
                                } else if ("ERROR".equals(key)) {
                                    count.put("ERROR_NUM", (Integer) count.get("ERROR_NUM") + 1);
                                }
                            }
                        }
                        /*for (String key:count.keySet()) {//CalledAllot NULL AccessRecord
                            log.info("key:{},value:{}",key,count.get(key));
                        }*/
                        return ResultVoUtil.success(count);
                    }
                }
            } else {
                return ResultVoUtil.error("处理Excel文本异常");
            }
        } catch (IOException e) {
            e.printStackTrace();
            log.error("处理Excel文本异常");
            return ResultVoUtil.error("处理Excel文本异常");
        }

        return ResultVoUtil.success();
    }

    /**
     * 检测模板中的首行顺序是否一致
     *
     * @param row
     * @return
     */
    private boolean isTemplate(Row row) {
        String[] ss = new String[]{"号码", "客户名称", "职位", "公司名", "是否在紧商网注册", "在紧商网注册时间", "业务员", "标签", "类型", "回访结果", "回访记录", "分配时间", "备注"};
        boolean b = true;
        if (row == null) {
            return false;
        }
        for (int i = 0; i < ss.length; i++) {
            if (row.getCell(i).getStringCellValue() == null) {
                b = false;
                break;
            } else {
                if (!row.getCell(i).getStringCellValue().contains(ss[i])) {
                    b = false;
                    break;
                }
            }
        }
        return b;
    }

    /**
     * 下载导入模板
     */
    @GetMapping("/downloadtemplate")
    @ResponseBody
    public void downloadtemplate(HttpServletRequest request, HttpServletResponse response) {
        try {
//            String classpath = ResourceUtils.CLASSPATH_URL_PREFIX;
//            File file = ResourceUtils.getFile(classpath+"templates/files/名单导入模板.xlsx");
            File file = ResourceUtils.getFile("/home/phone_lib_sys/名单导入模板.xlsx");
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-disposition", "attachment; filename=" + java.net.URLEncoder.encode("名单导入模板.xlsx", "UTF-8"));
            if (!file.exists()) {
                throw new Exception("文件不存在");
            }
            OutputStream out = response.getOutputStream();
            FileInputStream in = new FileInputStream(file);
            byte[] buffer = new byte[4096];
            int length;
            while ((length = in.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
            in.close();
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
//            ResultVoUtil.error(-1,"下载数据异常");
        }
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("calledallot:calledAllot:edit")
    public String toEdit(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<User> allSales = userService.getAllSales("6");
        CalledAllot user = calledAllotService.getById(calledAllot.getId());

        model.addAttribute("calledAllot", user);
        model.addAttribute("users", allSales);
        model.addAttribute("calledAllot", calledAllot);
        return "/calledallot/add";
    }

    /**
     * 保存添加/修改的数据
     *
     * @param
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultVo save(CalledAllot calledAllot) {
        // 复制保留无需修改的数据
        if (calledAllot.getCalledNum() != null) {
            CalledAllot beCalledAllot = calledAllotService.getByCalledNum(calledAllot.getCalledNum());
            if (beCalledAllot != null) {
                return ResultVoUtil.error("已存在号码:" + calledAllot.getCalledNum() + "，不允许重新添加");
            } else {
                calledAllotService.save(calledAllot);
            }
        }
        // 保存数据
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 保存添加/修改的数据
     *
     * @param
     */
    @PostMapping("/edit")
    @RequiresPermissions({"calledallot:calledAllot:edit"})
    @ResponseBody
    public ResultVo edit(CalledAllot calledAllot) {
        User user = ShiroUtil.getSubject();
        log.info(user == null ? "获取登录用户信息为空" : user.toString());
        // 复制保留无需修改的数据
        if (calledAllot.getId() != null) {
            CalledAllot beCalledAllot = calledAllotService.getById(calledAllot.getId());
            log.info(beCalledAllot.toString());
            beCalledAllot.setAllotUser(calledAllot.getAllotUser());
            beCalledAllot.setUsername(calledAllot.getUsername());
            beCalledAllot.setAllotTime(new Date());
            beCalledAllot.setIsRegister(calledAllot.getIsRegister());
            beCalledAllot.setRemake(calledAllot.getRemake());
            beCalledAllot.setAllotUser(user == null ? null : user.getId());
            // 保存数据
            calledAllotService.save(beCalledAllot);
        }
        return ResultVoUtil.SAVE_SUCCESS;
    }


    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("calledallot:calledAllot:detail")
    public String toDetail(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<AccessRecord> list = accessRecordService.getByCalledNum(calledAllot.getCalledNum());
        model.addAttribute("calledAllot", calledAllot);
        model.addAttribute("list", list);
        return "/calledallot/detail";
    }


    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("calledallot:calledAllot:status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> ids) {
        // 更新状态
        StatusEnum statusEnum = StatusUtil.getStatusEnum(param);
        if (calledAllotService.updateStatus(statusEnum, ids)) {
            return ResultVoUtil.success(statusEnum.getMessage() + "成功");
        } else {
            return ResultVoUtil.error(statusEnum.getMessage() + "失败，请重新操作");
        }
    }
}