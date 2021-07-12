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

	public int updateSug(HashMap<String, String> params) throws Throwable;

	public int deleteSug(HashMap<String, String> params) throws Throwable;

	public int deleteSugComm(HashMap<String, String> params) throws Throwable;

	public int deleteSugReq(HashMap<String, String> params) throws Throwable;

	public int insertComm(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCommPwCheck(HashMap<String, String> params) throws Throwable;

	public int updateComm(HashMap<String, String> params) throws Throwable;

	public int deleteComm(HashMap<String, String> params) throws Throwable;

	public int updatePush(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getPush(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getNoticeList() throws Throwable;

}
