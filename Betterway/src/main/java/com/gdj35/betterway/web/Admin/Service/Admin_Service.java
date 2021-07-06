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
		// TODO Auto-generated method stub
		return iAdmin_Dao.getAdmin(params);
	}

}
