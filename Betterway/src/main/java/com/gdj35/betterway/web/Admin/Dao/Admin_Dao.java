package com.gdj35.betterway.web.Admin.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Dao implements IAdmin_Dao{

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getAdmin", params);
	}

	@Override
	public HashMap<String, String> getDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getDetail",params);
	}

	@Override
	public int addT(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addT",params);
	}

	@Override
	public int deleteT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deleteT", params);
	}
		
	@Override
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getcoolingDetail",params);

	}

	@Override
	public int addcooling(HashMap<String, String> params) throws Throwable {	
		return sqlSession.insert("admin.addcooling",params);
	}

	@Override
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("admin.guideList",params);
	}

	@Override
	public HashMap<String, String> getguideDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getguideDetail",params);
	}
	
	
}
