package com.crm.admin.calledallot.service;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.common.enums.StatusEnum;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
public interface CalledAllotService {

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    Page<CalledAllot> getPageList(Example<CalledAllot> example);

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    CalledAllot getById(Long id);

    /**
     * 根据号码查询数据
     * @param num 号码
     */
    CalledAllot getByCalledNum(String num);

    /**
     * 保存数据
     * @param calledAllot 实体对象
     */
    CalledAllot save(CalledAllot calledAllot);

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Transactional
    Boolean updateStatus(StatusEnum statusEnum, List<Long> idList);


    /**
     * 更新被访问次数
     */
    void updateCallsNum(String cellednum,int size);
    void updateCallsNumAddOne(String cellednum);
    /**
     * 获取行内容 保存到号码库中
     * @param row
     * @return
     */
    public Map<String ,Integer> saveToCalledAllot(Row row, Date date);

    Page<CalledAllot> getPageList(CalledAllot calledAllot);
}