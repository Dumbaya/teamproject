<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�۾���</h1>
	<form action="insert_alert.jsp" method="get">
		<table border="1">
			<tr>
				<th>NAME</th>
				<td><input type="text" name="bd_name"></td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td><input type="text" name="bd_title"></td>
			</tr>
			<tr>
				<th>CONTENT</th>
				<td><textarea rows="10" cols="60" name="bd_content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="�Է�">
					<input type="button" value="���" onclick="location.href='main.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>