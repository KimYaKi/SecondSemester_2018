<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String carNumber = request.getParameter("searchNumber1") + request.getParameter("searchNumber2")
				+ request.getParameter("searchNumber3");
		UserDAO dao = new UserDAO();
		ResultSet rs = dao.SearchData(carNumber);
		if (rs == null) {
			out.println("<script>");
			out.println("alert('�˻��� ������ �����ϴ�.')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			%>
			<table>
				<thead>
					<tr>
						<td>������ȣ</td>
						<td>����� �̸�</td>
						<td>��ȭ ��ȣ</td>
					</tr>
				</thead>
				<%
					while (rs.next()) {
						out.print("<tr>");
						out.println("<td>" + rs.getString(1) + "</td>");
						out.println("<td>" + rs.getString(2) + "</td>");
						out.println("<td>" + rs.getString(3) + "</td>");
						out.print("</tr>");
					}
				%>
			</table>
			<p style="text-align:right;">
			<input type="button" value="�ڷΰ���" onclick="history.back()">
			<input type="button" value="��������" onclick="location.href='main.jsp'">
			<%
		}
	%>
</body>
</html>