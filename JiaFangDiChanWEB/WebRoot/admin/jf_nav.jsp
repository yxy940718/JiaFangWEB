<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
   <header>
      <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="/">JiaFangDiChan</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown"> 
               <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
               <struts:if test="%{#session.status=='success'}">
					<struts:property value="#session.name" />
			  </struts:if>
			<struts:else> 
			   <script type="text/javascript">
			     alert("请先登录");
			     window.location.href='jf_login.jsp';
			   </script>
			</struts:else>
               <span class="caret"></span>
               </a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="个人照片"  ID="aupImage" >个人照片</a></li>
              </ul>
            </li>
            <li><a href="#" onclick="disp_confirm()">退出登录</a></li>
            <script>
               function disp_confirm()
			  {
			  var r=confirm('是否确认退出？')
			  if (r==true)
			    {
			    window.location.href='adminloginout.action';
			    
			    }
			    }
            </script>
          </ul>
        </div>
      </div>
    </nav>
  </header>
