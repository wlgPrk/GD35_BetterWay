package com.gdj35.betterway.web.evginfoGuide.cooling.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.evginfoGuide.cooling.Dao.CoolingDao;


@Service
public class CoolingService implements ICoolingService{
	@Autowired
	public CoolingDao iCoolingDao;
	@Override
	public HashMap<String, String> getCar(HashMap<String, String> params) throws Throwable {
		return iCoolingDao.getCar(params);
	}

}
