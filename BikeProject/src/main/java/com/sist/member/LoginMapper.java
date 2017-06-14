package com.sist.member;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface LoginMapper {

	   @Select("SELECT COUNT(*) FROM customer WHERE c_id=#{id}")
	   public int loginIdCheck(String id);
	   
	   @Select("SELECT check_type FROM customer WHERE c_id=#{id}")
	   public String loginCheckType(String id);
	   
	   @Select("SELECT c_pwd FROM customer WHERE c_id=#{id}")
	   public String loginGetPassword(String id);
	   
	   @Select("SELECT * FROM customer WHERE c_id=#{id}")
	   public MemberVO readMember(String id);
	   
	  /* @Update("UPDATE customer SET c_name=#{c_name},c_pwd=#{c_pwd),c_phon=#{c_phon}, c_email=#{c_email},c_addr=#{c_addr} WHERE c_id=#{c_id}")
	   public void memberUpdate(MemberVO vo);*/
}
