<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.text.DateFormat"%>
<%@page import="javaSource.Student"%>
<%@page import="java.text.SimpleDateFormat"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cập Nhật Thông Tin Sinh Viên</title>


<%-- <%
		String logedIn = (String) session.getAttribute("login.done") ;
		String roles = (String) session.getAttribute("patron.roles");
		//logedIn = "nttuyen";
		if(logedIn == null || !"PATRON_LIB_MANAGER".equals(roles)){
		response.sendRedirect("login.jsp");
		}
		String action = null;
		//L?y ra d?i tu?ng b?n d?c c?n update
		Student student = (Student)request.getAttribute("patron_edit");
		//N?u có d?i tu?ng update
		if(student != null ){
		action = "UPDATE_PATRON";
		}else{
		//N?u không có thì coi nhu t?o m?i
		student = new Student();
		action = "ADD_PATRON";
		}
		//Format ngày sinh c?a b?n d?c theo dúng d?nh d?ng
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String date = df.format(student.getBirthday());
		
		//Tu? theo ki?u b?n d?c mà ta t?o d?i tu?ng nào cho dúng
		
	%> --%>

<link rel="stylesheet" type="text/css" href="style.css">

	<link rel="stylesheet" type="text/css" media="all"
		href="jscalendar/skins/aqua/theme.css" title="Aqua" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-blue.css" title="winter" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-blue2.css" title="blue" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-brown.css" title="summer" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-green.css" title="green" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-win2k-1.css" title="win2k-1" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-win2k-2.css" title="win2k-2" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-win2k-cold-1.css" title="win2k-cold-1" />

	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-win2k-cold-2.css" title="win2k-cold-2" />
	<link rel="alternate stylesheet" type="text/css" media="all"
		href="jscalendar/calendar-system.css" title="system" />

	<script type="text/javascript" src="jscalendar/calendar.js"></script>
	<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
	<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>


	<script src="prototype.js"></script>
	<script type="text/javascript">
	
	</script>
	<style type="text/css">
<!--
.style1 {
	font-size: 14px;
	color: #999999;
	font-weight: bold;
}
-->
</style>
</head>

<body leftmargin=0 topmargin=0 marginheight="0" marginwidth="0"
	bgcolor="#ffffff" onLoad="patron_type();">

	<table border="0" cellspacing="0" cellpadding="0" width="100%"
		height="100%">
		<tr valign="top">
			<td width="50%" background="images/bg.gif"><img
				src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
			<td valign="bottom" background="images/bg_left.gif"><img
				src="images/bg_left.gif" alt="" width="17" height="16" border="0"></td>
			<td>
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
										border="0">&nbsp;&nbsp;<a href="StudentInsert.jsp">Thêm
											Sinh Viên </a>
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="StudentList.jsp">Danh
											Sách Sinh Viên </a>
								</p>
								<p class="left">
									<img src="images/dot_o.gif" width="5" height="5" alt=""
										border="0">&nbsp;&nbsp;<a href="StudentUpdate.jsp">Cập
											Nhật TT Sinh Viên </a>
								</p>
							</div> <br><br>
						</td>

						<td rowspan="2">
							<div align="center">
								<img src="images/top01.gif" width="597" height="24" alt=""
									border="0">
							</div>

							<div align="center">
								<table width="100%" border="0">
									<tr>
										<td width="6%" height="30">&nbsp;</td>
										<td width="66%">
											<p align="center">..:: Thêm Danh Sách Sinh Viên ::..</p>
										</td>
									</tr>
								</table>
							</div>

							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr valign="top">
									<td width="45%">
										<form name="formEditPatron" method="post" action="controler">
											<table width="95%" border="0" align="center">
												<tr>
													<td><p>
															<strong>Họ tên : </strong>
														</p></td>
													<td><input name="student.fullName" type="text"
														id="student.fullName" size="35" value="" /></td>
												</tr>
												<tr>
													<td><p>
															<strong>Ngày sinh : </strong>
														</p></td>
													<td><input name="patron.birthday" type="text"
														id="patron.birthday" size="35" value="" /></td>
												</tr>
												<tr>
													<td><p>
															<strong>Email : </strong>
														</p></td>
													<td><input name="patron.email" type="text"
														id="patron.email" size="35" value="" /></td>
												</tr>
												<tr>
													<td><p>
															<strong>Ðịa chỉ : </strong>
														</p></td>
													<td><input name="patron.address" type="text"
														id="patron.address" size="35" value="" /></td>
												</tr>

												<tr>
													<td width="29%"><p>
															<strong>Mã sinh viên : </strong>
														</p></td>
													<td width="71%"><input name="student.id" type="text"
														id="student.id" size="35" value="" /></td>
												</tr>
												<tr>
													<td><p>
															<strong>Lớp : </strong>
														</p></td>
													<td><input name="student.classrom" type="text"
														id="student.classrom" size="35" value="" /></td>
												</tr>
												<tr>
													<td><p>
															<strong>Khoa : </strong>
														</p></td>
													<td><input name="student.department" type="text"
														id="student.department" size="35" value="" /></td>
												</tr>
											</table>
										


											<div id="fuction">
												<table width="95%" border="0" align="center">
													<tr>
														<td width="30%" height="21">&nbsp;</td>
														<td width="50%"><div align="center">
																<input name="action" type="hidden" value="" /> <input
																	name="student.submit" type="submit" id="student.submit"
																	value="Update" />
															</div></td>
														<td width="17%">&nbsp;</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
												</table>
											</div>
										</form> <script type="text/javascript">
											Calendar.setup({
												inputField : "patron.birthday", // ID of the input field
												ifFormat : "%d/%m/%Y", // the date format
												button : "patron.birthday" // ID of the button
											});
										</script>


										<p class="right">&nbsp;</p>
									</td>
								</tr>
							</table>

							<div align="center">
								<img src="images/hr01.gif" width="556" height="11" alt=""
									border="0" />
							</div>
						</td>
						<td rowspan="2">&nbsp;</td>
					</tr>
					<tr valign="bottom" bgcolor="#D0E0ED">
						<td><img src="images/bot_left.gif" width="183" height="21"
							alt="" border="0" /></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="780"
					height="64" background="images/fon_bot.gif">
					<tr valign="top">
						<td>
							<table border="0" cellpadding="0" cellspacing="0" width="780">
								<tr>
									<td width="300"></td>
									<td>
										<p class="menu02">
											<a href="">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">About Us</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Support</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Services</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Contacts</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
												href="">Help</a>&nbsp;&nbsp;&nbsp;
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