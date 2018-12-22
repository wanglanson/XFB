<%@ page import="com.smxy.pojo.Feedback,java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/5/13
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">

    <title>系统设置</title>
    <link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="jsp/assets/css/custom-styles.css" rel="stylesheet" />
    <style type="text/css">
        #container{
            top: 200px;
            margin:0 auto;
            width:800px;
            height:500px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default top-navbar" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="welcome.jsp"><strong>Fire control </strong></a>
    </div>

    <ul class="nav navbar-top-links navbar-right">
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <span style="color: #FFFFFF;">
                        admin
                    </span>
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>

            </a>

            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> 个人中心</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                </li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 注销</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
</nav>

<!--/. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
    <div class="profile clearfix">
        <div class="profile_pic">
            <img src="jsp/assets/img/xf.jpg" class="img-circle profile_img" style="width: 50px;height: 50px;">
            &nbsp;&nbsp;<span style="color: #FFFFFF">Admin：admin&nbsp;&nbsp;</span><span style="color: green">在线</span>
        </div>
    </div>
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li>
                <a href="admin_welcome.jsp"><i class="fa fa-dashboard"></i> 首页</a>
            </li>
            <li>
                <a href="person.jsp"><i class="fa fa-qrcode"></i> 用户管理<span class="fa arrow"></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="user.jsp">用户信息</a>
                    </li>
                    <li>
                        <a href="add_user.jsp">添加用户</a>
                    </li>
                    <li>
                        <a href="del_user.jsp">删除用户</a>
                    </li>
                    <li>
                        <a href="update_user.jsp">重置用户</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="system.jsp"><i class="fa fa-table"></i> 系统管理<span class="fa arrow"></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="announcements.jsp">发布公告</a>
                    </li>
                    <li>
                        <a href="#">意见反馈<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                                <a class="active-menu" href="feedback.jsp">查看反馈</a>
                            </li>
                            <li>
                                <a href="reply.jsp">回复反馈</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
</nav>
<div id="page-wrapper">
    <div class="header">
        <ol class="breadcrumb">
            <li><a href="#">系统管理</a></li>
            <li><a href="#">意见反馈</a></li>
            <li class="active">查看反馈</li>
        </ol>

    </div>
    <c:forEach items="${list}" var="feedback" varStatus="st">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron">
                <h2>${feedback.title}</h2>
                <p>提交人：${feedback.user}</p>
                <p>提交内容：${feedback.content}</p><br>
                <p style="float: right;">提交时间：${feedback.date}</p>
            </div>
        </div>
    </div>
    </c:forEach>
</div>
<script src="jsp/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="jsp/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="jsp/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="jsp/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="jsp/assets/js/morris/morris.js"></script>
<script src="jsp/assets/js/Lightweight-Chart/jquery.chart.js"></script>
<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>
<script>
</script>
</body>
</html>
