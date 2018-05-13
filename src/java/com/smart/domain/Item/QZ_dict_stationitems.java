package com.smart.domain.Item;

import javax.persistence.*;

/**
 * Created by Meng on 2017/3/20.
 */

public class QZ_dict_stationitems {

    String STATIONCode;         //--台站代码
    String ITEMCode;           //--测项分量代码
    String instrCode;          //--仪器代码
    String SAMPLERATE;         //--采样率代码
    double ANALOGORDIGITAL;    //--模拟观测还是数字化观测 0表示模拟观测  1表示数字化观测 缺省为1

    public String getSTATIONCode() {
        return STATIONCode;
    }

    public void setSTATIONCode(String STATIONCode) {
        this.STATIONCode = STATIONCode;
    }

    public String getITEMCode() {
        return ITEMCode;
    }

    public void setITEMCode(String ITEMCode) {
        this.ITEMCode = ITEMCode;
    }

    public String getInstrCode() {
        return instrCode;
    }

    public void setInstrCode(String instrCode) {
        this.instrCode = instrCode;
    }

    public String getSAMPLERATE() {
        return SAMPLERATE;
    }

    public void setSAMPLERATE(String SAMPLERATE) {
        this.SAMPLERATE = SAMPLERATE;
    }

    public double getANALOGORDIGITAL() {
        return ANALOGORDIGITAL;
    }

    public void setANALOGORDIGITAL(double ANALOGORDIGITAL) {
        this.ANALOGORDIGITAL = ANALOGORDIGITAL;
    }

    public String getSTARTDATE() {
        return STARTDATE;
    }

    public void setSTARTDATE(String STARTDATE) {
        this.STARTDATE = STARTDATE;
    }

    public String getENDDATE() {
        return ENDDATE;
    }

    public void setENDDATE(String ENDDATE) {
        this.ENDDATE = ENDDATE;
    }

    public String getNOTE() {
        return NOTE;
    }

    public void setNOTE(String NOTE) {
        this.NOTE = NOTE;
    }

    String STARTDATE;          //   --表中数据的起始时间
    String ENDDATE;            //--表中数据的结束时间
    String NOTE;              //  --备注
}
