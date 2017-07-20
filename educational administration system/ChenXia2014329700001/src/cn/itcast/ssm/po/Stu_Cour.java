package cn.itcast.ssm.po;

public class Stu_Cour {
	 private String stu_sno;

	 private String cour_cno;
	 private String tea_tno;
	 
	public String getTea_tno() {
		return tea_tno;
	}

	public void setTea_tno(String tea_tno) {
		this.tea_tno = tea_tno;
	}

	public String getStu_sno() {
		return stu_sno;
	}

	public void setStu_sno(String stu_sno) {
		this.stu_sno = stu_sno;
	}

	public String getCour_cno() {
		return cour_cno;
	}

	public void setCour_cno(String cour_cno) {
		this.cour_cno = cour_cno;
	}
}
