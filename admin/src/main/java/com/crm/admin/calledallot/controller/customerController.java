package com.crm.admin.calledallot.controller;

import com.crm.component.shiro.ShiroUtil;
import com.crm.modules.system.domain.User;
import io.swagger.models.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("customer")
@Controller
public class customerController {

    @GetMapping("index")
    public String index(Model model){
        User subject = ShiroUtil.getSubject();
        if (subject==null){
            return "/login";
        }

        return "/customer/index";
    }
}
