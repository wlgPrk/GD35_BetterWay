package com.gdj35.betterway.web.evginfoGuide.airInfo.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.evginfoGuide.airInfo.Dao.EnvDao;


@Service
public class EnvService implements IEnvService{
	@Autowired
	public EnvDao iEnvDao;
	
	@Override
	public List<HashMap<String, String>> getStation(HashMap<String, String> params) throws Throwable {
		return iEnvDao.getStation(params);
	}

}


