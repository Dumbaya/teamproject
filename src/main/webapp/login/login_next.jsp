<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	//�� db ���ӿ� ����� conn ����
	Connection conn = null;
	//����Ŭ ����̹� ��� ����
	String driver = "oracle.jdbc.driver.OracleDriver";
	//�� db�� ���� ��� ����
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//���� ����,���� ���� ���� ���� ����
	Boolean connect = false;
	//db ���� �ڵ�� �ݵ�� try~catch�� �ȿ� �������
	try {
	    //����Ŭ ����̹� ����
	    Class.forName(driver);
	    //�� db ����
	    conn = DriverManager.getConnection(url, "C##WEB02", "hoseo1234");
	    //���Ӽ����� true ����
	    connect = true;
	    //���� ����, ���� ���� : �׻� db�� ����Ǿ� ������ ���� ���� �� ������ �浹�� �Ͼ�� ���� 
	    
	} catch (Exception e) {
	    //���� ���н� false ��� ����ó������
	    connect = false;
	    e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		
		String id = request.getParameter("username");
	    String password = request.getParameter("password");
	
		String sql="SELECT * FROM login WHERE id=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		
		String pass=" ";
		while(rs.next()){
			pass=rs.getString("pw");
		}
		
		
		rs.close();
		pstmt.close();
		conn.close();

		if(pass.equals(password)){
			session.setAttribute("id", id);
			session.setAttribute("pw", password);
			
			out.println("<script>");
	    	out.println("alert('�α��� ����')");
	    	out.println("location.href='../homepage.jsp'");
	    	out.println("</script>");
	    }else{
	    	out.println("<script>");
	    	out.println("alert('�α��� ����')");
	    	out.println("location.href='login.jsp'");
	    	out.println("</script>");
	    }
	%>

</body>
</html>