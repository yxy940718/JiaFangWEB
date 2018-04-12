<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>主页</title>
<link rel="shortcut icon" href="images/favicon.ico" /> 
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
    
    <style>
        #log{display: none}
    </style>
</head>
<body>
<!--Header-->
<div id="mainMenuBarAnchor"></div>
<header class="white_header">
 <jsp:include flush="true" page="/nav.jsp"></jsp:include>
  
  
  <nav class="navbar navbar-default navbar-sticky bootsnav">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
         <div class="attr-nav">
            <div class="upper-column info-box first">
              <div class="icons"><i class="icon-telephone114"></i></div>
              <ul>
                <li><strong>电话</strong></li>
                <li>010-59111169</li>
              </ul>
            </div>
          </div>
          <!-- Start Header Navigation -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <div class="logo">
          <a class="navbar-brand"  href="#">
             <img src="images/logo_white.png" style="width:180px;height:60px;vertical-align:middle" class="logo" alt=""/>
           </a>
          </div>
            
          </div> <!-- End Header Navigation -->
          <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav navbar-right" data-in="fadeIn" data-out="fadeOut">
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
<!-- Gallery -->
<section id="property" class="padding bg_gallery">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center">
        <h2 class="uppercase">热门推荐</h2>
        <p class="heading_space">我们掌握最新房源信息为您服务</p>
      </div>
    </div>
    <div class="clearfix">
      <div id="filters-property" class="cbp-l-filters-button text-center">
        <div data-filter=".latest" class="cbp-filter-item-active cbp-filter-item">最新</div>
        <div data-filter=".sale" class="cbp-filter-item">最热</div>        
        <div data-filter=".rent" class="cbp-filter-item">推荐</div>
      </div>
    </div>
    <div id="property-gallery" class="cbp listing1">
         <div class="cbp-item latest sale">
        <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[0].homeid"/>'><img src="<struts:property value="HomeList[0].photo.split('&&')[1]"/>" alt="latest property" style="width:384px;height:284px" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[0].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[0].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[0].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[0].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[0].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[0].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[0].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[0].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[0].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[0].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[0].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[0].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest sale">
        <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[1].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[1].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[1].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[1].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[1].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[1].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[1].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[1].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[1].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[1].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[1].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[1].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[1].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[1].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[2].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[2].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[2].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[2].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[2].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[2].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[2].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[2].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[2].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[2].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[2].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[2].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[2].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[2].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[3].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[3].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[3].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[3].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[3].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[3].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[3].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[3].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[3].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[3].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[3].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[3].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[3].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[3].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest sale">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[4].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[4].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[4].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[4].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[4].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[4].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[4].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[4].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[4].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[4].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[4].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[4].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[4].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[4].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest sale">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[5].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[5].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[5].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[5].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[5].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[5].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[5].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[5].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[5].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[5].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[5].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[5].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[5].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[5].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[6].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[6].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[6].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[6].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[6].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[6].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[6].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[6].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[6].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[6].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[6].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[6].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[6].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[6].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest sale">
        <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[7].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[7].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[7].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[7].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[7].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[7].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[7].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[7].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[7].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[7].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[7].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[7].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[7].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href="href='property_detail.action?homeid=<struts:property value="HomeList[7].homeid"/>'" class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="cbp-item latest sale">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[8].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[8].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[8].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[8].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[8].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[8].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[8].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[8].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[8].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[8].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[8].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[8].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[8].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[8].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[8].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[9].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[9].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[9].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[9].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[8].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[9].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[9].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[9].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[9].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[8].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[10].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[10].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[10].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[10].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[8].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[10].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[10].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[10].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[10].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="cbp-item latest rent">
         <div class="property_item">
          <div class="image">
             <a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>'><img style="width:384px;height:284px" src="<struts:property value="HomeList[8].photo.split('&&')[1]"/>" alt="latest property" class="img-responsive"></a>
            <div class="price clearfix"> 
              <span class="tag pull-right">¥<struts:property value="HomeList[11].price"/></span>
            </div>
            <span class="tag_t"><struts:property value="HomeList[11].leibie"/></span> 
            <span class="tag_l">HOT</span>
          </div>
          <div class="proerty_content">
            <div class="proerty_text">
              <h3 class="captlize"><a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>'><struts:property value="HomeList[0].homename"/></a></h3>
              <p><struts:property value="HomeList[11].where"/></p>
            </div>
            <div class="property_meta transparent"> 
              <span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[11].mianji"/> m<sup>2</sup></span> 
              <span><i class="icon-bed"></i><struts:property value="HomeList[8].shi"/>卧室</span> 
              <span><i class="icon-safety-shower"></i><struts:property value="HomeList[11].wei"/> 卫生间</span>   
            </div>
            <div class="property_meta transparent bottom30">
              <span><i class="icon-old-television"></i><struts:property value="HomeList[11].ting"/> 客厅</span>
              <span><i class="icon-garage"></i><struts:property value="HomeList[11].che"/> 停车位</span>
              <span></span>
            </div>
            <div class="favroute clearfix">
              <p><a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>'><i class="icon-calendar2"></i>&nbsp;详情</a></p>
              <ul class="pull-right">
                <li><a href="javascript:void(0)" onclick="Collection('<struts:property value="HomeList[11].homeid"/>')"><i class="icon-like"></i></a></li>
                <li><a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>' class="share_expender"><i class="glyphicon glyphicon-eye-open"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      
      
      </div>
    <div class="col-sm-12 text-center top20">
       <a href="PageList.action?pageNo=1" class="btn-dark border_radius uppercase margin40">查看更多+</a>
    </div>
  </div>
