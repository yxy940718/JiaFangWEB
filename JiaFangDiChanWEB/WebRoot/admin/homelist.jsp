<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>房源列表 - 家房地产管理系统</title>
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
      <form action="/Flink/checkAll" method="post" >
        <h1 class="page-header">操作</h1>
        <ol class="breadcrumb">
          <li><a href="add-home.jsp">添加房源</a></li>
        </ol>
        <h1 class="page-header">管理</h1>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th><span class="glyphicon glyphicon-th-large"></span> <span class="visible-lg">选择</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg">房源ID</span></th>
                 <th><span class="glyphicon glyphicon-tag"></span> <span class="visible-lg">类型</span></th>
                <th><span class="glyphicon glyphicon-map-marker"></span> <span class="visible-lg">小区名称</span></th>
                <th><span class="glyphicon glyphicon-globe"></span> <span class="visible-lg">位置</span></th>
                <th><span class="glyphicon glyphicon-user"></span><span class="visible-lg">发帖人</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
              </tr>
            </thead>
            <tbody>
              
              <struts:iterator value="homelist" var="hl">
              <tr>
                <td><input type="checkbox" class="input-control" name="checkbox[]" value='<struts:property value="#hl.homeid"/>' /></td>
                <td class="article-title"><struts:property value="#hl.homeid"/></td>
                <td><struts:property value="#hl.leibie"/></td>
                <td class="article-title"><struts:property value="#hl.homename"/></td>
                <td><struts:property value="#hl.where"/></td>
                <td><struts:property value="#hl.adminname"/></td>
                <td><a href="#"onclick="alterhome('<struts:property value="#hl.homeid"/>','<struts:property value="#hl.Administratorid"/>')">查看/修改</a> <a href="#" onclick="deletehome('<struts:property value="#hl.homeid"/>','<struts:property value="#hl.Administratorid"/>')">删除</a></td>
              </tr>
              </struts:iterator>
              <script>
                function deletehome(val,person){
                var p='<struts:property value="#session.id"/>'
                if(p!=person&&p!='2017001'){
                   alert("只有超级管理员或本人才可删除！");
                   return;
                }
                if(window.confirm("此操作不可逆，是否确认？"))
			{
                    $.ajax({
                cache: true,
                type: "POST",
                url:"deleteHomeAction.action",
                data:{"HomeId":val},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="删除成功"){
              $(location).attr('href', 'selectHomeAction.action');
                return;
                }else{
                   alert(data);
                }
                }
            }); 
            }               
                }
                function alterhome(val,person){
                var p='<struts:property value="#session.id"/>'
                if(p!=person&&p!='2017001'){
                   alert("只有超级管理员或本人才可修改！");
                   return;
                }
               window.location.href="selectHomeDeiltusAction.action?homeid="+val;
            }               
              </script>
            </tbody>
          </table>
        </div>
        <footer class="message_footer">
          <nav>
           <%--  <div class="btn-toolbar operation" role="toolbar">
              <div class="btn-group" role="group"> <a class="btn btn-default" onClick="select()">全选</a> <a class="btn btn-default" onClick="reverse()">反选</a> <a class="btn btn-default" onClick="noselect()">不选</a> </div>
              <div class="btn-group" role="group">
                <button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="删除全部选中" name="checkbox_delete">删除</button>
              </div>--%>
            </div>
            <ul class="pagination pagenav">
              <li class="disabled"><a aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
              <li class="active"><a>1</a></li>
              <li class="disabled"><a aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
            </ul>
          </nav>
        </footer>
      </form>
    </div>
  </div>
</section>
<jsp:include flush="true" page="include.jsp"></jsp:include>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script> 
</body>
</html>
