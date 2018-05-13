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
                <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">${sessionScope.loginuser.username}</a>
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
            <div class="alert alert-info" bo-bind="'account.basic.tip' | translate">注册用户</div>
            <div class="xs">
                <div class="tab-content">
                    <div class="tab-pane active" id="horizontal-form">
                        <form action="/saveuser" method="post" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-6">
                                    <input name="username" type="text" class="form-control1" placeholder="用户名" required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control1" name="password"
                                           placeholder="密码" required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">真实姓名</label>
                                <div class="col-sm-6">
                                    <input name="realname" type="text" class="form-control1" placeholder="真实姓名"
                                           required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-6">
                                    <input type="text" name="email" class="form-control1" placeholder="邮箱" required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">电话</label>
                                <div class="col-sm-6">
                                    <input name="telephone" type="text" class="form-control1" placeholder="电话号码"
                                           required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">单位</label>
                                <div class="col-sm-6">
                                    <input name="unit" type="text" class="form-control1" placeholder="单位" required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">地址</label>
                                <div class="col-sm-6">
                                    <input name="address" type="text" class="form-control1" placeholder="地址" required>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">等级</label>
                                <div class="col-sm-6">
                                    <select name="grade" class="form-control1" required>
                                        <option value="0">超级用户</option>
                                        <option value="1">管理员</option>
                                        <option value="2">普通用户</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <p class="help-block">*必填</p>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button class="btn-success btn" type="submit">提交</button>
                                            <button class="btn-inverse btn" type="reset">重置</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
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
