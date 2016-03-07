package studentManagementController;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studentManagementModels.StudentModels;

public class StudentInsert extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter printWriter = resp.getWriter();
		// String id = "006";
		// String full_name = "Lê Thị Ánh Tiền";
		String full_name = req.getParameter("FULL_NAME");
		// String major = "Vật lý";
		String classroom = req.getParameter("CLASSROOM");
		// String address = "Tùng Thiện Vương, q8, tphcm";
		String address = req.getParameter("ADDRESS");
		// String place_of_birth = "Lâm Hà, Lâm Đồng";
		String email = req.getParameter("EMAIL");
		// String birthday = "21/03/1994";
		// Date birthdatDate = req.getParameterValues("BIRTHDAY");
		String birthday = req.getParameter("BIRTHDAY");
		String department = req.getParameter("DEPARTMENT");

		if (full_name != "" && birthday != "" && email != "" && address != "" && classroom != "" && department != "") {
			StudentModels studentModel = new StudentModels();
			int rs = studentModel.insertStudent(full_name, birthday, email, address, classroom, department);
			if (rs == 1) {
				printWriter.println("Them thanh cong!!!");
			} else {
				printWriter.println("Co loi xay ra!!!");
			}
		} else {
			printWriter.println("<td>Chua dien het noi dung!!!</td>");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}
