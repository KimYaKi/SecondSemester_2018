<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="m" uri="/WEB-INF/Functions.tld"%>
<html>
<head>
<title>Expression Language</title>
</head>
<body>
<%
pageContext.setAttribute("test",request.getAttribute("number"));
%>
	<h2>EL�� ���� �޼ҵ�</h2>
	123456789�� 1000���� ���� ��ȣ(,)�� ǥ���Ͻÿ�.
	<p />
	<b>result : ${m:comma(123456)}</b>
	<br>
	${pageScope.test}
</body>
</html>