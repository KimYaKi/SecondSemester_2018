<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO, user.CarDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		if (session.getAttribute("userID") == null) {
			out.println("<script>");
			out.println("alert('�α��� �� �̿��� �ּ���')");
			out.println("main.back()");
			out.println("</script>");
		} else {
			String userID = (String) session.getAttribute("userID");
			String modelID = request.getParameter("order_modelID");
			String number = request.getParameter("carNumber1") + request.getParameter("carNumber2")
					+ request.getParameter("carNumber3");
			CarDAO cardao = new CarDAO();
			if (cardao.InsertCar(number, userID, modelID) == -1) {
				%>
					<script>
						alert("�̹� �����ϴ� ��ȣ �Դϴ�.")
						history.back()
					</script>
				<%
			} else {
				%>
					ȸ�� ��Ͽ� �����Ͽ����ϴ�.
				<%
			}
		}
	%>

</body>
</html>