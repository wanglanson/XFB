package com.smxy.pojo;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserInfo {
	private int id;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String brief;

}
