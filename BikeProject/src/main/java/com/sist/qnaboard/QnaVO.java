package com.sist.qnaboard;

import java.util.*;
/*
 *   b_no NUMBER PRIMARY KEY ,
	  b_name VARCHAR2(30) NOT NULL ,
	  b_title VARCHAR2(300) NOT NULL ,
	  b_content CLOB NOT NULL ,
	  b_pwd VARCHAR2(12) NOT NULL ,
	  b_regdate DATE DEFAULT SYSDATE
 */
public class QnaVO {
	private int b_no;
	private String b_name;
	private String b_title;
	private String b_content;
	private String b_pwd;
	private Date b_regdate;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_pwd() {
		return b_pwd;
	}
	public void setB_pwd(String b_pwd) {
		this.b_pwd = b_pwd;
	}
	public Date getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
	}
	
	
}
