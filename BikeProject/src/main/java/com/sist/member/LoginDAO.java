package com.sist.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {

	@Autowired
	private LoginMapper login_mapper;

	public int loginIdCheck(String id) {
		return login_mapper.loginIdCheck(id);
	}
	
	public String loginCheckType(String id) {
		return login_mapper.loginCheckType(id);
	}

	public String loginGetPassword(String id) {
		return login_mapper.loginGetPassword(id);
	}
	
	public MemberVO readMember(String id) {
		return login_mapper.readMember(id);
	}
	
	/*public void memberUpdate( String name, String pwd, String phone, String email, String addr) {
		MemberVO vo = new MemberVO();
		//vo.setC_id(id);
		vo.setC_name(name);
		vo.setC_pwd(pwd);
		vo.setC_phon(phone);
		vo.setC_email(email);
		vo.setC_addr(addr);
		
		
		login_mapper.memberUpdate(vo);
	}*/
}