</section>
<!-- Gallery End -->


<!--Deals-->
<section id="deal" class="padding_bottom_half padding_top">
  <div class="container">
    <div class="row">
      <div class="col-sm-10">
        <h2 class="uppercase">北京二手房房源精选</h2>
        <p class="heading_space">我们掌握更多二手好房，让您用最少的钱买更好的房</p>
      </div>
    </div>
    <div class="row">
      <div id="two-col-slider" class="owl-carousel">
        <div class="item">
          <div class="listing_full">
            <div class="image">
              <img alt="image" style="width:550px;height:410px" src="<struts:property value="HomeList[9].photo.split('&&')[1]"/>" >
              <span class="tag_t"><struts:property value="HomeList[9].leibie"/></span>
            </div>
            <div class="listing_full_bg">
              <div class="listing_inner_full">
                <span><a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>'><i class="glyphicon glyphicon-eye-open"></i></a></span>
                <a href='property_detail.action?homeid=<struts:property value="HomeList[9].homeid"/>'>
                  <h3><struts:property value="HomeList[9].homename"/></h3>
                  <p><struts:property value="HomeList[9].where"/></p>
                </a>
                <div class="favroute clearfix">
                  <div class="property_meta"><span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[9].mianji"/> m<sup>2</sup></span><span><i class=" icon-bed"></i><struts:property value="HomeList[9].shi"/> 卧室</span><span><i class="icon-safety-shower"></i><struts:property value="HomeList[9].wei"/>厕所</span><span class="border-l">¥<struts:property value="HomeList[9].price"/></span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="listing_full">
            <div class="image">
              <img alt="image" style="width:550px;height:410px" src="<struts:property value="HomeList[10].photo.split('&&')[1]"/>" >
              <span class="tag_t"><struts:property value="HomeList[10].leibie"/></span>
            </div>
            <div class="listing_full_bg">
              <div class="listing_inner_full">
                <span><a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>'><i class="glyphicon glyphicon-eye-open"></i></a></span>
                <a href='property_detail.action?homeid=<struts:property value="HomeList[10].homeid"/>'>
                  <h3><struts:property value="HomeList[10].homename"/></h3>
                  <p><struts:property value="HomeList[10].where"/></p>
                </a>
                <div class="favroute clearfix">
                  <div class="property_meta"><span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[10].mianji"/> m<sup>2</sup></span><span><i class=" icon-bed"></i><struts:property value="HomeList[10].shi"/> 卧室</span><span><i class="icon-safety-shower"></i><struts:property value="HomeList[10].wei"/>厕所</span><span class="border-l">¥<struts:property value="HomeList[10].price"/></span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="listing_full">
            <div class="image">
              <img alt="image" style="width:550px;height:410px" src="<struts:property value="HomeList[11].photo.split('&&')[2]"/>" >
              <span class="tag_t"><struts:property value="HomeList[11].leibie"/></span>
            </div>
            <div class="listing_full_bg">
              <div class="listing_inner_full">
                <span><a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>'><i class="glyphicon glyphicon-eye-open"></i></a></span>
                <a href='property_detail.action?homeid=<struts:property value="HomeList[11].homeid"/>'>
                  <h3><struts:property value="HomeList[11].homename"/></h3>
                  <p><struts:property value="HomeList[11].where"/></p>
                </a>
                <div class="favroute clearfix">
                  <div class="property_meta"><span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[11].mianji"/> m<sup>2</sup></span><span><i class=" icon-bed"></i><struts:property value="HomeList[10].shi"/> 卧室</span><span><i class="icon-safety-shower"></i><struts:property value="HomeList[10].wei"/>厕所</span><span class="border-l">¥<struts:property value="HomeList[10].price"/></span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="listing_full">
            <div class="image">
              <img alt="image" style="width:550px;height:410px" src="<struts:property value="HomeList[12].photo.split('&&')[2]"/>" >
              <span class="tag_t"><struts:property value="HomeList[12].leibie"/></span>
            </div>
            <div class="listing_full_bg">
              <div class="listing_inner_full">
                <span><a href='property_detail.action?homeid=<struts:property value="HomeList[12].homeid"/>'><i class="glyphicon glyphicon-eye-open"></i></a></span>
                <a href='property_detail.action?homeid=<struts:property value="HomeList[12].homeid"/>'>
                  <h3><struts:property value="HomeList[12].homename"/></h3>
                  <p><struts:property value="HomeList[12].where"/></p>
                </a>
                <div class="favroute clearfix">
                  <div class="property_meta"><span><i class="icon-select-an-objecto-tool"></i><struts:property value="HomeList[12].mianji"/> m<sup>2</sup></span><span><i class=" icon-bed"></i><struts:property value="HomeList[10].shi"/> 卧室</span><span><i class="icon-safety-shower"></i><struts:property value="HomeList[10].wei"/>厕所</span><span class="border-l">¥<struts:property value="HomeList[10].price"/></span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--Deals ends-->


