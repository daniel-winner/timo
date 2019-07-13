package com.crm.admin.system.controller;

import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.system.message.Message;
import com.crm.admin.system.message.MessageService;
import com.crm.common.utils.ResultVoUtil;
import com.crm.component.shiro.ShiroUtil;
import lombok.extern.slf4j.Slf4j;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("message")
public class MessageController {

    @Autowired
    private MessageService messageService;

    @GetMapping("count")
    public String toMessageWindow(Model model){
        List<Message> messages = messageService.getNotReadMessages(ShiroUtil.getSubject().getUsername());
        model.addAttribute("messages",messages);

        return "/system/message/message";
    }
    @GetMapping("get_news")
    @ResponseBody
    public Object news(){
        List<Message> messages = messageService.getNotReadMessages(ShiroUtil.getSubject().getUsername());
        return ResultVoUtil.success(messages.size());
    }
    @GetMapping("index")
    public String getMessagesPage(Model model,Message message){
        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching();
        message.setRecipient(ShiroUtil.getSubject().getUsername());
        Example<Message> example = Example.of(message, matcher);
        Page<Message> messages = messageService.getPageList(example);
        model.addAttribute("messages",messages.getContent());
        model.addAttribute("page", messages);
        return "/system/message/index";
    }

    @GetMapping("read/{id}")
    public String read(Model model, @PathVariable("id")Long id){
        Message message = messageService.getById(id);
        int i = messageService.updateStatusById(id);
        model.addAttribute("message",message);
        return  "/system/message/read";
    }
    @GetMapping("readed/{id}")
    @ResponseBody
    public Integer readed(@PathVariable("id")String id){
        return messageService.updateStatusById(Long.parseLong(id));
    }
}
