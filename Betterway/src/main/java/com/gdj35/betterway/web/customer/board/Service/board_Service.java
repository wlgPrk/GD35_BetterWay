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

}
