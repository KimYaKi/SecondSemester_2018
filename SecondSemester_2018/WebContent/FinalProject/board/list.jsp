<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/boardstyle.css" type="text/css" />
</head>
<script type="text/javascript">
	function goWrite() {

		location.href = "index.jsp?pagefile=./board/write";
	}
</script>
	<!-- CONTENT -->
	<h3>�Խ���</h3>
	<table style="width:600px">
		<colgroup>
			<col width="10%" />
			<col width="60%" />
			<col width="10%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
		<tr>
			<th scope="col">�۹�ȣ</th>
			<th scope="col">������</th>
			<th scope="col">�۾���</th>
			<th scope="col">��¥</th>
			<th scope="col">��ȸ��</th>
		</tr>
		<tr>
			<td>1</td>
			<td><a href="index.jsp?pagefile=./board/read">�ȳ��ϼ���. </a></td>
			<td>test</td>
			<td>2018-11-02</td>
			<td>0</td>
		</tr>
		<tr>
			<td>2</td>
			<td><a href="index.jsp?pagefile=./board/read">�ȳ��ϼ���. </a></td>
			<td>test</td>
			<td>2018-11-02</td>
			<td>0</td>
		</tr>
	</table>
	<input type="button" onclick="goWrite()" value="�۾���">
	<div class="paging">
		<ol>
			<li>[����]</li>
			<li><strong>1</strong></li>
			<li>2</li>
		</ol>
	</div>
	<div class="boardSearch">
		<select id="select">
			<option value="" selected="selected">����</option>
			<option value="">��¥</option>
		</select> <input type="text" id="txt" /> <input type="button" value="�˻�" />
	</div>
</html>