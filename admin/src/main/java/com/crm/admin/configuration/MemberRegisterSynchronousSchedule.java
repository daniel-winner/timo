package com.crm.admin.configuration;

import com.crm.admin.calledallot.domain.CalledAllot;
import com.crm.admin.calledallot.service.CalledAllotService;
import com.crm.admin.system.message.Message;
import com.crm.admin.system.message.MessageService;
import com.crm.common.utils.DateTimeUtils;
import com.crm.modules.system.domain.User;
import com.crm.modules.system.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Component
@EnableScheduling
public class MemberRegisterSynchronousSchedule {

    public static Long memberSize = null;

    @Autowired
    @Qualifier(value = "secodJdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private CalledAllotService calledAllotService;
    @Autowired
    private MessageService messageService;
    @Autowired
    private UserService userService;

    @Scheduled(fixedDelay = 60000l)
    public void excule() throws ParseException {

        //获取所有运营部人员
        List<User> allSales = userService.getAllSales("6");

        String sql = "select count(1) cun from member;";
        Map<String, Object> map = jdbcTemplate.queryForMap(sql);
        //紧商网注册总数
        if (map.get("cun") != null) {
            Long cun = (Long) map.get("cun");
            if (cun > memberSize) {
                String getNewMemberSql = "select mobile,realname,createdate,labelname from member order by createdate limit 9999 offset " + memberSize;
                List<Map<String, Object>> mapList = jdbcTemplate.queryForList(getNewMemberSql);
                if (mapList != null && mapList.size() > 0) {
                    for (Map<String, Object> m : mapList) {
                        if (m.get("mobile") != null && StringUtils.isNotBlank(m.get("mobile").toString())) {
                            CalledAllot calledAllot = calledAllotService.getByCalledNum(m.get("mobile").toString());
                            //创建提醒消息
                            if (calledAllot != null) {
                                String nickname = "";
                                for (User user:allSales ) {
                                    if (user.getUsername().equals(calledAllot.getUsername())){
                                        nickname=user.getNickname();
                                        break;
                                    }
                                }
                                Message message = new Message();
                                message.setIsRead(0);
                                message.setTitle("紧商网有新的用户注册:" + calledAllot.getCalledNum() + " ，请到紧商网绑定");
                                message.setContent("分配给业务员:"+nickname+" 的用户:" + calledAllot.getCalledNum() + " 于" + m.get("createdate").toString() + "在紧商网注册，请到紧商网进行绑定");
                                message.setRecipient("yyb");
                                message.setRecipientType(2);
                                message.setCreateTime(new Date());
                                message.setExigency(1);
                                messageService.save(message);
                                calledAllot.setIsRegister((byte) 1);
                                calledAllot.setRegisterrTime(DateTimeUtils.strToDate(m.get("createdate").toString()));
                                calledAllotService.save(calledAllot);
                            }
                        }
                    }
                }
                memberSize = cun;
            }
        }
    }
//    @Scheduled(fixedDelay = 1000l)
//    public void demo(){
//        System.out.println(DateFormatUtils.format(new Date(),"yyyy-MM-dd HH-mm-ss"));
//    }

}
