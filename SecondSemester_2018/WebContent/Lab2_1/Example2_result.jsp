<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.Timestamp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="ex2" class="Example.Example2" scope="page">
<jsp:setProperty name="ex2" property="*"/>
</jsp:useBean>
<%ex2.setReg_date(new Timestamp(System.currentTimeMillis()));%>
<h1>������û���</h1>
<hr>
�̸� : <jsp:getProperty property="std_id" name="ex2"/><br>
�������� : <jsp:getProperty property="classname" name="ex2"/><br>
������� �ð�: <jsp:getProperty property="reg_date" name="ex2"/><br>
</body>
</html>