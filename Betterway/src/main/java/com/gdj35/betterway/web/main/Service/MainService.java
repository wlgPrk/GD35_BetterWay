package com.gdj35.betterway.web.main.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.main.Dao.IMainDao;

@Service
public class MainService implements IMainService {
	@Autowired
	public IMainDao iMainDao;

	@Override
	public List<HashMap<String, String>> SubwayList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return  iMainDao.SubwayList(params);
	}

	@Override
	public List<HashMap<String, String>> getChList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return  iMainDao.getChList(params);
	} 

}
