<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>201403010_������_Lab7_1</title>
<script>
	function check_information() {
		var form = document.coffe;
		if (form.name.value == "" || form.passwd.value == "") {
			if (form.name.value == "")
				alert("�̸��� �Է��� �ּ���.");
			else if (form.passwd.value == "")
				alert("��й�ȣ�� �Է��� �ּ���.");
			return false;
			//�̸��� ��й�ȣ�� �ϳ��� ����ִ� ���
		} else {
			//�޴��� �������� ���� ��� ó��
			var menu_check = false;
			var i = 0;
			for (i = 0; i < form.menu.length; ++i) {
				if (form.menu[i].checked == true) {
					menu_check = true;
					//�ϳ��� üũ�� �Ǿ� ������ �ٷ� menu_check�� true�� ��ȯ
					break;
				}
			}

			if (menu_check == false) {
				alert("�޴��� �ϳ��� ������ �ּ���.");
				return false;
			} 
			
			//menu_check == true�� ���
			else {
				//�ɼ��� �ϳ��� �������� ���� ��� ó��
				var temp_check = false;
				var i = 0;
				for (i = 0; i < form.temp.length; ++i) {
					if (form.temp[i].checked == true) {
						temp_check = true;
						break;
					}
				}
				
				if (temp_check == false) {
					alert("Hot / Ice �� �ϳ��� ������ �ּ���.");
					return false;
				} 
				
				else {
					
					var select = document.getElementById("size");
					//select�±׸� �ҷ��´�
					var option_value = select.options[select.selectedIndex].value;
					//select�±� �ȿ� �ִ� �ɼ��� ���� �����´�

					if (option_value == "") {
						//value�� ���� ������ ���
						alert("����� �����ϼ���");
						return false;
					} else {
						
						//size�� ������ ���
						return true;
					}
				}
			}
		}
	}
	function chk_cancle(){
		var answer = confirm("��� �Ͻðڽ��ϱ�?");
		//reset��ư ��� ���� ����
		if(answer == true)
			return true;
			//reset ����
		else
			return false;
			//reset ����
	}
</script>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<!-- 201403010 ������ -->
	<div id="container">
		<form action="Lab7_1_result.jsp" name="coffe" method="post"
			onsubmit="return check_information();">
			<!-- check_information�� ���� return�޾� submit���� ���� �Ǻ� -->
			<h1>�ֹ��ϱ�</h1>
			<table>
				<tr>
					<td align=right>�̸� :</td>
					<td><input type="text" name="name" id="name"
						style="width: 100%;"></td>
				</tr>

				<tr>
					<td align=right>��й�ȣ :</td>
					<td><input type="password" name="passwd" id="passwd"
						style="width: 100%;"></td>
				</tr>
			</table>
			<!-- �������� ĭ�� ���̺�� ���� -->
			<hr>

			<br>
			<h4>Ŀ�� ����</h4>
			<input type="radio" name="menu" id="menu" value="�Ƹ޸�ī��">�Ƹ޸�ī��
			<input type="radio" name="menu" id="menu" value="ī���">ī���
			<input type="radio" name="menu" id="menu" value="ī���ī">ī���ī <br>
				
			<h4>�ɼ�</h4>
			<input type="radio" name="temp" id="temp" value="hot">HOT 
			<input type="radio" name="temp" id="temp" value="ice">ICE <br>
			
			<h4>������</h4>
			<select name="size" id="size">
				<option value="">�������ּ���</option>
				<!-- �ʱⰪ���� ������Ѽ� value�� �������� ���� => �ƹ��͵� �������� ���� ��Ȳ -->
				<option value="Toll">Toll</option>
				<option value="Vent">Vent</option>
				<option value="Grande">Grande</option>
			</select><br><br> 
			<input type="submit" value="����">
			<input type="reset" value="���" onclick="return chk_cancle();">
		</form>
	</div>
</body>
</html>