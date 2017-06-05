package com.sist.estimate;

import java.util.*;
import org.apache.ibatis.annotations.Select;

public interface EstimateMapper {
	
	@Select("SELECT p_no,p_name,p_price,p_regdate FROM product_frame")
	public List<FrameVO> frameListData();
}
