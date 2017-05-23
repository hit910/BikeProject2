package com.sist.qnaboard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;


public interface QnaMapper {

/*		@Select("SELECT b_no,b_name,b_title,b_content,b_regdate,num "
				+ "FROM qna_board "
				+ "WHERE b_no BETWEEN #{start} AND #{end} "
				+ "ORDER BY b_no DESC ;")*/
		
		@Select("SELECT b_no,b_name,b_title,b_content,b_regdate,num "
		+"FROM (SELECT b_no,b_name,b_title,b_content,b_regdate,rownum as num "
		+"FROM (SELECT b_no,b_name,b_title,b_content,b_regdate "
		+"FROM qna_board ORDER BY b_no DESC)) "
		+"WHERE num BETWEEN #{start} AND #{end}")
		public List<QnaVO> getQnaList(Map map);
		
		@Select("SELECT CEIL(COUNT(*)/10) FROM qna_board")
		public int qnaTotalPage();
}
