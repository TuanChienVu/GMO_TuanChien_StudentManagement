package javaSource;

public class Student {

	String _id;
	String full_name;
	String email;
	String birthday;
	String address;
	String classroom;
	String department;

	public static final String _ID = "_id";
	public static final String FULL_NAME = "full_name";
	public static final String EMAIL = "email";
	public static final String BIRTHDAY = "birthday";
	public static final String ADDRESS = "address";
	public static final String CLASSROOM = "classroom";
	public static final String DEPARTMENT = "department";

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public String getClassroom() {
		return classroom;
	}

	public String getDepartment() {
		return department;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

}
