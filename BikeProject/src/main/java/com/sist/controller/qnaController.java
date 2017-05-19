package com.sist.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.qnaboard.QnaDAO;
import com.sist.qnaboard.QnaVO;

@Controller
public class qnaController {
	
	@Autowired
	private QnaDAO dao;
	
	@RequestMapping("qnaboard/qnaboard.do")
	public String qnaBoard(Model model,String page) {
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<QnaVO> list=dao.qnaList(map);
		
		//int totalPage=dao.boardTotalPage();
		
		model.addAttribute("curpage", curpage);
		//model.addAttribute("totalPage",totalPage);
		model.addAttribute("list",list);
		
		
		return "qnaboard/qnaboard";
		//return "main/main";
	}
}
