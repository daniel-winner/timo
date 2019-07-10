package com.crm.common.enums;

public enum VisitResult {
    JX(1,"经销商"),
    MY(2,"贸易商"),
    SC(3,"生产商"),
    JX_SC(4,"经销商+生产商"),
    MY_SC(5,"贸易商+生产商"),
    JX_MY(6,"经销商+贸易商"),
    DM(7,"店面"),
    TB(8,"淘宝/阿里巴巴"),
    USER(9,"使用商"),
    OTHER(0,"其他");


    VisitResult() {
    }

    VisitResult(Integer code, String lab) {
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
    /**
     * 根据枚举类的值获取code
     * @param lab
     * @return
     */
    public static Integer getCodeByLab(String lab){
        for(int i =0; i < VisitResult.values().length; i++){
            if (lab.equalsIgnoreCase(VisitResult.values()[i].getLab())){
                return  VisitResult.values()[i].getCode();
            }
        }
        return 0;
    }
}
