<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<form action="StudentInsert" style="text-align: center;">
		<h1>Thêm sinh viên</h1>
		<h4>
			MSSV: <input type="text" name="_ID">
		</h4>
		<h4>
			Họ tên: <input type="text" name="FULL_NAME">
		</h4>
		<h4>
			Email: <input type="text" name="EMAIL">
		</h4>
		<h4>
			Ngày sinh: <input type="text" name="BIRTHDAY">
		</h4>
		<h4>
			Địa chỉ: <input type="text" name="ADDRESS">
		</h4>
		<h4>
			LỚP: <input type="text" name="CLASSROOM">
		</h4>
		<h4>
			KHOA: <input type="text" name="DEPARTMENT">
		</h4>
		<input type="submit" value="Thêm" id="btInsert"
			style="text-align: center;">
	</form>
</body>
</html>
