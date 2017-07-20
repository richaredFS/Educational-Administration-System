package cn.itcast.ssm.po;

import java.util.List;

public class CourseCustom extends Course{

     List<Teacher> teachers;
     Integer score;
	 Teacher teacher;
	
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}

	List<StudentCustom> studentCustoms;
	
    public List<Teacher> getTeachers() {
		return teachers;
	}
	public void setTeachers(List<Teacher> teachers) {
		this.teachers = teachers;
	}
	public List<StudentCustom> getStudentCustoms() {
		return studentCustoms;
	}
	public void setStudentCustoms(List<StudentCustom> studentCustoms) {
		this.studentCustoms = studentCustoms;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	 @Override
		public String toString() {
			return "CourseCustom [teacher=" + teacher + ", studentCustoms="
					+ studentCustoms + "]";
		}
}
