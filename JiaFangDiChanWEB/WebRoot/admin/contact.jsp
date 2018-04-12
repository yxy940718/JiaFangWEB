<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户留言 - 家房地产管理系统</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
<link rel="shortcut icon" href="images/icon/favicon.ico">
<style>
    
    </style>
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
      <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <br>
            <br>
            <h1 class="text-center">用户留言</h1>
            <br>
            <br>
          
              <table class="table table-bordered" style="word-break:break-all; word-wrap:break-all;">
	<thead>
		<tr >
			<th class="col-md-4" style="font-size:18px;height:100px">栏目</th>
			<th style="font-size:18px;height:100px">内容</th>
		</tr>
	</thead>
	<tbody>
		<tr >
			<td style="font-size: 18px;height:100px">姓名</td>
			<td style="font-size: 14px;"><struts:property value="contantdeiltus[0].person"/></td>
			
		</tr>
		<tr >
			
			<td style="font-size: 18px;height:100px">电话</td>
			<td style="font-size: 14px;"><struts:property value="contantdeiltus[0].phone"/></td>
		</tr>
		<tr>
			
			<td style="font-size: 18px;height:100px">QQ/邮箱</td>
			<td style="font-size: 14px;"><struts:property value="contantdeiltus[0].qq"/></td>
		</tr>
        <tr>
			
			<td style="font-size:18px;">内容</td>
			<td style="height: 300px;font-size: 14px;display: block "><struts:property value="contantdeiltus[0].cvaule"/></td>
		</tr>
	</tbody>
</table> 
          </div>
        
       <div class="col-md-2"></div>
      </div>
    </div>
  </div>
</section>
<jsp:include flush="true" page="include.jsp"></jsp:include>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script> 
<!--summernote富文本编辑器-->
<link rel="stylesheet" type="text/css" href="lib/summernote/summernote.css">
<script src="lib/summernote/summernote.js"></script> 
<script src="lib/summernote/lang/summernote-zh-CN.js"></script> 
<script>
$('#article-content').summernote({
	lang: 'zh-CN'
});
</script>
</body>
</html>