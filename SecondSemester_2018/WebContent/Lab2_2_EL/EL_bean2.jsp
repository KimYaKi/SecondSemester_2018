<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="bean" class="EL.ELBean" />
<jsp:setProperty property="siteName" name="bean" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ǥ����� ���� - java bean ���</title>
</head>
<body>
	<h2>EL�� Beans</h2>
	����׼� �±�
	<br /> SITEBEAN :
	<jsp:getProperty property="siteName" name="bean" /><p />
	EL Beans
	<br /> SITEBEAN : ${bean.siteName }
</body>
</html>