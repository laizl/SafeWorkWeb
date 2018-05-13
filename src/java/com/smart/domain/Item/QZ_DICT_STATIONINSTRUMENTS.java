package com.smart.domain.Item;

import oracle.sql.BLOB;

/**
 * Created by Meng on 2017/3/20.
 */
/*台站仪器信息表*/
/*一台仪器为一条记录*/
public class QZ_DICT_STATIONINSTRUMENTS {
     String INSTRCode; // --仪器代码
     String STATIONCode;  // --台站代码
     double STACKNO;//--观测墩号
    String itemCodeStr;//   --仪器的可测的测项分量  用空格分隔
    String SAMPLERATE; //--采样率
    String OUTDATE;   //   --出厂日期
    String STARTDATE; //   --启用日期
    String ENDDATE; //    --停测日期
    double INSTRPROJECT; //   --仪器类型
    String INSTRIP;    //   --IP地址
    String INSTRMASK; //  --子网掩码
    String INSTRGATEWAY;  //   --网关
    double INSTRPORT;   //   --端口号
    BLOB INSTRMAP;   //   --仪器布设图
    String DCUNITCODE;// --仪器单位代码
    String USERNAME;   //   --用户名
    String PASSWORD;   //    --密码
    String NOTE;   //--备注

    public String getINSTRCode() {
        return INSTRCode;
    }

    public void setINSTRCode(String INSTRCode) {
        this.INSTRCode = INSTRCode;
    }

    public String getSTATIONCode() {
        return STATIONCode;
    }

    public void setSTATIONCode(String STATIONCode) {
        this.STATIONCode = STATIONCode;
    }

    public double getSTACKNO() {
        return STACKNO;
    }

    public void setSTACKNO(double STACKNO) {
        this.STACKNO = STACKNO;
    }

    public String getItemCodeStr() {
        return itemCodeStr;
    }

    public void setItemCodeStr(String itemCodeStr) {
        this.itemCodeStr = itemCodeStr;
    }

    public String getSAMPLERATE() {
        return SAMPLERATE;
    }

    public void setSAMPLERATE(String SAMPLERATE) {
        this.SAMPLERATE = SAMPLERATE;
    }

    public String getOUTDATE() {
        return OUTDATE;
    }

    public void setOUTDATE(String OUTDATE) {
        this.OUTDATE = OUTDATE;
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

    public double getINSTRPROJECT() {
        return INSTRPROJECT;
    }

    public void setINSTRPROJECT(double INSTRPROJECT) {
        this.INSTRPROJECT = INSTRPROJECT;
    }

    public String getINSTRIP() {
        return INSTRIP;
    }

    public void setINSTRIP(String INSTRIP) {
        this.INSTRIP = INSTRIP;
    }

    public String getINSTRMASK() {
        return INSTRMASK;
    }

    public void setINSTRMASK(String INSTRMASK) {
        this.INSTRMASK = INSTRMASK;
    }

    public String getINSTRGATEWAY() {
        return INSTRGATEWAY;
    }

    public void setINSTRGATEWAY(String INSTRGATEWAY) {
        this.INSTRGATEWAY = INSTRGATEWAY;
    }

    public double getINSTRPORT() {
        return INSTRPORT;
    }

    public void setINSTRPORT(double INSTRPORT) {
        this.INSTRPORT = INSTRPORT;
    }

    public BLOB getINSTRMAP() {
        return INSTRMAP;
    }

    public void setINSTRMAP(BLOB INSTRMAP) {
        this.INSTRMAP = INSTRMAP;
    }

    public String getDCUNITCODE() {
        return DCUNITCODE;
    }

    public void setDCUNITCODE(String DCUNITCODE) {
        this.DCUNITCODE = DCUNITCODE;
    }

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

    public String getNOTE() {
        return NOTE;
    }

    public void setNOTE(String NOTE) {
        this.NOTE = NOTE;
    }
}
