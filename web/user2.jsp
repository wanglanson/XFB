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
                            <a class="active-menu" href="user2.jsp">用户信息</a>
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

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           用户信息表
                        </div>

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>用户名</th>
                                        <th>注册时间</th>
                                        <th>最后访问时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${list3}" var="user" varStatus="st">
                                        <tbody>
                                        <tr>
                                            <td>${user.id}</td>
                                            <td id="username">${user.name}</td>
                                            <td>${user.phone}</td>
                                            <td>${user.date}</td>
                                            <td><span id="revise">修改</span>&nbsp;<span id="delete">删除</span></td>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
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
<!-- DATA TABLE SCRIPTS -->
<script src="jsp/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="jsp/assets/js/dataTables/dataTables.bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable({
            <%--url: '<%=request.getContextPath()%>/listUser.do',         //请求后台的URL（*）--%>
            <%--method: 'get',                      //请求方式（*）--%>
            <%--toolbar: '#toolbar',                //工具按钮用哪个容器--%>
            <%--striped: true,                      //是否显示行间隔色--%>
            <%--cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）--%>
            <%--pagination: true,                   //是否显示分页（*）--%>
            <%--sortable: false,                     //是否启用排序--%>
            <%--sortOrder: "asc",                   //排序方式--%>
            <%--queryParams: oTableInit.queryParams,//传递参数（*）--%>
            <%--sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）--%>
            <%--pageNumber:1,                       //初始化加载第一页，默认第一页--%>
            <%--pageSize: 10,                       //每页的记录行数（*）--%>
            <%--pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）--%>
            <%--search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大--%>
            <%--strictSearch: true,--%>
            <%--showColumns: true,                  //是否显示所有的列--%>
            <%--showRefresh: true,                  //是否显示刷新按钮--%>
            <%--minimumCountColumns: 2,             //最少允许的列数--%>
            <%--clickToSelect: true,                //是否启用点击选中行--%>
            <%--height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度--%>
            <%--uniqueId: "ID",                     //每一行的唯一标识，一般为主键列--%>
            <%--showToggle:true,                    //是否显示详细视图和列表视图的切换按钮--%>
            <%--cardView: false,                    //是否显示详细视图--%>
            <%--detailView: false,                   //是否显示父子表--%>
            <%--columns: [{--%>
                <%--checkbox: true--%>
            <%--}, {--%>
                <%--field: 'Name',--%>
                <%--title: '部门名称'--%>
            <%--}, {--%>
                <%--field: 'ParentName',--%>
                <%--title: '上级部门'--%>
            <%--}, {--%>
                <%--field: 'Level',--%>
                <%--title: '部门级别'--%>
            <%--}, {--%>
                <%--field: 'Desc',--%>
                <%--title: '描述'--%>
            <%--}, ]--%>
        <%--});--%>
        <%--&lt;%&ndash;$('#dataTables-example').dataTable(&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;{&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;"ajax": "<%=request.getContextPath()%>/listUser.do",&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;"columns": [&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;{"data": "id"},&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;{"data": "name"},&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;{"data": "phone"},&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;{"data": "date"}&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;]&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;&lt;%&ndash;}&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;);&ndash;%&gt;--%>
        <%--$('#delete').DataTable( {--%>
            <%--"serverSide":true,--%>
            <%--"ajax": {--%>
                <%--"url": "delUser.do",--%>
                <%--"data": function ( d ) {--%>
                    <%--return $.extend( {}, d, {--%>
                        <%--"extra_search": $('#username').val()--%>
                    <%--} );--%>
                <%--}--%>
            <%--}--%>
        <%--} );--%>
            url: '<%=request.getContextPath()%>/listUser.do',

            // columns: [{
            //     field: 'id',
            //     title: 'Item ID'
            // }, {
            //     field: 'name',
            //     title: 'Item Name'
            // }, {
            //     field: 'phone',
            //     title: 'Item Price'
            // }, ]
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
                }
            ],
        });
    });

</script>

<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>


</body>
</html>

