<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="user.CarDAO, user.UserDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if ((session.getAttribute("userID") == null)) {
			out.println("<script>");
			out.println("alert('�α����� ���� ���ּ���.')");
			out.println("location.href='main.jsp'");
			out.println("</script>");
		} else {
			String userID = (String) session.getAttribute("userID");
			CarDAO cardao = new CarDAO();
			UserDAO userdao = new UserDAO();
			String CarNumber = cardao.SearchNumber(userID);
			
			/*
				���� ��ȣ�� ����� �Ǿ��ִ� ��� member���̺�� car���̺��� �����Ǿ� �ֱ� ������
				car���̺� ����� ������ ���� ������ �� member���̺��� ������ ������ �Ѵ�.
			*/
			if (CarNumber != null) {
				// ���� ��ȣ�� �����ϴ� ���
				// car���̺� ���� ���� ����
				if (cardao.DeleteNumber(userID) == -1) {
					out.println("<script>");
					out.println("alert('DB����1')");
					out.println("</script>");
				} else {
					// �� ���� member���̺��� ����
					if (userdao.DeleteUser(userID) == -1) {
						out.println("<script>");
						out.println("alert('DB����2')");
						out.println("</script>");
					} else {
						out.println("<script>");
						out.println("alert('ȸ��Ż�� �Ϸ�Ǿ����ϴ�.')");
						out.println("location.href='logout.jsp'");
						out.println("</script>");
					}
				}
			} else {
				// ���� ��ȣ�� ��ϵǾ����� ���� ��� member���̺� ������ �����Ѵ�.
				if (userdao.DeleteUser(userID) == -1) {
					out.println("<script>");
					out.println("alert('DB����3')");
					out.println("</script>");
				} else {
					out.println("<script>");
					out.println("alert('ȸ��Ż�� �Ϸ�Ǿ����ϴ�.')");
					out.println("location.href='logout.jsp'");
					out.println("</script>");
				}
			}
		}
	%>
</body>
</html>