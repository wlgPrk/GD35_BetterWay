package com.gdj35.betterway.web.trafficGuide.subLineInfo.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubLineDao implements ISubLineDao{
	@Autowired
	public SqlSession sqlSession;
	@Override
	public List<HashMap<String, String>> getsIdsName(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("subLine.getsIdsName",params);
	}
}
