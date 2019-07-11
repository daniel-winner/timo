package com.crm.admin.system.message;

import com.crm.common.data.PageSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService{
    @Autowired
    private MessageRepository messageRepository;
    @Override
    public int newMessage(String username) {
        return messageRepository.countByIsReadAndRecipient(0,username);
    }

    @Override
    public Message save(Message accessRecord) {
        return messageRepository.save(accessRecord);
    }

    @Override
    public Message getById(Long id) {
        return messageRepository.findById(id).orElse(null);
    }

    @Override
    public List<Message> getNotReadMessages(String username) {
        return messageRepository.findAllByIsReadAndRecipient(0,username);
    }

    @Override
    public List<Message> getSortByIsReadAndExigency(String username) {
        List<Sort.Order> orders=new ArrayList<Sort.Order>();
        orders.add( new Sort.Order(Sort.Direction. ASC, "is_read"));
        orders.add( new Sort.Order(Sort.Direction. DESC, "create_time"));
//        Pageable pageable= new PageRequest(0, 20, new Sort(orders));
        Pageable pageable = new PageRequest(0, 20,new Sort(Sort.Direction.ASC,"create_time"));
        Page<Message> messages = messageRepository.findAll(pageable);
        messages.getContent().forEach(message -> System.out.println(message.toString()));
        return messages.getContent();
    }

    @Override
    public Page<Message> getPageList(Example<Message> example) {
        PageRequest page = PageSort.pageRequest(20,"createTime", Sort.Direction.ASC);

        return messageRepository.findAll(example, page);
    }

    @Override
    public int updateStatusById(Long id) {
        return messageRepository.updateIsReadById(id);
    }
}
