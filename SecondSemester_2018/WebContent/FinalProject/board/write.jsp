<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<h3>글쓰기</h3>
	<table border="0" width="100%" align="center">
		<tr>
			<td width="20%">성 명</td>
			<td width="80%"><input type="text" name="mem_name" size="10"
				maxlength="8"></td>
		</tr>
		<tr>
			<td width="20%">제 목</td>
			<td width="80%"><input type="text" name="title" size="50"
				maxlength="30"></td>
		</tr>
		<tr>
			<td width="20%">내 용</td>
			<td width="80%"><textarea name="content" rows="10" cols="50"></textarea></td>
		</tr>
		<tr>
			<td width="20%">비밀 번호</td>
			<td width="80%"><input type="password" name="pass" size="15"
				maxlength="15"></td>
		</tr>
		<tr>
		<tr>
			<td width="20%">파일찾기</td>
			<td width="80%"><input type="file" name="filename" size="50"
				maxlength="50"></td>
		</tr>
		<tr>

			<td>내용타입</td>
			<td>HTML<input type=radio name="contentType" value="HTTP">&nbsp;&nbsp;&nbsp;
				TEXT<input type=radio name="contentType" value="TEXT" checked>
			</td>
		</tr>
		<tr>
			<td colspan="2"><hr /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="등록"> <input
				type="reset" value="다시쓰기"> <input type="button" value="리스트"
				onClick="javascript:location.href='index.jsp?pagefile=./board/list'"></td>
		</tr>
	</table>
</html>