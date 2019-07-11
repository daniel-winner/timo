package com.crm.admin.system.message;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author dxf
 * @date 2019/07/08
 */
public interface MessageRepository extends JpaRepository<Message,Long> {

   int  countByIsReadAndRecipient(Integer isRead,String username);

   List<Message> findAllByIsReadAndRecipient(int i,String username);

   @Modifying
   @Transactional
   @Query(value = "update sys_message set is_read = 1 where id =:id",nativeQuery = true)
   int updateIsReadById(Long id);

}
