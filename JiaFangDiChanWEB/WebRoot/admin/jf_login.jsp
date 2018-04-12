<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>家房地产后台管理系统</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
<link rel="shortcut icon" href="images/icon/favicon.ico">
<script src="js/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
</head>

<body class="user-select">
<div class="container">
  <div class="siteIcon"><img src="images/icon/icon.png" alt="" data-toggle="tooltip" data-placement="top" title="家房地产后台管理系统" draggable="false" /></div>
  <div class="form-signin">
    <h2 class="form-signin-heading">管理员登录</h2>
    <label for="userName" class="sr-only">用户名</label>
    <input type="text" id="userName" class="form-control" placeholder="请输入用户名" required oninvalid="setCustomValidity('请输入用户名！');" oninput="setCustomValidity('');" maxlength="11">
    <label for="userPwd" class="sr-only">密码</label>
    <input type="password" id="userPwd"  class="form-control" placeholder="请输入密码" required oninvalid="setCustomValidity('请输入密码！');" oninput="setCustomValidity('');"maxlength="18">
     <button class="btn btn-lg btn-primary btn-block"  id="signinSubmit">登录</button>
  </div>
</div>
<script src="js/bootstrap.min.js"></script> 
<script>
$('#signinSubmit').click(function(){
	if($('#userName').val() === ''){
		$(this).text('用户名不能为空');
	}else if($('#userPwd').val() === ''){
		$(this).text('密码不能为空');
	}else{
		$.ajax({
                cache: true,
                type: "POST",
                url:"htloginAction.action",
                data:{"username":$('#userName').val(),"pwd":$('#userPwd').val(),"date":new Date()},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="登录成功"){
                window.location.href ="indexaction.action";
                return false;
                }else{
                   alert(data);
                }
                }
            });
	}
});
</script>
</body>
</html>
