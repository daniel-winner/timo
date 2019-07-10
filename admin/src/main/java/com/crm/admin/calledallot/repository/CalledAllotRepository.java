package com.crm.admin.calledallot.repository;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.modules.system.repository.BaseRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
public interface CalledAllotRepository extends BaseRepository<CalledAllot, Long> {

    CalledAllot findByCalledNum(String nul);

    @Modifying
    @Transactional
    @Query(value = "update crm_called_allot set calls_num = ?2 where called_num= ?1",nativeQuery = true)
    void updateCallsNum(String phoneNum,int size);
    @Modifying
    @Transactional
    @Query(value = "update crm_called_allot set calls_num = calls_num+1 where called_num= :phoneNum",nativeQuery = true)
    void updateCallsNumAddOne(@Param("phoneNum")String phoneNum);


}