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
    <title>重力波动</title>
    <!-- Bootstrap Styles-->
    <link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="jsp/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->

</head>
<script src="jsp/assets/js/jquery-1.10.2.js"></script>
<script src="jsp/assets/js/highcharts.js"></script>
<script type="text/javascript">
    $(function() {
        $(document).ready(
            function() {
                Highcharts.setOptions({
                    global : {
                        useUTC : false
                    }
                });
                $('#container').highcharts(
                    {
                        chart : {
                            type : 'spline',
                            animation : Highcharts.svg, // don't animate in old IE
                            marginRight :5,
                            events : {
                                load : function() {
                                    // set up the updating of the chart each second
                                    var series = this.series;
                                    setInterval(function() {
                                        $.get('<%=request.getContextPath()%>/listSensor.do', function(
                                            response) {
                                            var x = (new Date()).getTime();// current time
                                            //var y = $.each(data)["mq2"];
                                            var obj = JSON.parse(response);
                                            var y = parseFloat(obj[0].accel);
                                            //alert(y);
                                            series[0].addPoint([ x, y ],
                                                true, true);
                                        });
                                    }, 1000);
                                }
                            }
                        },
                        title : {
                            text : '重力动态走势图'
                        },
                        xAxis : {
                            type : 'datetime',
                            tickPixelInterval : 100
                        },
                        yAxis : {
                            title : {
                                text : '重力/g'
                            },
                            plotLines : [ {
                                value : 0,
                                width : 1,
                                color:'rgba(0,0,255,0.5)'
                            } ]
                        },
                        tooltip : {
                            formatter : function() {
                                return '<b>'
                                    + this.series.name
                                    + '</b><br/>'
                                    + Highcharts.dateFormat(
                                        '%Y-%m-%d %H:%M:%S',
                                        this.x)
                                    + '<br/>'
                                    +Highcharts.numberFormat(
                                        this.y, 2);
                            }
                        },
                        legend: {
                            align: 'left',
                            verticalAlign: 'top',
                            y: 0,
                            floating: true,
                            borderWidth: 0
                        },
                        exporting : {
                            enabled : false
                        },
                        series : [ {
                            name : 'Accel',
                            color:'rgba(0,255,0,0.5)',
                            data : (function() {
                                // generate an array of random data
                                var data = [], time = (new Date())
                                    .getTime(), i;

                                for (i = -19; i <= 0; i++) {
                                    data.push({
                                        x : time + i * 1000,
                                        y : Math.random()
                                    });
                                }
                                return data;
                            })()
                        }]
                    });
            });

    });
</script>
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
                            <a class="active-menu" href="gravity.jsp">重力波动</a>
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
    <div id="page-wrapper">
        <div class="header">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">数据统计</a></li>
                <li class="active">重力波动</li>
            </ol>

        </div>
        <div id="container" style="width: 1000px; height: 500px; margin: 100px auto;"></div>
    </div>
</div>
<!-- Bootstrap Js -->
<script src="jsp/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="jsp/assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="jsp/assets/js/custom-scripts.js"></script>


</body>
</html>
