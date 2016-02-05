package kr.co.mydate.postscript.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private int mb_no;
	private String  mb_email, mb_password, mb_birth, mb_sex, mb_date_person, mb_image;
	public int getMb_no() {
		return mb_no;
	}
	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	public String getMb_password() {
		return mb_password;
	}
	public void setMb_password(String mb_password) {
		this.mb_password = mb_password;
	}
	public String getMb_birth() {
		return mb_birth;
	}
	public void setMb_birth(String mb_birth) {
		this.mb_birth = mb_birth;
	}
	public String getMb_sex() {
		return mb_sex;
	}
	public void setMb_sex(String mb_sex) {
		this.mb_sex = mb_sex;
	}
	public String getMb_date_person() {
		return mb_date_person;
	}
	public void setMb_date_person(String mb_date_person) {
		this.mb_date_person = mb_date_person;
	}
	public String getMb_image() {
		return mb_image;
	}
	public void setMb_image(String mb_image) {
		this.mb_image = mb_image;
	}

}