<!--Parallax-->
<section id="parallax_four" class="padding">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 bottom30">
        <h2 class="uppercase">超过2000个用户成功合作</h2>
      </div>
      <div class="col-sm-8 col-md-10">
        <div class="row">
          <div class="col-sm-6 margin40">
             <i class="icon-presentation"></i>
             <h4 class="bottom10">合作共赢</h4>
             <p>您可将您多余的房源，交给我们我们帮您托管，实现共赢</p>
          </div>
          <div class="col-sm-6 margin40">
             <i class="icon-icons215"></i>
             <h4 class="bottom10">良好的销售和市场</h4>
             <p>为您提供优质房产信息，在此有大量房产信息供您选择，每天都有几十万条房源信息更新，人工审核真实有效</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--About Owner ends-->


<!--Testinomials-->
<section id="testinomialBg" class="padding bg_light">
  <div id="agent-2" class="padding_bottom">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-center">
        <h2 class="uppercase">优秀销售人员</h2>
        <p>优秀的销售代理，值得您的信任</p>
      </div>
    </div>
    <div class="row">
       <struts:iterator value="Hgoodsalelist" var="hgl">
      <div class="col-sm-4 margin40">
        <div class="agent_wrap">
          <div class="image">
            <img src="<struts:property value="#hgl.photosrc"/>" style="width:360px;height:348px" alt="暂无照片">
            <div class="img-info" style="width:360px;height:348px">
              <h3><struts:property value="#hgl.username"/></h3>
              <span>销售代理</span>
              <p class="top20 bottom30"><struts:property value="#hgl.Introduction"/></p>
              <table class="agent_contact table">
                <tbody>
                  <tr class="bottom10">
                    <td><strong>电话:</strong></td>
                    <td class="text-right"><struts:property value="#hgl.phone"/></td>
                  </tr>
                  <tr>
                    <td><strong>QQ:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="#hgl.QQ"/></a></td>
                  </tr>
                  <tr>
                    <td><strong>微信:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="#hgl.wechat"/></a></td>
                  </tr>
                  <tr>
                    <td><strong>邮箱:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="#hgl.email"/></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      </struts:iterator>
    </div>
  </div>
</div>
  <div class="container bg_white padding">
    <div class="row">
      <div class="col-xs-12 text-center">
        <h2 class="uppercase">合作客户</h2>
        <p class="heading_space">Success Customers</p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
         <div id="testinomial-slider" class="owl-carousel display navigate">
         <struts:iterator value="Hcustomerlist" var="hcl">
          <div class="item">
            <div class="testinomial_content text-center">
              <img src="<struts:property value="#hcl.photosrc"/>" alt="合作客户" class="img-circle" style="width:140px;height:140px">
              <h4 class="uppercase"><struts:property value="#hcl.customername"/></h4>
             <span class="smmery bottom15">( 合作<struts:property value="#hcl.customeryear"/>年  )</span>
             <img src="images/stars.png" alt="rating" class="bottom30">
             <p><struts:property value="#hcl.customerjianjie"/></p>
            </div>
          </div>
          </struts:iterator>
        </div>
      </div>
    </div>
  </div>
