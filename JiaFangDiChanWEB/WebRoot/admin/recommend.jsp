<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>热门推荐 - 家房地产管理系统</title>
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
        <div class="col-md-5">
          <h1 class="page-header">添加热门推荐</h1>
          <form>
            <div class="form-group">
              <label for="category-fname">类别</label>
             <input type="text" class="form-control" readonly="readonly" name="h_leixing" value="出租">
              <span class="prompt-text">添加热门出租房源</span> </div>
            <div class="form-group">
              <label for="category-fname">选择删除的房屋ID</label>
              <select id="category-fname" class="form-control" name="h_fid">
                <option value='<struts:property value="hotleaselist[0].homeid"/>' selected><struts:property value="hotleaselist[0].homeid"/></option>
                <option value='<struts:property value="hotleaselist[1].homeid"/>'><struts:property value="hotleaselist[1].homeid"/></option>
                <option value='<struts:property value="hotleaselist[2].homeid"/>'><struts:property value="hotleaselist[2].homeid"/></option>
                <option value='<struts:property value="hotleaselist[3].homeid"/>'><struts:property value="hotleaselist[3].homeid"/></option>
              </select>
              <span class="prompt-text">系统只能设置4条热门推荐，添加推荐时需要删除旧推荐</span> </div>
            <div class="form-group">
              <label for="category-keywords">添加房屋ID</label>
              <input type="text" id="category-keywords" name="h_keywords" class="form-control" placeholder="在此处输入房屋ID" autocomplete="off">
            </div>
            <input class="btn btn-primary" type="button" onclick="h_setHot()" value="添加新推荐">
          </form>
          
          <br><br><br><br>
           <h1 class="page-header">添加热门出售</h1>  
           <form>
            <div class="form-group">
              <label for="category-fname">类别</label>
               <input type="text" class="form-control" readonly="readonly" name="leixing" value="出售">
              <span class="prompt-text">添加热门出售或热门出租</span> </div>
            <div class="form-group">
              <label for="category-fname">选择删除的房屋ID</label>
              <select id="category-fname" class="form-control" name="fid">
                <option value='<struts:property value="hotsalelist[0].homeid"/>' selected><struts:property value="hotsalelist[0].homeid"/></option>
                <option value='<struts:property value="hotsalelist[1].homeid"/>'><struts:property value="hotsalelist[1].homeid"/></option>
                <option value='<struts:property value="hotsalelist[2].homeid"/>'><struts:property value="hotsalelist[2].homeid"/></option>
                <option value='<struts:property value="hotsalelist[3].homeid"/>'><struts:property value="hotsalelist[3].homeid"/></option>
              </select>
              <span class="prompt-text">系统只能设置4条热门推荐，添加推荐时需要删除旧推荐</span> </div>
            <div class="form-group">
              <label for="category-keywords">添加房屋ID</label>
              <input type="text" id="category-keywords" name="keywords" class="form-control" placeholder="在此处输入房屋ID" autocomplete="off">
            </div>
            <input class="btn btn-primary" type="button" onclick="setHot()" value="添加新推荐">
          </form>
          
          <script type="text/javascript">
              function h_setHot(){
                 $.ajax({
                cache: true,
                type: "POST",
                url:"selectleixingAction.action",
                data:{"homeid":$("select[name='h_fid']").val(),"newhomeid":$("input[name='h_keywords']").val(),"tablename":"HotLease"},
                async: false,
                dataType:"html",
                error:function(request) {
                    alert("网络错误，请稍后重试");
                },
                success:function(data){
                  if(data=="您推荐的房源ID类型为出售"){
                  alert(data);
                     return;
                  }else{
                     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"setrecommendAction.action",
		                data:{"homeid":$("select[name='h_fid']").val(),"newhomeid":$("input[name='h_keywords']").val(),"tablename":"HotLease"},
		                async: false,
		                dataType:"html",
		                error:function(request) {
		                    alert("网络错误，请稍后重试");
		                },
		                success:function(data){
		                window.location.href="hotrecommendAction.action";
		                  }
                  })
                }
                }
            });
               }   
                  
                
              function setHot(){
                $.ajax({
                cache: true,
                type: "POST",
                url:"selectleixingAction.action",
                data:{"homeid":$("select[name='fid']").val(),"newhomeid":$("input[name='keywords']").val(),"tablename":"HotSale"},
                async: false,
                dataType:"html",
                error:function(request) {
                    alert("网络错误，请稍后重试");
                },
                success:function(data){
                  if(data=="您推荐的房源ID类型为出租"){
                   alert(data);
                     return;
                  }else{
                     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"setrecommendAction.action",
		                data:{"homeid":$("select[name='fid']").val(),"newhomeid":$("input[name='keywords']").val(),"tablename":"HotSale"},
		                async: false,
		                dataType:"html",
		                error:function(request) {
		                    alert("网络错误，请稍后重试");
		                },
		                success:function(data){
		                    window.location.href="hotrecommendAction.action";
		                  }
                  })
                }
                }
            });
               }   
          </script>
        </div>
        <div class="col-md-7">
          <h1 class="page-header">热门出租</h1>
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
              <tr>
                  <th><span class="glyphicon glyphicon-paperclip"></span> <span class="visible-lg">ID</span></th>
                  <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">小区名称</span></th>
                  <th><span class="glyphicon glyphicon-list-alt"></span> <span class="visible-lg">房屋位置</span></th>
                  <th><span class="glyphicon glyphicon-pushpin"></span> <span class="visible-lg">添加人ID</span></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><struts:property value="hotleaselist[0].homeid"/></td>
                  <td><struts:property value="hotleaselist[0].homename"/></td>
                  <td><struts:property value="hotleaselist[0].where"/></td>
                  <td><struts:property value="hotleaselist[0].administratorid"/></td>
                </tr>
                <tr>
                  <td><struts:property value="hotleaselist[1].homeid"/></td>
                  <td><struts:property value="hotleaselist[1].homename"/></td>
                  <td><struts:property value="hotleaselist[1].where"/></td>
                  <td><struts:property value="hotleaselist[1].administratorid"/></td>
                </tr>
                <tr>
                  <td><struts:property value="hotleaselist[2].homeid"/></td>
                  <td><struts:property value="hotleaselist[2].homename"/></td>
                  <td><struts:property value="hotleaselist[2].where"/></td>
                  <td><struts:property value="hotleaselist[2].administratorid"/></td>
                </tr>
                <tr>
                  <td><struts:property value="hotleaselist[3].homeid"/></td>
                  <td><struts:property value="hotleaselist[3].homename"/></td>
                  <td><struts:property value="hotleaselist[3].where"/></td>
                  <td><struts:property value="hotleaselist[3].administratorid"/></td>
                </tr>
                
              </tbody>
            </table>
         </div>
          <br><br><br><br><br><br> <br><br><br>  
          <h1 class="page-header">热门出售</h1>
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th><span class="glyphicon glyphicon-paperclip"></span> <span class="visible-lg">ID</span></th>
                  <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">小区名称</span></th>
                  <th><span class="glyphicon glyphicon-list-alt"></span> <span class="visible-lg">房屋位置</span></th>
                  <th><span class="glyphicon glyphicon-pushpin"></span> <span class="visible-lg">添加人ID</span></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><struts:property value="hotsalelist[0].homeid"/></td>
                  <td><struts:property value="hotsalelist[0].homename"/></td>
                  <td><struts:property value="hotsalelist[0].where"/></td>
                  <td><struts:property value="hotsalelist[0].administratorid"/></td>
                  
                </tr>
                <tr>
                  <td><struts:property value="hotsalelist[1].homeid"/></td>
                  <td><struts:property value="hotsalelist[1].homename"/></td>
                  <td><struts:property value="hotsalelist[1].where"/></td>
                  <td><struts:property value="hotsalelist[1].administratorid"/></td>
                 
                </tr>
                <tr>
                  <td><struts:property value="hotsalelist[2].homeid"/></td>
                  <td><struts:property value="hotsalelist[2].homename"/></td>
                  <td><struts:property value="hotsalelist[2].where"/></td>
                  <td><struts:property value="hotsalelist[2].administratorid"/></td>
                 
                </tr>
                <tr>
                  <td><struts:property value="hotsalelist[3].homeid"/></td>
                  <td><struts:property value="hotsalelist[3].homename"/></td>
                  <td><struts:property value="hotsalelist[3].where"/></td>
                  <td><struts:property value="hotsalelist[3].administratorid"/></td>
                  
                </tr>
              </tbody>
            </table>
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
