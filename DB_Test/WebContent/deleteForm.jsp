<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="deletePro.jsp">
		<table>
			<tr>
				<td class="label"><label for="idt">아이디</label>
				<td class="content"><input id="idt" name="idt" type="text"
					size="20" maxlength="50" placeholder="example@naver.com" autofocus
					required>
			<tr>
				<td class="label"><label for="passwd">비밀번호</label>
				<td class="content"><input id="passwd" name="passwd"
					type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16"
					required>
			<tr>
				<td class="label2" colspan="2"><input type="submit" value="삭제">
					<input type="reset" value="다시작성">
		</table>
	</form>
</body>
</html>