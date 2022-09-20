<%@page import="java.util.Map"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String sid=request.getParameter("sid");
String sname=request.getParameter("sname");
String slb=request.getParameter("slb");
String ssm=request.getParameter("ssm");
String szhuangtai=request.getParameter("szhuangtai");
String sprice=request.getParameter("sprice");
String syingxiao=request.getParameter("syingxiao");
String snum=request.getParameter("snum");
request.setCharacterEncoding("utf-8");  
response.setContentType("text/html;charset=utf-8");  

String path = request.getSession().getServletContext().getRealPath("C:/Users/liudaojun/Desktop/图片库");
%>
<%=path %>

File filemulu =new File(path);    
      //如果文件夹不存在则创建    
      if  (!filemulu .exists())      
      {       
          System.out.println("//不存在");  
          filemulu .mkdir();    
      } else   
      {  
          System.out.println("//目录存在");  
      }  

        String file= map.get("file"); // 名称  
       // String newFile = map.get("newFile");// 地址  
        MuJUService mjService = new MuJUService();
        //System.out.println(map.get("type"));
        boolean flag=mjService.uploadImg("upload/weixiuimg/"+file,map.get("wx_id"));//调用方法，存到数据库
        HttpSession session=request.getSession();
        if (flag) {
            log.info("图片上传成功");
            session.setAttribute("flag", "上传成功");
        }else {
            log.info("图片上传失败");
            session.setAttribute("flag", "上传失败");
        }
</body>
</html>