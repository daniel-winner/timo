package com.crm.devtools.generate.domain;

import lombok.Data;

/**
 * @author dxf
 * @date 2018/10/21
 */
@Data
public class Template {
    private boolean entity;
    private boolean controller;
    private boolean service;
    private boolean repository;
    private boolean validator;
    private boolean index;
    private boolean add;
    private boolean detail;
}
