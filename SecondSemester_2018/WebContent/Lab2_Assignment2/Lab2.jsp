<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<!-- �迭�� ������ �����ؼ� forEach���� �̿��ؼ� ����Ѵ�. -->
		<c:set var="me" value="<%=menu%>" />
		<c:forEach var="i" items="${me}">
			<strong>${i} <input type="checkbox" name="menu" value="${i }"></strong>
		</c:forEach>
		<input type="submit" value="�ɼ� ����">
	</form>
</body>
</html>