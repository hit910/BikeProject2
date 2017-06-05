package com.sist.qnaboard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface QnaMapper {
	
	@Select("SELECT no,subject,name,regdate,hit,num "
			+"FROM (SELECT no,subject,name,regdate,hit,rownum as num "
			+"FROM (SELECT no,subject,name,regdate,hit "
			+"FROM multiBoard ORDER BY no DESC))"
			+"WHERE num BETWEEN #{start} AND #{end}"
			)
	public List<QnaVO> databoardListData(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10) FROM multiBoard")
	public int databoardTotalPage();
	
	@SelectKey(keyProperty="no",resultType=int.class,before=true,
			statement="SELECT NVL(MAX(no)+1,1) as no FROM multiBoard")
	@Insert("INSERT INTO multiBoard VALUES("
			+"#{no},#{name},#{subject},#{content},"
			+"#{pwd},SYSDATE,0,"
			+"#{filename},#{filesize},#{filecount})")
	public void databoardInsert(QnaVO vo);
	
	//내용보기
	@Update("UPDATE multiBoard SET "
			+"hit=hit+1 "
			+"WHERE no=#{no}")
	public void databoardHitIncreament(int no);
	
	@Select("SELECT no,name,subject,content,regdate,hit,filename,filecount "
			+"FROM multiBoard "
			+"WHERE no=#{no}")
	public QnaVO databoardContentData(int no);
	
	//삭제
	@Select("SELECT pwd,filename,filecount "
			+"FROM multiBoard "
			+"WHERE no=#{no}")
	public QnaVO databoardDeleteData(int no);
	@Delete("DELETE FROM multiBoard "
			+"WHERE no=#{no}")
	public void databoardDelete(int no);
	
	//수정
	@Update("UPDATE multiBoard SET "
			+"name=#{name},subject=#{subject},"
			+"content=#{content},"
			+"filename=#{filename,jdbcType=VARCHAR},"
			+"filesize=#{filesize,jdbcType=VARCHAR},"
			+"filecount=#{filecount,jdbcType=INTEGER} "
			+"WHERE no=#{no}")
	public void databoardUpdate(QnaVO vo);
	
}














