<%@ page import="com.smart.domain.User.Userinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.smart.domain.Item.OperateLog" %>
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
<%
    List<OperateLog> operateLogs = (List<OperateLog>) request.getAttribute("operateLogs");
    for (int i = operateLogs.size(); i <= 8; i++) {
        operateLogs.add(i, null);
    }
%>
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
            <div class="panel panel-sucess" data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
                 data-widget-static="">
                <div class="panel-body no-padding">
                    <table id="table" class="table table-striped">
                        <thead>
                        <tr class="warning">
                            <th>日志ID</th>
                            <th>用户ID</th>
                            <th>用户名</th>
                            <th>时间</th>
                            <th>操作</th>
                            <th>操作内容</th>
                            <th>操作IP</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="active">
                            <c:choose>
                                <c:when test="${operateLogs.get(0)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(0).getLogID()}</td>
                                    <td>${operateLogs.get(0).getOperateTime()}</td>
                                    <td>${operateLogs.get(0).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(0).getOperateContent()}</td>
                                    <td>${operateLogs.get(0).getUserID()}</td>
                                    <td>${operateLogs.get(0).getIP()}</td>
                                    <td>${operateLogs.get(0).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${operateLogs.get(1)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(1).getLogID()}</td>
                                    <td>${operateLogs.get(1).getOperateTime()}</td>
                                    <td>${operateLogs.get(1).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(1).getOperateContent()}</td>
                                    <td>${operateLogs.get(1).getUserID()}</td>
                                    <td>${operateLogs.get(1).getIP()}</td>
                                    <td>${operateLogs.get(1).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="success">
                            <c:choose>
                                <c:when test="${operateLogs.get(2)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(2).getLogID()}</td>
                                    <td>${operateLogs.get(2).getOperateTime()}</td>
                                    <td>${operateLogs.get(2).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(2).getOperateContent()}</td>
                                    <td>${operateLogs.get(2).getUserID()}</td>
                                    <td>${operateLogs.get(2).getIP()}</td>
                                    <td>${operateLogs.get(2).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${operateLogs.get(3)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(3).getLogID()}</td>
                                    <td>${operateLogs.get(3).getOperateTime()}</td>
                                    <td>${operateLogs.get(3).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(3).getOperateContent()}</td>
                                    <td>${operateLogs.get(3).getUserID()}</td>
                                    <td>${operateLogs.get(3).getIP()}</td>
                                    <td>${operateLogs.get(3).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="info">
                            <c:choose>
                                <c:when test="${operateLogs.get(4)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(4).getLogID()}</td>
                                    <td>${operateLogs.get(4).getOperateTime()}</td>
                                    <td>${operateLogs.get(4).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(4).getOperateContent()}</td>
                                    <td>${operateLogs.get(4).getUserID()}</td>
                                    <td>${operateLogs.get(4).getIP()}</td>
                                    <td>${operateLogs.get(4).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${operateLogs.get(5)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                    <td>
                                        <div class="fill"></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${operateLogs.get(5).getLogID()}</td>
                                    <td>${operateLogs.get(5).getUserID()}</td>
                                    <td>${operateLogs.get(5).getOperateTypeID()}</td>
                                    <td>${operateLogs.get(5).getOperateTime()}</td>
                                    <td>${operateLogs.get(5).getOperateContent()}</td>
                                    <td>${operateLogs.get(5).getIP()}</td>
                                    <td>${operateLogs.get(5).getExtra()}</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-12">
                    <ul class="pagination">
                        <li><a class="disable">当前页码${currentpage}</a></li>
                        <!--用于前一页选择器的范围判断-->
                        <c:choose>
                            <c:when test="${currentpage eq 1}">
                                <li><a class="disable">&laquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="/OperateLog?pagenow=${currentpage-1}">&laquo;</a></li>
                            </c:otherwise>
                        </c:choose>

                        <!--显示多少页码-->
                        <c:choose>
                            <c:when test="${totalPage le 5}">
                                <c:forEach begin="1" end="${totalPage}" var="pagenum">
                                    <li class="active"><a href="/OperateLog?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage + 2 le totalPage && currentpage ge 3}">
                                <c:forEach begin="${currentpage - 2}" end="${currentpage + 2}" var="pagenum">
                                    <li class="active"><a href="/OperateLog?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage + 2 gt totalPage && currentpage ge 3}">
                                <c:forEach begin="${totalPage - 4}" end="${totalPage}" var="pagenum">
                                    <li class="active"><a href="/OperateLog?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage le totalPage && currentpage le 3}">
                                <c:forEach begin="1" end="5" var="pagenum">
                                    <li class="active"><a href="/OperateLog?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                        </c:choose>

                        <!--用于后一页选择器的范围判断-->
                        <c:choose>
                            <c:when test="${currentpage lt totalPage}">
                                <li><a href="/OperateLog?pagenow=${currentpage+1}">&raquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a class="disable">&raquo;</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a class="disable">总页码${totalPage}</a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
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
