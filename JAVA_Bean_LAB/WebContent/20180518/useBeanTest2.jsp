<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="TestBean" class="javabeans.TestBean" scope="request" />
    <!-- scope�� page�� ��� �̸��� �����ص� �ٸ� ��ü�� �ȴ�. -->
    <!-- ������, scope�� request�� ��� �̸��� �����ϸ� ������ ��ü�� �ν��Ѵ�. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=TestBean.getId() %>
</body>
</html>