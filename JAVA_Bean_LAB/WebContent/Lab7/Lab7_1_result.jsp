<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style_main.css" />
</head>
<body>
<!-- 201403010 ������ -->
	<jsp:useBean id="bean" class="beans.Information">
		<jsp:setProperty name="bean" property="*" />
		<!-- beans��Ű�� ���� �ִ� Information������ �ҷ��´�. -->
		<!-- property�� ���� *�� �����ϸ� ��� ������ �������� �� -->
	</jsp:useBean>
	<%
		//���� ��¥�� �ð��� �ֹ� �ð����� ����
		bean.setReg_date(new Timestamp(System.currentTimeMillis()));
	%>
	<div id="container">
		<h1> >>�ֹ� ���<< </h1>
		<hr>
		<br>
		<table id="container2">
			<tr>
				<td>�ֹ���ȣ
				<td><jsp:getProperty name="bean" property="num" /> <!-- Information���� ������ num���� ��ȯ �ؿ� ��쵵 ���� -->
					<!-- property�� �� ���� Information���� ������ ���� ��� �����ؾ� �� -->
			<tr>
				<td>�̸� :
				<td><jsp:getProperty name="bean" property="name" />
			<tr>
				<td>Ŀ�� :
				<td><jsp:getProperty name="bean" property="menu" />
			<tr>
				<td>�ɼ� :
				<td><jsp:getProperty name="bean" property="temp" />
			<tr>
				<td>������ :
				<td><jsp:getProperty name="bean" property="size" />
			<tr>
				<td>�ֹ��ð� :
				<td><jsp:getProperty name="bean" property="reg_date" />
		</table>
	</div>

	<%
		String name = request.getParameter("name");
		//name���� �޾ƿ��� ���� ���� ����
		
		PreparedStatement pstmt = null;
		//���� �߰��ϱ� ���� ��ü
		Connection conn = null;
		String str = "";
		try {
			String DB_URL = "jdbc:mysql://localhost:3307/school";
			String DB_USER = "root";
			String DB_PASSWORD = "****";
			Statement stmt;
			Class.forName("com.mysql.jdbc.Driver");
			//MySql����̹� �ε�
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			String sql = "insert into custom_num values (null,?)";
			pstmt = conn.prepareStatement(sql);
			//insert�� �����ϴ� Ŀ�ؼ��� ����
			pstmt.setString(1, name);
			//?�� ������ �ڸ����� ����
			pstmt.executeUpdate();
			//insert����
			out.println("custom_num ���̺� ���ο� ���ڵ带 �߰��߽��ϴ�.");
			//������ �Ϸ� �� ��� ���
		} catch (Exception e) {
			e.printStackTrace();
			out.println("custom_num ���̺� ���ο� ���ڵ带 �߰��� �����߽��ϴ�");
			//������ �ʵ� ��� ���
		} finally {
			//���ܰ� �߻� �ϵ� ���ϵ� ������ ����
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException sqle) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException sqle) {
				}
		}
	%>
</body>
</html>