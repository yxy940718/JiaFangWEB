<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>房屋详细信息</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
    <style>
dl{clear:left;}
dt,dd{float:left;}
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



<!-- Property Detail Start -->
<section id="property" class="padding_top padding_bottom_half">
  <div class="container">
    <div class="row">
      <div class="col-md-8 listing1 property-details">
        <h2 class="text-uppercase"><struts:property value="homedeiltusList[0].homename"/></h2>
        <p class="bottom30"><struts:property value="homedeiltusList[0].where"/></p>
        
        <div class="property_meta bg-black bottom40">
          <span><i class="icon-select-an-objecto-tool"></i><struts:property value="homedeiltusList[0].mianji"/></span>
          <span><i class=" icon-microphone"></i><struts:property value="homedeiltusList[0].shi"/> 卧室</span>
          <span><i class="icon-safety-shower"></i><struts:property value="homedeiltusList[0].wei"/> 厕所</span>
          <span><i class="icon-old-television"></i><struts:property value="homedeiltusList[0].ting"/> 客厅</span>
          <span><i class="icon-garage"></i><struts:property value="homedeiltusList[0].che"/>停车位</span>
        </div>
        <h2 class="text-uppercase">简介</h2>
        <div class="row">
         <div class="col-md-6 col-sm-6">
			<dl>
                <dt>小区：</dt>
				<dd><struts:property value="homedeiltusList[0].homename"/></dd>
			</dl>
			<dl>
                <dt>位置：</dt>
				<dd><struts:property value="homedeiltusList[0].where"/></dd>
			</dl>
			<dl>
                <dt>年代：</dt>
                <dd><struts:property value="homedeiltusList[0].niandai"/>年</dd>
            </dl>
			<dl>
                <dt>类型：</dt>
                <dd><struts:property value="homedeiltusList[0].homeleixing"/></dd>
            </dl>
		</div>
		<div class="col-md-6 col-sm-6">
			<dl>
                <dt>面积：</dt>
                <dd><struts:property value="homedeiltusList[0].mianji"/>平方米</dd>
            </dl>
			<dl>
                <dt>朝向：</dt>
                <dd><struts:property value="homedeiltusList[0].chaoxiang"/></dd>
            </dl>
			<dl>
                <dt>阳台：</dt>
                <dd><struts:property value="homedeiltusList[0].yang"/></dd>
            </dl>
			<dl>
                <dt>装修程度：</dt>
                <dd><struts:property value="homedeiltusList[0].zhuangxiu"/></dd>
            </dl>	
		</div>
     </div>
  
     
         <p class="bottom30"></p>
        <div class="text-it-p bottom40">
          <p>
           <span style="font-size:16px;"><b  style="font-size:18px;color:black">小区简介：</b><struts:property value="homedeiltusList[0].xiaoqu"/><br> <br></span> 
           <span style="font-size:16px;"><b style="font-size:18px;color:black">周边环境：</b><struts:property value="homedeiltusList[0].zhoubian"/><br><br></span> 
           <span style="font-size:16px;"><b style="font-size:18px;color:black">交通状况：</b><struts:property value="homedeiltusList[0].jiaotong"/><br><br></span> 
          </p>
        </div>
        <h2 class="text-uppercase bottom20">详细信息</h2>
        <div class="row property-d-table bottom40">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <table class="table table-striped table-responsive">
              <tbody>
                <tr>
                  <td><b>房屋编号</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].homeid"/></td>
                </tr>
                <tr>
                  <td><b>价格</b></td>
                  <td class="text-right">¥<struts:property value="homedeiltusList[0].price"/></td>
                </tr>
                <tr>
                  <td><b>产权面积</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].mianji"/> m<sup>2</sup></td>
                </tr>
                <tr>
                  <td><b>卧室</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].shi"/></td>
                </tr>
                <tr>
                  <td><b>厕所</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].wei"/></td>
                </tr>
                <tr>
                  <td><b>厨房</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].chu"/></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <table class="table table-striped table-responsive">
              <tbody>
                <tr>
                  <td><b>类型</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].homeleixing"/></td>
                </tr>
                <tr>
                  <td><b>客厅</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].ting"/></td>
                </tr>
                <tr>
                  <td><b>车库</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].che"/></td>
                </tr>
                <tr>
                  <td><b>阳台</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].yang"/></td>
                </tr>
                <tr>
                  <td><b>位置</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].where"/></td>
                </tr>
                <tr>
                  <td><b>楼层</b></td>
                  <td class="text-right"><struts:property value="homedeiltusList[0].louceng"/></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
       
        <h2 class="text-uppercase">房屋图</h2>
        <div class="row bottom40">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="pro-img">
              <figure class="wpf-demo-gallery">
                <img src="<struts:property value="homedeiltusList[0].photo.split('&&')[1]"/>" style="width:229px;height:242px" alt="image">
                <figcaption class="view-caption">    
                  <a data-fancybox-group="gallery" class="fancybox" href="<struts:property value="homedeiltusList[0].photo.split('&&')[1]"/>"><i class="icon-focus"></i></a>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="pro-img">
              <figure class="wpf-demo-gallery">
                <img style="width:229px;height:242px" src="<struts:property value="homedeiltusList[0].photo.split('&&')[2]"/>" alt="image">
                <figcaption class="view-caption">    
                  <a data-fancybox-group="gallery" class="fancybox" href="<struts:property value="homedeiltusList[0].photo.split('&&')[2]"/>"><i class="icon-focus"></i></a>
                </figcaption>
              </figure>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="pro-img">
              <figure class="wpf-demo-gallery">
                <img style="width:229px;height:242px"  src="<struts:property value="homedeiltusList[0].photo.split('&&')[3]"/>" alt="image">
                <figcaption class="view-caption">    
                  <a data-fancybox-group="gallery" class="fancybox" href="<struts:property value="homedeiltusList[0].photo.split('&&')[3]"/>" ><i class="icon-focus"></i></a>
                </figcaption>
              </figure>
            </div>
          </div>
        </div>
        
        
       
        <h2 class="text-uppercase bottom20">我要咨询</h2>
        <div class="row">
          <div class="col-sm-6 bottom40">
            <div class="agent_wrap">
              <div class="image">
                <img src="<struts:property value="personListxq[0].photosrc"/>" alt="管理员" style="width: 364px;height: 388px">
              </div>
            </div>
          </div>
          <div class="col-sm-6 bottom40">
            <div class="agent_wrap">
              <h3><struts:property value="personListxq[0].username"/></h3><br/>
              <span>销售主管</span>
              <p style="white-space:normal;word-break:break-all;word-wrap:break-word;"><struts:property value="personListxq[0].Introduction"/></p>
              <table class="agent_contact table">
                <tbody>
                  <tr class="bottom10">
                    <td><strong>电话:</strong></td>
                    <td class="text-right"><struts:property value="personListxq[0].phone"/></td>
                  </tr>
                  <tr>
                    <td><strong>QQ:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="personListxq[0].QQ"/></a></td>
                  </tr>
                  <tr>
                    <td><strong>微信:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="personListxq[0].wechat"/></a></td>
                  </tr>
                  <tr>
                    <td><strong>邮箱:</strong></td>
                    <td class="text-right"><a href="#."><struts:property value="personListxq[0].email"/></a></td>
                  </tr>
                </tbody>
              </table>
              <div style="border-bottom:1px solid #d3d8dd;" class="bottom15"></div>
              
            </div>
          </div>
          
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
              <button type="submit" class="btn-blue border_radius">查找</button>
            </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出租推荐</h3>
          </div>
        </div>
        <struts:iterator value="HomeLeaseListxq" var="hlx">
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
        
            
          <!--出售-->
         <div class="row">
          <div class="col-md-12">
            <h3 class="bottom40 margin40">优质出售推荐</h3>
          </div>
        </div>
        <struts:iterator value="HomeSaleListxq" var="hlx">
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
<!-- Property Detail End -->



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
                },
            });

            // Call methods and such...
            var highlightMin = Math.random(),
                highlightMax = highlightMin + Math.random() * 2;
            $('.nstSlider').nstSlider('highlight_range', highlightMin, highlightMax);
        </script>
</body>
</html>


