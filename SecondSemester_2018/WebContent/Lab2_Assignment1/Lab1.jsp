<!-- 201403010 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ��û �ý���</title>
</head>
<body>
	<h1>���� ��û �ý���</h1>
	<hr width="400" align="left">
	<form action="Lab1_processing.jsp" method="POST">
		�й� : <input type="text" maxlength="9" name = "number"><br />
		�г�<br /> 
		1�г� <input type="radio" name="grade" value="1"> 
		2�г� <input type="radio" name="grade" value="2">
		3�г� <input type="radio" name="grade" value="3"> 
		4�г� <input type="radio" name="grade" value="4"><br />
		<input type="submit" value="Ȯ��">
	</form>
</body>
</html>