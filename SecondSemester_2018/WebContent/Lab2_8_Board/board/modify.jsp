<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�ۼ���</h3>
	<form action="modify.board" method="post" enctype="multipart/form-data" name="boardform">
		<input type="hidden" name="no" value="${article.getIdx()}"> 
		<input type="hidden" name="pageNo" value="${param.pageNo}">
		<table border="0" width="100%" align="center">
			<tr>
				<td width="20%">�� ��</td>
				<td width="80%">
					<input type="text" name="mem_name" size="10" maxlength="8" value="${article.getName()}">
				</td>
			</tr>
			<tr>
				<td width="20%">�� ��</td>
				<td width="80%">
					<input type="text" name="title" size="50" maxlength="30" value="${article.getTitle()}">
				</td>
			</tr>
			<tr>
				<td width="20%">�� ��</td>
				<td width="80%">
					<textarea name="content" rows="10" cols="50"> ${article.getContent()}</textarea>
				</td>
			</tr>
			<tr>
				<c:if test="${fn:length(article.getFilename())>0}">
					<td>���ε� �� ���� :</td>
					<td>${article.getFilename()}</td>
				</c:if>
			</tr>
			<tr>
				<td width="20%">����ã��</td>
				<td width="80%">
					<input type="file" name="filename2" size="50" maxlength="50">
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�����ϱ�"> 
				<input type="reset" value="�ٽþ���"> 
				<input type="button" value="����Ʈ" onClick="javascript:location.href='read.board?no=${param.no}'"></td>
			</tr>
		</table>
	</form>
</body>
</html>