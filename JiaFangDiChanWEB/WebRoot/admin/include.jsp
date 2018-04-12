<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
     <!--个人信息模态框-->
    <div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >个人信息</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr><img src='<struts:property value="#session.sta001tus.photosrc"/>' style="width:418px;height:200px"/></tr>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" id="userid" value='<struts:property value="#session.id" />' class="form-control" readonly="readonly" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">姓名:</td>
                <td width="80%"><input type="text" id="username" required oninvalid="setCustomValidity('请输入姓名名！');" oninput="setCustomValidity('');" value='<struts:property value="#session.sta001tus.username" />' class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" id="userphone"  required oninvalid="setCustomValidity('请输入电话！');" oninput="setCustomValidity('');" value='<struts:property value="#session.sta001tus.phone" />' class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
                <tr>
                <td wdith="20%">QQ:</td>
                <td width="80%"><input type="text" id="userqq"required oninvalid="setCustomValidity('请输入QQ！');" oninput="setCustomValidity('');" value='<struts:property value="#session.sta001tus.QQ" />' class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">微信:</td>
                <td width="80%"><input type="text" id="userwechat" required oninvalid="setCustomValidity('微信！');" oninput="setCustomValidity('');" value='<struts:property value="#session.sta001tus.wechat" />' class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">邮箱:</td>
                <td width="80%"><input type="text" id="useremail"required oninvalid="setCustomValidity('请输入邮箱！');" oninput="setCustomValidity('');" value='<struts:property value="#session.sta001tus.email" />' class="form-control" name="usertel"  autocomplete="off" /></td>
              </tr>
              <td wdith="20%">个人简介:</td>
                <td width="80%">
                <textarea class="form-control" id="userIntroduction" style="text-align:left" name="usertel" maxlength="200" autocomplete="off">
                   <struts:property value="#session.sta001tus.Introduction" /> 
                </textarea></td>
              </tr>
              <tr>
                <td wdith="20%">新密码:</td>
                <td width="80%"><input type="password" class="form-control" placeholder="6-16位"  id="password" minlength="6" maxlength="16" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" id="new_password" maxlength="16" autocomplete="off" /></td>
              </tr>
              
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <input type="button" class="btn btn-primary" value="提交" onclick="alternews()">
        </div>
      </div>
    </form>
    <script type="text/javascript">
       function alternews(){
           var pwd="";
           if($('#password').val().trim()!==""){
              if($('#password').val()!==$('#new_password').val()){
                alert("两次密码不相同");
                retun ;
              }else{
              pwd=$('#password').val()
              }
           }else{
             pwd='<struts:property value="#session.sta001tus.pwd" /> '
           }
              $.ajax({
                cache: true,
                type: "POST",
                url:"alterNewsAction.action",
                data:{"administratorid":$('#userid').val(),"username":$('#username').val(),"phone":$('#userphone').val(),
                      "QQ":$('#userqq').val(),"wechat":$('#userwechat').val(),"email":$('#useremail').val(),
                      "Introduction":$('#userIntroduction').val(),"pwd":pwd},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="修改成功"){
                window.location.href ="jf_index.jsp";
                return false;
                }else{
                   alert(data);
                }
                }
            });
           }
       
    </script>
  </div>
</div>
<!--提示模态框-->
<script src="../ueditor.config.js"></script> 
<script src="../ueditor.all.min.js"> </script> 
<script src="../lang/zh-cn/zh-cn.js"></script>  
<script id="uploadEditor" type="text/plain" style="display:none;"></script>
<script type="text/javascript">

//弹出图片上传的对话框
$('#aupImage').click(function () {

 var a_uploadEditor = UE.getEditor('uploadEditor');
$(function () {
    //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
    
    a_uploadEditor.ready(function () {
        //设置编辑器不可用
        //_uploadEditor.setDisabled();
        //隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
        a_uploadEditor.hide();
        //侦听图片上传
        a_uploadEditor.addListener('beforeInsertImage', function (t, arg) {
         
          $.ajax({
                cache: true,
                type: "POST",
                url:"adminphoto.action",
                data:{"photosrc":arg[0].src,"personid":'<struts:property value="#session.id" />'},
                async: false,
                dataType:"html",
                error: function(request) {
                    alert("网络错误，请稍后重试");
                },
                success: function(data) {
                if(data=="添加成功,下次登录生效"){
                alert(data);
                window.location.href ="indexaction.action";
                return false;
                }else{
                   alert(data);
                }
                }
            });
        })
    });
});
    var myImage = a_uploadEditor.getDialog("insertimage");
    myImage.open();
   // ${"#edui_fixedlayer"}.attr('style',"position: fixed; left: 0px; top: 0px; width: 0px; height: 0px; z-index: 9999;");
});

</script>
