<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>申请发布</title>
<link rel="shortcut icon" href="images/favicon.ico" /> 
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" type="text/css" href="css/fileinput.css">
</head>
<body>


<!--Loader-->
<div class="loader">
  <div class="span">
    <div class="location_indicator"></div>
  </div>
</div>
 <!--Loader--> 
 
 

<!--Header-->
<header class="layout_default ">
  
         <jsp:include flush="true" page="/nav.jsp"></jsp:include>
   
  <div class="header-upper">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-12">
          <div class="logo">
             <a class="navbar-brand" href="#"><img src="images/logo.png" style="width:100px;height:60px;vertical-align:middle" class="logo" alt=""/>
           </a>
           <a class="navbar-brand"style="margin-top:15px"><span style="color:black;font-size:20px">家房地产</span></a>
          </div>
        </div>
        <!--Info Box-->
        <div class="col-md-9 col-sm-12 right">
          <div class="info-box first">
            <div class="icons"><i class="icon-telephone114"></i></div>
            <ul>
              <li><strong>联系电话</strong></li>
              <li>010-59111169</li>
            </ul>
          </div>
          <div class="info-box">
            <div class="icons"><i class="icon-icons74"></i></div>
            <ul>
              <li><strong>地址</strong></li>
              <li>北京市朝阳区通惠家园</li>
            </ul>
          </div>
          <div class="info-box">
            <div class="icons"><i class="icon-icons142"></i></div>
            <ul>
              <li><strong>邮箱</strong></li>
              <li><a href="javascript:void(0)">xxx@qq.com</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-default navbar-sticky bootsnav">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          
          <!-- Start Header Navigation -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
            <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand sticky_logo" href="#"><img src="images/logo-white.png" style="width:90px;height:60px;" class="logo" alt=""></a>
          </div> <!-- End Header Navigation -->
          <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav" data-in="fadeIn" data-out="fadeOut">
               <li><a href="Indexaction.action">主页</a></li>
			  <li><a href="PageList.action?pageNo=1">房源列表</a></li>
			  <li><a href="newsPageList.action?pageNewsNo=1">热点咨询</a></li>
			  <li><a href="property_detail.action?homeid=9">房屋供求</a></li>
              <li><a href="contact.jsp">联系我们</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </nav>
</header>
<!--Header Ends-->



 <section >
  <div class="contact" style="margin-top:50px;margin-bottom:50px">
  
    <div class="container">
      <div class="row">
           <div class="col-md-2 hidden-xs">
           </div> 
           <div class="col-md-6 col-sm-6 col-xs-12  contact-text">
                <form class="form-horizontal" action="application.action" method=”post“>
                    <h2>申请发布</h2>
                 <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">联系人:</label>
                    <div class="col-sm-10">
                      <input type="text" name="user" class="form-control"/>
                    </div>
                  </div>
                        
                <div class="form-group">
                    <label for="firstname"  class="col-sm-2 control-label">电话:</label>
                    <div class="col-sm-10">
                      <input type="text" name="phone" class="form-control"/>
                    </div>
                  </div>
                        
                <div class="form-group">
                    <label for="firstname"  class="col-sm-2 control-label">QQ:</label>
                    <div class="col-sm-10">
                      <input type="text" name="qq" class="form-control"/>
                    </div>
                  </div>
                    
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">类别:</label>
                        <div class="col-sm-10">
                            <label class="checkbox-inline">
                              <input type="radio" name="leibie" checked="checked" value="出租">出租
                            </label>
                            <label class="checkbox-inline">
                              <input type="radio" name="leibie" value="出售">出售
                            </label>
                        </div>
                    </div>
                    
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">小区名称:</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="home" placeholder="例科教新村31号">
                    </div>
                  </div>
                    
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">位置:</label>
                    <div class="col-sm-10">
                      <input type="text" name="where" class="form-control"  placeholder="例青年中路">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">房屋类型:</label>
                    <div class="col-sm-10">
                      <div class="row">
                        <div class="col-lg-4">
                          <input type="text" name="shi" class="form-control" placeholder="室"/>
                        </div>
                    
                        <div class="col-lg-4">
                          <div class="row"></div>
                          <input type="text" name="ting" class="form-control" placeholder="厅">
                        </div>
                       
                        <div class="col-lg-4">
                          <input type="text" name="wei" class="form-control" placeholder="卫">
                        </div>
                    </div>
                      </div>   
                  </div>
                    
                  <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                       
                        <div class="col-lg-4"  style="padding: 0px">
                             <select class="form-control" name="zhuangxiu">
                                  <option>装修情况</option>
                                  <option value="毛坯">毛坯</option>
                                  <option value="简单装修">简单装修</option>
                                  <option value="中等装修">中等装修</option>
                                  <option value="精装修">精装修</option>
                                  <option value="豪华装修">豪华装修</option>
                            </select>
                        </div>
                    </div>
                 </div> 
                    
                    
                <%--   <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">上传图片:</label>
                    <div class="col-sm-10">
                      <input id="myFile" type="file" name="upload" class="fileloading">
                    </div>
                  </div>  -- --%>
                        
                 
                  <div class="form-group">
                  <div class="text-center">
								<input class="btn btn-primary" type="button" onclick="application()" value="提交"/>
								<button class="btn btn-danger" data-dismiss="modal">取消</button>
				  </div>
				  </div>
               
                       
                </form>      
            </div>         
           <div class="col-md-2 hidden-xs">
           </div> 
        </div>
    </div>
  </div>
