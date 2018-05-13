package com.smart.domain.Data;


/**
 * Created by Meng on 2017/4/16.
 */
public class Qz {
    private String STARTDATE;
    private String StationCode;
    private String InstrCode;
    private String ItemCode;
    private String SampleRate;
    private String Obsvalue;
    private Integer ProcessingFlag;
    private Integer Date_Index;


    public String getSTARTDATE() {
        return STARTDATE;
    }

    public void setSTARTDATE(String STARTDATE) {
        this.STARTDATE = STARTDATE;
    }

    public String getStationCode() {
        return StationCode;
    }

    public void setStationCode(String stationCode) {
        StationCode = stationCode;
    }

    public String getInstrCode() {
        return InstrCode;
    }

    public void setInstrCode(String instrCode) {
        InstrCode = instrCode;
    }

    public String getItemCode() {
        return ItemCode;
    }

    public void setItemCode(String itemCode) {
        ItemCode = itemCode;
    }

    public String getSampleRate() {
        return SampleRate;
    }

    public void setSampleRate(String sampleRate) {
        SampleRate = sampleRate;
    }

    public String getObsvalue() {
        return Obsvalue;
    }

    public void setObsvalue(String obsvalue) {
        Obsvalue = obsvalue;
    }

    public Integer getProcessingFlag() {
        return ProcessingFlag;
    }

    public void setProcessingFlag(Integer processingFlag) {
        ProcessingFlag = processingFlag;
    }

    public Integer getDate_Index() {
        return Date_Index;
    }

    public void setDate_Index(Integer date_Index) {
        Date_Index = date_Index;
    }

}


