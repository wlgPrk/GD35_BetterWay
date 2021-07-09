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
	
	//행복지대
	@Override
	public HashMap<String, String> getHDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getHDetail",params);
	}

	@Override
	public int addHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addHT",params);
	}
	
	@Override
	public int updateHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateHT",params);
	}
	
	@Override
	public int deleteHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deleteHT", params);
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

	@Override
	public int deletecooling(HashMap<String, String> params) throws Throwable {
		return sqlSession.delete("admin.deletecooling", params);
	}

	@Override
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getc",params);
	}
	
	@Override
	public int updateS(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateS",params);
	}


	@Override
	public HashMap<String, String> getCDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getCDetail", params);
	}

	@Override
	public int addguide(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addguide",params);
	}

	@Override
	public HashMap<String, String> getg(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getg",params);
	}

	@Override
	public int updateG(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateG",params);
	}
	
	


}
