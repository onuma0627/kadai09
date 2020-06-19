<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板</title>
</head>
<body>

	<form action="/kadai9/User" method="get">
		<input type="text" name="name" value="風吹けば名無し"><br>
		<textarea name="message"></textarea>
		<input type="submit" value="送信">
	</form>
		<a href="/kadai9/Admin">管理画面</a>
	<%
	ArrayList<UserBean> list=(ArrayList<UserBean>)session.getAttribute("list");
			for(int i=list.size()-1;i>-1;i--){
				UserBean user=list.get(i);
			%>
	<p><%=user.getId()%>.<%=user.getName() %>
		投稿日 <%=user.getDay() %>
		<%=user.getTime() %>
	</p>
	<h1><%=user.getMessage() %></h1>
	<br>
	<%
				}
			%>


</body>
</html>