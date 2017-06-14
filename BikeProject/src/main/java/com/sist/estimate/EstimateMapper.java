package com.sist.estimate;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	
	
	@Update("UPDATE product_frame SET p_name=#{p_name},p_price=#{p_price},p_regdate=#{p_regdate} WHERE p_no = #{p_no}")
	public void frameUpdate(FrameVO vo);
	
	@Update("UPDATE product_groupset SET p_name=#{p_name},p_price=#{p_price},p_regdate=#{p_regdate} WHERE p_no = #{p_no}")
	public void groupsetUpdate(FrameVO vo);
	
	@Update("UPDATE product_wheelset SET p_name=#{p_name},p_price=#{p_price},p_regdate=#{p_regdate} WHERE p_no = #{p_no}")
	public void wheelsetUpdate(FrameVO vo);
	
	@Update("UPDATE product_comp SET p_name=#{p_name},p_price=#{p_price},p_regdate=#{p_regdate} WHERE p_no = #{p_no}")
	public void compUpdate(FrameVO vo);
	
	
	@Delete("DELETE FROM product_frame WHERE p_no = #{no}")
	public void frameDelete(int no);
	
	@Delete("DELETE FROM product_groupset WHERE p_no = #{no}")
	public void groupsetDelete(int no);
	
	@Delete("DELETE FROM product_wheelset WHERE p_no = #{no}")
	public void wheelsetDelete(int no);
	
	@Delete("DELETE FROM product_comp WHERE p_no = #{no}")
	public void compDelete(int no);
	
	@Insert("INSERT INTO order_info VALUES(((SELECT max(o_no) FROM order_info)+1), #{c_id}, #{p_frame}, #{p_groupset}, #{p_wheel}, #{p_comp}, #{o_price}, SYSDATE)")
	public OrderVO findMoney(OrderVO ovo);
	
	
}
