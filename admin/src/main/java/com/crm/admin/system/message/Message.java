package com.crm.admin.system.message;

import lombok.Data;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@Table(name="sys_message")
@EntityListeners(AuditingEntityListener.class)
public class Message implements Serializable {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    //标题
    private String title;
    //消息内容
    @Column(columnDefinition="TEXT")
    private String content;
    //消息接收人
    private String recipient;
    //消息接受者类型
    private Integer recipientType;
    //消息是否已读
    private Integer isRead;
    private Date createTime;
    private Date readTime;

//    private Long updateBy;
    //消息紧急状态
    private Integer exigency;

}
