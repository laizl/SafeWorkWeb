package com.smart.domain.Item;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Meng on 2017/3/22.
 */
@Entity
@Table(name = "QZ_DICT_OPERATELOG")
public class OperateLog {
    int LogID ; //--日志ID
    String OperateTime;  //   --操作时间
    int OperateTypeID;  //  --操作类型ID
    String OperateContent; // --操作内容
    int UserID ;    //  --用户ID
    String IP ;  //--操作者IP
    String Extra; //  --附加字段
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    public int getLogID() {
        return LogID;
    }

    public void setLogID(int logID) {
        LogID = logID;
    }

    public String getOperateTime() {
        return OperateTime;
    }

    public void setOperateTime(String operateTime) {
        OperateTime = operateTime;
    }

    public int getOperateTypeID() {
        return OperateTypeID;
    }

    public void setOperateTypeID(int operateTypeID) {
        OperateTypeID = operateTypeID;
    }

    public String getOperateContent() {
        return OperateContent;
    }

    public void setOperateContent(String operateContent) {
        OperateContent = operateContent;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }

    public String getIP() {
        return IP;
    }

    public void setIP(String IP) {
        this.IP = IP;
    }

    public String getExtra() {
        return Extra;
    }

    public void setExtra(String extra) {
        Extra = extra;
    }
}
