package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.CoursesTeacher;
import cn.itcast.ssm.po.Stu_Cour;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;

public interface CourseCustomMapper {
	List<CourseCustom> selectCourses();
	List<CourseCustom> selectAllCourses();
	List<CourseCustom> selectPureCourses();
	List<CoursesTeacher> selectTeacherCourses();
	List<CourseCustom> selectCoursesByTeacher(String tno);
	void insertCourse(Stu_Cour stu_Cour);
	void insertScore(Stu_Cour stu_Cour);
	void deleteCourse(Stu_Cour stu_Cour);
	void deleteScore(Stu_Cour stu_Cour);
	void deleteCourseByTeacher(VO vo);
	void updateCourse(StudentCustom studentCustom);
	CourseCustom queryStudentInfo(VO vo);
	List<CourseCustom> selectAllCourse();
}
