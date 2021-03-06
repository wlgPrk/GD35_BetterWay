package com.gdj35.betterway.web.Admin.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Dao implements IAdmin_Dao{

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> getAdmin(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getAdmin", params);
	}
	
	//행복지대
	@Override
	public HashMap<String, String> getHDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getHDetail",params);
	}

	@Override
	public int addHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addHT",params);
	}
	
	@Override
	public int updateHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateHT",params);
	}
	
	@Override
	public int deleteHT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deleteHT", params);
	}
	//행복지대 끝
	
	//수유실 시작
	@Override
	public HashMap<String, String> getnursingRoomDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getnursingRoomDetail",params);
	}
	
	@Override
	public int addnursingRoomT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.addnursingRoomT",params);
	}
	
	@Override
	public int deletenursingRoomT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deletenursingRoomT",params);
	}
	//수유실 끝
	
	//자전거보관함 시작
	@Override
	public int addcycleT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.addcycleT",params);
	}

	@Override
	public int deletecycleT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.deletecycleT",params);
	}
	//자전거보관함 끝

	//연단간격 시작
	@Override
	public HashMap<String, String> getwheelchairDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getwheelchairDetail",params);
	}
		
	@Override
	public int addwheelchairT(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addwheelchairT",params);
	}
	
	@Override
	public int updatewheelchairT(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updatewheelchairT",params);
	}
	
	@Override
	public int deletewheelchairT(HashMap<String, String> params) throws Throwable {
		return sqlSession.delete("admin.deletewheelchairT",params);
	}
	//연단간격 끝
	
	@Override
	public HashMap<String, String> getcoolingDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getcoolingDetail",params);
	}

	@Override
	public int addcooling(HashMap<String, String> params) throws Throwable {	
		return sqlSession.insert("admin.addcooling",params);
	}

	@Override
	public List<HashMap<String, String>> guideList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("admin.guideList",params);
	}

	@Override
	public HashMap<String, String> getguideDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getguideDetail",params);
	}

	@Override
	public int deletecooling(HashMap<String, String> params) throws Throwable {
		return sqlSession.delete("admin.deletecooling", params);
	}

	@Override
	public HashMap<String, String> getc(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getc",params);
	}
	
	@Override
	public int updateS(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateS",params);
	}

	@Override
	public HashMap<String, String> getCDetail(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getCDetail", params);
	}

	@Override
	public int addguide(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("admin.addguide",params);
	}

	@Override
	public HashMap<String, String> getg(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("admin.getg",params);
	}

	@Override
	public int updateG(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("admin.updateG",params);
	}

	@Override
	public int deleteguide(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.delete("admin.deleteguide", params);
	}
	

	@Override
	public int getUserCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getUserCnt",params);
	}

	@Override
	public int getNoticeCnt(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getNoticeCnt",params);
	}
	

	@Override
	public List<HashMap<String, String>> getUserList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getUserList",params);
	}

	@Override
	public List<HashMap<String, String>> getNoticeList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getNoticeList",params);
	}

	@Override
	public int deleteSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.deleteSug",params);
	}




	@Override
	public int insertSugAdmin(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("admin.insertSugAdmin",params);
	}

	@Override
	public int resultSug(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.resultSug",params);
	}

	@Override
	public int checkDeleteSug(HashMap<String, Object> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.checkDeleteSug",params);
	}

	@Override
	public int checkDeleteSugComm(HashMap<String, Object> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.checkDeleteSugComm",params);
	}

	@Override
	public List<HashMap<String, String>> getPer(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getPer",params);
	}

	@Override
	public List<HashMap<String, String>> getSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getSubline",params);
	}

	@Override
	public int insertSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("admin.insertSubline",params);
	}

	@Override
	public HashMap<String, String> getSublineDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getSublineDetail",params);
	}

	@Override
	public int updateSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.updateSubline",params);
	}

	@Override
	public int deleteSubline(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.delete("admin.deleteSubline",params);
	}

	@Override
	public List<HashMap<String, String>> getSubway(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getSubway",params);
	}

	@Override
	public int insertStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("admin.insertStation",params);
	}

	@Override
	public HashMap<String, String> getStationDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getStationDetail",params);
	}

	@Override
	public int updateStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.updateStation",params);
	}

	@Override
	public int deleteStation(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.delete("admin.deleteStation",params);
	}

	@Override
	public List<HashMap<String, String>> getToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin.getToilet",params);
	}

	@Override
	public int getToiletCnt() throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getToiletCnt");
	}

	@Override
	public int insertToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.insert("admin.insertToilet",params);
	}

	@Override
	public HashMap<String, String> getToiletDetail(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admin.getToiletDetail", params);
	}

	@Override
	public int updateToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.updateToilet",params);
	}

	@Override
	public int deleteToilet(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.update("admin.deleteToilet",params);
	}





}
