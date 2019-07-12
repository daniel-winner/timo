package com.crm.admin.record.domain;

import com.crm.common.data.PageSort;
import com.crm.common.utils.StatusUtil;
import lombok.Data;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 * @author dxf
 * @date 2019/07/08
 */
@Data
@Entity
@Table(name="crm_access_record")
@EntityListeners(AuditingEntityListener.class)
public class AccessRecord implements Serializable {
    // 主键ID
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    // 客户名称
    private String customerName;
    // 手机号
    private String celledNum;
    // 标签
    private Integer lab;
    // 类型
    private Integer type;
    // 回访记录
//    @Lob
    @Column(columnDefinition="TEXT")
    private String record;
    // 备注
    @Column(columnDefinition="TEXT")
    private String remark;
    // 创建时间
    @CreatedDate
    private Date createDate;
    // 业务员
    private String username;

    private Integer result;

    private Byte status = 0;

    @Override
    public String toString() {
        return "AccessRecord{" +
                "id=" + id +
                ", customerName='" + customerName + '\'' +
                ", celledNum='" + celledNum + '\'' +
                ", lab=" + lab +
                ", type=" + type +
                ", record='" + record + '\'' +
                ", remark='" + remark + '\'' +
                ", createDate=" + createDate +
                ", username='" + username + '\'' +
                ", status=" + status +
                ", result=" + result +
                '}';
    }


}