package com.sist.qnaboard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	@Autowired
	private QnaMapper mapper;
	
	public List<QnaVO> databoardListData(Map map){
		return mapper.databoardListData(map);
	}
	
	public int databoardTotalPage(){
		return mapper.databoardTotalPage();
	}
	
	public void databoardInsert(QnaVO vo){
		mapper.databoardInsert(vo);
	}
	
	public QnaVO databoardContentData(int no){
		mapper.databoardHitIncreament(no);
		return mapper.databoardContentData(no);
	}
	
	public QnaVO databoardDeleteData(int no){
		return mapper.databoardDeleteData(no);
	}
	public void databoardDelete(int no){
		mapper.databoardDelete(no);
	}
	
	public QnaVO databoardUpdateData(int no){
		return mapper.databoardContentData(no);
	}
	public void databoardUpdate(QnaVO vo){
		mapper.databoardUpdate(vo);
	}
	
	
	
}





