</section>
<!-- Contact End -->

<!--Footer-->
<footer class="padding_top footer2">
  <div class="container">
    <div class="row">
        <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="footer_panel bottom30">
        <div class="col-md-3 col-sm-12">
          <div class="row">
             <a class="navbar-brand" href="#"><img src="images/logo-white.png" style="width:100px;height:90px;vertical-align:middle" class="logo" alt=""/>
           </a>
           <br>
           <a class="navbar-brand"style="margin-top:15px"><span style="color:white;font-size:20px">家房地产</span></a>
          </div>
        </div>
        <div class="row">
        <br>
          <p class="bottom15">家房网以向用户提供最真实、海量全面的房源信息为目标。<br>为用户量身打造房屋租赁、二手房、新房信息数据库服务、小区房价服务、多图房源服务、地图找房服务等。<br>同时为用户提供全面的线上线下交易流程指导，为用户带来“权威二手房”的服务体验。
          </p>
        </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</footer>
<!--CopyRight-->
<div class="copyright index2">
  <div class="copyright_inner">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <p>Copyright &copy; 2017.Company JiaFang All rights reserved.</p>
        </div>
        <div class="col-md-5 text-right">
          <p>Designed by JiaFang</p>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include flush="true" page="/login.jsp"></jsp:include>

<script src="js/jquery-2.1.4.js"></script>
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootsnav.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/jquery-countTo.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
<script src="js/range-Slider.min.js"></script>
<script src="js/owl.carousel.min.js"></script> 
<script src="js/jquery.cubeportfolio.min.js"></script>
<script src="js/selectbox-0.2.min.js"></script>
<script src="js/zelect.js"></script>
<!--Revolution Slider-->
<script src="js/jquery.themepunch.tools.min.js"></script>
<script src="js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution.extension.layeranimation.min.js"></script>
<script src="js/revolution.extension.navigation.min.js"></script>
<script src="js/revolution.extension.parallax.min.js"></script>
<script src="js/revolution.extension.slideanims.min.js"></script>
<script src="js/revolution.extension.video.min.js"></script>

<script src="js/neary-by-place.js"></script> 
<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyAOBKD6V47-g_3opmidcmFapb3kSNAR70U&libraries=places"></script> 
<script src="js/google-map.js"></script>--->
<script src="js/contact.js"></script>

<script src="js/google-map.js"></script> 


<script src="js/custom.js"></script>
<script src="js/functions.js"></script>
<script src="js/fileinput.js"></script>  
  <script src="js/zh.js"></script> 
  <script type="text/javascript" src="js/bootstrapValidator.js"></script>
  <script type="text/javascript">
  $("#myFile").fileinput({
            language :'zh',
            uploadUrl : "${pageContext.request.contextPath }/upload.action",
            autoReplace : true,
            maxFileCount : 5,  //表示允许同时上传的最大文件个数
            allowedFileExtensions : [ "jpg", "png", "gif" ],
            maxFileSize: 3072,//单位为kb，3m
            browseClass : "btn btn-primary", //按钮样式 
             enctype: 'multipart/form-data',
            previewFileIcon : "<i class='glyphicon glyphicon-king'></i>"
        }).on("fileuploaded", function(e, data) {
            var res = data.response;
        });
        
     
  </script>
  <script type="text/javascript">
   function application(){
  $.ajax({
                cache: true,
                type: "POST",
                url:"application.action",
                
                data:{"leibie":$("input[name='leibie']").val(),
                       "home":$("input[name='home']").val(),
                       "where":$("input[name='where']").val(),
                       "shi":$("input[name='shi']").val(),
                       "ting":$("input[name='ting']").val(),
                       "wei":$("input[name='wei']").val(),
                       "zhuangxiu":$("select[name='zhuangxiu']").val(),
                       "user":$("input[name='user']").val(),
                       "phone":$("input[name='phone']").val(),
                       "qq":$("input[name='qq']").val()
                       },
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="提交成功"){
                    alert(data);
                    window.location.href="application.jsp";
                }else{
                   alert(data);
                }
                }
            });
  }
  </script>
  



</body>
</html>
