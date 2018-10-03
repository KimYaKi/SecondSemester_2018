<!-- 201403010 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String subject[][] = {{"c������", "python����"}, {"java ���α׷���", "�ڷᱸ��"}, {"�ü�� ", "���ý��ۼ���װ���"},
			{"���Ͻ�1", "���Ͻ�2"}};
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
	function subChk() {
		var subchk = document.form1.sub;
		var isChk = false;
		for (var i = 0; i < subchk.length; i++) {
			if (subchk[i].checked) {
				isChk = true;
				return true;
			}
		}
		alert("������ �� ���� �̻� ������ �ּ���.");
		return false;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ����</title>
</head>
<body>
	<!-- �޾ƿ� number -->
	<c:choose>
		<c:when test="${number_code == '03' || number_code == '04' }">
			<!-- �а� �ڵ尡 03,04�� ��츸 �Ʒ��� form�� ���� �ݴϴ�. -->
			<form action="Lab1_result.jsp" name="form1" method="POST"
				onSubmit="return subChk();">
				<h2>���� ����</h2>
				<!-- session�� �����Ǵ� ������ ������ ��� �մϴ�. -->
				�й� :
				<c:out value="${number }" />
				<br> �г� :
				<c:out value="${grade }" />
				<br> ��ǻ�� ����Ʈ����<br>
				<hr width="400" align="left">

				<!-- ������ ���� �� �迭�� s�� �Ҵ� �մϴ�. -->
				<c:set var="s" value="<%=subject%>" />

				<!-- ������ �г��� ������ �޾� �ɴϴ�. -->
				<c:forEach var="i" items="${s[grade-1]}">
					<strong>${i} <input type="checkbox" name="sub"
						value="${i }"></strong>
					<br>
				</c:forEach>
				<br> <input type="submit" value="����">
			</form>
		</c:when>

		<c:otherwise>
			<!-- �� ���� �й��� ��� "�غ����Դϴ�."�� ��� �� �ݴϴ�. -->
			<h2>�غ����Դϴ�.</h2>
			<h3><a href="Lab1.jsp">���ư���</a></h3>
		</c:otherwise>
	</c:choose>
</body>
</html>