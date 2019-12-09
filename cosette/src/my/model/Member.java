package my.model;

public class Member {
	private String memberId;
	private String password;
	private String tel;
	private String name;
	private String address;
	
	public Member() {}

	public Member(String memberId, String password, String tel, String name, String address) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.tel = tel;
		this.name = name;
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
	
	
}
