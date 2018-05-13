package com.smart.controller;


import com.smart.domain.User.Userinfo;
import com.smart.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Meng on 2017/3/18.
 */
@Controller
public class UserController {
    @Autowired
    private MainService mainService;

    //查看当前用户信息
    @RequestMapping("/user_info")
    public String user_info(HttpServletRequest request, HttpSession httpSession, Model model) {
        httpSession = request.getSession();
        if (httpSession.getAttribute("loginuser") == null) {
            model.addAttribute("error", "用户在别处登陆");
            return "login";
        } else {
            return "userinfo";
        }
    }

    //用户管理
    @RequestMapping(value = "/user")
    public String json(Model model, HttpServletRequest request) {
        int pagenow = Integer.parseInt(request.getParameter("pagenow"));
        List listuser = mainService.getPageUser(pagenow);   //当前页面的用户个数
        int totalPageNum = mainService.UsertotalPageNum();      //总的用户数
        //把数据带往前台
        model.addAttribute("totalPageNum", totalPageNum);
        model.addAttribute("totalPage", totalPageNum);
        model.addAttribute("userlist", listuser);
        model.addAttribute("currentpage", pagenow);
        return "usermanger";
    }

    @RequestMapping("/adduser")
    public String adduser(HttpServletRequest request ) {
        return "AddUser";
    }

    @RequestMapping("/alteruser")//修改用户
    public String alteruser(HttpServletRequest request , Model model) {
        Userinfo userinfo = new Userinfo();
        String username = request.getParameter("username");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String unit = request.getParameter("unit");
        String address = request.getParameter("address");
        String realname = request.getParameter("realname");
        int grade = Integer.parseInt(request.getParameter("grade"));
        int userid = Integer.parseInt(request.getParameter("userid"));
        Boolean isUserExit = mainService.isUserExit(username);
        if (!isUserExit) {
            userinfo.setUSERNAME(username);
            userinfo.setTELEPHONE(telephone);
            userinfo.setEMAIL(email);
            userinfo.setPASSWORD(password);
            userinfo.setAddress(address);
            userinfo.setRealName(realname);
            userinfo.setUserGrade(grade);
            userinfo.setUNIT(unit);
            userinfo.setUserStatus(0);
            userinfo.setUserID(userid);
            mainService.deleteUser(userinfo);
            mainService.save(userinfo);
            model.addAttribute("error", "修改成功！");
            return "AddUser";
        } else {
            model.addAttribute("error", "用户名已经被注册！");
            return "AddUser";
        }
    }

    @RequestMapping("/saveuser")//保存用户
    public String saveuser( HttpServletRequest request, Model model, HttpSession httpSession) {
        httpSession = request.getSession();
        String username = request.getParameter("username");
        String telphone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String unit = request.getParameter("unit");
        String address = request.getParameter("address");
        String realname = request.getParameter("realname");
        int grade = Integer.parseInt(request.getParameter("grade"));
        Boolean isUserExit = mainService.isUserExit(username);
        if (!isUserExit) {
            Userinfo userinfo = new Userinfo();
            userinfo.setUSERNAME(username);
            userinfo.setTELEPHONE(telphone);
            userinfo.setEMAIL(email);
            userinfo.setPASSWORD(password);
            userinfo.setAddress(address);
            userinfo.setRealName(realname);
            userinfo.setUserGrade(grade);
            userinfo.setUNIT(unit);
            userinfo.setUserStatus(0);
            mainService.save(userinfo);
            model.addAttribute("error", "注册成功！");
            return "AddUser";
        } else {
            model.addAttribute("error", "用户注册过成功！");
            return "AddUser";
        }
    }


}
