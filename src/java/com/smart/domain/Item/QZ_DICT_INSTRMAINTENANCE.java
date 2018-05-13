package com.smart.domain.Item;

/**
 * Created by Meng on 2017/3/20.
 */
public class QZ_DICT_INSTRMAINTENANCE {
    /*台站仪器运行维护信息表*/
/*每台仪器每次故障或维修为一条记录*/

    String INSTRCode; // --仪器代码
    String STATIONCode;//  --台站代码
    String STARTDATE;//  --故障开始时间
    String ENDDATE;  // --故障结束时间
    String MAINTTIME;//--维修维护时间
    String MAINTDESC;// --维护内容
    String MAINTMAN;// --维修人
    String MAINTUNIT; //--维修机构
    String MAINTRESULT; //--维修结果
    String DUTYMAN;  //    --送修人
    String NOTE;    //   --备注

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

    public String getMAINTTIME() {
        return MAINTTIME;
    }

    public void setMAINTTIME(String MAINTTIME) {
        this.MAINTTIME = MAINTTIME;
    }

    public String getMAINTDESC() {
        return MAINTDESC;
    }

    public void setMAINTDESC(String MAINTDESC) {
        this.MAINTDESC = MAINTDESC;
    }

    public String getMAINTMAN() {
        return MAINTMAN;
    }

    public void setMAINTMAN(String MAINTMAN) {
        this.MAINTMAN = MAINTMAN;
    }

    public String getMAINTUNIT() {
        return MAINTUNIT;
    }

    public void setMAINTUNIT(String MAINTUNIT) {
        this.MAINTUNIT = MAINTUNIT;
    }

    public String getMAINTRESULT() {
        return MAINTRESULT;
    }

    public void setMAINTRESULT(String MAINTRESULT) {
        this.MAINTRESULT = MAINTRESULT;
    }

    public String getDUTYMAN() {
        return DUTYMAN;
    }

    public void setDUTYMAN(String DUTYMAN) {
        this.DUTYMAN = DUTYMAN;
    }

    public String getNOTE() {
        return NOTE;
    }

    public void setNOTE(String NOTE) {
        this.NOTE = NOTE;
    }
}
