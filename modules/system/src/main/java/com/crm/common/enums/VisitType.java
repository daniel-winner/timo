package com.crm.common.enums;

public enum VisitType {

    PHONE(1,"电话");


    VisitType() {
    }

    VisitType(Integer code, String type) {
        this.code = code;
        this.type = type;
    }
    private Integer code;
    private String type;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getLab() {
        return type;
    }

    public void setLab(String type) {
        this.type = type;
    }

}
