package com.sist.estimate;

/*
  CREATE TABLE product_frame (
  p_no NUMBER PRIMARY KEY ,
  p_name VARCHAR2(50) UNIQUE ,
  p_price NUMBER NOT NULL ,
  p_regdate NUMBER NOT NULL
);
 */
public class FrameVO {

	private int p_no;
	private String p_name;
	private String p_price;
	private String p_regdate;

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}

}