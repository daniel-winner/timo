package com.crm.common.enums;

public enum VisitType {

    PHONE(1,"电话");


    VisitType() {
    }

    VisitType(Integer code, String lab) {
        this.code = code;
        this.lab = lab;
    }
    private Integer code;
    private String lab;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getLab() {
        return lab;
    }

    public void setLab(String lab) {
        this.lab = lab;
    }

}
