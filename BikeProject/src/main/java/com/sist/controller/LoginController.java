package com.sist.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.member.LoginDAO;
import com.sist.member.MemberVO;

@Controller
public class LoginController {

	@Autowired
	private LoginDAO dao;

	@RequestMapping("loginGo.do")
	public String login(String url) {
		return "member/login";
	}

	@RequestMapping("login.do")
	public String member_login(String id, String pwd, Model model, HttpSession session) {
		int count = dao.loginIdCheck(id);
		String type = dao.loginCheckType(id);
		String res = "";

		if (count == 0) {
			res = "id";
		} else {
			String db_pwd = dao.loginGetPassword(id);
			if (db_pwd.equals(pwd)) {
				res = "ok";
				session.setAttribute("id", id);
				MemberVO vo = dao.readMember(id);
				session.setAttribute("vo", vo);
				session.setAttribute("type", type);
			} else {
				res = "pwd";
			}
		}
		model.addAttribute("res", res);
		return "member/login_ok";
		// return "";
	}

	@RequestMapping("member/logout.do")
	public String member_logout(HttpSession session) {
		session.invalidate();
		return "member/logout_ok";
	}

	@RequestMapping("memberUpdate.do")
	public String memberUpdate(String id, String name, String pwd, String phone, String email, String addr) {
		
		dao.memberUpdate( name, pwd, phone, email, addr);
		
		
		return "member/momberUpdateForm_ok";
	}

}
