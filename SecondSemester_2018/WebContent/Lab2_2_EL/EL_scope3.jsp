<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	session.setAttribute("id", "test");
	application.setAttribute("siteName", "jsp");
%>
<html>
<head>
<title>ǥ����� ���尴ü 2</title>
</head>
<body>
	<h2>EL�� Scope2</h2>
	<jsp:forward page="EL_scope4.jsp" />
</body>
</html>