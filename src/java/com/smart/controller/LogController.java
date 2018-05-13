package com.smart.controller;

import com.smart.domain.Item.OperateLog;
import com.smart.service.MainService;
import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Meng on 2017/3/18.
 */
@Controller
public class LogController {
    @Autowired
    private MainService mainService;
    @RequestMapping("/addLog")
    public String addLog(){
        return "Addlog";
    }
    @RequestMapping("/OperateLog")
    public String OperateLog(HttpServletRequest request, Model model){
        int pagenow = Integer.parseInt(request.getParameter("pagenow"));
        List<OperateLog> operateLogs =mainService.getPageOperateLog(pagenow);   //当前页面的用户个数
        int totalPageNum = mainService.LogtotalPageNum();      //总的用户数
        //把数据带往前台
        model.addAttribute("totalPageNum", totalPageNum);
        model.addAttribute("totalPage", totalPageNum);
        model.addAttribute("operateLogs",operateLogs);
        model.addAttribute("currentpage", pagenow);
        return "OperateLog";
    }
}
