package com.smart.domain.Item;

/**
 * Created by Meng on 2017/3/20.
 */
public class QZ_DICT_INSTRPARAMETERS {
    String INSTRCode;//   --仪器编号
    String STATIONCode;//   --台站代码
    String MEASDATE;//    --启用时间
    String INVALIDDATE;// --失效时间
    String PARANAME;//   --参数名
    String PARAVALUE;//     --参数值
    String PARADESC ;//    --详细信息

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

    public String getMEASDATE() {
        return MEASDATE;
    }

    public void setMEASDATE(String MEASDATE) {
        this.MEASDATE = MEASDATE;
    }

    public String getINVALIDDATE() {
        return INVALIDDATE;
    }

    public void setINVALIDDATE(String INVALIDDATE) {
        this.INVALIDDATE = INVALIDDATE;
    }

    public String getPARANAME() {
        return PARANAME;
    }

    public void setPARANAME(String PARANAME) {
        this.PARANAME = PARANAME;
    }

    public String getPARAVALUE() {
        return PARAVALUE;
    }

    public void setPARAVALUE(String PARAVALUE) {
        this.PARAVALUE = PARAVALUE;
    }

    public String getPARADESC() {
        return PARADESC;
    }

    public void setPARADESC(String PARADESC) {
        this.PARADESC = PARADESC;
    }
}