</section>
<!--Testinomials ends-->


<!--Partners-->
<section id="logos">
  <div class="container partner2 padding">
    <div class="row">
      <div class="col-sm-12 text-center">
      	<h2 class="uppercase">合作伙伴</h2>
        <p class="heading_space">Our Partners</p>
      </div>
    </div>
    <div class="row">
    <div id="partners" class="owl-carousel">
        <div class="item">
          <img src="images/logo1.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo2.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo3.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo4.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo5.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo1.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo2.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo3.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo4.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo5.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo1.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo2.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo3.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo4.jpg" alt="HOT Partner">
        </div>
        <div class="item">
          <img src="images/logo5.jpg" alt="HOT Partner">
        </div>
      </div>
    </div>
  </div>
</section>
<!--Partners Ends-->



<!--Footer-->
<!--Footer-->
<footer class="footer_third">
  <div class="container contacts">
    <div class="row">
      <div class="col-sm-4 text-center">
        <div class="info-box first">
          <div class="icons"><i class="icon-telephone114"></i></div>
          <ul class="text-center">
            <li><strong>联系电话</strong></li>
            <li>010-59111169</li>
          </ul>
        </div>
      </div>
      <div class="col-sm-4 text-center">
        <div class="info-box">
          <div class="icons"><i class="icon-icons74"></i></div>
          <ul class="text-center">
            <li><strong>地址</strong></li>
            <li>北京市朝阳区通惠家园惠生园26号楼3单元101底商</li>
          </ul>
        </div>
      </div>
      <div class="col-sm-4 text-center">
        <div class="info-box">
          <div class="icons"><i class="icon-icons142"></i></div>
          <ul class="text-center">
            <li><strong>邮箱</strong></li>
            <li><a href="#.">81434224@qq.com</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="container padding_top">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="footer_panel bottom30">
        <div class="col-md-3 col-sm-12 col-xs-12">
          <div>
             <a class="navbar-brand" href="#"><img src="images/logo-white.png" style="width:100px;height:90px;vertical-align:middle" class="logo" alt=""/>
           </a>
           <br>
           <a class="navbar-brand"style="margin-top:15px"><span style="color:white;font-size:20px">家房地产</span></a>
          </div>
        </div>
        <div class="col-md-9 col-sm-12 col-xs-12">
        <br>
          <p class="bottom15">家房网以向用户提供最真实、海量全面的房源信息为目标。<br>为用户量身打造房屋租赁、二手房、新房信息数据库服务、小区房价服务、多图房源服务、地图找房服务等。<br>同时为用户提供全面的线上线下交易流程指导，为用户带来“权威二手房”的服务体验。
          </p>
        </div>
        </div>
      </div>


      
    </div>
    <!--CopyRight-->
    <div class="copyright_simple">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 top20 bottom20">
          <p>Copyright &copy; 2017.Company JiaFang All rights reserved. 京ICP备<A HREF="http://www.miitbeian.gov.cn/">17051204<A>号-1 </p>
		  <p align="center"> <a href="http://www.jiafangw.cn/admin/jf_login.jsp"><font color="black">管理中心</font></a></p>
        </div>
      </div>
    </div>
  </div>
</footer>
<jsp:include flush="true" page="/login.jsp"></jsp:include>
<jsp:include flush="true" page="/Collection.jsp"></jsp:include>
    
    
<script src="js/jquery-2.1.4.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.appear.js"></script>
<script src="js/jquery-countTo.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/jquery.cubeportfolio.min.js"></script>
<script src="js/range-Slider.min.js"></script>
<script src="js/owl.carousel.min.js"></script> 
<script src="js/selectbox-0.2.min.js"></script>
<script src="js/zelect.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/jquery.themepunch.tools.min.js"></script>
<script src="js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution.extension.actions.min.js"></script>
<script src="js/revolution.extension.layeranimation.min.js"></script>
<script src="js/revolution.extension.navigation.min.js"></script>
<script src="js/revolution.extension.parallax.min.js"></script>
<script src="js/revolution.extension.slideanims.min.js"></script>
<script src="js/revolution.extension.video.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/functions.js"></script>
</body>
</html>


