<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>注册</title>
    <style>
        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
        }
        *{
            padding:0;
            margin:0;
        }
        .bg{
            background: #1ebfae;
        }
        h1{
            padding-top: 20px;
            text-align: center;
            font-size: 66px;
        }
        a{
            text-decoration:none;
            color: #cccccc;
        }
        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
            margin: 0 auto;
        }
        /* Extra styles for the cancel button */
        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        /* Float cancel and signup buttons and add an equal width */
        .cancelbtn,.signupbtn {
            float:left;width:50%
        }

        /* Add padding to container elements */
        .container {
            padding: 16px;
        }
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 30px auto 30px auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 40%; /* Could be more or less, depending on screen size */
        }
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
    </style>
</head>
<body>
<div class="bg">
    <h1>后台管理系统</h1>
    <form class="modal-content animate"  action="${pageContext.request.contextPath }/userregister.do" method="post">
        <div class="imgcontainer">
            <!-- <img src="https://static.runoob.com/images/mix/img_avatar.png" alt="Avatar" class="avatar"> -->
            <img src="jsp/assets/img/xf.jpg" alt="Avatar" class="avatar">
        </div>
        <div class="container">
            <label><b>用户名</b></label>
            <input type="text" placeholder="请输入用户名" name="name" required>
			
            <label><b>密码</b></label>
            <input type="password" placeholder="请输入密码" name="password" required>

            <label><b>确认密码</b></label>
            <input type="password" placeholder="请再输入密码" name="psw-repeat" required>
            
            <label><b>手机号</b></label>
            <input type="text" placeholder="请输入用户名" name="phone" required>
            
            <input type="checkbox" checked="checked"> 记住我
            <p>通过创建一个帐户你同意我们<a href="#">条款和隐私</a>。</p>

            <div class="clearfix">
                <a href="login.jsp"><button type="button" class="cancelbtn">取消</button></a>
                <button type="submit" class="signupbtn">注册</button>
            </div>
        </div>
    </form>
    <footer>
        <p style="text-align: center">Copyright &copy; 2018.Company name All rights reserved.More nformation  <a href="#" target="_blank" title="消防之家">消防之家</a> - Come from <a href="#" title="消防资讯" target="_blank">消防资讯</a></p>
    </footer>
</div>
</body>
</html>


