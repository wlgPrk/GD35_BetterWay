package com.gdj35.betterway.web.evginfoGuide.cooling.Dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoolingDao implements ICoolingDao{
	@Autowired
	public SqlSession sqlSession;

	@Override
	public HashMap<String, String> getCar(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("Cooling.getCar",params);
	}
	
	
}
