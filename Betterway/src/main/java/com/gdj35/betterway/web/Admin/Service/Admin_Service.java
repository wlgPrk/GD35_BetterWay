package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;

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

}
