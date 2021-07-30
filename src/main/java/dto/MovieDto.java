package dto;

public class MovieDto {
	// 필드 private
	private String mname; //영화 이름
	private String mdate; //영화 날짜
	private String mtime; //영화 상영관,시간
	private String a; //사람
	
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	// 메소드 getter / setter 
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public static Object getMovieDtoId() {
		return null;
	}
	
}
