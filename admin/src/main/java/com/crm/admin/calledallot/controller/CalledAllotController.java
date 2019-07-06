package com.crm.admin.calledallot.controller;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.common.enums.StatusEnum;
import com.crm.common.utils.ResultVoUtil;
import com.crm.common.utils.StatusUtil;
import com.crm.common.vo.ResultVo;
import com.crm.component.shiro.ShiroUtil;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.util.List;

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

    /**
     * 列表页面
     */
    @GetMapping("/index")
    @RequiresPermissions("calledallot:calledAllot:index")
    public String index(Model model, CalledAllot calledAllot) {

        List<User> allSales = userService.getAllSales(17);
        model.addAttribute("users",allSales);
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching();

        // 获取数据列表
        Example<CalledAllot> example = Example.of(calledAllot, matcher);
        Page<CalledAllot> list = calledAllotService.getPageList(example);


        // 封装数据
        model.addAttribute("list", list.getContent());
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
    public String toAllot( Model model, @RequestParam(value = "ids", required = false) List<Integer> ids) {
        List<User> allEmplooyee = userService.getAllSales(17);
        model.addAttribute("allEmplooyee",allEmplooyee);
        model.addAttribute("ids",ids);
        return "/calledallot/allot";
    }

    /**
     * 导入文件
     */
    @PostMapping("/upload")
    @RequiresPermissions("calledallot:calledAllot:add")
    @ResponseBody
    public Object uploadExcel(MultipartFile file,HttpServletRequest request) {
        try {
            if(!file.isEmpty()) {
                String filename = file.getOriginalFilename();
                String substring = filename.substring(filename.indexOf(".")+1, filename.length());
                log.info("filename:{},substring:{}",filename,substring);
                if(!"xls".equalsIgnoreCase(substring)&&!"xlsx".equalsIgnoreCase(substring)){
                    return ResultVoUtil.error(-1,"上传文件类型不符，请上传正确的excel文件");
                }
                String ss = "D:/IDEA-workspace/Timo/admin/src/main/resources/upload/"+new Date().getTime()+"_" +filename;
                log.info(ss);
                file.transferTo(new File(ss));
                InputStream inputStream = file.getInputStream();
                Workbook workbook = null;
                if("xlsx".equalsIgnoreCase(substring)){
                    workbook = new HSSFWorkbook(inputStream);
                }else{
                    workbook =  new XSSFWorkbook(inputStream);
                }
                Sheet sheet = workbook.getSheetAt(0);
                Row row = sheet.getRow(0);
                Cell cell = row.getCell(0);
                if (cell!=null){
                    String cellValue = cell.getStringCellValue();
                }

            }else {

            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * 下载导入模板
     */
    @GetMapping("/downloadtemplate")
    public Object downloadtemplate(HttpServletRequest request, HttpServletResponse response) {
        log.info("系统路径：{}", ResourceUtils.CLASSPATH_URL_PREFIX);
            try {
            String classpath = ResourceUtils.CLASSPATH_URL_PREFIX;
            File file = ResourceUtils.getFile(classpath+"templates/files/名单导入模板.xlsx");
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-disposition","attachment; filename=" + java.net.URLEncoder.encode("名单导入模板.xlsx", "UTF-8"));
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
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            ResultVoUtil.error(-1,"下载数据异常");
        }

        return null;
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("calledallot:calledAllot:edit")
    public String toEdit(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<User> allSales = userService.getAllSales(17);
        CalledAllot user = calledAllotService.getById(calledAllot.getId());

        model.addAttribute("calledAllot", user);
        model.addAttribute("users",allSales);
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
            CalledAllot beCalledAllot = calledAllotService.getByCalledMun(calledAllot.getCalledNum());
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
        log.info(user==null?"获取登录用户信息为空":user.toString());
        // 复制保留无需修改的数据
        if (calledAllot.getId() != null) {
            CalledAllot beCalledAllot = calledAllotService.getById(calledAllot.getId());
            log.info(beCalledAllot.toString());
            beCalledAllot.setAllotUser(calledAllot.getAllotUser());
            beCalledAllot.setUserID(calledAllot.getUserID());
            beCalledAllot.setAllotTime(new Date());
            beCalledAllot.setIsRegister(calledAllot.getIsRegister());
            beCalledAllot.setRemake(calledAllot.getRemake());
            beCalledAllot.setAllotUser(user==null?null:user.getId());
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
        model.addAttribute("calledAllot", calledAllot);
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