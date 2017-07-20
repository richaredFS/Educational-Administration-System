package cn.itcast.ssm.po;

import java.util.List;

public class VO{
	private Cour_Tea cour_Tea;
	private Stu_Cour stu_Cour;
	private List<Stu_Cour> stu_Cours;
	private TeacherCustom teacherCustom;
    private CourseCustom courseCustom;
    private StudentCustom  studentCustom;
    private List<StudentCustom>  studentCustoms;
    private Course course;
    
    public List<Stu_Cour> getStu_Cours() {
		return stu_Cours;
	}

	public void setStu_Cours(List<Stu_Cour> stu_Cours) {
		this.stu_Cours = stu_Cours;
	}

	public Stu_Cour getStu_Cour() {
		return stu_Cour;
	}

	public void setStu_Cour(Stu_Cour stu_Cour) {
		this.stu_Cour = stu_Cour;
	}
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public List<StudentCustom> getStudentCustoms() {
		return studentCustoms;
	}

	public void setStudentCustoms(List<StudentCustom> studentCustoms) {
		this.studentCustoms = studentCustoms;
	}

	public CourseCustom getCourseCustom() {
		return courseCustom;
	}

	public void setCourseCustom(CourseCustom courseCustom) {
		this.courseCustom = courseCustom;
	}

	public TeacherCustom getTeacherCustom() {
		return teacherCustom;
	}

	public void setTeacherCustom(TeacherCustom teacherCustom) {
		this.teacherCustom = teacherCustom;
	}

	public StudentCustom getStudentCustom() {
		return studentCustom;
	}

	public void setStudentCustom(StudentCustom studentCustom) {
		this.studentCustom = studentCustom;
	}

	public Cour_Tea getCour_Tea() {
		return cour_Tea;
	}

	public void setCour_Tea(Cour_Tea cour_Tea) {
		this.cour_Tea = cour_Tea;
	}
}
