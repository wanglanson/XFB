<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>定位</title>
    <link rel="stylesheet" type="text/css" href="zero.css" />
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <link href="jsp/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="jsp/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="jsp/assets/css/custom-styles.css" rel="stylesheet" />
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <!-- 这里要配置参数key,将其值设置为高德官网开发者获取的key -->
    <script src="http://webapi.amap.com/maps?v=1.3&key=9b2c5c13a6501227c97613b559324a12"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
</body>
<script language="javascript">
    var mapObj, geolocation;
    var result;
    var map = new AMap.Map('container', {
        resizeEnable: true,
        zoom:11,
        center: [117.5654748823946, 26.192535937008326]//默认的地图中心经纬度
    });
    map.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            maximumAge: 0,           //定位结果缓存0毫秒，默认：0
            convert: true,           //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
            showButton: true,        //显示定位按钮，默认：true
            buttonPosition: 'LB',    //定位按钮停靠位置，默认：'LB'，左下角
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            showMarker: true,        //定位成功后在定位到的位置显示点标记，默认：true
            showCircle: true,        //定位成功后用圆圈表示定位精度范围，默认：true
            panToLocation: true,     //定位成功后将定位到的位置作为地图中心点，默认：true
            zoomToAccuracy:true      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
        });
        map.addControl(geolocation);
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });

    //解析定位结果
    function onComplete(data) {
        if(data.status == 1){
            console.log("定位成功");
            $("#addressInput").val(data.formattedAddress);
            sessionStorage.setItem("dingWei-lng",data.position.getLng());
            sessionStorage.setItem("dingWei-lat",data.position.getLat());
        }
        alert(data.position.getLat());
        var str = [];
        str.push('经度：' + data.position.getLng());
        str.push('纬度：' + data.position.getLat());
        str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
        console.log(str.join('<br>'));
    }
    function onError() {
        var str = [];
        str.push('定位失败');
        console.log(str.join('<br>'));
    }
</script>
</html>
