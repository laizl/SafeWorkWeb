package com.smart.domain.Station;

import oracle.sql.BLOB;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Meng on 2017/3/20.
 */
@Entity
@Table(name = "QZ_dict_stations")
public class QZ_dict_stations {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    String stationCode;
    String stationName;
    double latitude;
    double longitude;
    double altitude;
    String stationArea;
    Date stationConsDate;
    String unitCode;
    String STATIONBASEROCK;
    String STATIONSITEDETAIL;
    String STATIONGEOLOGYCONDITION;
    String STASEISMICITY;
    String STATIONGROUNDAREA; //--占地面积
    String STATIONMGMTMODE;   //  --值守方式
    String STATIONDUTYPHONE; //  --值班电话
    String STATIONMAILADDRESS; //  --通信地址
    String STATIONNATURALGEOGRAPHY; // --自然地理
    String STATIONWEATHER;    //--气候特征
    String STATIONHISTORY;   // --历史沿革
    String STATIONWORKINGLIVINGFACILITY;//   --工作生活条件
    String DESCRIPTION;    //--台站基本情况描述
    BLOB STATIONREPORT;  //    --台站建设报告
    BLOB STATIONPHOTO;   //   --台站平面分布图
    BLOB STATIONPNTMAP;  // --测点分布图

    public String getStationCode() {
        return stationCode;
    }

    public void setStationCode(String stationCode) {
        this.stationCode = stationCode;
    }

    public String getStationName() {
        return stationName;
    }

    public void setStationName(String stationName) {
        this.stationName = stationName;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getAltitude() {
        return altitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public String getStationArea() {
        return stationArea;
    }

    public void setStationArea(String stationArea) {
        this.stationArea = stationArea;
    }

    public Date getStationConsDate() {
        return stationConsDate;
    }

    public void setStationConsDate(Date stationConsDate) {
        this.stationConsDate = stationConsDate;
    }

    public String getUnitCode() {
        return unitCode;
    }

    public void setUnitCode(String unitCode) {
        this.unitCode = unitCode;
    }

    public String getSTATIONBASEROCK() {
        return STATIONBASEROCK;
    }

    public void setSTATIONBASEROCK(String STATIONBASEROCK) {
        this.STATIONBASEROCK = STATIONBASEROCK;
    }

    public String getSTATIONSITEDETAIL() {
        return STATIONSITEDETAIL;
    }

    public void setSTATIONSITEDETAIL(String STATIONSITEDETAIL) {
        this.STATIONSITEDETAIL = STATIONSITEDETAIL;
    }

    public String getSTATIONGEOLOGYCONDITION() {
        return STATIONGEOLOGYCONDITION;
    }

    public void setSTATIONGEOLOGYCONDITION(String STATIONGEOLOGYCONDITION) {
        this.STATIONGEOLOGYCONDITION = STATIONGEOLOGYCONDITION;
    }

    public String getSTASEISMICITY() {
        return STASEISMICITY;
    }

    public void setSTASEISMICITY(String STASEISMICITY) {
        this.STASEISMICITY = STASEISMICITY;
    }

    public String getSTATIONGROUNDAREA() {
        return STATIONGROUNDAREA;
    }

    public void setSTATIONGROUNDAREA(String STATIONGROUNDAREA) {
        this.STATIONGROUNDAREA = STATIONGROUNDAREA;
    }

    public String getSTATIONMGMTMODE() {
        return STATIONMGMTMODE;
    }

    public void setSTATIONMGMTMODE(String STATIONMGMTMODE) {
        this.STATIONMGMTMODE = STATIONMGMTMODE;
    }

    public String getSTATIONDUTYPHONE() {
        return STATIONDUTYPHONE;
    }

    public void setSTATIONDUTYPHONE(String STATIONDUTYPHONE) {
        this.STATIONDUTYPHONE = STATIONDUTYPHONE;
    }

    public String getSTATIONMAILADDRESS() {
        return STATIONMAILADDRESS;
    }

    public void setSTATIONMAILADDRESS(String STATIONMAILADDRESS) {
        this.STATIONMAILADDRESS = STATIONMAILADDRESS;
    }

    public String getSTATIONNATURALGEOGRAPHY() {
        return STATIONNATURALGEOGRAPHY;
    }

    public void setSTATIONNATURALGEOGRAPHY(String STATIONNATURALGEOGRAPHY) {
        this.STATIONNATURALGEOGRAPHY = STATIONNATURALGEOGRAPHY;
    }

    public String getSTATIONWEATHER() {
        return STATIONWEATHER;
    }

    public void setSTATIONWEATHER(String STATIONWEATHER) {
        this.STATIONWEATHER = STATIONWEATHER;
    }

    public String getSTATIONHISTORY() {
        return STATIONHISTORY;
    }

    public void setSTATIONHISTORY(String STATIONHISTORY) {
        this.STATIONHISTORY = STATIONHISTORY;
    }

    public String getSTATIONWORKINGLIVINGFACILITY() {
        return STATIONWORKINGLIVINGFACILITY;
    }

    public void setSTATIONWORKINGLIVINGFACILITY(String STATIONWORKINGLIVINGFACILITY) {
        this.STATIONWORKINGLIVINGFACILITY = STATIONWORKINGLIVINGFACILITY;
    }

    public String getDESCRIPTION() {
        return DESCRIPTION;
    }

    public void setDESCRIPTION(String DESCRIPTION) {
        this.DESCRIPTION = DESCRIPTION;
    }

    public BLOB getSTATIONREPORT() {
        return STATIONREPORT;
    }

    public void setSTATIONREPORT(BLOB STATIONREPORT) {
        this.STATIONREPORT = STATIONREPORT;
    }

    public BLOB getSTATIONPHOTO() {
        return STATIONPHOTO;
    }

    public void setSTATIONPHOTO(BLOB STATIONPHOTO) {
        this.STATIONPHOTO = STATIONPHOTO;
    }

    public BLOB getSTATIONPNTMAP() {
        return STATIONPNTMAP;
    }

    public void setSTATIONPNTMAP(BLOB STATIONPNTMAP) {
        this.STATIONPNTMAP = STATIONPNTMAP;
    }

    public String getNOTE() {
        return NOTE;
    }

    public void setNOTE(String NOTE) {
        this.NOTE = NOTE;
    }

    String NOTE;   //   --说明
}
