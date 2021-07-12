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

	@Override
	public HashMap<String, String> getSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("customer.getSug",params);
	}

	@Override
	public List<HashMap<String, String>> getSugComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("customer.getSugComm", params);
	}

	@Override
	public int updateInq(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.updateInq",params);
	}

	@Override
	public int getCommCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("customer.getCommCnt", params);
	}

	@Override
	public HashMap<String, String> getPwCheck(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("customer.getPwCheck",params);
	}

	@Override
	public int updateSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.updateSug",params);
	}

	@Override
	public int deleteSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.deleteSug",params);
	}

	@Override
	public int deleteSugComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.deleteSugComm",params);
	}

	@Override
	public int deleteSugReq(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.deleteSugReq",params);
	}

	@Override
	public int insertComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("customer.insertComm", params);
	}

	@Override
	public HashMap<String, String> getCommPwCheck(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("customer.getCommPwCheck", params);
	}

	@Override
	public int updateComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("customer.updateComm", params);
	}
	
	

}
