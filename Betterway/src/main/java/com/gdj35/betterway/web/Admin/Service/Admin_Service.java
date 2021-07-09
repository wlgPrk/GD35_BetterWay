package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.Admin.Dao.IAdmin_Dao;

@Service
public class Admin_Service implements IAdmin_Service{

	@Autowired
	public IAdmin_Dao iAdmin_Dao;
	
	@Override
	public HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getAdmin(params);
	}

	@Override
	public HashMap<String, String> getDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getDetail(params);
	}

	@Override
	public int addT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addT(params);
	}
	//냉방상세보기
	@Override
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getcoolingDetail(params);
	}

	@Override
	public int deleteT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deleteT(params);
	}
	//냉방등록
	@Override
	public int addcooling(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addcooling(params);
	}

	@Override
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.guideList(params);
	}

	@Override
	public HashMap<String, String> getguideDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getguideDetail(params);
	}

	@Override
	public int deletecooling(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deletecooling(params);
	}

	

}
