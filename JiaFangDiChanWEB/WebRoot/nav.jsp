<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
  <div class="topbar grey" style="background-color: darkgray">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <p>我们有超过1000注册用户.</p>
            </div>
           <struts:if test="%{#session.statusid=='success'}">
				<div class="col-md-3">
					<p>您好,
					<struts:property value="#session.username" />
					，欢迎光临本网站
					</p>
				</div>
				<div class="col-md-5 text-right">
					<ul class="breadcrumb_top text-right">
						<li><a href="collectionlist.action?username=<struts:property value="#session.username" />&pageNo=1"><i class="icon-icons43"></i>我的收藏</a></li>
						<li><a href="application.jsp"><i class="icon-icons215"></i>申请发布</a></li>
					</ul>
				</div>
			</struts:if>
			<struts:else>
				<div class="col-md-3"><p>您好,欢迎光临本网站</p></div>
				<div class="col-md-5 text-right">
	                  <ul class="breadcrumb_top text-right">
			          <li>
			             <i class="icon-icons179"></i>
			             <a data-toggle="modal" data-target="#login" href="">登录</a>/
			             <a data-toggle="modal" data-target="#register" href=""> 注册</a>
			          </li>
	                  </ul>
	             </div>
			</struts:else> 
          </div>
        </div>
      </div>
