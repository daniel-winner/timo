package com.crm.admin.record.service.impl;

import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.repository.AccessRecordRepository;
import com.crm.admin.record.service.AccessRecordService;
import com.crm.common.data.PageSort;
import com.crm.common.enums.StatusEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author dxf
 * @date 2019/07/08
 */
@Service
public class AccessRecordServiceImpl implements AccessRecordService {

    @Autowired
    private AccessRecordRepository accessRecordRepository;

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    @Override
    @Transactional
    public AccessRecord getById(Long id) {
        return accessRecordRepository.findById(id).orElse(null);
    }

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    @Override
    public Page<AccessRecord> getPageList(Example<AccessRecord> example) {
        // 创建分页对象
        PageRequest page = PageSort.pageRequest();
        return accessRecordRepository.findAll(example, page);
    }

    /**
     * 保存数据
     * @param accessRecord 实体对象
     */
    @Override
    public AccessRecord save(AccessRecord accessRecord) {
        return accessRecordRepository.save(accessRecord);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Boolean updateStatus(StatusEnum statusEnum, List<Long> idList) {
        return accessRecordRepository.updateStatus(statusEnum.getCode(), idList) > 0;
    }

    @Override
    public List<AccessRecord> getByCalledNum(String calledNum) {
        return  accessRecordRepository.findAllByCelledNum(calledNum);
    }
}