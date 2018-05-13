<%@ page import="com.smart.domain.User.Userinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.smart.domain.Item.QZ_DICT_INSTRUMENTS" %>
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
    List<QZ_DICT_INSTRUMENTS> inslist = (List<QZ_DICT_INSTRUMENTS>) request.getAttribute("inslist");
    for (int i = inslist.size(); i <= 8; i++) {
        inslist.add(i, null);
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
            <div class="panel panel-sucess" data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
                 data-widget-static="">
                <div class="panel-body no-padding">
                    <table id="table" class="table table-striped">
                        <thead>
                        <tr class="warning">
                            <th>仪器编码</th>
                            <th>仪器名称</th>
                            <th>仪器型号</th>
                            <th>生产厂商名称</th>
                            <th>生产厂商地址</th>
                            <th>联系方式</th>
                            <th>仪器记录方式</th>
                            <th>性能指标描述</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="active">
                            <c:choose>
                                <c:when test="${inslist.get(0)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                </c:when>
                                <c:otherwise>
                                    <td>${inslist.get(0).getINSTRCODE()}</td>
                                    <td>${inslist.get(0).getINSTRNAME()}</td>
                                    <td>${inslist.get(0).getINSTRTYPE()}</td>
                                    <td>${inslist.get(0).getMANUFNAME()}</td>
                                    <td>${inslist.get(0).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(0).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(0).getRECTYPE()}</td>
                                    <td>${inslist.get(0).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="1" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${inslist.get(1)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${inslist.get(1).getINSTRCODE()}</td>
                                    <td>${inslist.get(1).getINSTRNAME()}</td>
                                    <td>${inslist.get(1).getINSTRTYPE()}</td>
                                    <td>${inslist.get(1).getMANUFNAME()}</td>
                                    <td>${inslist.get(1).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(1).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(1).getRECTYPE()}</td>
                                    <td>${inslist.get(1).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="2" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="success">
                            <c:choose>
                                <c:when test="${inslist.get(2)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>${inslist.get(2).getINSTRCODE()}</td>
                                    <td>${inslist.get(2).getINSTRNAME()}</td>
                                    <td>${inslist.get(2).getINSTRTYPE()}</td>
                                    <td>${inslist.get(2).getMANUFNAME()}</td>
                                    <td>${inslist.get(2).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(2).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(2).getRECTYPE()}</td>
                                    <td>${inslist.get(2).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="3" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${inslist.get(3)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${inslist.get(3).getINSTRCODE()}</td>
                                    <td>${inslist.get(3).getINSTRNAME()}</td>
                                    <td>${inslist.get(3).getINSTRTYPE()}</td>
                                    <td>${inslist.get(3).getMANUFNAME()}</td>
                                    <td>${inslist.get(3).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(3).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(3).getRECTYPE()}</td>
                                    <td>${inslist.get(3).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="4" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="btn btn-xs btn-default deleteuser"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr class="info">
                            <c:choose>
                                <c:when test="${inslist.get(4)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${inslist.get(4).getINSTRCODE()}</td>
                                    <td>${inslist.get(4).getINSTRNAME()}</td>
                                    <td>${inslist.get(4).getINSTRTYPE()}</td>
                                    <td>${inslist.get(4).getMANUFNAME()}</td>
                                    <td>${inslist.get(4).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(4).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(4).getRECTYPE()}</td>
                                    <td>${inslist.get(4).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="5" class="alteruser btn btn-xs btn-default"
                                                data-toggle="modal" data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" class="deleteuser btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
                                        </button>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${inslist.get(5)== null || requestScope.newFlag== '2' ||requestScope.newFlag== '3'}">
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
                                    <td>${inslist.get(5).getINSTRCODE()}</td>
                                    <td>${inslist.get(5).getINSTRNAME()}</td>
                                    <td>${inslist.get(5).getINSTRTYPE()}</td>
                                    <td>${inslist.get(5).getMANUFNAME()}</td>
                                    <td>${inslist.get(5).getMANUFADDRESS()}</td>
                                    <td>${inslist.get(5).getMANUFCONTACT()}</td>
                                    <td>${inslist.get(5).getRECTYPE()}</td>
                                    <td>${inslist.get(5).getINSTRPEFORMANCE()}</td>
                                    <td>
                                        <button type="button" id="6" class="btn btn-xs btn-default" data-toggle="modal"
                                                data-target="#myModal"><a href="#">修改</a>
                                        </button>
                                        <button type="button" id="deleteuser" class="btn btn-xs btn-default"><a
                                                href="#">删除</a>
                                        </button>
                                        <button type="button" class="connectuser btn btn-xs btn-default"><a
                                                href="/ConnectIns">连接</a>
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
                        <li><a class="disable">总页码${totalPage}</a></li>
                        <!--用于前一页选择器的范围判断-->
                        <c:choose>
                        <c:when test="${currentpage eq 1}">
                            <li><a class="disable">&laquo;</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="/insm?pagenow=${currentpage-1}">&laquo;</a></li>
                        </c:otherwise>
                        </c:choose>
                        <!--显示多少页码-->
                        <c:choose>
                            <c:when test="${totalPage le 5}">
                                <c:forEach begin="1" end="${totalPage}" var="pagenum">
                                    <li class="active"><a href="/insm?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage + 2 le totalPage && currentpage ge 3}">
                                <c:forEach begin="${currentpage - 2}" end="${currentpage + 2}" var="pagenum">
                                    <li class="active"><a href="/insm?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage + 2 gt totalPage && currentpage ge 3}">
                                <c:forEach begin="${totalPage - 4}" end="${totalPage}" var="pagenum">
                                    <li class="active"><a href="/insm?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                            <c:when test="${totalPage gt 5 && currentpage le totalPage && currentpage le 3}">
                                <c:forEach begin="1" end="5" var="pagenum">
                                    <li class="active"><a href="/insm?pagenow=${pagenum}">${pagenum}</a></li>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                        <!--用于后一页选择器的范围判断-->
                        <c:choose>
                            <c:when test="${currentpage lt totalPage}">
                                <li><a href="/insm?pagenow=${currentpage+1}">&raquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a class="disable">&raquo;</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a class="disable">当前页码${currentpage}</a></li>
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
                            <h2 class="modal-title">修改仪器信息</h2>
                        </div>
                        <div class="modal-body">
                            <form action="/saveuser" method="post" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">用户名</label>
                                    <div class="col-sm-6">
                                        <input name="username" id="user-name" type="text" class="form-control1"
                                               placeholder="用户名" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label name="password" for="focusedinput" class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-6">
                                        <input id="user-password" type="password" class="form-control1" id="focusedinput"
                                               placeholder="密码" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label name="password" for="focusedinput"
                                           class="col-sm-2 control-label">真实姓名</label>
                                    <div class="col-sm-6">
                                        <input id="real-name" name="type" type="text" class="form-control1" placeholder="真实姓名" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label   class="col-sm-2 control-label">邮箱</label>
                                    <div class="col-sm-6">
                                        <input id="user-email" name="email" type="text" class="form-control1" placeholder="邮箱" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">电话</label>
                                    <div class="col-sm-6">
                                        <input id="user-phone" name="telphone"  type="text" class="form-control1" placeholder="电话号码" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">单位</label>
                                    <div class="col-sm-6">
                                        <input id="user-unit" name="telphone" type="text" class="form-control1" placeholder="单位" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">地址</label>
                                    <div class="col-sm-6">
                                        <input id="user-address" name="address" type="text" class="form-control1" placeholder="地址" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">等级</label>
                                    <div class="col-sm-6">
                                        <select  name="grade"  class="form-control1" required>
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
