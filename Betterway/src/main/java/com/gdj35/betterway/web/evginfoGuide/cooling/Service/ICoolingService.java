package com.gdj35.betterway.web.evginfoGuide.cooling.Service;

import java.util.HashMap;
import java.util.List;

public interface ICoolingService {
	public List<HashMap<String, String>> getCar(HashMap<String, String> params) throws Throwable;
}
