<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/boardstyle.css" type="text/css" />
</head>
<script type="text/javascript">
	function goWrite() {
		location.href = "./write.board";
	}
	function goSearch() {
		if (document.search.keyWord.value == "") {
			alert("�˻�� �Է��ϼ���.");
			document.search.keyWord.focus();
			return;
		}
		document.search.submit();
	}
</script>
<body>
	<h3>�Խ���</h3>
	<table>
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
		<!-- articlePage��� ���� BoardListHandler���� request���� ���� �� -->
		<c:if test="${articlePage.hasNoArticles()}">
			<tr>
				<td colspan="5">�Խñ��� �����ϴ�.</td>
			</tr>
		</c:if>
		<c:forEach var="article" items="${articlePage.content}">
			<tr>
				<td>${article.idx}</td>
				<td>
					<a href="read.board?no=${article.idx}&pageNo=${articlePage.currentPage}">
						<c:out value="${article.title}" />
						[<c:out value="${article.replycount}" />]
					</a>
				</td>
				<td>${article.name}</td>
				<td>${article.getReg_date()}</td>
				<td>${article.getCount()}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" onclick="goWrite()" value="�۾���">
	<div class="paging">
		<ol>
			<c:if test="${articlePage.startPage > 5}">
				<li><a href="list.board?pageNo=${articlePage.startPage - 5}">[����]</a></li>
			</c:if>
			<c:forEach var="pNo" begin="${articlePage.startPage}"
				end="${articlePage.endPage}">
				<li><a href="boardList.board?pageNo=${pNo}">[${pNo}]</a></li>
			</c:forEach>
			<c:if test="${articlePage.endPage < articlePage.totalPages}">
				<li><a href="boardList.board?pageNo=${articlePage.startPage + 5}">[����]</a></li>
			</c:if>
		</ol>
	</div>
	<div class="boardSearch">
		<form name="search" method="get" action="./boardList.board">
			<select id="select" name="keyField">
				<option value="title" selected="selected">����</option>
				<option value="content">����</option>
				<option value="mem_name">�ۼ���</option>
			</select> <input type="text" id="keyWord" name="keyWord" /> <input
				type="button" onclick="goSearch()" value="�˻�" />
		</form>
	</div>
</body>
</html>