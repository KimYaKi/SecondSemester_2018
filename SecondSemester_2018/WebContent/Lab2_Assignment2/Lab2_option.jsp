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
	<%
		request.setCharacterEncoding("euc-kr");
	%>
	<c:if test="${paramValues.coffee!=null}">
		<c:forEach var="i" items="${paramValues.coffee}" step="1">
			<b>${i}</b>
				�ɼ� : <tf:option name="option1" ice="ice" hot="hot" />
				������ <tf:option name="option2" tall="tall" grande="grande" venti="venti" />
			<br>
		</c:forEach>
	</c:if>
	<c:if test="${paramValues.coffee==null}">
		���þ���!
	</c:if>

</body>
</html>