<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>修改房源 - 家房地产管理系统</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/fileinput.css">
<link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
<link rel="shortcut icon" href="images/icon/favicon.ico">
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
window.onload = function(){ 
  $("input[name='leibie']") .attr("checked",'<struts:property value="homedeiltus[0].leibie"/>');
　 $("input[name='shi']") .attr("value",'<struts:property value="homedeiltus[0].shi"/>');
  $("input[name='homename']").attr("value",'<struts:property value="homedeiltus[0].homename"/>');
  $("input[name='where']").attr("value",'<struts:property value="homedeiltus[0].where"/>');
  $("input[name='ting']").attr("value",'<struts:property value="homedeiltus[0].ting"/>');
  $("input[name='wei']").attr("value",'<struts:property value="homedeiltus[0].wei"/>');
  $("input[name='chu']").attr("value",'<struts:property value="homedeiltus[0].chu"/>');
   $("input[name='che']").attr("value",'<struts:property value="homedeiltus[0].che"/>');
  $("input[name='yang']").attr("value",'<struts:property value="homedeiltus[0].yang"/>');
  $("input[name='price']").attr("value",'<struts:property value="homedeiltus[0].price"/>');
  $("input[name='niandai']").attr("value",'<struts:property value="homedeiltus[0].niandai"/>');
  $("input[name='mianji']").attr("value",'<struts:property value="homedeiltus[0].mianji"/>');
  $("select[name='zhuangxiu']").val('<struts:property value="homedeiltus[0].zhuangxiu"/>');
  $("select[name='chaoxiang']").val('<struts:property value="homedeiltus[0].chaoxiang"/>');
  $("select[name='homeleixing']").val('<struts:property value="homedeiltus[0].homeleixing"/>');
  
   $("input[name='xiaoqu']").attr("value",'<struts:property value="homedeiltus[0].xiaoqu"/>');
    $("input[name='zhoubian']").attr("value",'<struts:property value="homedeiltus[0].zhoubian"/>');
     $("input[name='jiaotong']").attr("value",'<struts:property value="homedeiltus[0].jiaotong"/>');
  $("input[name='louceng']").attr("value",'<struts:property value="homedeiltus[0].louceng"/>');
  var psrc='<struts:property value="homedeiltus[0].photo"/>';
  var args=psrc.split('&amp;&amp;');
  $("#img1").attr('src',args[1]);
  $("#img2").attr('src',args[2]);
  $("#img3").attr('src',args[3]);
} 
</script>
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
      <div class="container">
      <div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12  contact-text">
							<form class="form-horizontal" >
								<h2>修改房源</h2>
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">类别:</label>
									<div class="col-sm-10">
										<label class="checkbox-inline"> <input type="radio"
											name="leibie" checked="checked" value="出租">出租
										</label> <label class="checkbox-inline"> <input type="radio"
											name="leibie" value="出售">出售
										</label>
									</div>
								</div>
                                <div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">价格</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="price"
											>
									</div>
								</div>
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">小区名称:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="homename"
											placeholder="例科教新村31号">
									</div>
								</div>

								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">位置:</label>
									<div class="col-sm-10">
										<input type="text" name="where" class="form-control"
											placeholder="例青年中路">
									</div>
								</div>
                                <div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">小区简介:</label>
									<div class="col-sm-10">
										<input type="text" name="xiaoqu" class="form-control"/>
									</div>
								</div>
								
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">周边设施:</label>
									<div class="col-sm-10">
										<input type="text" name="zhoubian" class="form-control"/>
									</div>
								</div>
								
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">交通状况:</label>
									<div class="col-sm-10">
										<input type="text" name="jiaotong" class="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label">房屋类型:</label>
									<div class="col-sm-10">
										<div class="row">
											<div class="col-lg-4">
											   <div class="input-group">
												<input type="text" name="shi" class="form-control"
													placeholder="室" /> <span class="input-group-addon">卧室</span>
													</div>
											</div>

											<div class="col-lg-4">
												<div class="row"></div>
												 <div class="input-group">
												<input type="text" name="ting" class="form-control"
													placeholder="厅"><span class="input-group-addon">客厅</span>
													</div>
											</div>

											<div class="col-lg-4">
											<div class="input-group">
												<input type="text" name="wei" class="form-control"
													placeholder="卫"><span class="input-group-addon">厕所</span>
													</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-4">
											<div class="input-group">
												<input type="text" name="chu" class="form-control"
													placeholder="厨" /><span class="input-group-addon">厨房</span>
													</div>
											</div>

											<div class="col-lg-4">
												<div class="row"></div>
												<div class="input-group">
												<input type="text" name="che" class="form-control"
													placeholder="车库"><span class="input-group-addon">车库</span>
													</div>
											</div>

											<div class="col-lg-4">
											<div class="input-group">
												<input type="text" name="yang" class="form-control"
													placeholder="阳台"><span class="input-group-addon">阳台</span>
													</div>
											</div>
										</div>
										<div class="row">
						                    <div class="col-lg-4">
											<div class="input-group">
												<input type="text" name="louceng" class="form-control"
													placeholder="楼层"><span class="input-group-addon">楼层</span>
													</div>
											</div>
											<div class="col-lg-4">
											<div class="input-group">
												<input type="text" name="niandai" class="form-control"
													placeholder="房屋年代" /><span class="input-group-addon">年代</span>
													</div>
											</div>

											<div class="col-lg-4">
												<div class="row"></div>
												<div class="input-group">
												<input type="text" name="mianji" class="form-control"
													placeholder="房屋面积"><span class="input-group-addon">面积</span>
													</div>
											</div><div class="input-group">


										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="firstname" class="col-sm-2 control-label"></label>
									<div class="col-sm-10">

										<div class="col-lg-4" style="padding: 0px">
											<select class="form-control" name="zhuangxiu">
												<option>装修情况</option>
												<option value="毛坯">毛坯</option>
												<option value="简单装修">简单装修</option>
												<option value="中等装修">中等装修</option>
												<option value="精装修">精装修</option>
												<option value="豪华装修">豪华装修</option>
											</select>
										</div>
										<div class="col-lg-4" style="padding: 0px">
											<select class="form-control" name="chaoxiang">
												<option>房屋朝向</option>
												<option value="东">东</option>
												<option value="西">西</option>
												<option value="南">南</option>
												<option value="北">北</option>
												<option value="东南">东南</option>
												<option value="东北">东北</option>
												<option value="西南">西南</option>
												<option value="西北">西北</option>
											</select>
										</div>
										<div class="col-lg-4" style="padding: 0px">
											<select class="form-control" name="homeleixing">
												<option>类型</option>
												<option value="普通住宅">普通住宅</option>
												<option value="酒店公寓">酒店公寓</option>
												<option value="独栋别墅">独栋别墅</option>
												<option value="其他">其他</option>
											</select>
										</div>
									</div>
								</div>
                 <div class="form-group">
                    <div class="col-lg-4" style="padding: 0px"><img id="img1" alt="房屋图"style="width:200px;height:200px" ></div>
                    <div class="col-lg-4" style="padding: 0px"><img id="img2" alt="房屋图"style="width:200px;height:200px" ></div>
                    <div class="col-lg-4" style="padding: 0px"><img id="img3" alt="房屋图"style="width:200px;height:200px" ></div>
                 </div>

				<div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">上传图片</label>
				<div class="col-sm-10">
					<div class="col-lg-10">
                        <input type="text" class="form-control" value='<struts:property value="homedeiltus[0].photo"/>' placeholder="最多上传三张照片（以前三张为准）" id="pictureUpload" name="photo" autocomplete="off">
                        <input type="hidden" name="administratorid" value='<struts:property value="#session.id"/>'/>
                    </div>
                    <div class="col-lg-2">
                        <button class="btn btn-default" type="button" ID="upImage">选择</button>
                     </div>
                  </div> 
                 </div>
                        
                 
                  <div class="form-group">
                  <div class="text-center">
								<input class="btn btn-primary" type="button" onclick="addhome()" value="提交"/>
								<button class="btn btn-danger" data-dismiss="modal">取消</button>
				  </div>
				  </div>
               </form>
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
<script id="uploadEditor" type="text/plain" style="display:none;"></script>
  <script type="text/javascript">
 var editor = UE.getEditor('article-content');
