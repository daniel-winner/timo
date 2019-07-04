package com.crm.admin.calledallot.repository;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.modules.system.repository.BaseRepository;

/**
 * @author 段祥府
 * @date 2019/07/04
 */
public interface CalledAllotRepository extends BaseRepository<CalledAllot, Long> {

    CalledAllot findByCalledNum(String nul);
}