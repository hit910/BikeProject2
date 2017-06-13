package com.sist.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
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
	public String estimate_list(Model model){
		
		List<FrameVO> fList = fdao.frameListData();
		
		model.addAttribute("fList", fList);
		
		model.addAttribute("myEstimate", "myEstimate.jsp");
		model.addAttribute("proEstimate", "frameEstimate.jsp");
		
		return "estimate/estimate";
	}
	
	@RequestMapping("estimate/frame.do")
	public String frame_list(Model model){
		
		List<FrameVO> fList = fdao.frameListData();
		
		model.addAttribute("fList", fList);

		model.addAttribute("frameEstimate", "frameEstimate.jsp");
		
		return "estimate/frameEstimate";
	}
	
	@RequestMapping("estimate/group.do")
	public String group_list(Model model){
		
		List<FrameVO> gList = fdao.groupListData();
		
		model.addAttribute("gList", gList);

		model.addAttribute("groupEstimate", "groupEstimate.jsp");
		
		return "estimate/groupEstimate";
	}
	
	@RequestMapping("estimate/wheel.do")
	public String wheel_list(Model model){
		
		List<FrameVO> wList = fdao.wheelListData();
		
		model.addAttribute("wList", wList);

		model.addAttribute("wheelEstimate", "wheelEstimate.jsp");
		
		return "estimate/wheelEstimate";
	}
	
	@RequestMapping("estimate/comp.do")
	public String comp_list(Model model){
		
		List<FrameVO> cList = fdao.compListData();
		
		model.addAttribute("cList", cList);

		model.addAttribute("compEstimate", "compEstimate.jsp");
		
		return "estimate/compEstimate";
	}
	
	@RequestMapping("estimate/totalPrice.do")
	public String totalPrice(Model model, String myfPrice, String myfCount){
		System.out.println(myfPrice+", "+myfCount);
		int count = Integer.parseInt(myfCount)+1;
		System.out.println(count);
		int total = Integer.parseInt(myfPrice)*count;
		System.out.println(total);
		model.addAttribute("total", total);
		model.addAttribute("count", count);
		
		return "estimate/myEstimate";
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
	public String pogba(String url, Model model) {
		
		List<FrameVO> frame = fdao.frameListData();
		List<FrameVO> groupset = fdao.groupListData();
		List<FrameVO> wheelset = fdao.wheelListData();
		List<FrameVO> comp = fdao.compListData();
		
		model.addAttribute("frame", frame);
		model.addAttribute("groupset", groupset);
		model.addAttribute("wheelset", wheelset);
		model.addAttribute("comp", comp);
		
		model.addAttribute("fsize", frame.size());
		model.addAttribute("gsize", groupset.size());
		model.addAttribute("wsize", wheelset.size());
		model.addAttribute("csize", comp.size());
		
		
		return "estimate/addProduct";
	   }
	
	@RequestMapping("addproduct.do")
	public String addProduct(String combo, String name, String price, String year) {
		fdao.insertProduct(combo, name, price, year);
		return "estimate/addProduct_ok";
	}
	
	// Product Update
	@RequestMapping("productUpdate.do")
	public void ProductUpdate(HttpServletRequest request) {
		String tname = request.getParameter("tname");
		int no = Integer.parseInt(request.getParameter("no"));
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String year = request.getParameter("year");
		
		fdao.productUpdate(tname, no, name, price, year);
	}
	
	
	// Product Delete
	@RequestMapping("productDelete.do")
	public void poductDelete(HttpServletRequest request) {
		String tname = request.getParameter("tname");
		int no = Integer.parseInt(request.getParameter("no"));
		fdao.productDelete(tname, no);
	}
	
}
