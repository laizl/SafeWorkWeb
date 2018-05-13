package com.smart.domain.Model_Class;

import java.util.List;

/**
 * Created by Meng on 2017/4/1.
 */
public class DataDon {
    private List datalist;
    private String date;
    private String type;
    private String[] DataDon;

    public String[] getDataDon() {
        return DataDon;
    }

    public void setDataDon(String[] dataDon) {
        DataDon = dataDon;
    }

    public List getDatalist() {
        return datalist;
    }

    public void setDatalist(List datalist) {
        this.datalist = datalist;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
