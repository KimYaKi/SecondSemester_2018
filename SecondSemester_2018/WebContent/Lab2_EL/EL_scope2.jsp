<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% pageContext.setAttribute("msg","���� �̷�� ����."); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL�� Scope1</title>
msg(pageScope�� ���� ��) : <b>${pageScope.msg}</b><p/>
1���� 10���� ��(request�� ���� ��) : <b><%=request.getAttribute("sum") %></b><p/>
1���� 10���� ��(requestScope�� ���� ��) : <b>${requestScope.sum}</b><p/>
</head>
<body>

</body>
</html>