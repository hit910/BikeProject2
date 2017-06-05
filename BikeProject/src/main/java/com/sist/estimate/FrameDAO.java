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
	
}
