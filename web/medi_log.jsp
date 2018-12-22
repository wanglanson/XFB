<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dream</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->

    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans'
          rel='stylesheet' type='text/css'/>
    <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css"
          rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index1.jsp">智能药箱管理</a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li><a href="#">
                        <div>
                            <strong>John Doe</strong> <span class="pull-right text-muted">
										<em>Today</em>
									</span>
                        </div>
                        <div>Lorem Ipsum has been the industry's standard dummy
                            text ever since the 1500s...
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
                        </div>
                        <div>Lorem Ipsum has been the industry's standard dummy
                            text ever since an kwilnw...
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
                        </div>
                        <div>Lorem Ipsum has been the industry's standard dummy
                            text ever since the...
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>Read
                        All Messages</strong> <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-messages --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>Task 1</strong> <span class="pull-right text-muted">60%
											Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-success"
                                     role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 60%">
                                    <span class="sr-only">60% Complete (success)</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>Task 2</strong> <span class="pull-right text-muted">28%
											Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-info" role="progressbar"
                                     aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"
                                     style="width: 28%">
                                    <span class="sr-only">28% Complete</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-warning"
                                     role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 60%">
                                    <span class="sr-only">60% Complete (warning)</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>Task 4</strong> <span class="pull-right text-muted">85%
											Complete</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-danger"
                                     role="progressbar" aria-valuenow="85" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 85%">
                                    <span class="sr-only">85% Complete (danger)</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>See
                        All Tasks</strong> <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-tasks --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li><a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment <span
                                class="pull-right text-muted small">4 min</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
                                class="pull-right text-muted small">12 min</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> Message Sent <span
                                class="pull-right text-muted small">4 min</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> New Task <span
                                class="pull-right text-muted small">4 min</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> Server Rebooted <span
                                class="pull-right text-muted small">4 min</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>See
                        All Alerts</strong> <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-alerts --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User
                        Profile</a></li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i>
                        Logout</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li><a href="index1.jsp"><i class="fa fa-dashboard"></i>
                    首页</a></li>
                <li><a href="mediX_manage.jsp"><i class="fa fa-desktop"></i>
                    药箱管理</a></li>
                <li><a href="mediP_manage.jsp"><i
                        class="fa fa-bar-chart-o"></i> 药品管理</a></li>
                <li><a href="warm_prompt.jsp"><i class="fa fa-qrcode"></i>
                    温馨提醒</a></li>

                <li><a href="medi_log.jsp" class="active-menu"><i
                        class="fa fa-table"></i> 服药日志</a></li>
                <li><a href="medi_history.jsp"><i class="fa fa-edit"></i>
                    过往病史</a></li>


                <li><a href="#"><i class="fa fa-sitemap"></i> 医生指导<span
                        class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#">Second Level Link</a></li>
                        <li><a href="#">Second Level Link</a></li>
                        <li><a href="#">Second Level Link<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>

                            </ul>
                        </li>
                    </ul>
                </li>

                <li><a href="memo_calendar.jsp"><i
                        class="fa fa-fw fa-file"></i> 备忘日历</a></li>
                <li><a href="sound_manage.jsp"><i class="fa fa-fw fa-file"></i>
                    语音管理</a></li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        Tables Page
                        <small>Responsive tables</small>
                    </h1>
                </div>
            </div>
            <!-- /. ROW  -->
            <%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">服药日志</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="table">
                                </table>
                                <%--<table class="table table-striped table-bordered table-hover" id="table">--%>

                                    <%--<thead>--%>
                                    <%--<tr>--%>
                                        <%--<th>服药时间</th>--%>
                                        <%--<th>药品名称</th>--%>
                                        <%--<th>注意事项</th>--%>
                                        <%--<th>是否按时</th>--%>
                                        <%--<th>备注信息</th>--%>
                                    <%--</tr>--%>
                                    <%--</thead>--%>
                                    <%--&lt;%&ndash; <c:forEach items="${list6}" var="medi_log" varStatus="st">--%>
                                        <%--<tbody>--%>
                                            <%--<tr class="gradeA">--%>
                                                <%--<td>${medi_log.id}</td>--%>
                                                <%--<td>${medi_log.time}</td>--%>
                                                <%--<td>${medi_log.name}</td>--%>
                                                <%--<td>${medi_log.matter}</td>--%>
                                                <%--<td>${medi_log.ontime}</td>--%>
                                                <%--<td>${medi_log.note}</td>--%>
                                                <%--<td><span id="revise">修改</span>&nbsp;<span id="delete">删除</span></td>--%>
                                            <%--</tr>--%>
                                        <%--</tbody>--%>
                                    <%--</c:forEach> &ndash;%&gt;--%>
                                <%--</table>--%>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
        </div>
        <footer>
            <p>
                Copyright &copy; 2016.Company name All rights reserved.More
                Templates <a href="http://www.cssmoban.com/" target="_blank"
                             title="模板之家">模板之家</a> - Collect from <a
                    href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
            </p>
        </footer>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="assets/js/dataTables/jquery.dataTables.js"></script>
<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>


<script src="assets/js/bootstrap-table.js"></script>


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
<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>
</body>
</html>