window.onresize=function(){
    window.location.reload();
}
var _uploadEditor;
$(function () {
    //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
    _uploadEditor = UE.getEditor('uploadEditor');
    _uploadEditor.ready(function () {
  			//设置编辑器不可用
  			//_uploadEditor.setDisabled();
  			//隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
  			_uploadEditor.hide();
  			//侦听图片上传
  			_uploadEditor.addListener('beforeInsertImage', function(t, arg) {
  				var h="";
  				for(var i=0;i<arg.length;i++){
  				h=h+"&&"+arg[i].src;
  				}
  			$("#pictureUpload").attr("value",h );
  			})
  			//侦听文件上传，取上传文件列表中第一个上传的文件的路径
  			_uploadEditor.addListener('afterUpfile', function(t, arg) {
  				$("#fileUpload").attr("value", _uploadEditor.options.filePath + arg[0].url);
        })
    });
});
//弹出图片上传的对话框
$('#upImage').click(function () {
    var myImage = _uploadEditor.getDialog("insertimage");
    myImage.open();
});
//弹出文件上传的对话框
function upFiles() {
    var myFiles = _uploadEditor.getDialog("attachment");
    myFiles.open();
}
  function addhome(){
    		$.ajax({
                cache: true,
                type: "POST",
                url:"alterHomeAction.action",
                data:{"leibie":$("input[name='leibie']:checked").val() ,"homename":$("input[name='homename']").val(),"where":$("input[name='where']").val(),
                "shi":$("input[name='shi']").val(),"ting":$("input[name='ting']").val(),"wei":$("input[name='wei']").val()
                ,"chu":$("input[name='chu']").val(),"che":$("input[name='che']").val(),"yang":$("input[name='yang']").val()
                ,"niandai":$("input[name='niandai']").val(),"mianji":$("input[name='mianji']").val(),"zhuangxiu":$("select[name='zhuangxiu']").val()
                ,"chaoxiang":$("select[name='chaoxiang']").val(),"homeleixing":$("select[name='homeleixing']").val(),"photo":$("input[name='photo']").val(),
                "administratorid":$("input[name='administratorid']").val(),"price":$("input[name='price']").val(),"louceng":$("input[name='louceng']").val(),
                "homeid":'<struts:property value="homedeiltus[0].homeid"/>'
                ,"xiaoqu":$("input[name='xiaoqu']").val()
                ,"zhoubian":$("input[name='zhoubian']").val()
                ,"jiaotong":$("input[name='jiaotong']").val()},
              async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="修改成功"){
                window.location.href ="selectHomeAction.action";
                return false;
                }else{
                   alert(data);
                }
                }
            });
  
  }   
  </script>
</body>
</html>