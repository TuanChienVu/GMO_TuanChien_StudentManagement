<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.text.DateFormat"%>
<%@page import="javaSource.Student"%>
<%@page import="java.text.SimpleDateFormat"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh Sách Sinh Viên</title>



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
											<p align="center">..:: Danh Sách Sinh Viên ::..</p>
										</td>
									</tr>
								</table>
							</div>

							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr valign="top">
									<td width="45%">
										<form name="formEditPatron" method="post" action="controler">
											<table width="95%" border="0" align="center">
												<%
													Student st = (Student) request.getAttribute("student");
													session.setAttribute("studentDetail", st);
													session.setAttribute("studentID", st.get_id());
												%>
												<table border=1px align="center">
													<tr>
														<th>MSSV</th>
														<th>HỌ TÊN</th>
														<th>NGÀY SINH</th>
														<th>EMAIL</th>
														<th>ĐỊA CHỈ</th>
														<th>LỚP</th>
														<th>KHOA</th>
														<th></th>
														<th></th>

													</tr>
													<tr>
														<td>
															<%
																out.print(st.get_id());
															%>
														</td>
														<td>
															<%
																out.print(st.getFull_name());
															%>
														</td>
														
														<td>
															<%
																out.print(st.getBirthday());
															%>
														</td>
														<td>
															<%
																out.print(st.getEmail());
															%>
														</td>
														<td>
															<%
																out.print(st.getAddress());
															%>
														</td>
														<td>
															<%
																out.print(st.getClassroom());
															%>
														</td>
														<td>
															<%
																out.print(st.getDepartment());
															%>
														</td>
														<td><button type="submit" formaction="Update.jsp">Sửa</button></td>
														<td><button type="submit"
																formaction="StudentDeleteController">Xóa</button></td>
													</tr>
												</table>
											</table>
											</div>


											<div id="fuction">
												<table width="95%" border="0" align="center">
													<tr>
														<td width="30%" height="21">&nbsp;</td>
														<td width="53%"><div align="center">
																<input name="action" type="hidden" value="" /> <input
																	name="student.update" type="submit"
																	id="student.submitup" value="Update" /> <input
																	name="student.del" type="submit" id="student.submitdel"
																	value="Delete" />
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
