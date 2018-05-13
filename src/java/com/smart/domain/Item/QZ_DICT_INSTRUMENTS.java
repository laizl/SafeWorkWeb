package com.smart.domain.Item;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Meng on 2017/3/20.
 */
@Entity
@Table(name = "QZ_DICT_INSTRUMENTS")
public class QZ_DICT_INSTRUMENTS {
    /*仪器信息表*/
    String INSTRCODE;   //   --仪器代码

    String INSTRNAME;   //   --仪器名称

    String INSTRTYPE; //   --仪器型号

    String MANUFNAME ;//    --生产厂商名称

    String MANUFADDRESS; //--生产厂商地址

    String MANUFCONTACT; //--联系方式

    String RECTYPE; /*  default '数字'  NOT NULL  ENABLE,--仪器记录方式 取值为模拟或数字*/

    String INSTRPEFORMANCE; //--性能指标描述


    @Id
    @GeneratedValue(generator="system-uuid")
    @GenericGenerator(name="system-uuid", strategy = "uuid")
    public String getINSTRCODE() {
        return INSTRCODE;
    }

    public void setINSTRCODE(String INSTRCODE) {
        this.INSTRCODE = INSTRCODE;
    }

    public String getINSTRNAME() {
        return INSTRNAME;
    }

    public void setINSTRNAME(String INSTRNAME) {
        this.INSTRNAME = INSTRNAME;
    }

    public String getINSTRTYPE() {
        return INSTRTYPE;
    }

    public void setINSTRTYPE(String INSTRTYPE) {
        this.INSTRTYPE = INSTRTYPE;
    }

    public String getMANUFNAME() {
        return MANUFNAME;
    }

    public void setMANUFNAME(String MANUFNAME) {
        this.MANUFNAME = MANUFNAME;
    }

    public String getMANUFADDRESS() {
        return MANUFADDRESS;
    }

    public void setMANUFADDRESS(String MANUFADDRESS) {
        this.MANUFADDRESS = MANUFADDRESS;
    }

    public String getMANUFCONTACT() {
        return MANUFCONTACT;
    }

    public void setMANUFCONTACT(String MANUFCONTACT) {
        this.MANUFCONTACT = MANUFCONTACT;
    }

    public String getRECTYPE() {
        return RECTYPE;
    }

    public void setRECTYPE(String RECTYPE) {
        this.RECTYPE = RECTYPE;
    }

    public String getINSTRPEFORMANCE() {
        return INSTRPEFORMANCE;
    }

    public void setINSTRPEFORMANCE(String INSTRPEFORMANCE) {
        this.INSTRPEFORMANCE = INSTRPEFORMANCE;
    }
}
