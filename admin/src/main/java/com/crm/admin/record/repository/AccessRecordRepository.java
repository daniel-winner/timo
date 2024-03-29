package com.crm.admin.record.repository;

import com.crm.admin.record.domain.AccessRecord;
import com.crm.modules.system.repository.BaseRepository;

import java.util.List;

/**
 * @author dxf
 * @date 2019/07/08
 */
public interface AccessRecordRepository extends BaseRepository<AccessRecord, Long> {

    List<AccessRecord> findAllByCelledNum(String calledNum);
}