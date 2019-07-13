package com.crm.admin.configuration;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.Map;

@Slf4j
@Component
public class InitMemberCount implements CommandLineRunner {

    @Autowired
    @Qualifier(value = "secodJdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        String sql = "select count(1) cun from member";
        Map<String, Object> map = jdbcTemplate.queryForMap(sql);
        if (map.get("cun")!=null){
            MemberRegisterSynchronousSchedule.memberSize=(Long)map.get("cun");
            log.info("加载紧商网会员数量:{}",MemberRegisterSynchronousSchedule.memberSize);
        }else{
            log.info("加载紧商网会员数量失败");
            throw new RuntimeException("加载紧商网会员数量失败");
        }

    }
}
