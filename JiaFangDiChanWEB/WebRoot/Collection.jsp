<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<script>
     var id='<struts:property value="#session.statusid" />'
    function Collection(val){
        if(id!='success'){
           alert('对不起，您还没有登录！');
           return;
        }
        $.ajax({
                cache: true,
                type: "POST",
                url:"collectionAction.action",
                data:{"username":'<struts:property value="#session.username" />',"homeid":val},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="收藏成功"){
                    alert(data);
                    //window.location.href="index.jsp";
                }else if(data=="已经收藏"){
                    if(window.confirm("您已收藏，是否跳转到收藏列表？"))
		         	{
		         	window.location.href='collectionlist.action?username=<struts:property value="#session.username" />&pageNo=1';
		         	}
                }
                }
            });
    
    
    
    }
 
</script>