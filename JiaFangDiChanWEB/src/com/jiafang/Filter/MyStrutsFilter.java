package com.jiafang.Filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;


public class MyStrutsFilter extends StrutsPrepareAndExecuteFilter{
	
	public void doFilter(ServletRequest req, ServletResponse res,
            FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        String url = request.getRequestURI();         
        if (url.contains("/jsp/controller.jsp")) {
        	System.out.println("使用自定义拦截器。。。。。");
        	chain.doFilter(req, res);         
        }else{    
        	/*req.setCharacterEncoding("UTF-8");
        	res.setCharacterEncoding("UTF-8");*/
            super.doFilter(req, res, chain);         
        } 
    }
}
