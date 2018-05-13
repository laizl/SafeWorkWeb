package com.smart.controller;

import com.smart.domain.Item.OperateLog;
import com.smart.domain.Station.QZ_dict_stations;
import com.smart.domain.User.LoginUser;
import com.smart.domain.Model_Class.Resume_Word;
import com.smart.domain.User.Userinfo;
import com.smart.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by 23966 on 2017/1/4.
 */
@Controller
public class MainController {
    @Autowired
    private MainService mainService;

    //登陆界面
    @RequestMapping(value = "/login")
    public String Login(Model model) {
        return "login";
    }

    //登陆用户信息检测
    @RequestMapping(value = "/login_check")
    public String Login_check(Model model, HttpServletRequest request, HttpSession httpSession) {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String ip = request.getRemoteAddr();
        LoginUser loginUser = new LoginUser();
        loginUser.setUsername(name);
        loginUser.setPassword(password);
        //将登陆用户的一些信息存入Session中
        request.getSession().setAttribute("loginuser", loginUser);
        //查询用户名是否存在
        Userinfo userinfo = mainService.getUserByname(name);
        if(userinfo != null){
            Boolean isPasswordRight = mainService.isPasswordRight(loginUser);
            if(isPasswordRight){
                model.addAttribute("user",userinfo);
                httpSession.setAttribute("user",userinfo);
                //添加操作日志
                OperateLog operateLog = new OperateLog();
                operateLog.setUserID(userinfo.getUserID());
                operateLog.setIP(ip);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                //获取String类型的时间
                String date = sdf.format(new Date());
                operateLog.setOperateTime(date);
                operateLog.setExtra("我很帅");
                operateLog.setOperateTypeID(1);
                operateLog.setOperateContent("我很帅");
                mainService.saveOperateLog(operateLog);
                return "index";
            }else{
                model.addAttribute("error","密码错误");
                return "login";
            }
        }else{
            model.addAttribute("error","用户名错误");
            return "login";
        }
    }

    //登出
    @RequestMapping("/to_logout")
    public String tologout(HttpSession session, HttpServletRequest request, HttpServletResponse response, SessionStatus sessionStatus) {
        session.removeAttribute("loginuser");
        sessionStatus.setComplete();
        return "login";
    }
    //报表页面
    @RequestMapping("/report_table")
    public String report() {
        return "report_table";
    }
    @RequestMapping("/downResumeDoc")
    public String downResumeDoc(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        request.setCharacterEncoding("utf-8");
        Map<String, Object> map = new HashMap<String, Object>();
        //给map填充数据
        map.put("name", "赖志林");
        map.put("password", 123456);
        //提示：在调用工具类生成Word文档之前应当检查所有字段是否完整
        //否则Freemarker的模板殷勤在处理时可能会因为找不到值而报错，这里暂时忽略这个步骤
        File file = null;
        InputStream fin = null;
        ServletOutputStream out = null;

        try {
            //调用工具类WordGenerator的createDoc方法生成Word文档
            file = Resume_Word.createDoc(map, "resume");
            fin = new FileInputStream(file);

            response.setCharacterEncoding("utf-8");
            response.setContentType("application/msword");
            response.addHeader("Content-Disposition", "attachment;filename=resume.doc");

            out = response.getOutputStream();
            byte[] buffer = new byte[1024];//缓冲区
            int bytesToRead = -1;
            // 通过循环将读入的Word文件的内容输出到浏览器中
            while ((bytesToRead = fin.read(buffer)) != -1) {
                out.write(buffer, 0, bytesToRead);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (fin != null) fin.close();
            if (out != null) out.close();
            if (file != null) file.delete(); // 删除临时文件
        }
        return null;
    }


    //查看台站信息
    @RequestMapping(value = "/stationinfo")
    public String Station(Model model) {
        QZ_dict_stations station = mainService.queryStation();
        model.addAttribute("station",station);
        return "stationinfo";
    }
    @RequestMapping(value = "/alterstation")
    @ResponseBody
    public String AlterStation(Model model , HttpServletRequest request,HttpServletResponse response) {
        response.setCharacterEncoding("utf-8");
        String stationname = request.getParameter("stationname");
        //这里需要调用数据库语句把修改后的数据存入数据库
        System.out.print(stationname);
        return "1";
    }

}
