package com.crm.admin.record.service;

import com.crm.admin.record.domain.AccessRecord;
import com.crm.common.enums.StatusEnum;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author dxf
 * @date 2019/07/08
 */
public interface AccessRecordService {

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    Page<AccessRecord> getPageList(Example<AccessRecord> example);

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    AccessRecord getById(Long id);

    /**
     * 保存数据
     * @param accessRecord 实体对象
     */
    AccessRecord save(AccessRecord accessRecord);

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Transactional
    Boolean updateStatus(StatusEnum statusEnum, List<Long> idList);

    /**
     * 根据号码获取所有的回访记录
     * @param calledNum
     * @return
     */
    List<AccessRecord> getByCalledNum(String calledNum);

}