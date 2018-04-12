<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>销售/客服 - 家房地产管理系统</title>
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
          <h1 class="page-header">优秀销售</h1>
          <form>
            <div class="form-group">
            <span class="prompt-text">添加优秀销售</span> </div>
            <div class="form-group">
              <label for="category-fname">选择要删除的销售人员ID</label>
              <select id="category-fname" class="form-control" name="saleid">
                <option value='<struts:property value="goodsalelist[0].administratorid"/>'selected><struts:property value="goodsalelist[0].administratorid"/></option>
                <option value='<struts:property value="goodsalelist[1].administratorid"/>'><struts:property value="goodsalelist[1].administratorid"/></option>
                <option value='<struts:property value="goodsalelist[2].administratorid"/>'><struts:property value="goodsalelist[2].administratorid"/></option>
              </select>
              <span class="prompt-text">系统只能设置3个优秀销售人员，添加推荐时需要删除旧推荐</span> </div>
            <div class="form-group">
              <label for="category-keywords">添加销售人员ID</label>
              <input type="text" id="category-keywords" name="h_keywords" class="form-control" placeholder="在此处输入销售人员ID" autocomplete="off">
            </div>
            <input class="btn btn-primary" type="button" onclick="h_setHot()" value="添加新推荐">
          </form>
          
          <br><br><br><br>
           <h1 class="page-header">添加合作客户</h1>  
           <form>
            <div class="form-group">
              <label for="category-fname">选择删除的合作客户ID</label>
              <select id="category-fname" class="form-control" name="fid">
                <option value='<struts:property value="customerlist[0].customserid"/>' selected><struts:property value="customerlist[0].customserid"/></option>
                <option value='<struts:property value="customerlist[1].customserid"/>'><struts:property value="customerlist[1].customserid"/></option>
                <option value='<struts:property value="customerlist[2].customserid"/>'><struts:property value="customerlist[2].customserid"/></option>
                <option value='<struts:property value="customerlist[3].customserid"/>'><struts:property value="customerlist[3].customserid"/></option>
              </select>
              <span class="prompt-text">系统只能设置4条合作客户，添加时需要删除旧合作客户</span> </div>
              <div class="form-group">
              <label for="category-fname">姓名</label>
               <input type="text" class="form-control"  name="customer"/>
              <span class="prompt-text">合作客户姓名</span> </div>
            <div class="form-group">
              <label for="category-keywords">合作年限</label>
              <input type="text" id="category-keywords" name="years" class="form-control" placeholder="与客户总计合作年限" autocomplete="off">
            </div>
            <div class="form-group">
              <label for="category-fname">简介</label>
               <input type="text" class="form-control"  name="jianjie">
              <span class="prompt-text">客户简介</span> </div>
              <div class="form-group">
              <label for="category-fname">客户照片</label>
               <input type="button" class="btn btn-info"id="CTRupImage" value="选择"/>
               <input type="hidden" class="btn btn-info" id="customerimg" name="imgsrc"/>
              </div>
            <input class="btn btn-primary" type="button" onclick="setHot()" value="添加新推荐"/>
          </form>
          
          <script type="text/javascript">
              function h_setHot(){
            
                     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"setGoodSale.action",
		                data:{"administratorid":$("select[name='saleid']").val(),"newadministratorid":$("input[name='h_keywords']").val()},
		                async: false,
		                dataType:"html",
		                error:function(request) {
		                    alert("网络错误，请稍后重试");
		                },
		                success:function(data){
		               window.location.href="setCustomerSALE.action";
		                  }
                  })
                }
       
                  
                
              function setHot(){
                
                     $.ajax({
		                cache: true,
		                type: "POST",
		                url:"setcustomer.action",
		                data:{"customerid":$("select[name='fid']").val(),"customer":$("input[name='customer']").val(),"years":$("input[name='years']").val(),"jianjie":$("input[name='jianjie']").val(),"imgsrc":$("input[name='imgsrc']").val()},
		                async: false,
		                dataType:"html",
		                error:function(request) {
		                    alert("网络错误，请稍后重试");
		                },
		                success:function(data){
		                     window.location.href="setCustomerSALE.action";
		                  }
                  })
                }  
          </script>
        </div>
        <div class="col-md-7">
          <h1 class="page-header">优秀销售</h1>
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
              <tr>
                  <th><span class="glyphicon glyphicon-paperclip"></span> <span class="visible-lg">ID</span></th>
                  <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">姓名</span></th>
                  <th><span class="glyphicon glyphicon-list-alt"></span> <span class="visible-lg">电话</span></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><struts:property value="goodsalelist[0].administratorid"/></td>
                  <td><struts:property value="goodsalelist[0].username"/></td>
                  <td><struts:property value="goodsalelist[0].phone"/></td>
                </tr>
                <tr>
                  <td><struts:property value="goodsalelist[1].administratorid"/></td>
                  <td><struts:property value="goodsalelist[1].username"/></td>
                  <td><struts:property value="goodsalelist[1].phone"/></td>
                </tr>
                <tr>
                  <td><struts:property value="goodsalelist[2].administratorid"/></td>
                  <td><struts:property value="goodsalelist[2].username"/></td>
                  <td><struts:property value="goodsalelist[2].phone"/></td>
                </tr>
               
                
              </tbody>
            </table>
         </div>
          <br><br><br><br><br><br> <br><br>
          <h1 class="page-header">合作客户</h1>
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th><span class="glyphicon glyphicon-paperclip"></span> <span class="visible-lg">客户ID</span></th>
                  <th><span class="glyphicon glyphicon-file"></span> <span class="visible-lg">客户姓名</span></th>
                  <th><span class="glyphicon glyphicon-list-alt"></span> <span class="visible-lg">合作年限</span></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><struts:property value="customerlist[0].customserid"/></td>
                  <td><struts:property value="customerlist[0].customername"/></td>
                  <td><struts:property value="customerlist[0].customeryear"/></td>
                  
                </tr>
                <tr>
                  <td><struts:property value="customerlist[1].customserid"/></td>
                  <td><struts:property value="customerlist[1].customername"/></td>
                  <td><struts:property value="customerlist[1].customeryear"/></td>
                 
                </tr>
                <tr>
                  <td><struts:property value="customerlist[2].customserid"/></td>
                  <td><struts:property value="customerlist[2].customername"/></td>
                  <td><struts:property value="customerlist[2].customeryear"/></td>
                 
                </tr>
                <tr>
                  <td><struts:property value="customerlist[3].customserid"/></td>
                  <td><struts:property value="customerlist[3].customername"/></td>
                  <td><struts:property value="customerlist[3].customeryear"/></td>
                  
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
<script src="../ueditor.config.js"></script> 
<script src="../ueditor.all.min.js"> </script> 
<script src="../lang/zh-cn/zh-cn.js"></script>  
<script id="CTRuploadEditor" type="text/plain" style="display:none;"></script>
<script type="text/javascript">

//弹出图片上传的对话框
$('#CTRupImage').click(function () {

 var CTRuploadEditor = UE.getEditor('CTRuploadEditor');
$(function () {
    //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
    
    CTRuploadEditor.ready(function () {
        //设置编辑器不可用
        //_uploadEditor.setDisabled();
        //隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
        CTRuploadEditor.hide();
        //侦听图片上传
        CTRuploadEditor.addListener('beforeInsertImage', function (t, arg) {
            //将地址赋值给相应的input,只去第一张图片的路径
                $("#customerimg").attr('value',arg[0].src);
        })
       
    });
});
    var myImage = CTRuploadEditor.getDialog("insertimage");
    myImage.open();
   // ${"#edui_fixedlayer"}.attr('style',"position: fixed; left: 0px; top: 0px; width: 0px; height: 0px; z-index: 9999;");
});

</script>
</body>
</html>
