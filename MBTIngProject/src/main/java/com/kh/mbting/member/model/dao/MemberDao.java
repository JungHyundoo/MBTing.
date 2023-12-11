package com.kh.mbting.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.mbting.board.model.vo.Board;
import com.kh.mbting.chatting.model.vo.ChatMessage;
import com.kh.mbting.chatting.model.vo.ChatRoom;
import com.kh.mbting.common.model.vo.PageInfo;
import com.kh.mbting.matching.model.vo.Matching;
import com.kh.mbting.member.model.vo.Member;
import com.kh.mbting.pay.vo.KakaoPay;


@Repository
public class MemberDao {

	public ArrayList<Member> selectTopMemberList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectTopMemberList");
	}
	
	public Member loginMember(SqlSession sqlSession , Member m ) {
	
		return sqlSession.selectOne("memberMapper.loginMember", m);
		
	}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}
	
	public int proposerCount(SqlSessionTemplate sqlSession, String userNo) {
		return sqlSession.selectOne("memberMapper.proposerCount", userNo);
	}
	
	public int proposeAccept(SqlSessionTemplate sqlSession, String proposerNo) {
		return sqlSession.update("memberMapper.proposeAccept", proposerNo);
	}
	public int proposeAccepted(SqlSessionTemplate sqlSession, String receiverNo) {
		return sqlSession.update("memberMapper.proposeAccepted", receiverNo);
	}
	
	public ArrayList<Member> proposerList(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.proposerList", userNo);
	}

	public int selectListCount(SqlSessionTemplate sqlSession, String userNo) {
		return sqlSession.selectOne("memberMapper.selectListCount", userNo);
	}

	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession, PageInfo pi, String userNo) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("memberMapper.selectList", userNo, rowBounds);
	}

	public Member myStatProfile(SqlSessionTemplate sqlSession, String userNo) {
		return sqlSession.selectOne("memberMapper.myStatProfile", userNo);
	}

	public ArrayList<Member> myChat(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.myChat", userNo);
	}

	public Member proposerInfo(SqlSessionTemplate sqlSession, String proposerNo) {
		return sqlSession.selectOne("memberMapper.proposerInfo", proposerNo);
	}

	// 매칭 신청자 수락후 참여자 정보를 쳇룸에 insert 하는 용도의 메소드
	public int createChatroom(SqlSessionTemplate sqlSession, ChatRoom cr) {
		return sqlSession.insert("memberMapper.createChatroom", cr);
	}

	public int createChatMessage(SqlSessionTemplate sqlSession, ChatMessage cm) {
		return sqlSession.insert("memberMapper.createChatMessage", cm);
	}
	
	// 1:1 대화 시작 시 매칭 테이블 의 매칭 상태를(3/매칭 진행) 업데이트용 method
	public int matchingStrat(SqlSessionTemplate sqlSession, Matching mc) {
		return sqlSession.update("memberMapper.matchingStrat", mc);
	}

	public ArrayList<KakaoPay> orderList(SqlSessionTemplate sqlSession, PageInfo pi, String userNo) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("kakaoPayMapper.orderList", userNo, rowBounds);
	}
	
	// 회원가입 - 이메일 중복 체크용 메소드
	public int checkEmail(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.checkEmail", m);
	}







}

