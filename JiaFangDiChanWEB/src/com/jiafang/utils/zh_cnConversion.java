package com.jiafang.utils;
/*中文转换工具类*/
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class zh_cnConversion {
	public String toUTF(String s){
		String str="";
		if(s.equals("")){
			return s;
		}else{
		try {
			str = URLEncoder.encode(s, "UTF8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return str;
	}
	}
	public String toZH(String s){
		String str="";
		if(s.equals("")){
			return s;
		}else{
		try {
			str = URLDecoder.decode(s, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return str;
	}
	}
}
