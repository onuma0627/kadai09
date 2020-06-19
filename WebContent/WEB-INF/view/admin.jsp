<%@page import="java.util.ArrayList"%>
<%@page import="bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理画面</title>
</head>
<body>

	<%
				ArrayList<UserBean> list=(ArrayList<UserBean>)session.getAttribute("list");
			for(int i=list.size()-1;i>-1;i--){
				UserBean user=list.get(i);
			%>

<p><%=user.getId()%>.<%=user.getName() %></p>
	<p>
		投稿日 <%=user.getDay() %>
		<%=user.getTime() %>

	</p>
	<form action="/kadai9/Delete" method="get">
	<input type="hidden" name="id" value=<%=user.getId() %>>
		<input type="submit" value="削除">
	</form>
	<%} %>
	<br>
	<a href="/kadai9/User">掲示板</a>

</body>
</html>