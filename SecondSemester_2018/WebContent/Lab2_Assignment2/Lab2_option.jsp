<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- ������ �±׸� �޾ƿ´�. -->
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="euc-kr" />
	<c:set var="menu" value="${paramValues.menu }" />
	
	<!-- �տ��� ������ �Ŵ��� �޾ƿͼ� ������ ���� �˻��Ѵ�. -->
	<c:if test="${fn:length(paramValues.menu) != 0}">
		<c:forEach var="menu" items="${menu }">
			${menu }
			<tf:select name="${menu }_tem" ice="ice" hot="hot" />
			<tf:select name="${menu }_size" tall="tall" grande="grande" venti="venti" />
			<br>
		</c:forEach>
	</c:if>
	
	<!-- ������ ���� ���°�� ��� -->
	<c:if test="${fn:length(paramValues.menu) == 0 }">
		���þ���
	</c:if>
</body>
</html>