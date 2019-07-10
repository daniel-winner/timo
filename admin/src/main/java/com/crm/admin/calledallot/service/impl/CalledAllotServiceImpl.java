package com.crm.admin.calledallot.service.impl;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.repository.CalledAllotRepository;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.service.AccessRecordService;
import com.crm.common.data.PageSort;
import com.crm.common.enums.Laber;
import com.crm.common.enums.StatusEnum;
import com.crm.common.enums.VisitResult;
import com.crm.common.enums.VisitType;
import com.crm.component.excel.ExcelUtil;
import com.crm.component.shiro.ShiroUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
@Service
@Slf4j
public class CalledAllotServiceImpl implements CalledAllotService {
    @Override
    public CalledAllot getByCalledNum(String num) {
        return calledAllotRepository.findByCalledNum(num);
    }

    @Autowired
    private CalledAllotRepository calledAllotRepository;

    @Autowired
    private CalledAllotService calledAllotService;

    @Autowired
    private AccessRecordService accessRecordService;

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
    public void updateCallsNum(String cellednum,int size) {
        calledAllotRepository.updateCallsNum(cellednum,size);
    }
    @Override
    public void updateCallsNumAddOne(String cellednum) {
        calledAllotRepository.updateCallsNumAddOne(cellednum);
    }

    /**
     * 获取行内容 保存到号码库中
     * @param row
     * @return
     */
    @Transactional
    public Map<String ,Integer> saveToCalledAllot(Row row, Date date) {

        Map<String, Integer> map = new HashMap<>();
        String calledNum = ExcelUtil.toStringValue(row.getCell(0));
        if (StringUtils.isBlank(calledNum)){
            map.put("NULL",1);
            return map;
        }else{
            log.info("读取到号码：{}",calledNum);
            try {
                String customerName = ExcelUtil.toStringValue(row.getCell(1));
                String position = ExcelUtil.toStringValue(row.getCell(2));
                String companyName = ExcelUtil.toStringValue(row.getCell(3));
                String isRegister = ExcelUtil.toStringValue(row.getCell(4));
                Date registerTime = row.getCell(5)==null?null:row.getCell(5).getDateCellValue();
                String username = ExcelUtil.toStringValue(row.getCell(6));
                String lab = ExcelUtil.toStringValue(row.getCell(7));
                String type = ExcelUtil.toStringValue(row.getCell(8));
                String result = ExcelUtil.toStringValue(row.getCell(9));
                String record = ExcelUtil.toStringValue(row.getCell(10));
                Date allotTime =  row.getCell(11)==null?null:row.getCell(11).getDateCellValue();
                String remark = ExcelUtil.toStringValue(row.getCell(12));
                CalledAllot byCalledMun = calledAllotService.getByCalledNum(calledNum);

                if(byCalledMun==null){
                    byCalledMun= new CalledAllot();
                    byCalledMun.setCalledNum(calledNum);
                    byCalledMun.setCustomerName(customerName);
                    byCalledMun.setCompanyName(companyName);
                    byCalledMun.setPosition(position);
                    byCalledMun.setIsRegister(isRegister==null?0:getRegister(isRegister));
                    byCalledMun.setRegisterrTime(isRegister==null?null:registerTime);
                    byCalledMun.setUsername(username);
                    byCalledMun.setRemake(remark);
                    byCalledMun.setAllotTime(allotTime);
                    byCalledMun.setInputTime(date);
                    byCalledMun.setInputUser(ShiroUtil.getSubject().getId());
                    byCalledMun.setCreateDate(date);
                    byCalledMun.setCallsNum(0);
                    calledAllotService.save(byCalledMun);
                    map.put("CalledAllot",1);
                }
                //添加访问记录
                if(StringUtils.isNotBlank(lab)&&StringUtils.isNotBlank(type)&&StringUtils.isNotBlank(result)) {
                    AccessRecord accessRecord = new AccessRecord();
                    accessRecord.setUsername(username);
                    accessRecord.setCelledNum(calledNum);
                    accessRecord.setCreateDate(date);
                    accessRecord.setCustomerName(customerName);
                    accessRecord.setLab(Laber.getCodeByLab(lab));
                    accessRecord.setType(VisitType.getCodeByType(type));
                    Integer code = VisitResult.getCodeByLab(result);
                    log.info("code:{},result:{}",code,result);
                    accessRecord.setResult(VisitResult.getCodeByLab(result));
                    accessRecord.setRemark(remark);
                    accessRecord.setRecord(record);
                    accessRecordService.save(accessRecord);
                    calledAllotService.updateCallsNumAddOne(calledNum);
                    map.put("AccessRecord",1);
                }
            } catch (Exception e) {
                e.printStackTrace();
                map.put("ERROR",1);
            }
        }
        return map;
    }

    /**
     * 注册转换
     * @param isRegister
     * @return
     */
    private Byte getRegister(String isRegister) {
        Byte b = 0;
        switch (isRegister){
            case "1": b = 1;break;
            case "是": b = 1;break;
            default:b=0;
        }
        return b;
    }
}