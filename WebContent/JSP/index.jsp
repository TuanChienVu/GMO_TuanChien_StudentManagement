<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Student Management</title>



<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	font-weight: bold;
}

.style2 {
	color: #999999
}
-->
</style>
</head>
<body leftmargin=0 topmargin=0 marginheight="0" marginwidth="0"
	bgcolor="#ffffff">

	<table border="0" cellspacing="0" cellpadding="0" width="100%"
		height="100%">
		<tr valign="top">
			<td width="50%" background="images/bg.gif"><img
				src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
			<td valign="bottom" background="images/bg_left.gif"><img
				src="images/bg_left.gif" alt="" width="17" height="16" border="0"></td>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="1">
					<tr valign="bottom">
						<td width="673">
							<table border="0" cellpadding="0" cellspacing="0" background="">
								<tr valign="bottom">
									<td>
										<!-- /but -->
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="107">
					<tr valign="top">
						<td bgcolor="#D0E0ED">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td bgcolor="#076BA7">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td><img src="images/text_1.gif" width="183"
													height="67"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<div align="center"></div>
							<div align="center"></div>


							<div align="left">
								<p class="left">
									<img src="images/e01.gif" width="14" height="16" alt=""
										border="0" align="absmiddle">&nbsp;MANAGER
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="index.jsp">Tìm Kiếm
									</a>
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="Insert.jsp">Thêm
										Sinh Viên </a>
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="demo.jsp">Danh
										Sách Sinh Viên </a>
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="StudentUpdate.jsp">Cập Nhật TT Sinh Viên </a>
								</p>
							</div> <br> <br>
						</td>

						<td rowspan="2">
							<div align="center">
								<img src="images/top01.gif" width="597" height="24" alt=""
									border="0">
							</div>

							<div align="center">
								<table width="100%" border="0">
									<tr>
										<td width="6%">&nbsp;</td>
										<td width="67%">
											<p align="center">..:: Tìm Kiếm Sinh Viên ::..</p>
										</td>
										<td width="27%"></td>
									</tr>
								</table>
							</div>

							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr valign="top">
									<td width="45%">
										<form name="formSearch" method="get" action="controler">
											<table width="90%" border="0" align="center">
												<tr>
													<td width="9%">&nbsp;</td>
													<td width="26%"><div align="right">
															<input type="radio" name="search.type" id="radio"
																value="RESOURCE_BOOK" checked="true"> Tên Sinh
															Viên
														</div></td>
													<td width="7%">&nbsp;</td>
													<td width="38%"><input type="radio" name="search.type"
														id="radio" value="RESOURCE_CD"> Mã Số Sinh Viên</td>
													<td width="20%">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td colspan="3"><div align="right">
															<input name="searchKey" type="text" id="searchKey"
																value="Thông tin tìm kiếm" size="50">
														</div></td>
													<td><div align="left">
															<input name="action" type="hidden"
																value="SEARCH_RESOURCE" /> <input name="search.Submit"
																type="submit" id="search.submit" value="Tìm kiếm">
														</div></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td colspan="3">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</table>
										</form>

										<div align="left">
											<p class="style1 style2">Kết quả tìm kiếm :</p>
										</div>
									</td>
								</tr>
							</table>

							<div align="center">
								<img src="images/hr01.gif" width="556" height="11" alt=""
									border="0">
							</div>
						</td>
						<td rowspan="2">&nbsp;</td>
					</tr>
					<tr valign="bottom" bgcolor="#D0E0ED">
						<td><img src="images/bot_left.gif" width="183" height="21"
							alt="" border="0"></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="64" background="images/fon_bot.gif">
					<tr valign="top">
						<td>
							<table border="0" cellpadding="0" cellspacing="0" width="780"
								background="">
								<tr>
									<td width="300"></td>
									<td>
										<p class="menu02">
											<a href="">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">About Us</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Support</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Services</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Contacts</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Help</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
										</p>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td valign="bottom" background="images/bg_right.gif"><img
				src="images/bg_right.gif" alt="" width="17" height="16" border="0"></td>
			<td width="50%" background="images/bg.gif"><img
				src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
		</tr>
	</table>
</body>
</html>