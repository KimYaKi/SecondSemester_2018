<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="Example2_result.jsp" name="form" id="form" method="post">
		<h1>�ֹ��ϱ�</h1>
		�к� : <input type="text" name="std_id" id="std_id" autofocus><br>

		<hr>
		<h3>���� ����</h3>
		<input type="checkbox" name="class_name" value="�����α׷���">�����α׷���
		<input type="checkbox" name="class_name" value="�ü��">�ü�� <input
			type="checkbox" name="class_name" value="�ڷᱸ��">�ڷᱸ�� <input
			type="checkbox" name="class_name" value="�˰���">�˰���
		<hr>
		<p>
			<input type="submit" value="�ֹ�"> <input type="reset"
				value="���">
	</form>
</body>
</html>