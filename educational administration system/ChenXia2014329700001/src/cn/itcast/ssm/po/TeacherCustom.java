package cn.itcast.ssm.po;

import java.util.List;

public class TeacherCustom extends Teacher{
    List<CourseCustom> courseCustoms;
    
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

	
}
