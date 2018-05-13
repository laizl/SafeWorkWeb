package com.smart.controller;

import com.smart.domain.Item.QZ_DICT_INSTRUMENTS;
import com.smart.service.InsService;
import com.smart.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.List;

/**
 * Created by Meng on 2017/3/22.
 */
@Controller
public class InsController {
    @Autowired
    InsService insService;

    //管理仪器
    @RequestMapping(value = "/insm")
    public String InsManage(Model model,HttpServletRequest request) {
        int pagenow = Integer.parseInt(request.getParameter("pagenow"));
        List listins = insService.getPageIns(pagenow);   //当前页面的用户个数
        int totalPageNum = insService.InstotalPageNum();      //总的用户数
        //把数据带往前台
        model.addAttribute("totalPageNum", totalPageNum);
        model.addAttribute("totalPage", totalPageNum);
        model.addAttribute("inslist", listins);
        model.addAttribute("currentpage", pagenow);
        return "insmanager";
    }
    //注册界面
    @RequestMapping("/addins")
    public String addins(){
        //获取前端表单中的数据
        return "AddIns";
    }
    //保存注册的仪器
    @RequestMapping("/saveIns")
    public String saveIns(ServletRequest request,Model model){
        //获取前端表单中的数据
        String instrcode = request.getParameter("instrcode");   //   --仪器代码
        String instrname = request.getParameter("instrname");   //   --仪器名称
        String instrtype = request.getParameter("instrtype");   //   --仪器型号
        String manufname = request.getParameter("manufname");  //    --生产厂商名称
        String manufaddress = request.getParameter("manufaddress"); //--生产厂商地址
        String manuphone = request.getParameter("manuphone"); //--联系方式
        String rectype = request.getParameter("rectype"); /*  default '数字'  NOT NULL  ENABLE,--仪器记录方式 取值为模拟或数字*/
        String instrpeformance = request.getParameter("instrpeformance"); //--性能指标描述
        //封装成对象
        QZ_DICT_INSTRUMENTS instruments = new QZ_DICT_INSTRUMENTS();
        instruments.setINSTRCODE(instrcode);
        instruments.setINSTRNAME(instrname);
        instruments.setINSTRTYPE(instrtype);
        instruments.setMANUFNAME(manufname);
        instruments.setMANUFADDRESS(manufaddress);
        instruments.setMANUFCONTACT(manuphone);
        instruments.setRECTYPE(rectype);
        instruments.setINSTRPEFORMANCE(instrpeformance);
        //存储仪器信息，先判断仪器Id是否已经存在表中了
        if(insService.saveIns(instruments)){
            model.addAttribute("information","仪器注册成功！");
            return "AddIns";
        }else{
            model.addAttribute("information","仪器ID已经注册！");
            return "AddIns";
        }
    }
    //查看仪器当前即时的状况
    @RequestMapping("/ConnectIns")
    public String ConnectINs(Model model,HttpServletRequest request){
       /* //获取仪器ID
            InsCode = request.getParameter("inscode");
        //发送命令就可以执行java脚本
        BufferedReader br = null;
        try {
            Process p = Runtime.getRuntime().exec("java -jar Test.jar" + InsCode,null, new File("E://"));
            br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            //获取输入的信息
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
        }*/
        //将获取的仪器信息输出到前台进行展示
        model.addAttribute("length",2);
        return "InsLine";
    }
}
