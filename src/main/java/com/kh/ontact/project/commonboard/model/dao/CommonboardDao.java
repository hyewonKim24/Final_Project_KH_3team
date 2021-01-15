package com.kh.ontact.project.commonboard.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ontact.project.commonboard.model.dto.CommonboardDto;

@Repository("commonboardDao")
public class CommonboardDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void selectOneCommonboard(CommonboardDto dto) throws Exception{
		sqlSession.selectOne("Commonboard.selectOneCommonboard",dto);
	}
	public void insertCommonboard(CommonboardDto dto) throws Exception{
		sqlSession.insert("Commonboard.insertCommonboard",dto);
	}
	public void updateCommonboard(CommonboardDto dto) throws Exception{
		sqlSession.update("Commonboard.updateCommonboard",dto);
	}
	public void deleteCommonboard(String dno) throws Exception{
		sqlSession.delete("Commonboard.deleteCommonboard",dno);
	}
}
