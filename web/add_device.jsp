<%--
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
                    <li><a href="userinfo.jsp"><i class="fa fa-user fa-fw"></i> 完善信息</a>
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
                            <a class="active-menu" href="add_device.jsp">添加设备</a>
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
    <div id="page-wrapper">
        <div class="header">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">设备管理</a></li>
                <li class="active">添加设备</li>
            </ol>

        </div>
        <div id="container">
            <form role="form" action="${pageContext.request.contextPath }/addDevice.do" method="post">
                <div class="form-group has-success">
                    <label class="control-label" for="inputSuccess">用户账号</label>
                    <input type="text" class="form-control" id="inputSuccess" name="name" placeholder="请输入绑定账号">
                    <br><br>
                    <label class="control-label" for="inputSuccess">填写正确的设备id号</label>
                    <input type="text" class="form-control" id="inputSuccess" name="deviceId" placeholder="请输入设备id号">
                    <br><br>
                    <label class="control-label" for="inputSuccess">填写合适的设备名称</label>
                    <input type="text" class="form-control" id="inputSuccess" name="deviceName" placeholder="请输入设备名称">
                    <br><br>
                    <button type="submit" class="btn btn-primary">确认添加</button>
                    <button type="reset" class="btn btn-primary">重置</button>
                </div>  <br><br>
                <%
                    String fk1 = (String)request.getAttribute("deviceId");//&&!title.equals("")&&!content.equals("")
                    if(fk1!=null){
                %>
                <script type="text/javascript">
                    window.alert("添加成功");
                </script>
                <%
                    }
                    fk1="";
                %>
            </form>
        </div>
    </div>
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
