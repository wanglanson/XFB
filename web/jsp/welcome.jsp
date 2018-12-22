<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/5/13
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>首页</title>
    <meta charset="utf-8" />
    <!-- Bootstrap Styles-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />

    <link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="../assets/css/custom-styles.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="welcome.jsp"><strong>Fire control </strong></a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
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
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a class="active-menu" href="welcome.jsp"><i class="fa fa-dashboard"></i> 首页</a>
                </li>
                <li>
                    <a href="scene.jsp"><i class="fa fa-map-marker"></i> </i> 我在现场</a>
                </li>
                <li>
                    <a href="add_device.jsp"><i class="fa fa-desktop"></i> 设备管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="add_device.jsp">添加设备</a>
                        </li>
                        <li>
                            <a href="del_device.jsp">删除设备</a>
                        </li>
                        <li>
                            <a href="update_device.jsp">更新设备</a>
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
                            <a href="heart.jsp">心率波动</a>
                        </li>
                        <li>
                            <a href="gravity.jsp">重力波动</a>
                        </li>
                        <li>


                        </li>
                    </ul>
                </li>
                <li>
                    <a href="person.jsp"><i class="fa fa-qrcode"></i> 用户中心<span class="fa arrow"></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="notification.jsp">通知信息</a>
                        </li>
                        <li>
                            <a href="record.jsp">操作记录</a>
                        </li>
                        <li>
                            <a href="modify.jsp">修改密码</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="system.jsp"><i class="fa fa-table"></i> 系统管理<span class="fa arrow"></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="setup.jsp">系统设置</a>
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

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                首页 <small>欢迎 admin</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">网站统计</a></li>
                <li class="active">数据</li>
            </ol>

        </div>
        <div id="page-inner">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="panel panel-primary text-center no-boder blue">
                        <div class="panel-left pull-left blue">
                            <i class="fa fa-eye fa-5x"></i>

                        </div>
                        <div class="panel-right">
                            <h3>166</h3>
                            <strong> 今日访问量</strong>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="panel panel-primary text-center no-boder blue">
                        <div class="panel-left pull-left blue">
                            <i class="fa fa-shopping-cart fa-5x"></i>
                        </div>

                        <div class="panel-right">
                            <h3>35 </h3>
                            <strong> 用户数量</strong>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="panel panel-primary text-center no-boder blue">
                        <div class="panel-left pull-left blue">
                            <i class="fa fa fa-comments fa-5x"></i>

                        </div>
                        <div class="panel-right">
                            <h3>108 </h3>
                            <strong> 反馈 </strong>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="panel panel-primary text-center no-boder blue">
                        <div class="panel-left pull-left blue">
                            <i class="fa fa-users fa-5x"></i>

                        </div>
                        <div class="panel-right">
                            <h3>2333 </h3>
                            <strong>总访问量</strong>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            访问记录
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>用户名</th>
                                        <th>访问时间</th>
                                        <th>离开时间</th>
                                        <th>停留时间（分钟）</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>wls</td>
                                        <td>2018-5-16 11:29:38</td>
                                        <td>2018-5-16 11:59:38</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>admin</td>
                                        <td>2018-5-16 10:46:32</td>
                                        <td>2018-5-16 11:12:38</td>
                                        <td>26</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>root</td>
                                        <td>2018-5-16 09:29:38</td>
                                        <td>2018-5-16 11:29:38</td>
                                        <td>120</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>administrator</td>
                                        <td>2018-5-15 15:29:38</td>
                                        <td>2018-5-15 16:59:38</td>
                                        <td>90</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>wls</td>
                                        <td>2018-5-15 08:18:38</td>
                                        <td>2018-5-15 08:59:38</td>
                                        <td>41</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>administrator</td>
                                        <td>2018-5-14 12:23:24</td>
                                        <td>2018-5-14 13:56:38</td>
                                        <td>33</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>wls</td>
                                        <td>2018-5-13 10:35:31</td>
                                        <td>2018-5-13 10:46:38</td>
                                        <td>11</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>root</td>
                                        <td>2018-5-12 15:43:23</td>
                                        <td>2018-5-12 17:59:21</td>
                                        <td>136</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>admin</td>
                                        <td>2018-5-11 18:29:39</td>
                                        <td>2018-5-11 19:54:45</td>
                                        <td>85</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>wls</td>
                                        <td>2018-5-10 21:12:54</td>
                                        <td>2018-5-10 22:33:36</td>
                                        <td>81</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <%--<footer><p>Copyright &copy; 2016.Company name All rights reserved.More nformation <a href="welcome.jsp" target="_blank" title="智能消防">智能消防</a> - Come from <a href="welcome.jsp" title="首页" target="_blank">消防首页</a></p>--%>
            <%--</footer>--%>
        </div>
    </div>
</div>
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>


<script src="assets/js/easypiechart.js"></script>
<script src="assets/js/easypiechart-data.js"></script>

<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>

<script>

</script>
</body>
</html>
