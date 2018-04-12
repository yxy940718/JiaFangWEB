<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
 <%@page import="java.util.Date"%>
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
      <h1 class="page-header">信息总览</h1>
      <div class="row placeholders">
        <div class="col-xs-6 col-sm-4 placeholder">
          <h4>新闻资讯</h4>
          <span class="text-muted"> <struts:property value="countlist[0].newscount"/> 条</span> </div>
        <div class="col-xs-6 col-sm-4 placeholder">
          <h4>申请发布</h4>
          <span class="text-muted"><struts:property value="countlist[0].homecount"/> 条</span> </div>
        <div class="col-xs-6 col-sm-4 placeholder">
          <h4>用户留言</h4>
          <span class="text-muted"><struts:property value="countlist[0].contantcount"/> 条</span> </div>
      </div>
      <h1 class="page-header">状态</h1>
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <tbody>
            <tr>
              <td>登录者: <span><struts:property value="#session.name" /></span>，欢迎登录本系统</td>
            </tr>
          </tbody>
        </table>
      </div>
      <h1 class="page-header">系统信息</h1>
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead>
            <tr> </tr>
          </thead>
          <tbody>
            <tr>
              <td>网站域名:</td>
              <td>http://www.xxx.xxx</td>
              <td>服务器软件:</td>
              <td>Apache Tomcat/9.0.0.M22</td>
            </tr>
            <tr>
              <td>服务器系统:</td>
              <td>Ubuntu 16.04 64位</td>
              <td>JDK版本:</td>
              <td>1.8.0</td>
            </tr>
            <tr>
              <td>Nginx版本:</td>
              <td>1.11.3</td>
               <td>MYSQL版本:</td>
              <td>5.5.40</td>
            </tr>
            <tr>
              <td>程序版本:</td>
              <td class="version">JiaFangDiChan 1.0 <font size="-6" color="#BBB">(20170729112215)</font></td>
              <td>上传文件:</td>
              <td>可以</td>
            </tr>
            <tr>
              <td>程序编码:</td>
              <td>UTF-8</td>
              <td>最后更新时间:</td>
              <td>2017-07-30 15:50:30</td>
            </tr>
          </tbody>
          <tfoot>
            <tr></tr>
          </tfoot>
        </table>
      </div>
      <footer>
        <h1 class="page-header">程序信息</h1>
        <div class="table-responsive">
        <table class="table table-striped table-hover">
          <tbody>
            <tr>
              <td><span style="display:inline-block; width:8em">版权所有</span> </td>
            <td>Copyright &copy; 2017.Company JiaFangDiChan All rights reserved.</td>
            </tr>
          </tbody>
        </table>
        </div>
      </footer>
    </div>
  </div>
</section>
<jsp:include flush="true" page="include.jsp"></jsp:include>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script>
</body>
</html>