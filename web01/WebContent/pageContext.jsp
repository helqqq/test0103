<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//项目的发布路径，例如:  /rabc
	String path = request.getContextPath();
	/*
	全路径，形式如下: http://127.0.0.1:8001/rbac/
	request.getScheme()      ——> http 获取协议
	request.getServerName()  --> 127.0.0.1 获取服务名
	request.getServerPort()  --> 8001 获取端口号
	path                     --> /rbac 获取访问的路径 路
	*/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- 
	<base/>标签解决路径问题
	参考文章:http://www.cnblogs.com/muqianying/archive/2012/03/16/2400280.html
--%>
<!DOCTYPE HTML>
<html>
	<head>

		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>H5模版:</title>
	</head>
	<body>
		<h2>pageContext使用</h2>
        <%
       pageContext.setAttribute("shxt", "四海兴唐");
        %>
        <%=pageContext.getAttribute("shxt") %>
        <a href = "result01.jsp">pageContext跳转</a>
        
        <jsp:forward page="/result01.jsp"></jsp:forward>
        
    
        <%--内部转发 路径不会发生变化 --%>
        <%
        request.getRequestDispatcher("/result01.jsp").forward(request, response);
        %>
		
	</body>
</html>