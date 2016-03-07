package studentManagementController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaSource.Student;
import studentManagementModels.StudentModels;

public class StudentInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ResultSet resultSet;
	List<Student> studentList;

	public StudentInformation() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		StudentModels studentModels = new StudentModels();
		String studentID = request.getParameter("MSSV");
		if (studentID != "") {
			Student student = studentModels.getStudentList(studentID);
			if (student.get_id() != null) {
				printWriter.println(student.get_id());
				printWriter.println(student.getFull_name());
				printWriter.println(student.getBirthday());
				printWriter.println(student.getEmail());
				printWriter.println(student.getAddress());
				printWriter.println(student.getClassroom());
				printWriter.println(student.getDepartment());
				request.setAttribute("student", student);
				request.setAttribute("studentDetail", student);
				request.setAttribute("MSSV", student.get_id());

				RequestDispatcher rd = request.getRequestDispatcher("/StudentList.jsp");
				rd.forward(request, response);
			} else {
				printWriter.println("Không Tìm Thấy Dữ Liệu Tương Tự");
			}
		} else {
			printWriter.println("Mời Nhập MSSV");
		}
	}
}
