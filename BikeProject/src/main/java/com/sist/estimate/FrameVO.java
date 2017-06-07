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
	private int fno;
	private String fname;
	private int fprice;
	private int fregdate;
	
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public int getFprice() {
		return fprice;
	}
	public void setFprice(int fprice) {
		this.fprice = fprice;
	}
	public int getFregdate() {
		return fregdate;
	}
	public void setFregdate(int fregdate) {
		this.fregdate = fregdate;
	}
}
