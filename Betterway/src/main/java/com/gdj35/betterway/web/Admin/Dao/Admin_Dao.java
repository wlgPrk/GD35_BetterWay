package com.gdj35.betterway.web.Admin.Dao;

import java.util.HashMap;

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
<<<<<<< HEAD
	public int deleteT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deleteT",params);
=======
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getcoolingDetail",params);
>>>>>>> branch 'main' of https://github.com/wlgPrk/GD35_BetterWay.git
	}

}
