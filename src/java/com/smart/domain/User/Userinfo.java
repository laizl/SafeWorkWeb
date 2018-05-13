package com.smart.domain.User;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Meng on 2017/1/7.
 */
@Entity
@Table(name = "USERINFO")
public class Userinfo implements Serializable {
    String USERNAME;  // --用户名
    String PASSWORD;  //  --密码
    String realName;  //--真实姓名
    String EMAIL;     //   --emall
    String TELEPHONE;  //    --电话号码
    String UNIT;       //   --单位
    String address;    // --通讯地址
    Integer userGrade;  //    --用户等级  0：超级管理员  1：普通管理员 2：普通用户
    Integer userStatus;  //  --用户状态  0：离线  1：在线
    int userID;

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME;
    }

    public String getPASSWORD() {
        return PASSWORD;
    }

    public void setPASSWORD(String PASSWORD) {
        this.PASSWORD = PASSWORD;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getTELEPHONE() {
        return TELEPHONE;
    }

    public void setTELEPHONE(String TELEPHONE) {
        this.TELEPHONE = TELEPHONE;
    }

    public String getUNIT() {
        return UNIT;
    }

    public void setUNIT(String UNIT) {
        this.UNIT = UNIT;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(int userGrade) {
        this.userGrade = userGrade;
    }

    public void setUserStatus(int userStatus) {
        this.userStatus = userStatus;
    }

    public Integer getUserStatus() {
        return userStatus;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }
}