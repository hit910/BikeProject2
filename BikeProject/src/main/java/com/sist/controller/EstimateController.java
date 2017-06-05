package com.sist.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.estimate.FrameDAO;
import com.sist.estimate.FrameVO;

@Controller
public class EstimateController {
	@Autowired
	private FrameDAO fdao;
	
	@RequestMapping("estimate/estimate.do")
	public String frame_list(Model model){
		
		List<FrameVO> fList = fdao.frameListData();
		
		System.out.println(fList);
		
		model.addAttribute("fList", fList);
		//model.addAttribute("fprice",fprice);
		
		return "estimate/estimate";
	}
	
/*	@RequestMapping("estimate/estimate.do")
	public String estimate(Model model) {
		   
		return "estimate/estimate";
	}*/
	
	@RequestMapping("purchase.do")
	public String purchase(String url){
		
		return "estimate/purchase";
	}
	
	@RequestMapping("myOrder.do")
	public String myOrder(String url){
		
		return "estimate/myOrder";
	}
}
