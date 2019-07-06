package com.crm.component.actionLog.action.model;

import com.crm.modules.system.enums.ActionLogEnum;
import lombok.Getter;

/**
 * @author dxf
 * @date 2018/10/15
 */
@Getter
public class LoginType extends BusinessType{
    // 日志类型
    protected Byte type = ActionLogEnum.LOGIN.getCode();

    public LoginType(String message) {
        super(message);
    }

    public LoginType(String name, String message) {
        super(name, message);
    }
}
