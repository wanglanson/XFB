<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/5/13
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fire control</title>
    <!-- Bootstrap Styles-->
    <link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->

    <!-- Custom Styles-->
    <link href="jsp/assets/css/custom-styles.css" rel="stylesheet" />
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="welcome.jsp"><strong>Fire control </strong></a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <span style="color: #FFFFFF;">
                        <% String name=(String)session.getAttribute("user"); %>
                        <%=name %>
                    </span>
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>

                </a>

                <ul class="dropdown-menu dropdown-user">
                    <li><a class="active-menu" href="userinfo.jsp"><i class="fa fa-user fa-fw"></i> 完善信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> 注销</a>
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
                &nbsp;&nbsp;<span style="color: #FFFFFF">User：<%=name%>&nbsp;&nbsp;</span><span style="color: green">在线</span>
            </div>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="welcome.jsp"><i class="fa fa-dashboard"></i> 首页</a>
                </li>
                <li>
                    <a href="scene.jsp"><i class="fa fa-map-marker"></i> </i> 我在现场</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop"></i> 设备管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="add_device.jsp">添加设备</a>
                        </li>
                        <li>
                            <a href="del_device.jsp">删除设备</a>
                        </li>
                        <li>
                            <a href="listDevice.do">我的设备</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="data.jsp"><i class="fa fa-bar-chart-o"></i> 数据统计<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="position.jsp">当前位置</a>
                        </li>
                        <li>
                            <a href="smoke.jsp">烟雾波动</a>
                        </li>
                        <li>
                            <a href="heart.jsp">温度波动</a>
                        </li>
                        <li>
                            <a href="gravity.jsp">重力波动</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-qrcode"></i> 用户中心<span class="fa arrow"></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="announcement.do">通知信息</a>
                        </li>
                        <li>
                            <a href="fankui.jsp">反馈信息</a>
                        </li>
                        <li>
                            <a href="record.jsp">操作记录</a>
                        </li>
                        <li>
                            <a href="findUserInfo.do">个人信息</a>
                        </li>
                        <li>
                            <a href="update_password.jsp">修改密码</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#"><i class="fa fa-table"></i> 系统管理<span class="fa arrow"></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="system.jsp">系统设置</a>
                        </li>
                        <li>
                            <a href="#">更换皮肤<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">经典蓝</a>
                                </li>
                                <li>
                                    <a href="#">护眼绿</a>
                                </li>
                                <li>
                                    <a href="#">咖啡棕</a>
                                </li>
                                <li>
                                    <a href="#">炫酷黑</a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="about.jsp"><i class="fa fa-sitemap"></i> </i> 关于</a>
                </li>
            </ul>

        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
        <div class="header">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">用户中心</a></li>
                <li class="active">反馈</li>
            </ol>

        </div>
        <form action="${pageContext.request.contextPath }/addUserinfo.do" method="post">
            <div id="page-inner">
                <div class="form-group">
                    <label>姓名</label><br>
                    <input class="form-control" type="text" placeholder="请输入用户姓名" name="name" >
                </div>
                <br>
                <div class="form-group">
                    <label>电话</label><br>
                    <input class="form-control" type="text" placeholder="请输入用户电话" name="phone" >
                </div>
                <br>
                <div class="form-group">
                    <label>邮箱</label><br>
                    <input class="form-control" type="text" placeholder="请输入邮箱地址" name="email" >
                </div>
                <br>
                <div class="form-group">
                    <label>地址</label><br>
                    <input class="form-control" type="text" placeholder="请输入居住地址" name="address" >
                </div>
                <br>
                <div class="form-group">
                    <label>简介</label>
                    <textarea class="form-control" rows="10" placeholder="请输入自我简介" name="brief" ></textarea>
                </div>
                <br>
                <div class="checkbox">
                    <button type="submit" class="btn btn-primary" id="sub">确认修改</button>
                </div>
            </div>
        </form>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="jsp/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="jsp/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="jsp/assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="jsp/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="jsp/assets/js/dataTables/dataTables.bootstrap.js"></script>

<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>


</body>
</html>

