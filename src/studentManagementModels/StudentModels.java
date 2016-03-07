package studentManagementModels;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javaSource.Student;

public class StudentModels {

	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

	String url = "jdbc:mysql://localhost/studentmanagement";
	String username = "root";
	String password = "";

	private Connection connection = null;

	// Connect mysql database with java code
	public void getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public Student getStudentList(String idStud) {

		String sql = "Select * from tbl_students where student_id = " + idStud;
		getConnection();
		Student student = new Student();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String id = resultSet.getString(Student._ID);
				student.set_id(id);
				String name = resultSet.getString(Student.FULL_NAME);
				student.setFull_name(name);
				String address = resultSet.getString(Student.ADDRESS);
				student.setAddress(address);
				Date birthday = resultSet.getDate(Student.BIRTHDAY);
				student.setBirthday(dateFormat.format(birthday));
				String email = resultSet.getString(Student.EMAIL);
				student.setEmail(email);
				String classroom = resultSet.getString(Student.CLASSROOM);
				student.setClassroom(classroom);
				String department = resultSet.getString(Student.DEPARTMENT);
				student.setDepartment(department);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return student;

	}

	public List<Student> studentSearch() {
		String sql = "Select * from tbl_students";
		getConnection();

		List<Student> studentList = new ArrayList<>();

		try {
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				Student student = new Student();
				student.set_id(resultSet.getString(Student._ID));
				student.setFull_name(resultSet.getString(Student.FULL_NAME));
				student.setClassroom(resultSet.getString(Student.CLASSROOM));
				student.setEmail(resultSet.getString(Student.EMAIL));
				student.setAddress(resultSet.getString(Student.ADDRESS));
				student.setDepartment(resultSet.getString(Student.DEPARTMENT));
				String birthday = null;
				birthday = dateFormat.format(resultSet.getDate(Student.BIRTHDAY));
				student.setBirthday(birthday);
				studentList.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return studentList;
	}

	public int insertStudent(String full_name, String birthday, String email, String address, String classroom,
			String department) {
		String sql = "Insert into tbl_students(student_fullname, student_birthday, student_email, student_address, student_class, student_department)VALUES(?, ?, ?, ?, ?, ?)";
		System.out.println(sql);
		int result = 0;

		PreparedStatement preparedStatement;
		try {
			getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, full_name);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, address);
			preparedStatement.setString(5, classroom);
			preparedStatement.setString(6, department);
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date birthdayDate = dateFormat.parse(birthday);
			java.sql.Date birthdaySQL = new java.sql.Date(birthdayDate.getTime());
			preparedStatement.setDate(2, birthdaySQL);
			result = preparedStatement.executeUpdate();
			System.out.println("insert: " + result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int updateStudent(String full_name, String birthday, String email, String address, String classroom,
			String department, String id) {
		String sql = "Update tbl_students set student_fullname = ?, student_birthday = ?, student_email = ?, "
				+ "student_address = ?, student_class = ?, student_department = ? where  student_id = ?";
		int rowUpdate = 0;
		getConnection();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setString(1, full_name);
			Date birthdayDate = dateFormat.parse(birthday);
			java.sql.Date birthdaySQL = new java.sql.Date(birthdayDate.getTime());
			preparedStatement.setDate(2, birthdaySQL);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, address);
			preparedStatement.setString(5, classroom);
			preparedStatement.setString(6, department);
			preparedStatement.setString(7, id);
			rowUpdate = preparedStatement.executeUpdate();
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rowUpdate;
	}

	public int deleteStudent(String id) {
		String sql = "Delete from tbl_students where student_id = " + id;
		int rowDelete = 0;
		getConnection();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			rowDelete = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rowDelete;
	}
}
