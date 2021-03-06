package com.sist.estimate;

import java.util.ArrayList;
import java.util.List;

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

	public void productUpdate(String tname, int no, String name, String price, String year) {
		FrameVO vo = new FrameVO();

		switch (tname) {
		case "product_frame":
			vo.setP_no(no);
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.frameUpdate(vo);
			break;
		case "product_groupset":
			vo.setP_no(no);
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.groupsetUpdate(vo);
			break;
		case "product_wheelset":
			vo.setP_no(no);
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.wheelsetUpdate(vo);
			break;
		case "product_comp":
			vo.setP_no(no);
			vo.setP_name(name);
			vo.setP_price(price);
			vo.setP_regdate(year);
			estimateMapper.compUpdate(vo);
			break;
		}
	}

	public void productDelete(String tname, int no) {
		switch (tname) {
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
	}
	
	public int findMoney(String pfname, String pgname, String pwname, String pcname,
			String pfType, String pgType, String pwType, String pcType, String pmoney, String id){
		
		OrderVO ovo = new OrderVO();
		ovo.setO_no(Integer.parseInt(estimateMapper.orderNo()));
		ovo.setC_id(id);
		ovo.setP_frame(pfname);
		ovo.setP_groupset(pgname);
		ovo.setP_wheel(pwname);
		ovo.setP_comp(pcname);
		ovo.setO_price(Integer.parseInt(pmoney));
		
		estimateMapper.findMoney(ovo);
		
		return ovo.getO_no();
	}
	
	public List<OrderVO> orderList(String id) {
		List<OrderVO> list = new ArrayList<>();
		
		list = estimateMapper.orderList(id);
		
		return list;
	}
}