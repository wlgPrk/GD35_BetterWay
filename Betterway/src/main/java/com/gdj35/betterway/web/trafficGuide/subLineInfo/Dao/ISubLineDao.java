package com.gdj35.betterway.web.trafficGuide.subLineInfo.Dao;

import java.util.HashMap;
import java.util.List;

public interface ISubLineDao {
	public List<HashMap<String, String>> getsIdsName (HashMap<String, String> params) throws Throwable;
}
