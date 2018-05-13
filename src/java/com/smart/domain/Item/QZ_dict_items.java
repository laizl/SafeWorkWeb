package com.smart.domain.Item;

import oracle.sql.CHAR;

/**
 * Created by Meng on 2017/3/20.
 */
public class QZ_dict_items {
    String itemCode;     //  --测项分量代码
    String itemName;     //   --测项分量名称
    String ITEMCode_6;  //  --测项分量6位代码
    CHAR ITEMCode_2;    //   --测项分量2位代码
    String UNIT;        //    --量纲

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getITEMCode_6() {
        return ITEMCode_6;
    }

    public void setITEMCode_6(String ITEMCode_6) {
        this.ITEMCode_6 = ITEMCode_6;
    }

    public CHAR getITEMCode_2() {
        return ITEMCode_2;
    }

    public void setITEMCode_2(CHAR ITEMCode_2) {
        this.ITEMCode_2 = ITEMCode_2;
    }

    public String getUNIT() {
        return UNIT;
    }

    public void setUNIT(String UNIT) {
        this.UNIT = UNIT;
    }

    public String getNOTE() {
        return NOTE;
    }

    public void setNOTE(String NOTE) {
        this.NOTE = NOTE;
    }

    String NOTE;    //   --说明
}
