package mvc;

// DTO -> Data Transfer Object �� ����
// Ŭ���̾�Ʈ�� ���ҝۤ� �����͸� �����ϰų�
// �����ͺ��̽����� �����͸� ���� Ŭ���̾�Ʈ���� �����͸� ������ ��Ȱ

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
