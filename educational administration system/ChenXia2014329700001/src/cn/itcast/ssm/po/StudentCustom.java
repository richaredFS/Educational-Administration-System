package cn.itcast.ssm.po;

import java.util.List;

public class StudentCustom extends Student{
    List<CourseCustom> courseCustoms;
	Integer score;
    public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	String newUsername;
  	public String getNewUsername() {
  		return newUsername;
  	}
  	public void setNewUsername(String newUsername) {
  		this.newUsername = newUsername;
  	}
	public List<CourseCustom> getCourseCustoms() {
		return courseCustoms;
	}
	public void setCourseCustoms(List<CourseCustom> courseCustoms) {
		this.courseCustoms = courseCustoms;
	}
	@Override
	public String toString() {
		return "StudentCustom [courseCustoms=" + courseCustoms
				+ ", newUsername=" + newUsername + "]";
	}

	
}
