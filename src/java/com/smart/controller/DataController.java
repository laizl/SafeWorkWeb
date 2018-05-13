package com.smart.controller;

import com.smart.domain.Data.Qz;
import com.smart.domain.Data.Qz_9130_DYS_60;
import com.smart.domain.Model_Class.DataDon;
import com.smart.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import java.io.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import static java.lang.System.out;


/**
 * Created by Meng on 2017/3/18.
 */
@Controller
public class DataController {
    @Autowired
    MainService mainService;

    @RequestMapping(value = "/")
    public String home() throws IOException {
        //发送命令就可以执行java脚本
        BufferedReader br = null;
        try {
            Process p = Runtime.getRuntime().exec("java -jar Test.jar" + " 我也很帅哦",null, new File("E://"));
            br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = null;
            StringBuilder sb = new StringBuilder();
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
            System.out.println(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally
        {
            if (br != null)
            {
                try {
                    br.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return "login";
    }

    @RequestMapping("/chart")
    public String addLog() {
        return "Chart";
    }

    //生成图的ajax请求将获取的数据进行打包后返回给前台
    @RequestMapping(value = "/data.json", method = RequestMethod.GET)
    @ResponseBody
    public DataDon chart() {
        //要将所有的仪器对象一起带入前台作为选择
        Qz_9130_DYS_60 qz_9130_dys_60 = mainService.queryQz_9130_DYS_60Data("2017-03-30", "Qz_9130_DYS_60", "1");
        String[] Don_9130 = mainService.dealdata(qz_9130_dys_60);
        DataDon dataDon = new DataDon();
        dataDon.setDate(qz_9130_dys_60.getSTARTDATE());
        dataDon.setDataDon(Don_9130);
        dataDon.setType("hour");
        return dataDon;
    }
    //选取当前要处理的值用于生成图像
    @RequestMapping(value = "/select_value")
    @ResponseBody
    public List select_value(HttpServletRequest request) throws ParseException {
        //时间间隔
        String time_slot = request.getParameter("time_slot");
        //选择的值
        String deal_value = request.getParameter("deal_value");
        //日期
        String date = request.getParameter("date");
        //仪器ID
        String insid[] = request.getParameterValues("category");
        //总共要显示的数据个数
        int datasize = insid.length;
        //表名
        String tablename = "Qz_" + deal_value + "_DYS_" + time_slot;

        //时间间隔
        int oneday = 24;

        List<DataDon> qzList = new ArrayList<DataDon>();

        for (int i = 0; i < datasize; i++) {
            Qz qz = mainService.queryData(date, tablename , insid[i]);
            if (qz.getStationCode() != null) {
                out.println("查询出来的Qz仪器Id" + qz.getInstrCode() + qz.getSTARTDATE());
                List datalist = mainService.dealdata(qz,oneday);
                DataDon dataDon = new DataDon();
                dataDon.setDate(qz.getSTARTDATE());
                dataDon.setDatalist(datalist);
                dataDon.setType("hour");
                qzList.add(dataDon);
            }
        }
        return qzList;
    }

    @RequestMapping(value = "/time_slot", method = RequestMethod.GET)
    @ResponseBody
    public String timeslot(ServletRequest request){
        String stime = request.getParameter("stime");
        String etime = request.getParameter("etime");
        //接受类型
        String type = request.getParameter("type");
        return "login";
}


}
