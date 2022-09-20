<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码结果页面</title>
</head>
<body>
<%
String pwd1=request.getParameter("pwd1");
String pwd2=request.getParameter("pwd2");
String pwd3=request.getParameter("pwd3");

String jiumima="1234";
int m1=0;
if(jiumima.equals(pwd1))
{
	
	if(!pwd2.equals(pwd3))
	{
		m1=1;
		%>错误：新密码与确认密码不一致</br><%	
	}
}
else 
{
	m1=1;
%> 错误：旧密码错误</br><% 
}

if(m1==0)
{
%>  修改密码成功</br>
		<a href="gongneng.jsp">返回</a><br/>
		<% 	
}
else
{
%>
修改密码失败</br>
		<a href="gongneng.jsp">返回</a><br/>
<%	
}
%>
</body>
</html>