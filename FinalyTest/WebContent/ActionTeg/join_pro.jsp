<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="user.user">
		<jsp:setProperty name="bean" property="*" />
	</jsp:useBean>
	
	ID : <jsp:getProperty property="id" name="bean"/><br>
	��й�ȣ : <jsp:getProperty property="pwd" name="bean"/><br>
	�̸� : <jsp:getProperty property="name" name="bean"/><br>
	���� : <jsp:getProperty property="gender" name="bean"/><br>
	E-mail : <jsp:getProperty property="email" name="bean"/><br>
	��ȭ��ȣ : <jsp:getProperty property="phone" name="bean"/><br>
</body>
</html>