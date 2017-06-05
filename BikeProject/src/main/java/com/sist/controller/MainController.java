package com.sist.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.member.LoginDAO;

@Controller
public class MainController {

	@RequestMapping("main.do")
	public String home(Model model) {
		
		model.addAttribute("main_jsp", "main/main.jsp");
		model.addAttribute("header_jsp", "header.jsp");
		model.addAttribute("home_jsp", "home.jsp");
		model.addAttribute("bottom_jsp", "bottom.jsp");
		model.addAttribute("introduce", "../introduce/present.jsp");
		model.addAttribute("estimate", "../estimate/estimate.jsp");
		model.addAttribute("update", "../member/memberUpdateFrom.jsp");
		model.addAttribute("join", "../member/joinFrom.jsp");
		model.addAttribute("novice", "../novice/novice.jsp");
		
		return "main/main";
	}
	
}
