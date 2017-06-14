package com.sist.estimate;

import java.util.Date;

public class OrderVO {
	int o_no;
	String c_id;
	String p_frame;
	String p_groupset;
	String p_wheel;
	String p_comp;
	int o_price;
	Date o_date;
	public int getO_no() {
		return o_no;
	}
	public void setO_no(int o_no) {
		this.o_no = o_no;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getP_frame() {
		return p_frame;
	}
	public void setP_frame(String p_frame) {
		this.p_frame = p_frame;
	}
	public String getP_groupset() {
		return p_groupset;
	}
	public void setP_groupset(String p_groupset) {
		this.p_groupset = p_groupset;
	}
	public String getP_wheel() {
		return p_wheel;
	}
	public void setP_wheel(String p_wheel) {
		this.p_wheel = p_wheel;
	}
	public String getP_comp() {
		return p_comp;
	}
	public void setP_comp(String p_comp) {
		this.p_comp = p_comp;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	
	
}
