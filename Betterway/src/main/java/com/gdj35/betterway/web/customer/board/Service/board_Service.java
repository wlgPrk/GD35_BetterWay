package com.gdj35.betterway.web.customer.board.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.customer.board.Dao.Iboard_Dao;

@Service
public class board_Service implements Iboard_Service {
	
	@Autowired
	public Iboard_Dao iboard_dao;

	@Override
	public int getSugCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getSugCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getSugList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getSugList(params);
	}

	@Override
	public int addSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.addSug(params);
	}

	@Override
	public HashMap<String, String> getSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getSug(params);
	}

	@Override
	public List<HashMap<String, String>> getSugComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getSugComm(params);
	}

	@Override
	public int upadteInq(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.updateInq(params); 
	}

	@Override
	public int getCommCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getCommCnt(params);
	}

	@Override
	public HashMap<String, String> getPwCheck(HashMap<String, String> params) throws Throwable  {
		// TODO Auto-generated method stub
		return iboard_dao.getPwCheck(params);
	}

	@Override
	public int updateSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.updateSug(params);
	}

	@Override
	public int deleteSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.deleteSug(params);
	}

	@Override
	public int deleteSugComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.deleteSugComm(params);
	}

	@Override
	public int deleteSugReq(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.deleteSugReq(params);
	}

	@Override
	public int insertComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.insertComm(params);
	}

	@Override
	public HashMap<String, String> getCommPwCheck(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getCommPwCheck(params);
	}

	@Override
	public int updateComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.updateComm(params);
	}

	@Override
	public int deleteComm(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.deleteComm(params);
	}

	@Override
	public int updatePush(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.updatePush(params);
	}

	@Override
	public HashMap<String, String> getPush(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getPush(params);
	}

	@Override
	public List<HashMap<String, String>> getNoticeList() throws Throwable {
		// TODO Auto-generated method stub
		return iboard_dao.getNoticeList();
	}





}
