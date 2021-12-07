package mvc;

// DTO -> Data Transfer Object 의 약자
// 클라이언트가 전소앟ㄴ 데이터를 저장하거나
// 데이터베이스에서 데이터를 꺼내 클라이언트에게 데이터를 보내는 역활

public class memberDTO {
	private String id;
	private String pw;
	private String name;
	private String mail;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
}
