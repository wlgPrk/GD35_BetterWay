package com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Dao.IEstaDao;

@Service
public class EstaService implements IEstaService{
	@Autowired 
	public IEstaDao iEstaDao;

}
