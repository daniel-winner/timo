package com.crm.admin.record.controller;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.service.AccessRecordService;
import com.crm.admin.record.validator.AccessRecordValid;
import com.crm.common.enums.StatusEnum;
import com.crm.common.utils.EntityBeanUtil;
import com.crm.common.utils.ResultVoUtil;
import com.crm.common.utils.StatusUtil;
import com.crm.common.vo.ResultVo;
import com.crm.component.shiro.ShiroUtil;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

/**
 * @author dxf
 * @date 2019/07/08
 */
@Slf4j
@Controller
@RequestMapping("/record")
public class AccessRecordController {

    @Autowired
    private AccessRecordService accessRecordService;

    @Autowired
    private UserService userService;

    @Autowired
    private CalledAllotService calledAllotService;
    /**
     * 列表页面
     */
    @GetMapping("/index")
    @RequiresPermissions("record:index")
    public String index(Model model, AccessRecord accessRecord) {

        accessRecord.setStatus(null);
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching();
        // 获取数据列表
        Example<AccessRecord> example = Example.of(accessRecord, matcher);
        Page<AccessRecord> list = accessRecordService.getPageList(example);

        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users",allSales);
        // 封装数据
        model.addAttribute("list", list.getContent());
        model.addAttribute("page", list);
        return "/record/index";
    }


    /**
     * 添加跳转到添加页面
     */
    @GetMapping("/add/{id}")
    @RequiresPermissions("record:add")
    public String toAdd(@PathVariable("id") AccessRecord accessRecord, Model model) {
        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users",allSales);
        model.addAttribute("accessRecord", accessRecord);
        return "/record/add";
    }
    /**
     * 添加跳转到添加页面
     */
    @GetMapping("/add_record/{id}")
    @RequiresPermissions("record:add")
    public String toAddRecord(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users",allSales);
        model.addAttribute("calledAllot", calledAllot);
        return "/record/addRecord";
    }
    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("record:edit")
    public String toEdit(@PathVariable("id") AccessRecord accessRecord, Model model) {
        model.addAttribute("accessRecord", accessRecord);
        return "/record/add";
    }
    //保存修改的数据
    @PostMapping("/edit")
    @RequiresPermissions("record:edit")
    public Object Edit(AccessRecord accessRecord) {
        if (accessRecord.getId()==null){
            return ResultVoUtil.error(-1,"未发现要修改的数据");
        }
        accessRecordService.save(accessRecord);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("record:add")
    public String toAdd(Model model) {
        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users",allSales);
        return "/record/add";
    }


    /**
     * 保存添加
     */
    @PostMapping("/add")
    @RequiresPermissions("record:add")
    @ResponseBody
    @Transactional
    public ResultVo save( AccessRecord accessRecord) {
        if(StringUtils.isBlank(accessRecord.getCelledNum())){
            return ResultVoUtil.error(-1,"保存用户失败，号码为空");
        }
        accessRecord.setCreateDate(new Date());
        accessRecord.setUsername(ShiroUtil.getSubject().getUsername());
        // 保存数据
        accessRecordService.save(accessRecord);
        calledAllotService.updateCallsNumAddOne(accessRecord.getCelledNum());
        return ResultVoUtil.SAVE_SUCCESS;
    }
//    @PostMapping("/add")
//    @RequiresPermissions("record:add")
//    @ResponseBody
//    @Transactional
//    public ResultVo save( AccessRecord accessRecord) {
//        System.out.println(accessRecord.toString());
////        // 复制保留无需修改的数据
//        if (accessRecord.getId() != null) {
//            AccessRecord beAccessRecord = accessRecordService.getById(accessRecord.getId());
//            EntityBeanUtil.copyProperties(beAccessRecord, accessRecord);
//        }
//        CalledAllot byCalledMun = calledAllotService.getByCalledNum(accessRecord.getCelledNum());
//        if(byCalledMun!=null) {
//            byCalledMun.setCallsNum(byCalledMun.getCallsNum() + 1);
//            calledAllotService.save(byCalledMun);
//        }
//        accessRecord.setCreateDate(new Date());
//        accessRecord.setUsername(ShiroUtil.getSubject().getUsername());
//        log.info(accessRecord.toString());
//        // 保存数据
//        accessRecordService.save(accessRecord);
//        return ResultVoUtil.SAVE_SUCCESS;
//    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("record:detail")
    public String toDetail(@PathVariable("id") AccessRecord accessRecord, Model model) {
        model.addAttribute("accessRecord",accessRecord);
        return "/record/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("record:status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> ids) {
        // 更新状态
        StatusEnum statusEnum = StatusUtil.getStatusEnum(param);
        if (accessRecordService.updateStatus(statusEnum, ids)) {
            return ResultVoUtil.success(statusEnum.getMessage() + "成功");
        } else {
            return ResultVoUtil.error(statusEnum.getMessage() + "失败，请重新操作");
        }
    }
}