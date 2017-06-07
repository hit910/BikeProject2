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

	private int no;
	private String name;
	private int price;
	private String regdate;
	
	public int getFno() {
		return no;
	}
	public void setFno(int fno) {
		this.no = fno;
	}
	public String getFname() {
		return name;
	}
	public void setFname(String fname) {
		this.name = fname;
	}
	public int getFprice() {
		return price;
	}
	public void setFprice(int fprice) {
		this.price = fprice;
	}

	public String getFregdate() {
		return regdate;
	}
		
	public void setFregdate(String fregdate) {
		this.regdate = fregdate;
	}
}
