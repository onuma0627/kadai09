package bean;

public class UserBean {
	private String id;
	private String name;
	private String message;
	private String day;
	private String time;
	public UserBean(String id,String name, String message, String day, String time){
		super();
		this.id = id;
		this.name = name;
		this.message = message;
		this.day = day;
		this.time = time;
	}
	public UserBean(String name, String message) {
		super();
		this.name = name;
		this.message = message;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
