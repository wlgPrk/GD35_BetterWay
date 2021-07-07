package com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EstaDao implements IEstaDao {
	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<HashMap<String, String>> EstaList(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("E.EstaList", params) ;
	}

	@Override
	public List<HashMap<String, String>> happyList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("E.happyList",params);
	}

	@Override
	public List<HashMap<String, String>> nursingRoomList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("E.nursingRoomList",params);
	}

	@Override
	public List<HashMap<String, String>> wheelchairList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("E.wheelchairList",params);
	}

	@Override
	public List<HashMap<String, String>> cycleList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("E.cycleList",params);
	}


}
