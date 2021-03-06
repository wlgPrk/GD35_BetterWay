package com.gdj35.betterway.web.Admin.Service;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.betterway.web.Admin.Dao.IAdmin_Dao;

@Service
public class Admin_Service implements IAdmin_Service{

	@Autowired
	public IAdmin_Dao iAdmin_Dao;
	
	@Override
	public HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getAdmin(params);
	}

	//해피시작
	@Override
	public HashMap<String, String> getHDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getHDetail(params);
	}

	@Override
	public int addHT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addHT(params);
	}
	
	@Override
	public int updateHT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.updateHT(params);
	}
	
	@Override
	public int deleteHT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deleteHT(params);
	}
	//해피끝
	
	//수유실 시작
	@Override
	public int addnursingRoomT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addnursingRoomT(params);
	}
	
	@Override
	public HashMap<String, String> getnursingRoomDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getnursingRoomDetail(params);
	}
	
	@Override
	public int deletenursingRoomT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deletenursingRoomT(params);
	}
	//수유실끝
	
	//자전거보관함 시작
	@Override
	public int addcycleT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addcycleT(params);
	}

	@Override
	public int deletecycleT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deletecycleT(params);
	}
	//자전거보관함 끝

	//연단간격 시작
	@Override
	public HashMap<String, String> getwheelchairDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getwheelchairDetail(params);
	}
	
	@Override
	public int addwheelchairT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addwheelchairT(params);
	}
	
	@Override
	public int updatewheelchairT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.updatewheelchairT(params);
	}
	
	@Override
	public int deletewheelchairT(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deletewheelchairT(params);
	}
	//연단간격 끝
		
	//냉방상세보기
	@Override
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getcoolingDetail(params);
	}

	//냉방등록
	@Override
	public int addcooling(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addcooling(params);
	}

	@Override
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.guideList(params);
	}

	@Override
	public HashMap<String, String> getguideDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getguideDetail(params);
	}

	@Override
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getc(params);
	}

	@Override
	public int updateS(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.updateS(params);
	}

	@Override
	public int deletecooling(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deletecooling(params);
	}

	@Override
	public HashMap<String, String> getCDetail(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getCDetail(params);
	}

	@Override
	public int addguide(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.addguide(params);
	}

	@Override
	public HashMap<String, String> getg(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.getg(params);
	}

	@Override
	public int updateG(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.updateG(params);
	}
	@Override
	public int deleteguide(HashMap<String, String> params) throws Throwable {
		return iAdmin_Dao.deleteguide(params);
	}

	
	
	@Override
	public int getUserCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getUserCnt(params);
	}
	
	@Override
	public int getNoticeCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getNoticeCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getUserList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getUserList(params);
	}

	@Override
	public List<HashMap<String, String>> getNoticeList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getNoticeList(params);
	}

	@Override
	public int deleteSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.deleteSug(params);
	}





	@Override
	public int insertSugAdmin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.insertSugAdmin(params);
	}

	@Override
	public int resultSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.resultSug(params);
	}



	@Override
	public int checkDeleteSug(HashMap<String, Object> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.checkDeleteSug(params);
	}

	@Override
	public int checkDeleteSugComm(HashMap<String, Object> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.checkDeleteSugComm(params);
	}

	@Override
	public List<HashMap<String, String>> getPer(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getPer(params);
	}

	@Override
	public List<HashMap<String, String>> getSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getSubline(params);
	}

	@Override
	public int insertSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.insertSubline(params);
	}

	@Override
	public HashMap<String, String> getSublineDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getSublineDetail(params);
	}

	@Override
	public int updateSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.updateSubline(params);
	}

	@Override
	public int deleteSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.deleteSubline(params);
	}

	@Override
	public List<HashMap<String, String>> getSubway(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getSubway(params);
	}

	@Override
	public int insertStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.insertStation(params);
	}

	@Override
	public HashMap<String, String> getStationDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getStationDetail(params);
	}

	@Override
	public int updateStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.updateStation(params);
	}

	@Override
	public int deleteStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.deleteStation(params);
	}

	@Override
	public List<HashMap<String, String>> getToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getToilet(params);
	}

	@Override
	public int getToiletCnt() throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getToiletCnt();
	}

	@Override
	public int insertToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.insertToilet(params);
	}

	@Override
	public HashMap<String, String> getToiletDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.getToiletDetail(params);
	}

	@Override
	public int updateToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.updateToilet(params);
	}

	@Override
	public int deleteToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iAdmin_Dao.deleteToilet(params);
	}


	
	

}
