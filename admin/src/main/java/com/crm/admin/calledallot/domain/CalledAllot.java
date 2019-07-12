package com.crm.admin.calledallot.domain;

import com.crm.common.utils.StatusUtil;
import lombok.Data;
import org.hibernate.annotations.Where;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

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
 * @author 段祥府
 * @date 2019/07/04
 */
@Data
@Entity
@Table(name="crm_called_allot")
@EntityListeners(AuditingEntityListener.class)
//@Where(clause = StatusUtil.notDelete)
public class CalledAllot implements Serializable {
    // 主键ID
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    // 号码
    private String calledNum;
    // 客户名称
    private String customerName;
    //公司名称
    private String companyName;
    //职位
    private String position;
    // 业务员
    private String username;

    // 是否在紧商网注册
    private Byte isRegister;
    // 在紧商网注册时间
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date registerrTime;
    // 号码访问次数
    private Integer callsNum;
    // 号码分配时间
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date allotTime;
    // 号码导入时间
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date inputTime;
    // 备注
    @Lob
    @Column(columnDefinition="TEXT")
    private String remake;
    // 导入人
    private Long inputUser;
    // 分配人
    private Long allotUser;
    private Byte status =1;
    private Date createDate;

    @Override
    public String toString() {
        return "CalledAllot{" +
                "id=" + id +
                ", calledNum='" + calledNum + '\'' +
                ", customerName='" + customerName + '\'' +
                ", companyName='" + companyName + '\'' +
                ", position='" + position + '\'' +
                ", username='" + username + '\'' +
                ", isRegister=" + isRegister +
                ", registerrTime=" + registerrTime +
                ", callsNum=" + callsNum +
                ", allotTime=" + allotTime +
                ", inputTime=" + inputTime +
                ", remake='" + remake + '\'' +
                ", inputUser=" + inputUser +
                ", allotUser=" + allotUser +
                ", status=" + status +
                ", createDate=" + createDate +
                '}';
    }
}