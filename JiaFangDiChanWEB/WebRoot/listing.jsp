<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>房源列表</title>
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
          <div class="navbar-header center">
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



<!-- Listing Start -->
<section id="listing1" class="listing1 padding_top">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-sm-12 col-xs-12">
        <div class="row">
          <div class="col-md-9">
            <h2 class="uppercase">房源列表</h2>
            <p class="heading_space">我们拥有优质房源，供您选择</p>
          </div>
          <div class="col-md-3">
          
          </div>
        </div>
        <div class="row">
        <struts:iterator value="pagelistHome" var="HomeList">
          <div class="col-sm-6">
            <div class="property_item heading_space">
                   <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="#HomeList.homeid"/>'><img src="<struts:property value="#HomeList.photo.split('&&')[1]"/>" style="width:384px;height:284px" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="#HomeList.price"/></span>
            </div>
            <span class="tag_t"><struts:property value="#HomeList.leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="#HomeList.homeid"/>'><struts:property value="#HomeList.homename"/></a></h3>
              <p><struts:property value="#HomeList.where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="#HomeList.mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="#HomeList.shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="#HomeList.wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="#HomeList.ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="#HomeList.che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="#HomeList.homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="#HomeList.homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="#HomeList.homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
            </div>
          </div>
          </struts:iterator>
      </div>
      <div class=" padding_bottom text-center">     
      <div class="text-center">
		<c:if test="${pageNos>1 }">
			<a href="PageList.action?pageNo=1">首页</a>
			<a href="PageList.action?pageNo=${pageNos-1 }">上一页</a>
		</c:if>
		<c:if test="${pageNos <recordCount }">
			<a href="PageList.action?pageNo=${pageNos+1 }">下一页</a>
			<a href="PageList.action?pageNo=${recordCount }">末页</a>
		</c:if>
	</div>
	<form action="PageList.action">
		<h4 align="center">
			共${recordCount}页 <input type="text" value="${pageNos}" name="pageNo"
				size="1">页 <input type="submit" value="转到">
		</h4>
	</form>
             
        </div>
      </div>
      <aside class="col-md-4 col-xs-12">
        <div class="property-query-area clearfix">
          <div class="col-md-12">
            <h3 class="text-uppercase bottom20 top15">高级搜索</h3>
          </div>
          <form class="callus" action="SerachListAction.action">
            <div class="single-query form-group col-sm-12">
              <input type="text" name="valuename" class="keyword-input" placeholder="请输入小区名称或地址..">
            </div>
            <div class="single-query form-group col-sm-12">
              <div class="intro">
                <select name="leibie">
                  <option selected="selected" value="出租">租房</option>
                  <option value="出售">买房</option>
                </select>
              </div>
            </div>
            <input type="hidden" name="minprice" calss="min"/>
            <input type="hidden" name="maxprice" class="max"/>
            <input type="hidden" name="pageNo" value="1"/>
            <div class="col-sm-12 bottom10">
              <div class="single-query-slider">
                <label><strong>价格区间:</strong></label>
                <div class="price text-right">
                  <span>¥</span>
                  <div id="left" class="leftLabel"></div>
                  <span>-- ¥</span>
                  <div id="right" class="rightLabel"></div>
                </div>               
                <div data-range_min="0" data-range_max="50000" data-cur_min="0" data-cur_max="50000" class="nstSlider">
                  <div class="bar"></div>
                  <div  class="leftGrip"></div>
                  <div class="rightGrip"></div>
                </div>
              </div>
            </div>
            <div class="col-sm-12 form-group">
              <button type="submit"  class="btn-blue border_radius">查找</button>
            </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出租推荐</h3>
          </div>
        </div>
        <struts:iterator value="HomeLeaseListlxq" var="hlx">
        <div class="row bottom20">
          <div class="col-md-4 col-sm-4 col-xs-6 p-image">
            <img src='<struts:property value="#hlx.photo.split('&&')[1]"/>' alt="image" style="width:80px;height:77px"/>
          </div>
          <div class="col-md-8 col-sm-8 col-xs-6">
            <div class="feature-p-text">
              <h4><struts:property value="#hlx.homename"/></h4>
              <p class="bottom15"><struts:property value="#hlx.where"/></p>
              <a href='property_detail.action?homeid=<struts:property value="#hlx.homeid"/>'>>¥ <struts:property value="#hlx.price"/></a>
            </div>
          </div>
        </div>
        </struts:iterator>
            
          <!--出售-->
         <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出售推荐</h3>
          </div>
        </div>
        <struts:iterator value="HomeSaleListlxq" var="hlx">
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
          
      </aside>
    </div>
  </div>
</section>
<!-- Listing end -->


<jsp:include flush="true" page="/footer.jsp"></jsp:include>
<jsp:include flush="true" page="/Collection.jsp"></jsp:include>
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
<script src="js/neary-by-place.js"></script> 
<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyAOBKD6V47-g_3opmidcmFapb3kSNAR70U&libraries=places"></script> 
<script src="js/google-map.js"></script>--->
<script src="js/jquery.fancybox.js"></script>
<script src="js/custom.js"></script>
<script src="js/functions.js"></script>
     <script>
            $('.nstSlider').nstSlider({
                "left_grip_selector": ".leftGrip",
                "right_grip_selector": ".rightGrip",
                "value_bar_selector": ".bar",
                "highlight": {
                    "grip_class": "gripHighlighted",
                    "panel_selector": ".highlightPanel"
                },
                "value_changed_callback": function(cause, leftValue, rightValue) {
                    $('.leftLabel').text(leftValue);
                    $('.rightLabel').text(rightValue);
                    $('.min').val(leftValue);
                    $('.max').val(rightValue);
                },
            });

            // Call methods and such...
            var highlightMin = Math.random(),
                highlightMax = highlightMin + Math.random() * 2;
            $('.nstSlider').nstSlider('highlight_range', highlightMin, highlightMax);
        </script>
</body>
</html>


