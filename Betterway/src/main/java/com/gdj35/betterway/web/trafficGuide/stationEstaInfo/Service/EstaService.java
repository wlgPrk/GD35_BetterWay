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

	@Override
	public List<HashMap<String, String>> nursingRoomList(HashMap<String, String> params) throws Throwable {
		return iEstaDao.nursingRoomList(params);
	}
	
	@Override
	public List<HashMap<String, String>> wheelchairList(HashMap<String, String> params) throws Throwable {
		return iEstaDao.wheelchairList(params);
	}

	@Override
	public List<HashMap<String, String>> getToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iEstaDao.getToilet(params);
	}
	@Override
	public List<HashMap<String, String>> cycleList(HashMap<String, String> params) throws Throwable {
		return iEstaDao.cycleList(params);
	}

	@Override
	public List<HashMap<String, String>> SubwayLine(HashMap<String, String> params) throws Throwable {
		return iEstaDao.SubwayLine(params);
	}

	@Override
	public List<HashMap<String, String>> StationList(HashMap<String, String> params) throws Throwable {
		return iEstaDao.StationList(params);
	}

}
