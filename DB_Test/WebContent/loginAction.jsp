<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<jsp:useBean id="user" class="user.UserDTO" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP BBS</title>
</head>
<body>
    <%
        UserDAO userDAO = new UserDAO();
        int result = userDAO.login(user.getUserID(), user.getUserPassword());
        if (result ==1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('��й�ȣ�� Ʋ���ϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�������� �ʴ� ���̵��Դϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB ������ �߻��߽��ϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
    %>
</body>
</html>
