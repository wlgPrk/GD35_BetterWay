package com.gdj35.betterway.web.Admin.Service;

import java.util.HashMap;
import java.util.List;

public interface IAdmin_Service {
	
	public HashMap<String,String> getAdmin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getHDetail(HashMap<String, String> params)throws Throwable;

	public int addHT(HashMap<String, String> params)throws Throwable;

	public int deleteHT(HashMap<String, String> params)throws Throwable;

	public HashMap<String, String> getnursingRoomDetail(HashMap<String, String> params) throws Throwable;
	
	public int addnursingRoomT(HashMap<String, String> params) throws Throwable;
	
	public int deletenursingRoomT(HashMap<String, String> params) throws Throwable;
	
	public int addcycleT(HashMap<String, String> params) throws Throwable;

	public int deletecycleT(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getwheelchairDetail(HashMap<String, String> params) throws Throwable;
	
	public int addwheelchairT(HashMap<String, String> params)throws Throwable;
	
	public int updatewheelchairT(HashMap<String, String> params)throws Throwable;
	
	public int deletewheelchairT(HashMap<String, String> params)throws Throwable;
	
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params)throws Throwable;
	
	public int addcooling(HashMap<String, String> params)throws Throwable;
	
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getguideDetail(HashMap<String, String> params)throws Throwable;

	public int updateHT(HashMap<String, String> params) throws Throwable;

	public int deletecooling(HashMap<String, String> params)throws Throwable;
	
	public int addguide(HashMap<String, String> params)throws Throwable;
	
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable;
	
	public int updateS(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCDetail(HashMap<String, String> params)throws Throwable;
	
	public HashMap<String, String> getg(HashMap<String, String> params) throws Throwable;
	
	public int updateG(HashMap<String, String> params) throws Throwable;
	
	public int deleteguide(HashMap<String, String> params)throws Throwable;

	public int getUserCnt(HashMap<String, String> params) throws Throwable;

	public int getNoticeCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getUserList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getNoticeList(HashMap<String, String> params) throws Throwable;

	public int deleteSug(HashMap<String, String> params) throws Throwable;

	public int checkDeleteSug(HashMap<String, Object> params) throws Throwable;

	public int insertSugAdmin(HashMap<String, String> params) throws Throwable;

	public int resultSug(HashMap<String, String> params) throws Throwable;

	public int checkDeleteSugComm(HashMap<String, Object> params) throws Throwable;


	
}