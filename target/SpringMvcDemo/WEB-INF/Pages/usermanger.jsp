<%@ page import="com.smart.domain.User.Userinfo" %>
<%@ page import="java.util.List" %>
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
    List<Userinfo> userlist = (List<Userinfo>) request.getAttribute("userlist");
    for (int i = userlist.size(); i <= 8; i++) {
        userlist.add(i, null);
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
                            <th>用户ID</th>
                            <th>用户名</th>
                            <th>密码</th>
                            <th>姓名</th>
                            <th>邮箱</th>
                            <th>电话</th>
                            <th>单位</th>
                            <th>地址</th>
                            <th>等级</th>
                            <th>登陆状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="active">
                            <c:choose>
                                <c:when test="${userlist.get(0)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                </c:when>
                                <c:otherwise>
                                    <td>${userlist.get(0).getUserID()}</td>
                                    <td>${userlist.get(0).getUSERNAME()}</td>
                                    <td>${userlist.get(0).getPASSWORD()}</td>
                                    <td>${userlist.get(0).getRealName()}</td>
                                    <td>${userlist.get(0).getEMAIL()}</td>
                                    <td>${userlist.get(0).getTELEPHONE()}</td>
                                    <td>${userlist.get(0).getUNIT()}</td>
                                    <td>${userlist.get(0).getAddress()}</td>
                                    <td>${userlist.get(0).getUserGrade()}</td>
                                    <td>${userlist.get(0).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="1" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${userlist.get(1)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${userlist.get(1).getUserID()}</td>
                                    <td>${userlist.get(1).getUSERNAME()}</td>
                                    <td>${userlist.get(1).getPASSWORD()}</td>
                                    <td>${userlist.get(1).getRealName()}</td>
                                    <td>${userlist.get(1).getEMAIL()}</td>
                                    <td>${userlist.get(1).getTELEPHONE()}</td>
                                    <td>${userlist.get(1).getUNIT()}</td>
                                    <td>${userlist.get(1).getAddress()}</td>
                                    <td>${userlist.get(1).getUserGrade()}</td>
                                    <td>${userlist.get(1).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="2" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="success">
                            <c:choose>
                                <c:when test="${userlist.get(2)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${userlist.get(2).getUserID()}</td>
                                    <td>${userlist.get(2).getUSERNAME()}</td>
                                    <td>${userlist.get(2).getPASSWORD()}</td>
                                    <td>${userlist.get(2).getRealName()}</td>
                                    <td>${userlist.get(2).getEMAIL()}</td>
                                    <td>${userlist.get(2).getTELEPHONE()}</td>
                                    <td>${userlist.get(2).getUNIT()}</td>
                                    <td>${userlist.get(2).getAddress()}</td>
                                    <td>${userlist.get(2).getUserGrade()}</td>
                                    <td>${userlist.get(2).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="3" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${userlist.get(3)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${userlist.get(3).getUserID()}</td>
                                    <td>${userlist.get(3).getUSERNAME()}</td>
                                    <td>${userlist.get(3).getPASSWORD()}</td>
                                    <td>${userlist.get(3).getRealName()}</td>
                                    <td>${userlist.get(3).getEMAIL()}</td>
                                    <td>${userlist.get(3).getTELEPHONE()}</td>
                                    <td>${userlist.get(3).getUNIT()}</td>
                                    <td>${userlist.get(3).getAddress()}</td>
                                    <td>${userlist.get(3).getUserGrade()}</td>
                                    <td>${userlist.get(3).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="4" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="btn btn-xs btn-default deleteuser"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="info">
                            <c:choose>
                                <c:when test="${userlist.get(4)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${userlist.get(4).getUserID()}</td>
                                    <td>${userlist.get(4).getUSERNAME()}</td>
                                    <td>${userlist.get(4).getPASSWORD()}</td>
                                    <td>${userlist.get(4).getRealName()}</td>
                                    <td>${userlist.get(4).getEMAIL()}</td>
                                    <td>${userlist.get(4).getTELEPHONE()}</td>
                                    <td>${userlist.get(4).getUNIT()}</td>
                                    <td>${userlist.get(4).getAddress()}</td>
                                    <td>${userlist.get(4).getUserGrade()}</td>
                                    <td>${userlist.get(4).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="5" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${userlist.get(5)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${userlist.get(5).getUserID()}</td>
                                    <td>${userlist.get(5).getUSERNAME()}</td>
                                    <td>${userlist.get(5).getPASSWORD()}</td>
                                    <td>${userlist.get(5).getRealName()}</td>
                                    <td>${userlist.get(5).getEMAIL()}</td>
                                    <td>${userlist.get(5).getTELEPHONE()}</td>
                                    <td>${userlist.get(5).getUNIT()}</td>
                                    <td>${userlist.get(5).getAddress()}</td>
                                    <td>${userlist.get(5).getUserGrade()}</td>
                                    <td>${userlist.get(5).getUserStatus()}</td>
                                    <td>
                                        <button type="button" id="6" class="btn btn-xs btn-default" data-toggle="modal"
                                                data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" id="deleteuser" class="btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-12">
                    <ul class="pagination">
                        <!--用于前一页选择器的范围判断-->
                        <c:choose>
                            <c:when test="${currentpage eq 1}">
                                <li><a class="disable">&laquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="/user?pagenow=${currentpage-1}">&laquo;</a></li>
                            </c:otherwise>
                        </c:choose>
                        <!--显示多少页码-->
                        <c:forEach begin="1" end="${totalPage}" var="pagenum">
                            <li class="active"><a href="/user?pagenow=${pagenum}">${pagenum}</a></li>
                        </c:forEach>
                        <!--用于后一页选择器的范围判断-->
                        <c:choose>
                            <c:when test="${currentpage lt totalPage}">
                                <li><a href="/user?pagenow=${currentpage+1}">&raquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a class="disable">&raquo;</a></li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="false" style="display: none;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h2 class="modal-title">修改用户信息</h2>
                        </div>
                        <div class="modal-body">
                            <form action="/alteruser" method="post" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">用户名</label>
                                    <div class="col-sm-6">
                                        <input name="username" id="user-name" type="text" class="form-control1"
                                               placeholder="用户名" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-6">
                                        <input id="user-password" name="password" type="password" class="form-control1"
                                               placeholder="密码" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label
                                           class="col-sm-2 control-label">真实姓名</label>
                                    <div class="col-sm-6">
                                        <input  id="real-name" name="realname" type="text"
                                               class="form-control1" placeholder="真实姓名" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">邮箱</label>
                                    <div class="col-sm-6">
                                        <input id="user-email" name="email" type="text" class="form-control1"
                                               placeholder="邮箱" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电话</label>
                                    <div class="col-sm-6">
                                        <input id="user-phone" name="telephone" type="text" class="form-control1"
                                               placeholder="电话号码" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">单位</label>
                                    <div class="col-sm-6">
                                        <input id="user-unit" name="unit" type="text" class="form-control1"
                                               placeholder="单位" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">地址</label>
                                    <div class="col-sm-6">
                                        <input id="user-address" name="address" type="text" class="form-control1"
                                               placeholder="地址" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">用户ID</label>
                                    <div class="col-sm-6">
                                        <input id="user_id" name="userid" type="text" class="form-control1"
                                               placeholder="用户ID" required>
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
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
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
