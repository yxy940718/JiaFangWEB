<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>热点咨询</title>
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
<!-- Page Banner End -->



<!-- News Start -->
<section id="news-section-1" class="property-details padding_top">
   <div class="container property-details">
      <div class="row">
         <div class="col-md-8">
            <div class="row">
            <struts:iterator value="NEWSlist" var="nl">
               <div class="news-1-box clearfix">
                  <div class="col-md-5 col-sm-5 col-xs-12">
                     <div class="image-2">
                        <a  href='NEWSDeiltusAction?NEWSid=<struts:property value="#nl.newsid"/>'><img src='<struts:property value="#nl.photo"/>' style="width:240px;height:160px" alt="image" class="img-responsive"></a>
                     </div>
                  </div>
                  <div class="col-md-7 col-sm-7 col-xs-12 padding-left-25">
                     <h3><a href='NEWSDeiltusAction?NEWSid=<struts:property value="#nl.newsid"/>'><struts:property value="#nl.title"/></a></h3>
                     <div class="news-details padding-b-10 margin-t-5">
                        <span><i class="icon-icons230"></i>家房地产</span>
                        <span><struts:property value="#nl.personid"/></span>
                     </div>
                     <p class="p-font-15" id="showellipsis"><struts:property value="#nl.context"/></p>
                     <div class="pro-3-link padding-t-20">
                        <a class="btn-more" href='NEWSDeiltusAction?NEWSid=<struts:property value="#nl.newsid"/>'>
                        <i>
                        <img alt="arrow" src="images/arrowl.png">
                        </i>
                            <span>详情</span>
                        <i>
                        <img alt="arrow" src="images/arrowr.png">
                        </i>
                        </a>
                     </div>
                  </div>
               </div>
               
            </struts:iterator>
            </div>
            <div class=" padding_bottom text-center">     
      <div class="text-center">
		<c:if test="${pagenewsNos>1 }">
			<a href="newsPageList.action?pageNo=1">首页</a>
			<a href="newsPageList.action?pageNo=${pagenewsNos-1 }">上一页</a>
		</c:if>
		<c:if test="${pagenewsNos <recordnewsCount }">
			<a href="newsPageList.action?pageNo=${pagenewsNos+1 }">下一页</a>
			<a href="newsPageList.action?pageNo=${recordnewsCount }">末页</a>
		</c:if>
	</div>
	<form action="newsPageList.action">
	    <input type="hidden" value="<struts:property value="plate"/>" name="plate"/>
		<h4 align="center">
			共${recordnewsCount}页 <input type="text" value="${pagenewsNos}" name="pageNos"
				size="1">页 <input type="submit" value="转到">
		</h4>
	</form>
             
        </div>
         </div>
         <aside class="col-md-4 col-xs-12">
             <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出租推荐</h3>
          </div>
        </div>
        <struts:iterator value="HomeLeaseListnxq" var="hlx">
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
                              <a href='property_detail.action?homeid=<struts:property value="HomeSaleListnxq[0].homeid"/>'><img src='<struts:property value="HomeSaleListnxq[0].photo.split('&&')[1]"/>' alt="listin" class="img-responsive"></a>
                              <div class="feature"><span class="tag-2">出售</span></div>
                               <div class="price clearfix"><a href='property_detail.action?homeid=<struts:property value="HomeSaleListnxq[0].homeid"/>'><span class="tag pull-right">¥<struts:property value="HomeSaleListnxq[0].price"/>- <small><struts:property value="HomeSaleListnxq[0].homeleixing"/></small></span></a>
                               </div>
                           </div>
                        </div>
                     </div>
                     <div class="item">
                        <div class="property_item heading_space">
                           <div class="image">
                              <a href='property_detail.action?homeid=<struts:property value="HomeSaleListnxq[1].homeid"/>'><img src='<struts:property value="HomeSaleListnxq[1].photo.split('&&')[1]"/>' alt="listin" class="img-responsive"></a>
                              <div class="feature"><span class="tag-2">出售</span></div>
                               <div class="price clearfix"><a href='property_detail.action?homeid=<struts:property value="HomeSaleListnxq[1].homeid"/>'><span class="tag pull-right">¥<struts:property value="HomeSaleListnxq[1].price"/>- <small><struts:property value="HomeSaleListnxq[1].homeleixing"/></small></span></a>
                               </div>
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


