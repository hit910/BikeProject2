package com.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EstimateController {

	@RequestMapping("estimate/estimate.do")
	public String estimate(Model model) {
		
		   
		return "estimate/estimate";
	}
}
