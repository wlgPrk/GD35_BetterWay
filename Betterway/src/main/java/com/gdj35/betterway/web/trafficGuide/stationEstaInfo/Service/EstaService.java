package com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Dao.IEstaDao;

@Service
public class EstaService implements IEstaService{
	@Autowired 
	public IEstaDao iEstaDao;

	@Override
	public List<HashMap<String, String>> EstaList(HashMap<String, String> params) throws Throwable {
		
		return iEstaDao.EstaList(params) ;
	}

	@Override
	public List<HashMap<String, String>> happyList(HashMap<String, String> params) throws Throwable {
		return iEstaDao.happyList(params);
	}

}
