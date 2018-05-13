package com.smart.domain.Data;


import javax.persistence.*;

/**
 * Created by Meng on 2017/3/31.
 */
@Entity
@Table(name = "QZ_9130_DYS_60")
public class Qz_9130_DYS_60 {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
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
