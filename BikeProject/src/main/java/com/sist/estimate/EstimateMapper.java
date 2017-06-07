package com.sist.estimate;

import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface EstimateMapper {
	
	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_frame")
	public List<FrameVO> frameListData();
	
	@Insert("INSERT INTO product_frame " +
		"VALUES ((SELECT max(p_no) FROM product_frame)+1, #{name}, #{price}, #{regdate})")
	public void insertFrame(FrameVO vo);
	
	@Insert("INSERT INTO product_groupset " +
			"VALUES ((SELECT max(p_no) FROM product_groupset)+1, #{name}, #{price}, #{regdate})")
		public void insertGroupset(FrameVO vo);
	
	@Insert("INSERT INTO product_wheelset " +
			"VALUES ((SELECT max(p_no) FROM product_wheelset)+1, #{name}, #{price}, #{regdate})")
		public void insertWheelset(FrameVO vo);
	
	@Insert("INSERT INTO product_comp " +
			"VALUES ((SELECT max(p_no) FROM product_comp)+1, #{name}, #{price}, #{regdate})")
		public void insertComp(FrameVO vo);
}
