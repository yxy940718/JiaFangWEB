<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>联系我们</title>
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
<header class="layout_default">
  <jsp:include flush="true" page="/nav.jsp"></jsp:include>
   <jsp:include flush="true" page="/nav1.jsp"></jsp:include>
  <nav class="navbar navbar-default navbar-sticky bootsnav">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          
          <!-- Start Header Navigation -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
            <i class="fa fa-bars"></i>
            </button>
           <a class="navbar-brand sticky_logo" href="#"><img src="images/logo_blue.png" style="width:90px;height:40px"class="logo" alt=""></a>
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


<!--Contact-->
<section id="contact-us">
  <div class="contact">
    <div id="map"></div>
    <div class="container">
      <div class="row">
        
           <div class="col-md-2 hidden-xs">
           </div> 
           
           <div class="col-md-6 col-sm-6 col-xs-12  contact-text">
           
            	<div class="agent-p-contact">
                	<div class="our-agent-box bottom30">
                        <h2>联系我们</h2>
                    </div>
                    <div class="agetn-contact-2 bottom30">
                      	 <p><i class="icon-telephone114"></i> (+86) 183XXXXXXXX</p>
                         <p><i class=" icon-icons142"></i> XXX@XXX.com</p>
                         
                         <p><i class="icon-browser2"></i>www.XXXX.com</p>
                         <p><i class="icon-icons74"></i> 湖南省岳阳市青年中路</p>
                      </div>
                </div>
            
            	<div class="agent-p-form">
                	<div class="our-agent-box bottom30">
                        <h2>Send Message</h2>
                    </div>
                    
                    <div class="row">
                      <form action="#" class="callus">
                        <div class="col-md-12">
                          <div class="single-query form-group">
                            <input type="text" placeholder="姓名" name="c_person" class="keyword-input">
                            </div>
                            <div class="single-query form-group">
                            <input type="text" placeholder="电话" name="c_phone" class="keyword-input">
                          </div>
                          <div class="single-query form-group">
                            <input type="text" placeholder="QQ/邮箱" name="c_qq" class="keyword-input">
                          </div>
                          <div class="single-query form-group">
                            <textarea placeholder="内容" name="c_value" class="form-control"></textarea>
                          </div>
                          <input type="button" onclick="contact()" value="提交" class="btn-blue">
                          </div>
                      </form>
                      
                    </div>
                	
                </div>
                
            </div>
            
          
          
           <div class="col-md-2 hidden-xs">
           </div> 
        </div>
    </div>
  </div>
</section>
<!-- Contact End -->

<!--Footer-->
<jsp:include flush="true" page="/footer.jsp"></jsp:include>
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
 <script type="text/javascript">
   function contact(){
  $.ajax({
                cache: true,
                type: "POST",
                url:"contact.action",
                
                data:{"c_person":$("input[name='c_person']").val(),
                       "c_phone":$("input[name='c_phone']").val(),
                       "c_qq":$("input[name='c_qq']").val(),
                       "c_value":$("textarea[name='c_value']").val()
                       },
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="提交成功"){
                    alert(data);
                    window.location.href="contact.jsp";
                }else{
                   alert(data);
                }
                }
            });
  }
  </script>


</body>
</html>

