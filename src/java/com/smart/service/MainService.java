package com.smart.service;

import com.smart.dao.DataDao;
import com.smart.dao.LogDao;
import com.smart.dao.StationDao;
import com.smart.dao.UserDao;
import com.smart.domain.Data.Qz;
import com.smart.domain.Data.Qz_9130_DYS_60;
import com.smart.domain.Item.OperateLog;
import com.smart.domain.Model_Class.Page;
import com.smart.domain.Station.QZ_dict_stations;
import com.smart.domain.User.LoginUser;
import com.smart.domain.User.Userinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Meng on 2017/3/18.
 */
@Service
public class MainService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private LogDao logDao;
    @Autowired
    private StationDao stationDao;
    @Autowired
    private DataDao dataDao;
    //获取分页用户对象
    public List<Userinfo> getPageUser(int currentpage){
        int totalNum = userDao.TotalUserNum();
        Page page = new Page(totalNum);
        page.setCurrentpage(currentpage);
        List<Userinfo> userinfoList = userDao.queryPageUser(page);
        return userinfoList;
    }
    //获取页面总记录数返回给前端
    public int UsertotalPageNum(){
        Page page = new Page(userDao.TotalUserNum());
        return page.getTotalpage();
    }
    public void save(Userinfo userinfo){
        userDao.save(userinfo);
    }

    public Userinfo getUserByname(String username){
        Userinfo userinfo = userDao.queryUserByName(username);
        return userinfo;
    }
    //检查密码是否正确
    public boolean isPasswordRight(LoginUser loginUser){
        Userinfo userinfo = userDao.queryUserByName(loginUser);
        if(userinfo == null){
            return false;
        }else{
            return true;
        }
    } //检查用户名是否已经存在
    public boolean isUserExit(String username){
        Userinfo userinfo = userDao.queryUserByName(username);
        if(userinfo == null){
            return false;
        }else{
            return true;
        }
    }
   //删除用户
    public void deleteUser(Userinfo userinfo){
       userDao.deleteUser(userinfo);
    }
//存储操作日志
    public void  saveOperateLog(OperateLog operateLog){
        logDao.saveOperate(operateLog);
    }
    //查找所有的操作日志
    public List<OperateLog> queryOperateLog(){
        List<OperateLog> operateLogs = logDao.queryOperateLog();
        return  operateLogs;
    }
    //获取日志页面总记录数返回给前端
    public int LogtotalPageNum(){
        Page page = new Page(logDao.LogtotalNumber());
        return page.getTotalpage();
    }
    //获取分页用户对象
    public List<OperateLog> getPageOperateLog(int currentpage){
        int totalNum = userDao.TotalUserNum();
        Page page = new Page(totalNum);
        page.setCurrentpage(currentpage);
        List<OperateLog> operateLogs = userDao.queryPageOperateLog(page);
        return operateLogs;
    }
    //获取台站信息表
    public QZ_dict_stations queryStation(){
        QZ_dict_stations qz_dict_stations = stationDao.queryStation();
        return  qz_dict_stations;
    }
    //通过日期获得当前的数据
    public Qz_9130_DYS_60 queryQz_9130_DYS_60Data(String date,String judge,String insid){
        if(judge=="Qz_9130_DYS_60") {
            Qz_9130_DYS_60 qz_9130_dys_60 = dataDao.getDataByDate(date);
            return qz_9130_dys_60;
        }else{
            return null;
        }
    }
    //对数据进行处理_9130
    public String[] dealdata(Qz_9130_DYS_60 qz_9130_dys_60){
        String value = qz_9130_dys_60.getObsvalue();
        String[] DonValue = value.split (" ");
        return DonValue;
    }
    public List dealdata(Qz qz , int seconds) throws ParseException {
        String value = qz.getObsvalue();
        String[] DonValue = value.split (" ");
        String date = qz.getSTARTDATE();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time =format.parse("2017-03-01 00:00:00");
        long  timestamp = time.getTime()/1000;  //获取当前日期的时间戳
        List list = new ArrayList();
        System.out.print(format.format(timestamp*1000));
        for(int i = 0; i < DonValue.length; i++){
            Map<String,String> map = new HashMap<String, String>();
            map.put("value",DonValue[i]);
            map.put("time",format.format(timestamp*1000+i*1000));
            list.add(map);
        }
        return list;
    }
    public Qz queryData(String date , String tablename , String insid){
        Qz qz = dataDao.getDataByDate(date ,tablename ,insid);
        return qz;
    }

}
