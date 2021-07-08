package com.gdj35.betterway.web.customer.board.Dao;

import java.util.HashMap;
import java.util.List;

public interface Iboard_Dao {

	public int getSugCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getSugList(HashMap<String, String> params)throws Throwable;

	public int addSug(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getSug(HashMap<String, String> params)throws Throwable;

	public List<HashMap<String, String>> getSugComm(HashMap<String, String> params) throws Throwable;

	public int updateInq(HashMap<String, String> params) throws Throwable;

	public int getCommCnt(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getPwCheck(HashMap<String, String> params) throws Throwable;

}
