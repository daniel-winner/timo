package com.crm.admin.calledallot.service.impl;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.repository.CalledAllotRepository;
import com.crm.admin.calledallot.service.CalledAllotService;
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
 * @author 段祥府
 * @date 2019/07/04
 */
@Service
public class CalledAllotServiceImpl implements CalledAllotService {
    @Override
    public CalledAllot getByCalledNum(String num) {
        return calledAllotRepository.findByCalledNum(num);
    }

    @Autowired
    private CalledAllotRepository calledAllotRepository;

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    @Override
    @Transactional
    public CalledAllot getById(Long id) {
        return calledAllotRepository.findById(id).orElse(null);
    }

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    @Override
    public Page<CalledAllot> getPageList(Example<CalledAllot> example) {
        // 创建分页对象
        PageRequest page = PageSort.pageRequest();
        return calledAllotRepository.findAll(example, page);
    }

    /**
     * 保存数据
     * @param calledAllot 实体对象
     */
    @Override
    public CalledAllot save(CalledAllot calledAllot) {
        return calledAllotRepository.save(calledAllot);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Boolean updateStatus(StatusEnum statusEnum, List<Long> idList) {
        return calledAllotRepository.updateStatus(statusEnum.getCode(), idList) > 0;
    }

    @Override
    public void updateCallNumAddOne(String cellednum) {
        calledAllotRepository.updateCallNumAddOne(cellednum);
    }
}