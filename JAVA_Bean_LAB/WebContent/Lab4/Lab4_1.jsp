<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Ȧ���� �հ� ¦���� ��</title>
</head>
<body>
	<h2>Lab 4-1</h2>
	<br><br>
	<%@ include file="header.jsp"%>
	<!-- �̸� ����� �� header.jsp������ �ҷ��ͼ�
	�Բ� ������ ��Ų��. -->
	<%!
	//�޼ҵ� ����
	
	public int sum() {
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			//for���� �̿��ؼ� 10���� ������.
			if (i % 2 == 1)
				sum += i;
			//Ȧ���� ��� ���� ���ϰ� �Ѵ�.
		}
		return sum;
		//���� ��ȯ�Ѵ�.
	}
	
	public int mul(){
		int mul=1;
		//�����̱� ������ 1�� �ʱ�ȭ ��Ų��.
		int i = 1;
		while(i!=11){
			//i�� ���� 11�ϰ�� while���� ����
			if(i%2 == 0)
				mul = mul*i;
				//¦���� ��� �����ش�.
			i++;
			//���� ���Ḧ ���ؼ� i���� 1�� ������Ų��.
		}
		return mul;
		//���� ��ȯ�Ѵ�.
	}
	%>
	1�� )1���� 10 ������ Ȧ���� �� ���ϱ�<br>
	��� : 
	<label style="color:red;">
	<!-- �ڿ� ������ �۾��� ���������� ���Ѵ�. -->
	<%=sum()%>
	<!-- ǥ������ �̿��� ��ȯ�� ���� ����Ѵ�. -->
	</label><br>
	2�� )1���� 10 ������ ¦���� �� ���ϱ�<br>
	��� : <label style="color:red;"><%=mul() %></label>
</body>
</html>