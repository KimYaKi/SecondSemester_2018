<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="testjsp.LogonDBBean"%>
<%@ page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="member" class="testjsp.LogonDataBean">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
	//������ ���� �Ѿ���� �ʴ� �������� ���Գ�¥�� ���� ����������� ����
	member.setReg_date(new Timestamp(System.currentTimeMillis()));
	LogonDBBean manager = LogonDBBean.getInstance();
	//����ڰ� �Է��� ����������� ��ü�� ������ ȸ������ ó�� �޼ҵ�ȣ��
	boolean result = manager.insertMember(member);
	if (result) {
%>
<script type="text/javascript">
	alert("ȸ�������� �Ͽ����ϴ�.");
	location.href = "loginForm.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("ȸ�����Կ� ���� �Ͽ����ϴ�.");
	history.back();
</script>
<%
	}
%>