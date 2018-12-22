<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/5/13
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <a href="user2.jsp">用户信息</a>
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
                                    <a href="feedback.jsp">查看反馈</a>
                                </li>
                                <li>
                                    <a class="active-menu" href="reply.jsp">回复反馈</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
        <div class="header">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">系统管理</a></li>
                <li class="active">回复反馈</li>
            </ol>

        </div>

        <div id="page-inner">
            <div class="form-group">
                <label>输入标题</label><br>
                <input type="text">
            </div>
            <br>
            <div class="form-group">
                <label>回复内容</label>
                <textarea class="form-control" rows="10"></textarea>
            </div>
            <br>

            <div class="form-group">
                <label>添加附件</label>
                <input type="file">
            </div>
            <br>
            <div class="checkbox">
                <button type="submit" class="btn btn-primary">回复反馈</button>
            </div>

        </div>
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
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>
<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>


</body>
</html>

