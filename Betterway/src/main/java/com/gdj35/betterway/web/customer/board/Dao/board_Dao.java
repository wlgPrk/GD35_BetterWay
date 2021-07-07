package com.gdj35.betterway.web.customer.board.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class board_Dao implements Iboard_Dao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int getSugCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("customer.getSugCnt",params);
	}

	@Override
	public List<HashMap<String, String>> getSugList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("customer.getSugList",params);
	}

	@Override
	public int addSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("customer.addSug",params);
	}
	
	

}
