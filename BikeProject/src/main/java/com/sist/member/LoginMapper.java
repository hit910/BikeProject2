package com.sist.member;

import org.apache.ibatis.annotations.Select;

public interface LoginMapper {

	   @Select("SELECT COUNT(*) FROM customer WHERE c_id=#{id}")
	   public int loginIdCheck(String id);
	   
	   @Select("SELECT * FROM customer WHERE c_id=#{id}")
	   public String loginCheckType(String id);
	   
	   @Select("SELECT c_pwd FROM customer WHERE c_id=#{id}")
	   public String loginGetPassword(String id);

}
