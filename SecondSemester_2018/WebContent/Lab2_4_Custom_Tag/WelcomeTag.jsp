<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="t" uri="/WEB-INF/tlds/WelcomeTag.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Custom Tag1</title>
</head>
<body>
	<h1>First Custom Tag</h1>
	<font color="red"> 
		<t:welcome />
		<!-- Ŭ�������� �����ߴ� ���ڿ��� ��� �� -->
	</font>
	<!-- TLD(Tag Library Directives) �±� ���̺귯�� ������ -->
	<!-- uri�� �ʹ� ��� �ȴٸ� web.xml�� ���� �� �ָ� �ȴ�. -->
</body>
</html>