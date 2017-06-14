package com.sist.qnaboard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface QnaMapper {
	
	@Select("SELECT no,subject,name,regdate,hit,group_tab,num "
			+"FROM (SELECT no,subject,name,regdate,hit,group_tab,rownum as num "
			+"FROM (SELECT no,subject,name,regdate,hit,group_tab "
			+"FROM qnaBoard ORDER BY group_id DESC,group_step ASC))"
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<QnaVO> databoardListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10) FROM qnaBoard")
	public int databoardTotalPage();
	
	@SelectKey(keyProperty="no",resultType=int.class,before=true,
			statement="SELECT NVL(MAX(no)+1,1) as no FROM qnaBoard")
	@Insert("INSERT INTO qnaBoard VALUES("
			+"#{no},#{name},#{subject},#{content},"
			+"#{pwd},SYSDATE,0,"
			+"#{filename},#{filesize},#{filecount},"
			+"(SELECT NVL(MAX(group_id)+1,1) FROM qnaBoard),"
			+"0,0,0,0)")
	public void databoardInsert(QnaVO vo);
	
	//내용보기
	@Update("UPDATE qnaBoard SET "
			+"hit=hit+1 "
			+"WHERE no=#{no}")
	public void databoardHitIncreament(int no);
	
	@Select("SELECT no,name,subject,content,regdate,hit,filename,filecount "
			+"FROM qnaBoard "
			+"WHERE no=#{no}")
	public QnaVO databoardContentData(int no);
	
	//삭제
	@Select("SELECT pwd,filename,filecount "
			+"FROM qnaBoard "
			+"WHERE no=#{no}")
	public QnaVO databoardDeleteData(int no);
	@Delete("DELETE FROM qnaBoard "
			+"WHERE no=#{no}")
	public void databoardDelete(int no);
	
	//수정
	@Update("UPDATE qnaBoard SET "
			+"name=#{name},subject=#{subject},"
			+"content=#{content},"
			+"filename=#{filename,jdbcType=VARCHAR},"
			+"filesize=#{filesize,jdbcType=VARCHAR},"
			+"filecount=#{filecount,jdbcType=INTEGER} "
			+"WHERE no=#{no}")
	public void databoardUpdate(QnaVO vo);
	
	
	
	
	
	//답변하기
	@Select("SELECT group_id,group_step,group_tab "
			+"FROM qnaBoard "
			+"WHERE no=#{no}")
	public QnaVO boardParentData(int no);
						//group_id: 연관된 글을 묶어주는 컬럼
						//group_tab: 몇 번째 단계의 답변인지 나타내는 컬럼
						//group_step: 글의 정렬 순서를 지정해주는 컬럼.
	/*					group_id	group_tab	group_step
	 *   글(50)				50			0			0
	 *    |
	 *    |-답변1				50			1			1
	 *    	 |
	 *    	 |-답변1의 답변		50			2			2
	 *    		 |
	 *    		 |-3단계의 답변   50			3			3
	 *    		 	  |
	 *    			  |-4~  50			4			4
	 * 
	 * 	   -답변2				50			1	 		4=>5
	 */
	@Update("UPDATE qnaBoard SET "
			+"group_step=group_step+1 "
			+"WHERE group_id=#{group_id} "
			+"AND group_step>#{group_step}")
	public void boardStepIncrement(QnaVO vo);
	
	@SelectKey(keyProperty="no",resultType=int.class,before=true,
		statement="SELECT NVL(MAX(no)+1,1) as no FROM qnaBoard")
	@Insert("INSERT INTO qnaBoard VALUES("
			+"#{no},#{name},#{subject},#{content},"
			+"#{pwd},SYSDATE,0,"
			+"#{filename},#{filesize},#{filecount},"
			+"#{group_id},"
			+"#{group_step},#{group_tab},#{root},0)")
	public void boardReplyInsert(QnaVO vo);
	
	@Update("UPDATE qnaBoard SET "
			+"depth=depth+1 "
			+"WHERE no=#{no}")
	public void boardDepthIncreament(int no);
	//depth>0
	@Update("UPDATE qnaBoard SET "
			+"subject='관리자가 삭제한 게시물입니다.',"
			+"content='관리자가 삭제한 게시물입니다.' "
			+"WHERE no=#{no}")
	public void boardDataChange(int no);
	
	@Update("UPDATE qnaBoard SET "
			+"depth=depth-1 "
			+"WHERE no=#{no}")
	public void boardDepthDecrement(int no);
}














