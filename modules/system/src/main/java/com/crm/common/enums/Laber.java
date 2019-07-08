package com.crm.common.enums;

public enum Laber {
    A_P(1,"A+"),
    A(2,"A"),
    B_P(3,"B+"),
    B(4,"B"),
    C(5,"C"),
    F(6,"F"),
    T(7,"T"),
    S(8,"S");


    Laber() {
    }

    Laber(Integer code, String lab) {
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
