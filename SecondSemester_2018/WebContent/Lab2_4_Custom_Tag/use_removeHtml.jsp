<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="dateEL" value="<%=new Date()%>" />
	<tf:removeHtml trim="true">
		<font size="10">����
			<style>�ð�</style>�� ${dateEL} �Դϴ�.
		</font>
	</tf:removeHtml>
	<br>
	<!-- length�� 15�̱� ������ ���ڿ��� 0~15�� �ڸ��� �ȴ�. -->
	<!-- �߷��� ���ڿ� �� �κп��� '...'�� �ٿ��ش�. -->
	<tf:removeHtml length="15" trail="..." trim="true">
		<u>���� �ð�</u>�� <b>${dateEL }</b> �Դϴ�.
</tf:removeHtml>
	<br>
	<tf:removeHtml length="15">
		<jsp:body>
			<u>���� �ð�</u>�� <b>${dateEL }</b> �Դϴ�.
		</jsp:body>
	</tf:removeHtml>
</body>
</html>