<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <!-- 注册窗口 -->
		<div id="register" class="modal fade" tabindex="-1">
			<div class="modal-dialog" style="width:400px;">
				<div class="modal-content">
					<div class="modal-body">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-title">
						<h1 class="text-center">注册</h1>
					</div>
					<div class="modal-body">
						<form class="form-group" id="registerForm">
							<div class="form-group">
								<label for="">用户名</label> <input name="username" id="r_user" class="form-control"
									type="text" placeholder="6-15位字母或数字">
							</div>
							<div class="form-group">
								<label for="">密码</label> <input name="pwd" id="r_pwd" class="form-control"
									type="password" placeholder="至少6位字母或数字">
							</div>
							<div class="form-group">
								<label for="">再次输入密码</label> <input class="form-control"
									type="password"name="surepwd" placeholder="至少6位字母或数字">
							</div>
							<div class="form-group">
								<label for="">邮箱</label> <input name="email" id="r_email" class="form-control"
									type="email" placeholder="例如:123@123.com">
							</div>
							
							<div class="text-right">
								<button class="btn btn-primary" onclick="register()">提交</button>
								<button class="btn btn-danger" data-dismiss="modal">取消</button>
							</div>
							</form>
							<a href="" data-toggle="modal" data-dismiss="modal"
								data-target="#login">已有账号？点我登录</a>
						
					</div>
				</div>
			</div>
		</div>
		<!-- 登录窗口 -->
		<div id="login" class="modal fade">
			<div class="modal-dialog" style="width:400px;">
				<div class="modal-content">
					<div class="modal-body">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-title">
						<h1 class="text-center">登录</h1>
					</div>
					<div class="modal-body">
						<form id="LoginForm" class="form-group" method="post">
							<div class="form-group">
								<label for="">用户名</label> <input class="form-control"
									type="text" name="username" id="user" placeholder="">
							</div>
							<div class="form-group">
								<label for="">密码</label> <input class="form-control"
									type="password" id="pwd" name="password" placeholder="">
							</div>
						 
							<div class="text-right">
								<button class="btn btn-primary" id="loginbtn" onclick="sub()">登录</button>
								<button class="btn btn-danger" data-dismiss="modal">取消</button>
							</div>
							</form>
							<a href="" data-toggle="modal" data-dismiss="modal"
								data-target="#register">还没有账号？点我注册</a>
						
					</div>
				</div>
			</div>
		</div>
	<!---------------------------------------登录表单验证--------------------------------------------------------->
	<script>
	
    	$(document).ready(function() {
    $('#LoginForm').bootstrapValidator({
        message: 'This value is not valid',
        excluded : [':disabled'],//[':disabled', ':hidden', ':not(:visible)'] //设置隐藏组件可验证
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
         	username:{
                message: '标题无效',
                validators: {
                    notEmpty: {
                        message: '请输入用户名'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '用户名长度请在6-20之间'
                    },
                    regexp: {
                        regexp: /^[A-Za-z0-9]{6,20}$/,
                        message: '用户名错误'
                    }
                }
            },
            password:  {
                message: '内容无效',
                validators: {
                    notEmpty: {
                        message: '请输入密码'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '密码长度请在6-20之间'
                    },
                   
                }
            }
        }
    });
});
    	$(document).ready(function() {
    $('#registerForm').bootstrapValidator({
        message: 'This value is not valid',
        excluded : [':disabled'],//[':disabled', ':hidden', ':not(:visible)'] //设置隐藏组件可验证
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
         	username:{
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '请输入用户名'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '用户名长度请在6-20之间'
                    },
                    regexp: {
                        regexp: /^[A-Za-z0-9]{6,20}$/,
                        message: '用户名错误'
                    }
                }
            },
            password:  {
                message: '内容无效',
                validators: {
                    notEmpty: {
                        message: '请输入密码'
                    },
                    identical: {
					field: 'surepwd',
					message: '两次密码不相同'
					},
					different: {
					field: 'username',
					message: '不能和用户名相同'
					},
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '密码长度请在6-20之间'
                    },
                   
                }
            },
            surepwd:{
                message: '密码无效',
                validators: {
                    notEmpty: {
                        message: '请输入确认密码'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '密码长度请在6-20之间'
                    },
                    regexp: {
                        regexp: /^[\u4E00-\u9FA5A-Za-z0-9]{2,20}$/,
                        message: '密码错误'
                    }
                }
            },
            email:{
                message: '邮箱无效',
                validators: {
                    notEmpty: {
                        message: '请输入邮箱'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: '邮箱长度请在6-20之间'
                    },
                    regexp: {
                        regexp: /^[\u4E00-\u9FA5A-Za-z0-9]{2,20}$/,
                        message: '邮箱错误'
                    }
                }
            }
        }
    });
});
   function sub(){  
   var bv = form.data('bootstrapValidator');
        bv.validate();
        if (bv.isValid()) {
  $.ajax({
                cache: true,
                type: "POST",
                url:"loginAction.action",
                data:{"username":$('#user').val(),"password":$('#pwd').val()},// 你的formid
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="账号或密码错误！"){
                    alert(data);
                }else{
                    window.location.href="http://localhost:8080/JiaFangDiChanWEB/index.jsp"
                }
                }
            });
  }
  }
  function register(){
  $.ajax({
                cache: true,
                type: "POST",
                url:"register.action",
                data:{"username":$('#r_user').val(),"pwd":$('#r_pwd').val(),"email":$('#r_email').val()},// 你的formid
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="注册成功"){
                    alert(data);
                    window.location.href="http://localhost:8080/JiaFangDiChanWEB/index.jsp";
                }else{
                   alert(data);
                }
                }
            });
  }
</script>

<!-- ---------------------------------------------注册表单验证end---------------------------------------------- -->