package com.sist.qnaboard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private QnaMapper qnamapper;
	
	public List<QnaVO> qnaList(Map map) {
		return qnamapper.getQnaList(map);
	}

}
