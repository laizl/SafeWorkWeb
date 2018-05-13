<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Bootstrap Core CSS -->
    <link href="Css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <!-- Custom CSS -->
    <link href="Css/style.css" rel='stylesheet' type='text/css'/>
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
    <script>
        window.onload = function () {
            document.getElementById('ta1').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
            document.getElementById('ta2').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
            document.getElementById('ta3').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
            document.getElementById('ta4').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
            document.getElementById('ta5').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
            document.getElementById('ta6').addEventListener('keydown', function (e) {
                if (e.keyCode != 13) return;
                e.preventDefault();
                this.value += '<enter>';
            });
        };
    </script>
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
                        <a href="#" class="active"><i class="fa fa-dashboard fa-fw nav_icon"></i>导航栏</a>
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
                        <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>数据管理<span
                                class="fa arrow"></span></a>
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
            <div class="file">
                <table border="1" class="table">
                    <tbody>
                    <tr class="active">
                        <td class="active" colspan="9">测氡仪检定记录</td>
                    </tr>
                    <tr class="active">
                        <td colspan="2">仪器名称</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td colspan="3">型号/规格</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="2">出厂编号</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td colspan="3">生产厂家</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="2">检定日期</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td colspan="3">证书编号</td>
                        <td style="width: 260px; padding:0px!important" colspan="2"><input type="text" name=""
                                                                                           maxlength="20"
                                                                                           style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">检定依据的技术文件</td>
                        <td style="padding:0px!important" colspan="6"><textarea id="ta1" maxlength="100"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">检定环境条件</td>
                        <td colspan="6">温度：<input type="text" name="" maxlength="10"
                                                  style="text-align:right;width:50px;height:30px;">
                            &nbsp&nbsp相对湿度：<input type="text" name="" maxlength="10"
                                                  style="text-align:right;width:50px;height:30px;">%
                            &nbsp&nbsp环境y辐射空气比释动能率：<input type="text" name="" maxlength="10"
                                                          style="text-align:right;width:50px;height:30px;"></td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">检定项目</td>
                        <td style="padding:0px!important" colspan="6"><textarea id="ta2" maxlength="100"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">检定结果</td>
                        <td style="padding:0px!important" colspan="6"><textarea id="ta3" maxlength="100"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">外观和标识</td>
                        <td style="padding:0px!important" colspan="6"><textarea id="ta4" maxlength="100"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">仪器本底</td>
                        <td style="padding:0px!important" colspan="6"><textarea id="ta5" maxlength="100"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="2" rowspan="3">重复性</td>
                        <td colspan="5">仪器读数</td>
                        <td>平均值</td>
                        <td colspan="2">实验标准差</td>
                    </tr>
                    <tr class="active">
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px;padding:0px!important" colspan="1"><input type="text" name=""
                                                                                         maxlength="20"
                                                                                         style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1" rowspan="2"><input type="text" name=""
                                                                                         maxlength="20"
                                                                                         style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px;padding:0px!important" colspan="1" rowspan="2"><input type="text" name=""
                                                                                                     maxlength="20"
                                                                                                     style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important" colspan="1"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px;padding:0px!important" colspan="1"><input type="text" name=""
                                                                                         maxlength="20"
                                                                                         style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="1" rowspan="6">体积活度响应</td>
                        <td colspan="1">体积活度标准值</td>
                        <td colspan="5">仪器读数</td>
                        <td colspan="1">平均值</td>
                        <td colspan="1">实验标准差</td>
                    </tr>
                    <tr class="active">
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px;padding:0px!important"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px;padding:0px!important"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="padding:0px!important"><input type="text" name="" maxlength="20"
                                                                 style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td style="height:35px; padding:0px!important"><input type="text" name="" maxlength="20"
                                                                              style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="4">R=<input type="text" name="" style="width:200px;height:30px;"></td>
                        <td colspan="2">仪器说明书要求（如果有）</td>
                        <td style="padding:0px!important" colspan="2"><textarea id="ta6" maxlength="30"
                                                                                style="overflow-y:hidden;width:100%;height:100%;background-color:#f5f5f5;border:0px;"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="4">上次检定结果Ra=<input type="text" name="" style="width:200px;height:30px;"></td>
                        <td colspan="4">仪器活度响应年偏离量f=<input type="text" name="" style="width:200px;height:30px;"></td>
                    </tr>
                    <tr class="active">
                        <td>相对固有误差E</td>
                        <td style="padding:0px!important" colspan="8"><input type="text" name="" maxlength="20"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    <tr class="active">
                        <td>检定结论</td>
                        <td colspan="8"><input type="radio" name="con" value="good"/>合格 &nbsp&nbsp<input type="radio"
                                                                                                         name="con"
                                                                                                         value="bad"/>不合格
                        </td>
                    </tr>
                    <tr class="active">
                        <td colspan="3">鉴定员</td>
                        <td style="padding:0px!important" colspan="2"><input type="text" name="" maxlength="10"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                        <td colspan="3">核验员</td>
                        <td style="padding:0px!important" colspan="2"><input type="text" name="" maxlength="10"
                                                                             style="text-align:center;font-size:14px;width:100%;height:100%;background-color:#f5f5f5;border:0px;">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <button class="btn-default btn"><a href="/downResumeDoc">保存word文档</a></button>
                </div>
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
