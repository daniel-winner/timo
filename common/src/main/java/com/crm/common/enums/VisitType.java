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

    public static Integer getCodeByType(String type){
        for(int i =0; i < VisitType.values().length; i++){
            if (type.equalsIgnoreCase(VisitType.values()[i].getLab())){
                return  VisitType.values()[i].getCode();
            }
        }
        return 0;
    }

}
