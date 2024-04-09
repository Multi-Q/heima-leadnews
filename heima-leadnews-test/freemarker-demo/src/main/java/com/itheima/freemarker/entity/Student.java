package com.itheima.freemarker.entity;

import lombok.Data;

import java.util.Date;

/**
 * @author QRH
 * @date 2024/4/8 23:15
 * @description TODO
 */
@Data
public class Student {
    private String name;//姓名
    private int age;//年龄
    private Date birthday;//生日
    private Float money;//钱包
}
