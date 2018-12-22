<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/5/13
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fire control</title>
    <!-- Bootstrap Styles-->
    <link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="jsp/assets/css/bootstrap-table.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->

    <!-- Custom Styles-->
    <link href="jsp/assets/css/custom-styles.css" rel="stylesheet" />
  <!-- TABLE STYLES-->
    <link href="jsp/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
                            <a class="active-menu" href="user.jsp">用户信息</a>
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
                                    <a href="reply.jsp">回复反馈</a>
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
                <li><a href="#">用户管理</a></li>
                <li class="active">用户信息</li>
            </ol>
        </div>

        <div id="page-inner">
            <div class="row" style="height: 506px">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            用户信息表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="table">
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
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
<script src="jsp/assets/js/bootstrap-table.js"></script>
<script src="jsp/assets/js/bootstrap-table-zh-CN.js"></script>
<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>
<script>
    $('#table').bootstrapTable({
        url: '<%=request.getContextPath()%>/listUser.do',
        cache: true, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
        striped: true,  //表格显示条纹，默认为false
        pagination: true, // 在表格底部显示分页组件，默认false
        pageList: [10, 20], // 设置页面可以显示的数据条数
        pageSize: 10, // 页面数据条数
        pageNumber: 1, // 首页页码
        sortName: 'id', // 要排序的字段
        sortOrder: 'asc', // 排序规则
        showRefresh:true,
        clickToSelect:true,
        undefinedText:'null',
        search:true,
        showToggle:true,
        showPaginationSwitch:true,
        uniqueId : "id",
        columns: [
            {
                checkbox: true, // 显示一个勾选框
                align: 'center' // 居中显示
            }, {
                field: 'id', // 返回json数据中的name
                title: '用户编号', // 表格表头显示文字
                align: 'center', // 左右居中
                valign: 'middle' // 上下居中
            }, {
                field: 'name',
                title: '用户姓名',
                align: 'center',
                valign: 'middle'
            }, {
                field: 'phone',
                title: '电话号码',
                align: 'center',
                valign: 'middle',
            }, {
                field: 'date',
                title: '注册时间',
                align: 'center',
                valign: 'middle',
            }, {
                title: "操作",
                align: 'center',
                valign: 'middle',
                width: 260, // 定义列的宽度，单位为像素px
                formatter: function (value, row, index) {
                    return '<button class="btn btn-primary btn-sm" onclick="del('+row.id+')">删除</a></button><a href="update_user.jsp"><button class="btn btn-warning btn-sm">修改</button></a>';
                }
            }
        ],
    });
    function del(id) {
       $('#table').bootstrapTable('removeByUniqueId', id);
        $.get({
            url : "<%=request.getContextPath()%>/delUser.do",
            data : {
                id : id,
            }
        })
    }
</script>

</body>
</html>

