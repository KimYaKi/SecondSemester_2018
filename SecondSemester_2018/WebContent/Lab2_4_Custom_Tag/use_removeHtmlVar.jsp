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
	<tf:removeHtmlVar trim="true" var="removed">
		<font size="10"> ���� <style>�ð�</style>�� ${dateEL} �Դϴ�.</font>
	</tf:removeHtmlVar>
	ó�����: ${removed}
</body>
</html>