<%@page import="teamproject.LoginDB"%>
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
<%
	
	LoginDB loginDB=new LoginDB();
	int a=loginDB.join(
			request.getParameter("id"),
			request.getParameter("pw"),
			request.getParameter("tel"),
			request.getParameter("qu"),
			request.getParameter("an"));
	if(a>0){
		out.println("<script>");
		out.println("alert('ȸ�����ԵǾ����ϴ�.')");
		out.println("location.href='../homepage.jsp'");
		out.println("</script>");
	}
	else{
		out.println("<script>");
		out.println("alert('���̵� �ߺ��Դϴ�.')");
		out.println("location.href='../login/login.jsp'");
		out.println("</script>");
	}
	
%>
</body>
</html>