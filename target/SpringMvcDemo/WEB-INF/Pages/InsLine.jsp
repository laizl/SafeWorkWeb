<%--
  Created by IntelliJ IDEA.
  User: Meng
  Date: 2017/5/31
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
//仪器在线管理
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="Css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="Css/style.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="Css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="Js/jquery.min.js"></script>
    <!-- Nav CSS -->
    <link href="Css/custom.css" rel="stylesheet">
    <!-- Metis Menu Plugin JavaScript -->
    <script src="Js/metisMenu.min.js"></script>
    <script src="Js/custom.js"></script>
    <!-- Graph JavaScript -->
    <script src="Js/d3.v3.js"></script>
    <script src="Js/rickshaw.js"></script>
    <script src="Js/model.js"></script>
</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">氡检测平台</a>
        </div>
        <!-- /.navbar-header -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">${user.USERNAME}</a>
                <ul class="dropdown-menu">
                    <li class="m_2"><a href="/user_info"><i class="fa fa-lock"></i>个人资料</a></li>
                    <li class="m_2"><a href="/to_logout"><i class="fa fa-lock"></i>登出</a></li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="#"  class="active"><i class="fa fa-dashboard fa-fw nav_icon"></i>导航栏</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-laptop nav_icon"></i>台站管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/stationinfo">台站信息</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-laptop nav_icon"></i>用户管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/adduser">注册用户</a>
                            </li>
                            <li>
                                <a href="/user?pagenow=1">查看用户</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-indent nav_icon"></i>仪器管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/addins">注册仪器</a>
                            </li>
                            <li>
                                <a href="/insm?pagenow=1">查看仪器</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-envelope nav_icon"></i>日志管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/OperateLog?pagenow=1">操作日志</a>
                            </li>
                            <li>
                                <a href="compose.html">删除日志</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>数据管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/chart">图像处理</a>
                            </li>
                            <li>
                                <a href="/report_table">生成报表</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>
    <div id="page-wrapper">
        <div class="graphs">
            <h3>仪器状态信息</h3>
            <div class="col-md-6 mailbox-content ">
                <ul class="collection">
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>长度
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>记录状态信息中包含的所有字节数
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：${length}
                                </label>
                            </dt>
                            ${station.stationCode}
                        </dl>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>设备时钟
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>采用YY/MM/DD/HH/MM/SS(年月日时分秒格式)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.stationCode}
                        </dl>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl class="approve-dl J-rowItem">
                            <dt><label>时钟状态
                                <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                    <i class="tc-icon plaint-icon"></i>
                                    <div class="tc-15-bubble tc-15-bubble-top">
                                        <div class="tc-15-bubble-inner">
                                            <p>0表示GPS授时1表示SNTP授时2表示内部时钟
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                ：</label></dt>
                        </dl>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>设备零点
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>自定义数值
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.stationName}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>直流电源状态
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>0正常1表示异常
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.longitude}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                </ul>
            </div>
            <div class="col-md-6 mailbox-content">
                <ul class="collection">
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label class="email-title">交流电源状态
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>0正常1表示异常
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.latitude}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>自校准开关状态
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>0关1开
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.altitude}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>异常警告状态
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>用于设置账号的保护策略，进一步提高您的帐号安全。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.stationArea}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>调零开关状态
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>0关1开
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.stationArea}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread email_last">
                        <dl>
                            <dt>
                                <label>事件触发个数
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <i class="tc-icon plaint-icon"></i>
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                                <p>当天已触发的事件个数
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    ：
                                </label>
                            </dt>
                            ${station.stationArea}
                        </dl>
                        <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                        <dl>
                            <dt>
                                <label>
                                    <div class="tc-15-bubble-icon tc-15-triangle-align-start w486">
                                        <div class="tc-15-bubble tc-15-bubble-top">
                                            <div class="tc-15-bubble-inner">
                                            </div>
                                        </div>
                                    </div>
                                </label>
                            </dt>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="Js/bootstrap.min.js"></script>
</body>
</html>

