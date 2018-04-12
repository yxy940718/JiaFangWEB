<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>管理用户 - 家房地产管理系统</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
<link rel="shortcut icon" href="images/icon/favicon.ico">
<script src="js/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>

<body class="user-select">
<section class="container-fluid">
  <jsp:include flush="true" page="jf_nav.jsp"></jsp:include>
  <div class="row">
        <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
     <ul class="nav nav-sidebar">
        <li class="active"><a href="indexaction.action">报告</a></li>
      </ul>
       <ul class="nav nav-sidebar">
        <li><a href="selectHomeAction.action">房源列表</a></li>
        <li><a href="hotrecommendAction.action">房源推荐</a></li>
        <li><a href="selectnewsZXlist.action">新闻资讯</a></li>
        <li><a href="selectlContantAction.action">用户留言</a></li>
        <li><a href="selectApplicationtAction.action">申请发布</a></li>
        <li><a href="selectAdminAction.action">管理用户</a></li>
         <li><a href="selectLeaedlist.action">未发布房源</a></li>
        <li><a href="setCustomerSALE.action">销售/客服</a></li>
      </ul>
    </aside>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
    <h1 class="page-header">操作</h1>
        <ol class="breadcrumb">
          <li><a data-toggle="modal" data-target="#addUser">增加用户</a></li>
        </ol>
        <h1 class="page-header">管理</h1>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th><span class="glyphicon glyphicon-th-large"></span> <span class="visible-lg">ID</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg">姓名</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg">电话</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
              </tr>
            </thead>
            <tbody>
            <struts:iterator value="userlist" var="message">
              <tr>
                <td><struts:property value="#message.administratorid"/></td>
                <td><struts:property value="#message.username"/></td>
                <td><struts:property value="#message.phone"/></td>
                <td> <a href="#" onclick="deleteadmin('<struts:property value="#message.administratorid"/>')" name="delete">删除</a></td>
              </tr>
              </struts:iterator>
            </tbody>
          </table>
        </div>
    </div>
  </div>
</section>
<jsp:include flush="true" page="include.jsp"></jsp:include>
<!--增加用户模态框-->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form>
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >增加用户</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">姓名:</td>
                <td width="80%"><input type="text" id="a_username" required oninvalid="setCustomValidity('请输入姓名名！');" oninput="setCustomValidity('');"  class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" id="a_userphone"  required oninvalid="setCustomValidity('请输入电话！');" oninput="setCustomValidity('');" class="form-control" name="usertel" maxlength="11" autocomplete="off" /></td>
              </tr>
                <tr>
                <td wdith="20%">QQ:</td>
                <td width="80%"><input type="text" id="a_userqq"required oninvalid="setCustomValidity('请输入QQ！');" oninput="setCustomValidity('');" class="form-control" name="usertel" maxlength="11" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">微信:</td>
                <td width="80%"><input type="text" id="a_userwechat" required oninvalid="setCustomValidity('微信！');" oninput="setCustomValidity('');" class="form-control" name="usertel" maxlength="20" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">邮箱:</td>
                <td width="80%"><input type="text" id="a_useremail"required oninvalid="setCustomValidity('请输入邮箱！');" oninput="setCustomValidity('');"  class="form-control" name="usertel"  autocomplete="off" /></td>
              </tr>
              <td wdith="20%">个人简介:</td>
                <td width="80%">
                <textarea class="form-control" id="a_userIntroduction" style="text-align:left" name="usertel" maxlength="200" autocomplete="off">
                </textarea></td>
              </tr>
              <tr>
                <td wdith="20%">新密码:</td>
                <td width="80%"><input type="password" class="form-control" placeholder="6-16位"  id="a_password" minlength="6" maxlength="16" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" id="apassword" maxlength="16" autocomplete="off" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <input type="hidden" name="userid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <input type="button" onclick="addadmin()" class="btn btn-primary" value="提交"/>
        </div>
      </div>
    </form>
    <struts:if test="%{#session.id=='2017001'}">
     <script type="text/javascript">
       function addadmin(){
          
              if($('#a_password').val()!==$('#apassword').val()){
                alert("两次密码不相同");
                retun ;
           }else{
              $.ajax({
                cache: true,
                type: "POST",
                url:"addAdminAction.action",
                data:{"username":$('#a_username').val(),"phone":$('#a_userphone').val(),
                      "QQ":$('#a_userqq').val(),"wechat":$('#a_userwechat').val(),"email":$('#a_useremail').val(),
                      "Introduction":$('#a_userIntroduction').val(),"pwd":$('#a_password').val()},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="添加成功"){
              $(location).attr('href', 'selectAdminAction.action');
                return;
                }else{
                   alert(data);
                }
                }
            });
           }
          
           }
    </script>
     </struts:if>
	<struts:else>
	<script type="text/javascript">
       function addadmin(){
			   alert("对不起您没有权限");
			   }
	 </script>
	</struts:else>
 </div>

<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script> 
 <struts:if test="%{#session.id=='2017001'}">
<script>
    function deleteadmin(val){
            if(val=="2017001"){
              alert("超级管理不允许删除");
              return;
            }
           if (window.confirm("此操作不可逆，是否确认？")) {
               $.ajax({
                cache: true,
                type: "POST",
                url:"deleteAdminAction.action",
                data:{"adminid":val},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="删除成功"){
                $(location).attr('href', 'selectAdminAction.action');
                return;
                }else{
                   alert(data);
                }
                }
            });  
            }
     }

</script>
     </struts:if>
	<struts:else>
	<script type="text/javascript">
       function deleteadmin(val){
			   alert("对不起您没有权限");
			   }
	 </script>
	</struts:else>
</body>
</html>
