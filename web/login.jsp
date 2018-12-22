<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
  a{
    text-decoration:none;
    color: #cccccc;
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
  /* Full-width input fields */
  input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }

  /* Set a style for all buttons */
  .login {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
  }

  button:hover {
    opacity: 0.8;
  }
  .hide{
    background-color: red;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
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

  .container {
    padding: 16px;
  }

  span.psw {
    float: right;
    padding-top: 16px;
  }

  /* The Modal (background) */

  /* Modal Content/Box */
  .modal-content {
    background-color: #fefefe;
    margin: 30px auto 30px auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #cccccc;
    width: 40%; /* Could be more or less, depending on screen size */
  }
</style>
<script type="text/javascript">
	function onlogin(){
	}
</script>
<html>
  <head>
    <title>登录</title>
  </head>
  <body>
  <div class="bg">
    <h1>后台管理系统</h1>
    <div class="modal-content animate">
      <div class="imgcontainer">
        <img src="jsp/assets/img/xf.jpg" alt="Avatar" class="avatar">
      </div>
      <form  action="${pageContext.request.contextPath }/userlogin.do" method="post">
        <div class="container">
          <label><b>用户名</b></label>
          <input type="text" placeholder="请输入用户名" name="name" required>
          <label><b>密码</b></label>
          <input type="password" placeholder="请输入密码" name="password" required>
          <input type="radio" name="select" value="consumer" checked="checked">
          <label>用户</label>
          <input type="radio" name="select" value="admin">
          <label>管理员</label>
          <label><b>${message}</b></label>
          <button type="submit" class="login" onclick="onlogin()">登陆</button>
          <input type="checkbox" checked="checked"> 记住我
        </div>
      </form>
      <div class="container" style="background-color:#f1f1f1">
        <a href="register.jsp"><button class="hide">注册</button></a>
        <span class="psw"><a href="#">找回密码</a>？</span>
      </div>
    </div>
    <footer>
      <p style="text-align: center">Copyright &copy; 2018.Company name All rights reserved.More nformation  <a href="#" target="_blank" title="消防">消防</a> - Come from <a href="#" title="消防" target="_blank">消防</a></p>
    </footer>
  </div>
  </body>
</html>
