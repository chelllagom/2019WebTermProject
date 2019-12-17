package my.model;

public class Member {
	private String memberId;
	private String password;
	private String name;
	private String email;
	private String tel1;
	private String tel2;
	private String tel3;
	private String address1;
	private String address2;
	private String address3;
	
	public Member() {}

	public Member(String memberId, String password, String name, String email, String tel1, String tel2, String tel3, String address1, String address2, String address3) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.name = name;
		this.email = email;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
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

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	
	
}
