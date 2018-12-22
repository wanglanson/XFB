package com.smxy.pojo;


import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class User {
	private int id;
	private String name;
	private String password;
	private String phone;
	private String date;
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + name + ", password=" + password + ", phone=" + phone + "]";
	}
	
}
