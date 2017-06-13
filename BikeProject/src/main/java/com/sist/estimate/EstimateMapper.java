package com.sist.estimate;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface EstimateMapper {

	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_frame ORDER BY p_no DESC")
	public List<FrameVO> frameListData();

	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_groupset ORDER BY p_no DESC")
	public List<FrameVO> groupListData();

	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_wheelset ORDER BY p_no DESC")
	public List<FrameVO> wheelListData();

	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_comp ORDER BY p_no DESC")
	public List<FrameVO> compListData();

	@Insert("INSERT INTO product_frame "
			+ "VALUES ((SELECT max(p_no) FROM product_frame)+1, #{p_name}, #{p_price}, #{p_regdate})")
	public void insertFrame(FrameVO vo);

	@Insert("INSERT INTO product_groupset "
			+ "VALUES ((SELECT max(p_no) FROM product_groupset)+1, #{p_name}, #{p_price}, #{p_regdate})")
	public void insertGroupset(FrameVO vo);

	@Insert("INSERT INTO product_wheelset "
			+ "VALUES ((SELECT max(p_no) FROM product_wheelset)+1, #{p_name}, #{p_price}, #{p_regdate})")
	public void insertWheelset(FrameVO vo);

	@Insert("INSERT INTO product_comp "
			+ "VALUES ((SELECT max(p_no) FROM product_comp)+1, #{p_name}, #{p_price}, #{p_regdate})")
	public void insertComp(FrameVO vo);
	
	@Delete("DELETE FROM product_frame WHERE p_no = #{no}")
	public void frameDelete(int no);
	
	@Delete("DELETE FROM product_groupset WHERE p_no = #{no}")
	public void groupsetDelete(int no);
	
	@Delete("DELETE FROM product_wheelset WHERE p_no = #{no}")
	public void wheelsetDelete(int no);
	
	@Delete("DELETE FROM product_comp WHERE p_no = #{no}")
	public void compDelete(int no);
}
