<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	// �Ŵ��� ����
	String[] menu = { "�Ƹ޸�ī��", "ī���", "�ٴҶ��" };
%>
<body>
	<h1>Ŀ�� �ֹ�</h1>
	<form action="Lab2_option.jsp" method="post">
		<h1>Ŀ�� �ֹ�</h1>
		
		<tf:check_tag name="coffee" coffee1="�Ƹ޸�ī��" coffee2="ī���" coffee3="�ٴҶ��" />
		
		<input type="submit" value="�ɼǼ���">
	</form>
</body>
</html>