package my.model;

public class Member {
	private String memberId;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String address;
	
	public Member() {}

	public Member(String memberId, String password, String tel, String name, String email, String address) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.tel = tel;
		this.name = name;
		this.email = email;
		this.address = address;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
