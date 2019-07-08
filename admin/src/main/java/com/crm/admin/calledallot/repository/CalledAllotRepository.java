package com.crm.admin.calledallot.repository;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.modules.system.repository.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
public interface CalledAllotRepository extends BaseRepository<CalledAllot, Long> {

    CalledAllot findByCalledNum(String nul);

    @Query(value = "update crm_called_allot set calls_num = calls_num+1 where called_num= :phoneNum",nativeQuery = true)
    void updateCallNumAddOne(@Param("phoneNum")String phoneNum);
}