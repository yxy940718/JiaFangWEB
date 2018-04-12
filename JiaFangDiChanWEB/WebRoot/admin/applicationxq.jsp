<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>申请发布 - 家房地产管理系统</title>
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
      <div class="row">
       
          
          
          
          
          
          <div class="row">
           <div class="col-md-2 hidden-xs">
           </div> 
           <div class="col-md-6 col-sm-6 col-xs-12  contact-text">
                <div class="form-horizontal" style="margin: 100px 0px 100px 0px">
                    <h1 class="text-center">申请发布</h1>
                 <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">联系人:</label>
                    <div class="col-sm-10">
                      <input type="text" name="user" class="form-control"  value='<struts:property value="applicationdeiltuslist[0].user"/>' readonly="readonly"/>
                    </div>
                  </div>
                        
                <div class="form-group">
                    <label for="firstname"  class="col-sm-2 control-label">电话:</label>
                    <div class="col-sm-10">
                      <input type="text" name="phone" class="form-control"value='<struts:property value="applicationdeiltuslist[0].phone"/>'  readonly="readonly"/>
                    </div>
                  </div>
                        
                <div class="form-group">
                    <label for="firstname"  class="col-sm-2 control-label">QQ:</label>
                    <div class="col-sm-10">
                      <input type="text" name="qq" class="form-control" value='<struts:property value="applicationdeiltuslist[0].qq"/>' readonly="readonly"/>
                    </div>
                  </div>
                    
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">类别:</label>
                        <div class="col-sm-10">
                            <input type="text" name="qq"value='<struts:property value="applicationdeiltuslist[0].leibie"/>' class="form-control" readonly="readonly"/>
                        </div>
                    </div>
                    
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">小区名称:</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control"value='<struts:property value="applicationdeiltuslist[0].home"/>' name="home" readonly="readonly">
                    </div>
                  </div>
                    
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">位置:</label>
                    <div class="col-sm-10">
                      <input type="text" name="where" class="form-control" value='<struts:property value="applicationdeiltuslist[0].where"/>' readonly="readonly">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">房屋类型:</label>
                    <div class="col-sm-10">
                      <div class="row">
                        <div class="col-lg-4">
                            <div class="input-group">
                          <input type="text" name="shi" value='<struts:property value="applicationdeiltuslist[0].shi"/>' class="form-control" readonly="readonly"/>
                            <span class="input-group-addon">室</span>
                                </div>
                        </div>
                    
                        <div class="col-lg-4">
                           <div class="input-group">
                          <input type="text" name="shi" value='<struts:property value="applicationdeiltuslist[0].ting"/>' class="form-control" readonly="readonly"/>
                            <span class="input-group-addon">厅</span>
                                </div>
                        </div>
                       
                        <div class="col-lg-4">
                           <div class="input-group">
                          <input type="text" name="shi"value='<struts:property value="applicationdeiltuslist[0].wei"/>' class="form-control" readonly="readonly"/>
                            <span class="input-group-addon">卫</span>
                                </div>
                        </div>
                    </div>
                      </div>   
                  </div>
                 </div> 
                  </div> 
                </div>      
            </div>         
           <div class="col-md-2 hidden-xs">
           </div> 
        </div>
      </div>
    </div>
  </div>
</section>
 <jsp:include flush="true" page="include.jsp"></jsp:include>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script>
</body>
</html>