package com.crm;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.repository.CalledAllotRepository;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.record.domain.AccessRecord;
import com.crm.admin.record.repository.AccessRecordRepository;
import com.crm.admin.system.message.Message;
import com.crm.admin.system.message.MessageService;
import com.crm.common.utils.DateTimeUtils;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.time.DateUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class BootApplicationTests {


    @Autowired
    @Qualifier("secodJdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private CalledAllotService calledAllotService;

    @Autowired
    private CalledAllotRepository calledAllotRepository;
    @Autowired
    private AccessRecordRepository accessRecordRepository;
    @Autowired
    private MessageService messageService;

    @Test
    public void saveAndRead() {
        CalledAllot call = new CalledAllot();
        call.setCalledNum("7895461230");
        call.setStatus((byte) 1);
        call.setCallsNum(0);
        CalledAllot save = calledAllotService.save(call);
        System.out.println(save.toString());
        CalledAllot byCalledNum = calledAllotService.getByCalledNum("7895461230");
        System.out.println(byCalledNum.toString());
        CalledAllot byCalledNum1 = calledAllotService.getByCalledNum("7895461230");
        System.out.println(byCalledNum1.toString());
    }

    @Test
    public void contextLoads() throws Exception {
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

    @Test
    public void dateSource() {
        int count = jdbcTemplate.queryForObject("select count(1) from member ", Integer.class);
        System.out.println(count);
    }

    @Test
    public void saveMessage() throws ParseException {

        /*String getNewMemberSql = "select mobile,realname,createdate,labelname from member  order by createdate limit 9999 offset " + 18860;
        List<Map<String, Object>> mapList = jdbcTemplate.queryForList(getNewMemberSql);
        for (int i = 0; i < mapList.size(); i++) {
            System.out.println(mapList.get(i).get("mobile").toString());
            System.out.println((Date)mapList.get(i).get("createdate"));
            System.out.println(mapList.get(i).get("realname"));
            System.out.println(mapList.get(i).get("labelname").toString());
        }*/
        CalledAllot calledAllot = calledAllotService.getByCalledNum("13606133888");
        Message message = new Message();
        message.setIsRead(0);
        message.setTitle("紧商网有新的用户注册{"+calledAllot.getCalledNum()+"}，请到紧商网绑定");
        message.setContent("分配给你的用户{"+calledAllot.getCalledNum()+"}于"+""+"在紧商网注册，请到紧商网进行绑定");
        message.setRecipient(calledAllot.getUsername()==null?"yyb":calledAllot.getUsername());
        message.setRecipientType(2);
        message.setCreateTime(new Date());
        message.setExigency(1);
        messageService.save(message);
        calledAllot.setIsRegister((byte) 1);
        calledAllot.setRegisterrTime(DateTimeUtils.strToDate("2019-07-12 04:38:29"));
        calledAllotService.save(calledAllot);
    }

}
