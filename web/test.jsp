<%--
  Created by IntelliJ IDEA.
  User: wls
  Date: 2018/9/7
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="jsp/assets/js/jquery-1.10.2.js"></script>
    <script src="jsp/assets/js/highcharts.js"></script>
    <%--<script>--%>
        <%--&lt;%&ndash;$("#button").click(function(){&ndash;%&gt;--%>
            <%--&lt;%&ndash;alert("hello");&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;$.ajax({&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;type:"GET",&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;url:"<%=request.getContextPath()%>/allSensor.do",&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;dataType:"json",&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;async:false,&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;success:function(data){&ndash;%&gt;&ndash;%&gt;--%>
                   <%--&lt;%&ndash;&lt;%&ndash;alert("hello");&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;}&ndash;%&gt;&ndash;%&gt;--%>

            <%--&lt;%&ndash;&lt;%&ndash;});&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;$.get("<%=request.getContextPath()%>/allSensor.do",function(data,status){&ndash;%&gt;&ndash;%&gt;--%>
                <%--&lt;%&ndash;&lt;%&ndash;alert("Data: " + data + "\nStatus: " + status);&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;});&ndash;%&gt;&ndash;%&gt;--%>
        <%--&lt;%&ndash;});&ndash;%&gt;--%>
        <%--// function x() {--%>
        <%--//     alert("hello");--%>
        <%--// }--%>
        <%--$("button").click(function() {--%>
            <%--alert("hello");--%>
        <%--});--%>

    <%--</script>--%>
    <%--<script>--%>
        <%--$(document).ready(function(){--%>
            <%--//$("button").click(function(){--%>
                <%--$.post("<%=request.getContextPath()%>/allSensor.do",--%>
                    <%--function(data,status){--%>
                        <%--alert("数据：" + data + "\n状态：" + status);--%>
                    <%--});--%>
           <%--// });--%>
        <%--});--%>
    <%--</script>--%>
</head>
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
                                            var y = obj[0].mq2;
                                            alert(y);
                                            series[0].addPoint([ x, y ],
                                                true, true);
                                        });
                                    }, 1000);
                                }
                            }
                        },
                        title : {
                            text : '烟雾动态走势图'
                        },
                        xAxis : {
                            type : 'datetime',
                            tickPixelInterval : 100
                        },
                        yAxis : {
                            title : {
                                text : '烟雾/ppm'
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
                            name : 'Mq2',
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
    // var chart = null;
    // // 获取 CSV 数据并初始化图表
    // $.getJSON('https://data.jianshukeji.com/jsonp?filename=csv/analytics.csv&callback=?', function (csv) {
    //     chart = Highcharts.chart('container', {
    //         data: {
    //             csv: csv
    //         },
    //         title: {
    //             text: '某网站日常访问量'
    //         },
    //         subtitle: {
    //             text: '数据来源: Google Analytics'
    //         },
    //         xAxis: {
    //             tickInterval: 7 * 24 * 3600 * 1000, // 坐标轴刻度间隔为一星期
    //             tickWidth: 0,
    //             gridLineWidth: 1,
    //             labels: {
    //                 align: 'left',
    //                 x: 3,
    //                 y: -3
    //             },
    //             // 时间格式化字符
    //             // 默认会根据当前的刻度间隔取对应的值，即当刻度间隔为一周时，取 week 值
    //             dateTimeLabelFormats: {
    //                 week: '%Y-%m-%d'
    //             }
    //         },
    //         yAxis: [{ // 第一个 Y 轴，放置在左边（默认在坐标）
    //             title: {
    //                 text: null
    //             },
    //             labels: {
    //                 align: 'left',
    //                 x: 3,
    //                 y: 16,
    //                 format: '{value:.,0f}'
    //             },
    //             showFirstLabel: false
    //         }, {    // 第二个坐标轴，放置在右边
    //             linkedTo: 0,
    //             gridLineWidth: 0,
    //             opposite: true,  // 通过此参数设置坐标轴显示在对立面
    //             title: {
    //                 text: null
    //             },
    //             labels: {
    //                 align: 'right',
    //                 x: -3,
    //                 y: 16,
    //                 format: '{value:.,0f}'
    //             },
    //             showFirstLabel: false
    //         }],
    //         legend: {
    //             align: 'left',
    //             verticalAlign: 'top',
    //             y: 20,
    //             floating: true,
    //             borderWidth: 0
    //         },
    //         tooltip: {
    //             shared: true,
    //             crosshairs: true,
    //             // 时间格式化字符
    //             // 默认会根据当前的数据点间隔取对应的值
    //             // 当前图表中数据点间隔为 1天，所以配置 day 值即可
    //             dateTimeLabelFormats: {
    //                 day: '%Y-%m-%d'
    //             }
    //         },
    //         plotOptions: {
    //             series: {
    //                 cursor: 'pointer',
    //                 point: {
    //                     events: {
    //                         // 数据点点击事件
    //                         // 其中 e 变量为事件对象，this 为当前数据点对象
    //                         click: function (e) {
    //                             $('.message').html( Highcharts.dateFormat('%Y-%m-%d', this.x) + ':<br/>  访问量：' +this.y );
    //                         }
    //                     }
    //                 },
    //                 marker: {
    //                     lineWidth: 1
    //                 }
    //             }
    //         }
    //     });
    // });
</script>
<body>
<div id="container" style="width: 700px; height: 400px; margin: 300px auto;"></div>

</body>
</html>
