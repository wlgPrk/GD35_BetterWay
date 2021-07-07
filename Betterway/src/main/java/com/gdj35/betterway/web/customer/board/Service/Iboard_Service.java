package com.gdj35.betterway.web.customer.board.Service;

import java.util.HashMap;
import java.util.List;

public interface Iboard_Service {

	public int getSugCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getSugList(HashMap<String, String> params) throws Throwable;

	public int addSug(HashMap<String, String> params) throws Throwable;

}
