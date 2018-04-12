package com.jiafang.Action;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;  
  
import org.apache.struts2.ServletActionContext;  
  
import com.opensymphony.xwork2.ActionSupport;  
  
public class UploadAction extends ActionSupport{  
  
    private static final long serialVersionUID = 1L;  
  
    // 以下封装的参数是固定的，为：文件名 文件名+ContentType 文件名+FileName  
  
    //上传文件  
  
    private File upload;  
  
    //上传文件的类型  
  
    private String uploadContentType;  
  
    //上传文件的名称  
  
    private String uploadFileName;  
  
    public File getUpload() {  
  
       return upload;  
  
    }  
  
    public void setUpload(File upload) {  
  
       this.upload = upload;  
  
    }  
  
    public String getUploadContentType() {  
  
       return uploadContentType;  
  
    }  
  
    public void setUploadContentType(String uploadContentType) {  
  
       this.uploadContentType = uploadContentType;  
  
    }  
  
    public String getUploadFileName() {  
  
       return uploadFileName;  
  
    }  
  
    public void setUploadFileName(String uploadFileName) {  
  
       this.uploadFileName = uploadFileName;  
  
    }  
    private Map<String,Object> dataMap; 
    @Override  
  
    public String execute() throws Exception {  
  
       //声明文件上传的路径  
  
       String path = ServletActionContext.getServletContext().getRealPath("/upload");  
  
       //根据路径名创建一个文件  
  
         File file = new File(path);  
  
         //判断file是否存在，如果不存在，则自动创建一个  
  
         if(!file.exists()){  
  
         file.mkdirs();  
  
         }  
  
        //通过调用copyFile()方法将指定的文件copy到指定的路径中  
  
         FileUtils.copyFile(upload, new File(file, uploadFileName));  
         HttpServletResponse response=ServletActionContext.getResponse();  
         PrintWriter out = response.getWriter();  
         //JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试  
         dataMap = new HashMap<String, Object>();
         dataMap.put("success", true); 
         return SUCCESS;
  
    }

	public Map<String, Object> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Object> dataMap) {
		this.dataMap = dataMap;
	}  
}  
