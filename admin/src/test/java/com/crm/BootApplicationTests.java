package com.crm;

import com.crm.admin.calledallot.repository.CalledAllotRepository;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.repository.AccessRecordRepository;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class BootApplicationTests {

    @Autowired
    private CalledAllotService calledAllotService;

    @Autowired
    private AccessRecordRepository accessRecordRepository;
    @Test
    public void contextLoads() throws Exception{
        calledAllotService.updateCallNumAddOne("17602173727");
//        AccessRecord accessRecord = new AccessRecord();
//        accessRecord.setId(1001L);
//        accessRecord.setUsername("test");
//        AccessRecord save = accessRecordRepository.save(accessRecord);
//        System.out.println(save.toString());
//        List<User> allSales = userService.getAllSales(17);
//        allSales.forEach(user -> System.out.println(user.toString()));
//        File directory = new File("");//参数为空
//        String courseFile = directory.getCanonicalPath();//标准的路径 ;
//        String author =directory.getAbsolutePath();//绝对路径;
//        System.out.println(courseFile);
//        System.out.println(author);
    }

}
