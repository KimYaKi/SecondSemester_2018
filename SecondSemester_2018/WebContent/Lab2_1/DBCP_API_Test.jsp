<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*,javax.sql.DataSource, javax.naming.*"%>
<table>
	<tr class="label">
		<td>���̵�
		<td>��й�ȣ
		<td>�̸�
		<td>��������
		<td>�ּ�
		<td>��ȭ��ȣ <%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				Context initCtx = new InitialContext();
				Context envCtx = (Context) initCtx.lookup("java:comp/env");
				DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
				conn = ds.getConnection();
				String sql = "select * from member3";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					String id = rs.getString("mem_id");
					String address = rs.getString("mem_name");
		%>
	<tr>
		<td><%=id%>
		<td><%=address%> <%
 	}
 	} catch (Exception e) {
 		e.printStackTrace();
 	} finally {
 		if (rs != null)
 			try {
 				rs.close();
 			} catch (SQLException sqle) {
 			}
 		if (pstmt != null)
 			try {
 				pstmt.close();
 			} catch (SQLException sqle) {
 			}
 		if (conn != null)
 			try {
 				conn.close();
 			} catch (SQLException sqle) {
 			}
 	}
 %>
</table>