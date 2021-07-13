package com.gdj35.betterway.web.evginfoGuide.airInfo.Dao;

import java.util.HashMap;
import java.util.List;

public interface IEnvDao {
	public List<HashMap<String, String>> getStation (HashMap<String, String> params) throws Throwable;
}
