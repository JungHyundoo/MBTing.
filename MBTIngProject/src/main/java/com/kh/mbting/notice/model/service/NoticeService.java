package com.kh.mbting.notice.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.mbting.common.model.vo.PageInfo;
import com.kh.mbting.notice.model.vo.Notice;

public interface NoticeService {
	
	// 공지사항 게시글 총 갯수 조회
	int selectListCount();

	// 공지사항 게시글 리스트 조회
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 공지사항 작성
	int insertNotice(Notice n);
	
	// 공지사항 조회수
	int increaseCount(int noticeNo);
	
	// 게시글 상세조회
	Notice selectNotice(int noticeNo);
	
	// 공지사항 삭제
	int deleteNotice(int noticeNo);
	
	// 공지사항 수정
	int updateNotice(Notice n);
	
    int searchListCount(String keyword);

    List<Notice> searchList(String keyword, int currentPage, int pageLimit, int boardLimit);

    // 조회수 업데이트 메소드
    int updateViews(int noticeNo);
    
}
