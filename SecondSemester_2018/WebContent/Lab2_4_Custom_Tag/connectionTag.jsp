<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/ConnectionTag.tld"%>
<h1>��ũ��Ʈ ���� �����ϱ�</h1>
<tag:db id="db" />
+---------------------------------------------------------+<br />
<%
	Connection conn = db.getConnection();
	PreparedStatement pstmt = conn.prepareStatement("select * from member3");
	ResultSet rs = pstmt.executeQuery();
	while (rs.next()) {
%>
&nbsp;|����� �̸���? :
<%=rs.getString("mem_name")%><br />
&nbsp;|����� ���̵��? :
<%=rs.getString("mem_id")%><br />
+---------------------------------------------------------+<br />
<%
	}
	rs.close();
	pstmt.close();
	conn.close();
%>