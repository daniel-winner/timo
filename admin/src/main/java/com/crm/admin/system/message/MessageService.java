package com.crm.admin.system.message;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;

import java.util.List;

public interface MessageService {

    /**
     * 根据用户名获取新消息个数
     * @param username
     * @return
     */
    int newMessage(String username);

    /**
     * 保存消息
     * @param accessRecord
     * @return
     */
    Message save(Message accessRecord);

    /**
     * 根据id获取消息
     * @param id
     * @return
     */
    Message getById(Long id);

    /**
     * 获取所有未读的消息
     ** @param username
     * @return
     */
    List<Message> getNotReadMessages(String username);

    /**
     * 获取所有未读的消息根据是否已读和紧急状态排序
     ** @param username
     * @return
     */
    List<Message> getSortByIsReadAndExigency(String username);

    /**
     * 获取分页
     * @param example
     * @return
     */
    Page<Message> getPageList(Example<Message> example);

    int updateStatusById(Long id);
}
