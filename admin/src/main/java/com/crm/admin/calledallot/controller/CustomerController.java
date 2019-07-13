package com.crm.admin.calledallot.controller;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.service.AccessRecordService;
import com.crm.common.utils.EntityBeanUtil;
import com.crm.common.utils.ResultVoUtil;
import com.crm.component.shiro.ShiroUtil;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.repository.UserRepository;
import com.crm.modules.system.service.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("customer")
@Controller
public class CustomerController {

    @Autowired
    private UserService userService;
    @Autowired
    private CalledAllotService calledAllotService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private AccessRecordService accessRecordService;

    @GetMapping("index")
    @RequiresPermissions("customer:index")
    public String index(Model model,CalledAllot calledAllot){
        calledAllot.setUsername(ShiroUtil.getSubject().getUsername());
        calledAllot.setStatus((byte)1);
        ExampleMatcher matcher = ExampleMatcher.matching();
        Example<CalledAllot> example = Example.of(calledAllot, matcher);
        Page<CalledAllot> list = calledAllotService.getPageList(example);
        // 封装数据
        model.addAttribute("list", list.getContent());
        model.addAttribute("page", list);

        return "/customer/index";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("customer:edit")
    public String toEdit(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<User> allSales = userService.getAllSales("6");
        model.addAttribute("users",allSales);
        CalledAllot user = calledAllotService.getById(calledAllot.getId());

        model.addAttribute("calledAllot", user);

        model.addAttribute("calledAllot",calledAllot);
        return "/customer/edit";
    }

    /**
     * 跳转到编辑页面
     */
    @PostMapping("/edit")
    @RequiresPermissions("customer:edit")
    @ResponseBody
    public Object toEdit( CalledAllot calledAllot) {
        CalledAllot  allot =calledAllotService.getByCalledNum(calledAllot.getCalledNum());
        if (allot==null){
            return ResultVoUtil.error(-1,"更新用户信息失败，请重试");
        }else {
            allot.setRegisterrTime(calledAllot.getRegisterrTime());
            allot.setIsRegister(calledAllot.getIsRegister());
            allot.setRemake(calledAllot.getRemake());
            calledAllotService.save(allot);
        }

        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("customer:detail")
    public String toDetail(@PathVariable("id") CalledAllot calledAllot, Model model) {
        List<AccessRecord> list =accessRecordService.getByCalledNum(calledAllot.getCalledNum());
        model.addAttribute("calledAllot", calledAllot);
        model.addAttribute("list", list);
        return "/calledallot/detail";
    }


}
