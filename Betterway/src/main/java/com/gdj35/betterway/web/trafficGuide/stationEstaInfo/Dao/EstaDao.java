package com.gdj35.betterway.web.trafficGuide.stationEstaInfo.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EstaDao implements IEstaDao {
	@Autowired
	public SqlSession sqlSession;

}
