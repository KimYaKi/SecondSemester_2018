<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Example1</title>
</head>
<body>
<form method="post" action="Example1_result.jsp">

�̸� <input type="text" name="name"> <br>
�й� <input type="text" name="number"> <br>
<hr>

�а�<br/>
�ļ� <input type="radio" name="dept" value="�ļ�" checked>
���� <input type="radio" name="dept" value="����">
�纹 <input type="radio" name="dept" value="�纹">
��ȣ <input type="radio" name="dept" value="��ȣ">
<hr>
<input type="text" name="score"> / <select name="class_score">
<option value="4.5"> 4.5 </option>
<option value="4.5"> 4.3 </option>
<option value="4.5"> 4.0 </option>
</select>
<input type="submit" value="����">
</form>
</body>
</html>