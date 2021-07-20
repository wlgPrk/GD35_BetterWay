package com.gdj35.betterway.web.trafficGuide.subLineInfo.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.trafficGuide.subLineInfo.Dao.ISubLineDao;
@Service
public class SubLineService implements ISubLineService{
	@Autowired
	public ISubLineDao iSubLineDao;

	@Override
	public List<HashMap<String, String>> getsIdsName(HashMap<String, String> params) throws Throwable {
		return iSubLineDao.getsIdsName(params);
	}

	@Override
	public List<HashMap<String, String>> getLatLngD(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iSubLineDao.getLatLngD(params);
	}
	@Override
	public List<HashMap<String, String>> getLatLngA(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iSubLineDao.getLatLngA(params);
	}

	@Override
	public List<HashMap<String, String>> getLatLngSubWay(HashMap<String, String> params) throws Throwable {
		return iSubLineDao.getLatLngSubWay(params);
	}

}
