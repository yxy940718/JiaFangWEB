<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>新闻详情页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
    <style>
    #showellipsis {
position:relative;
line-height:1.4em;
/* 3 times the line-height to show 3 lines */
height:4.2em;
overflow:hidden;
}
#showellipsis::after {
content:"...";
font-weight:bold;
position:absolute;
bottom:0;
right:0;
padding:0 20px 1px 45px;
}
    </style>
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



<!-- Page Banner Start-->
<section class="page-banner padding">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <h1 class="text-uppercase">房源信息网</h1>
        <p>自2016.05.06起为广大租房买房用户提供便捷服务</p>
        <p>合作用户达6000余人</p>
      </div>
    </div>
  </div>
</section>
<!-- Page Banner End -->
 <!-- News start -->   
<section id="news-section-1" class="property-details padding_top">
   <div class="container property-details">
     <div class="row" >
         <div class="col-md-8 panel panel-default">
            <h1 class="text-center"><struts:property value="NEWSDEiltus[0].title"/></h1>
             <br/> <br/>
            <p class="text-center">
                            <span>作者：</span><span>房源网</span>
                           
            </p>
            <hr>
                                

            <div class="row" id="newsid">
             <struts:property value="NEWSDEiltus[0].news" escapeHtml="false"/>
            </div>
        </div>
        <aside class="col-md-4 col-xs-12">
       <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出租推荐</h3>
          </div>
        </div>
        
       <struts:iterator value="HomeLeaseListNEWS" var="hlx">
        <div class="row bottom20">
          <div class="col-md-4 col-sm-4 col-xs-6 p-image">
            <img src='<struts:property value="#hlx.photo.split('&&')[1]"/>' alt="image" style="width:80px;height:77px"/>
          </div>
          <div class="col-md-8 col-sm-8 col-xs-6">
            <div class="feature-p-text">
              <h4><struts:property value="#hlx.homename"/></h4>
              <p class="bottom15"><struts:property value="#hlx.where"/></p>
              <a href='property_detail.action?homeid=<struts:property value="#hlx.homeid"/>'>¥ <struts:property value="#hlx.price"/></a>
            </div>
          </div>
        </div>
        </struts:iterator>
            <div class="row">
               <div class="col-md-12">
                  <h3 class="margin40 bottom20">优质出售</h3>
               </div>
               <div class="col-md-12 padding-t-30">
                  <div id="agent-2-slider" class="owl-carousel">
                    <div class="item">
                        <div class="property_item heading_space">
                           <div class="image">
                              <a href='property_detail.action?homeid=<struts:property value="HomeSaleListNEWS[0].homeid"/>'></a><img src='<struts:property value="HomeSaleListNEWS[0].photo.split('&&')[1]"/>' alt="listin" class="img-responsive"></a>
                              <div class="feature"><span class="tag-2">出售</span></div>
                               <div class="price clearfix"><a href='property_detail.action?homeid=<struts:property value="HomeSaleListNEWS[0].homeid"/>'><span class="tag pull-right">¥<struts:property value="HomeSaleListNEWS[0].price"/>- <small><struts:property value="HomeSaleListNEWS[0].homeleixing"/></small></span></a>
                               </div>
                           </div>
                        </div>
                     </div>
                     <div class="item">
                        <div class="property_item heading_space">
                           <div class="image">
                              <a href='property_detail.action?homeid=<struts:property value="HomeSaleListNEWS[1].homeid"/>'><img src='<struts:property value="HomeSaleListNEWS[1].photo.split('&&')[1]"/>' alt="listin" class="img-responsive"></a>
                              <div class="feature"><span class="tag-2">出售</span></div>
                               <div class="price clearfix"><a href='property_detail.action?homeid=<struts:property value="HomeSaleListNEWS[1].homeid"/>'><span class="tag pull-right">¥<struts:property value="HomeSaleListNEWS[1].price"/>- <small><struts:property value="HomeSaleListNEWS[1].homeleixing"/></small></span></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </aside>
     </div>
   </div>
</section>

<!-- News End -->



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
<script src="js/jquery.fancybox.js"></script>
<script src="js/jquery.themepunch.tools.min.js"></script>
<script src="js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution.extension.layeranimation.min.js"></script>
<script src="js/revolution.extension.navigation.min.js"></script>
<script src="js/revolution.extension.parallax.min.js"></script>
<script src="js/revolution.extension.slideanims.min.js"></script>
<script src="js/revolution.extension.video.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/functions.js"></script>
</body>
</html>
