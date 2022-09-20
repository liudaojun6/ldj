<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布商品</title>
</head>
<body>
<a href="gongneng.jsp">返回</a><br>
<h1>发布商品</h1>
<form action="shopshangrs.jsp" method="post" enctype="application/x-www-form-urlencoded">
商品id：<input type="text" name="sid"><br/>
商品名称：<input type="text" name="sname"><br/>
商品类别：<input type="text" name="slb"><br/>
商品说明：<input type="text" name="ssm"><br/>
商品状态：<input type="text" name="szhuangtai"><br/>
商品价格：<input type="text" name="sprice"><br/>
营销信息：<input type="text" name="syingxiao"><br/>
商品库存：<input type="text" name="snum"><br/>
商品图片：<input type="file" name="file" multiple="multiple" align="center">          
<input type="submit" value="发布">
</form>

</body>
</html>