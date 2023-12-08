package com.kh.mbting.pay.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mbting.pay.dao.KakaoPayDao;
import com.kh.mbting.pay.vo.KakaoPay;


@Service
public class KakaoPayService {
	
	@Autowired 
	private KakaoPayDao kakaoPayDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 카카오페이 결제 시도 시 결제 정보를 담을 테이블을 생성하는 용도의 메소드
	public int insertPay(KakaoPay kp) {
		return kakaoPayDao.insertPay(sqlSession, kp);
	}
	// 카카오페이 결제 시도시 가맹점 주문번호를 DB에서 받아오는 용도의 메소드
	public String getPartnerOrder(String email) {
		return kakaoPayDao.getPartnerOrder(sqlSession, email);
	}
	// 카카오페이 결제 시도시 발급되는 Tid 저장용 메소드
	public int insertTid(KakaoPay kp) {
		return kakaoPayDao.insertTid(sqlSession, kp);
	}
	// 카카오페이 결제 성공 후 pg 토큰 저장용 메소드
	public int insertPgToken(KakaoPay kp) {
		return kakaoPayDao.insertPgToken(sqlSession, kp);
	}
	
	
	
}