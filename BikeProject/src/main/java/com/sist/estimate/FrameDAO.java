package com.sist.estimate;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FrameDAO {
	
	@Autowired
	private EstimateMapper estimateMapper;
	
	public List<FrameVO> frameListData(){
		return estimateMapper.frameListData();
	}
	
	public void insertProduct(String combo, String name, String price, String year) {
		FrameVO vo = new FrameVO();
		switch (combo) {
		case "product_frame":
			vo.setFname(name);
			vo.setFprice(Integer.parseInt(price));
			vo.setFregdate(year);
			estimateMapper.insertFrame(vo);
			break;
		case "product_groupset":
			vo.setFname(name);
			vo.setFprice(Integer.parseInt(price));
			vo.setFregdate(year);
			estimateMapper.insertGroupset(vo);
			break;
		case "product_wheelset":
			vo.setFname(name);
			vo.setFprice(Integer.parseInt(price));
			vo.setFregdate(year);
			estimateMapper.insertWheelset(vo);
			break;
		case "product_comp":
			vo.setFname(name);
			vo.setFprice(Integer.parseInt(price));
			vo.setFregdate(year);
			estimateMapper.insertComp(vo);
			break;
		}
	}
}
