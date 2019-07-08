package com.crm.admin.calledallot.controller;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.service.CalledAllotService;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @GetMapping("index")
    @RequiresPermissions("customer:index")
    public String index(Model model,CalledAllot calledAllot){
        User subject = ShiroUtil.getSubject();
        if (subject==null){
            return "/login";
        }
        calledAllot.setUsername(subject.getUsername());
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching();
        matcher.withMatcher("allotUser", new ExampleMatcher.GenericPropertyMatcher().exact());
        // 获取数据列表
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
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("customer:detail")
    public String toDetail(@PathVariable("id") CalledAllot calledAllot, Model model) {
        model.addAttribute("calledAllot", calledAllot);
        return "/customer/detail";
    }
}
