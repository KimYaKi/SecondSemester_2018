<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	function SearchNumber(){
		sform = document.searchForm;
		if(sform.searchNumber1.value == "" || sform.searchNumber3.value == "" || sform.searchNumber1.value.length!=2 || sform.searchNumber3.value.length!=4){
			alert("��Ȯ�� ������ �Է��� �ּ���.");
			return false;
		}else{
			return true;
		}
		return false;
	}
</script>
</head>
<body>
	<h1>
		<strong>ȸ�� ���� �˻�</strong>
	</h1>
	<form action="main.jsp?pagefile=search_pro" method="post" id="searchForm" name="searchForm" onsubmit="return SearchNumber();">
		<div id="footer">
			<!-- ���� ��ȣ �Է� �κ� -->
			<br> �˻� ���� ��ȣ : <input type="text" id="searchNumber1"
				name="searchNumber1" maxlength="2" required>
			<!-- ���� ��ȣ ���� �� �� -->

			<select id="searchNumber2" name="searchNumber2">
				<option value="��" selected>��</option>
				<option value="��">��</option>
				<option value="��">��</option>
				<option value="��">��</option>
				<option value="��">��</option>
			</select>
			<!-- ������ �ѱ� �κ� ���� ��~�� �ۿ� �ȸ�������ϴ�. -->

			<input type="text" id="searchNumber3" name="searchNumber3" maxlength="4"
				required>
			<!-- ���� ���� 4�� -->

			<br> <br>
			<p align="right">
				<input type="submit" value="�˻��ϱ�"> <input type="button"
					value="�ڷΰ���" onclick="history.back()">
		</div>
	</form>
</body>
</html>