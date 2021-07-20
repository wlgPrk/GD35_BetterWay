package com.gdj35.betterway.web.trafficGuide.subLineInfo.Service;

import java.util.HashMap;
import java.util.List;

public interface ISubLineService {
	public List<HashMap<String, String>> getsIdsName(HashMap<String, String> params) throws Throwable;
	public List<HashMap<String, String>> getLatLngD(HashMap<String, String> params) throws Throwable;
	public List<HashMap<String, String>> getLatLngA(HashMap<String, String> params) throws Throwable;
	public List<HashMap<String, String>> getLatLngSubWay(HashMap<String, String> params)throws Throwable;;
}
