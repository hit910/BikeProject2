package com.sist.member;

import org.apache.ibatis.annotations.Select;

public interface CustomerMapper {

	   @Select("SELECT COUNT(*) FROM customer WHERE c_id=#{id}")
	   public int memberIdCheck(String id);
	   
	   @Select("SELECT c_pwd FROM customer WHERE c_id=#{id}")
	   public String memberGetPassword(String id);
}
