<!-- 201403010 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- �й��� �г��� �� session�ȿ��� ���� ��ŵ�ϴ�. -->
	<c:set var="number" value="${fn:trim(param.number)}" scope="session" />
	<c:set var="grade" value="${param['grade'] }" scope="session" />

	<c:set var="number1" value="${fn:trim(number) }" scope="session" />
	<c:set var="number_code" value="${fn:substring(number,4,6) }" scope="session" />
	<c:if
		test="${ grade!=null && fn:length(number) == 9 || fn:length(number) == 8}">
		<!-- �й� ���� ���� 9���� ���� �г��� ������ ��쿡��  �Ѿ���� �߽��ϴ�. -->
		<c:redirect
			url="Lab1_apply.jsp" />
	</c:if>

	<!-- ���� if������ �������� ������ �Ʒ��� ���ٸ���Ʈ�� �� �������� ���ư��ϴ�. -->
	<c:redirect
		url="Lab1.jsp" />

</body>
</html>