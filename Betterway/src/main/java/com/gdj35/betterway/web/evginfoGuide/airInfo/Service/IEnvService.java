package com.gdj35.betterway.web.evginfoGuide.airInfo.Service;

import java.util.HashMap;
import java.util.List;

public interface IEnvService {
	public List<HashMap<String, String>> getStation(HashMap<String, String> params) throws Throwable;
}
