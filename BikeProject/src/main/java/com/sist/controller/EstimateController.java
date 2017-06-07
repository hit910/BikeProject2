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
		
		model.addAttribute("fList", fList);
		
		return "estimate/estimate";
	}
	
	@RequestMapping("purchase.do")
	public String purchase(String url){
		
		return "estimate/purchase";
	}
	
	@RequestMapping("myOrder.do")
	public String myOrder(String url){
		
		return "estimate/myOrder";
	}
	
	@RequestMapping("pogba.do")
	   public String pogba(String url) {
	      return "estimate/addProduct";
	   }
	
	@RequestMapping("addproduct.do")
	public String addProduct(String combo, String name, String price, String year) {
		System.out.println(combo);
		System.out.println(name);
		System.out.println(price);
		System.out.println(year);
		
		fdao.insertProduct(combo, name, price, year);
		return "estimate/addProduct_ok";
	}
}
