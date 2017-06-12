package com.sist.estimate;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FrameDAO {

	@Autowired
	private EstimateMapper estimateMapper;

	public List<FrameVO> frameListData() {
		List<FrameVO> list = estimateMapper.frameListData();
		// System.out.println(list.get(1).getP_name());
		return list;
		// return estimateMapper.frameListData();
	}

	public List<FrameVO> groupListData() {
		List<FrameVO> list = estimateMapper.groupListData();
		// System.out.println(list.get(1).getP_name());
		return list;
		// return estimateMapper.frameListData();
	}

	public List<FrameVO> wheelListData() {
		List<FrameVO> list = estimateMapper.wheelListData();
		// System.out.println(list.get(1).getP_name());
		return list;
		// return estimateMapper.frameListData();
	}

	public List<FrameVO> compListData() {
		List<FrameVO> list = estimateMapper.compListData();
		// System.out.println(list.get(1).getP_name());
		return list;
		// return estimateMapper.frameListData();
	}

	public void insertProduct(String combo, String name, String price, String year) {
		FrameVO vo = new FrameVO();

		switch (combo) {
		case "product_frame":
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.insertFrame(vo);
			break;
		case "product_groupset":
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.insertGroupset(vo);
			break;
		case "product_wheelset":
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.insertWheelset(vo);
			break;
		case "product_comp":
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.insertComp(vo);
			break;
		}
	}

	/*public void productDelete(String name, String no) {
		switch (name) {
		case "product_frame":
			estimateMapper.frameDelete(no);
			break;
		case "product_groupset":
			estimateMapper.groupsetDelete(no);
			break;
		case "product_wheelset":
			estimateMapper.wheelsetDelete(no);
			break;
		case "product_comp":
			estimateMapper.compDelete(no);
			break;
		}
	}*/

	public void frameDelete(int no) {
		estimateMapper.frameDelete(no);
	}

	public void groupsetDelete(int no) {
		estimateMapper.groupsetDelete(no);
	}

	public void wheelsetDelete(int no) {
		estimateMapper.wheelsetDelete(no);
	}

	public void compDelete(int no) {
		estimateMapper.compDelete(no);
	}

}