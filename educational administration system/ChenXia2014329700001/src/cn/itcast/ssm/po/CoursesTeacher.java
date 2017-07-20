package cn.itcast.ssm.po;

public class CoursesTeacher extends Teacher{
	    private String cno;

	    private String cname;

	    private Integer cgrade;

	    private Integer chour;

	    private String ctime;

	    public String getCno() {
	        return cno;
	    }

	    public void setCno(String cno) {
	        this.cno = cno == null ? null : cno.trim();
	    }

	    public String getCname() {
	        return cname;
	    }

	    public void setCname(String cname) {
	        this.cname = cname == null ? null : cname.trim();
	    }

	    public Integer getCgrade() {
	        return cgrade;
	    }

	    public void setCgrade(Integer cgrade) {
	        this.cgrade = cgrade;
	    }

	    public Integer getChour() {
	        return chour;
	    }

	    public void setChour(Integer chour) {
	        this.chour = chour;
	    }

	    public String getCtime() {
	        return ctime;
	    }

	    public void setCtime(String ctime) {
	        this.ctime = ctime == null ? null : ctime.trim();
	    }
}
