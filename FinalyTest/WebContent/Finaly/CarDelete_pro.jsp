<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="user.CarDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		// ���� ������ �ϱ� ���� �κ�
		if ((session.getAttribute("userID") == null)) {
			out.println("<script>");
			out.println("alert('�α����� ���� ���ּ���.')");
			out.println("location.href='main.jsp'");
			out.println("</script>");
		} else {
			// ������ ���� �Ǿ� �ִ� ��� ����
			CarDAO cardao = new CarDAO();
			String carNumber = request.getParameter("Car");
			if (carNumber == null) {
				out.println("<script>");
				out.println("alert('������ ������ ��ȣ�� ������ �ּ���.')");
				out.println("history.back()");
				out.println("</script>");
			} else {
				if (cardao.DeleteCar(carNumber) == -1) {
					//���� ��Ͽ� ������ ���
					out.println("<script>");
					out.println("alert('�����ҿ� �����Ͽ����ϴ�.')");
					out.println("history.back()");
					out.println("</script>");
				} else {
					//���� ��Ͽ� ������ ���
					out.println("<script>");
					out.println("alert('�����ҿ� �����Ͽ����ϴ�.')");
					out.println("location.href='main.jsp'");
					out.println("</script>");
				}
			}
		}
	%>
</body>
</html>