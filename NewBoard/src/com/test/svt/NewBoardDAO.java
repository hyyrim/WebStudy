package com.test.svt;

import java.sql.Connection;

public class NewBoardDAO
{
	// 주요 속성 구성
	private Connection conn;
	
	// 생성자 정의
	public NewBoardDAO(Connection conn)
	{
		this.conn = conn;
		// 인스턴스를 생성할 때 생성자 매개변수로 conn 을 넘겨줘야 한다.
	}
	
	// 게시물의 최대값 얻어내기
	public int getMaxNum()
	{
		int result = 0;
		
		return result;
		
	}//end getMaxNum()
	
	// 게시물 입력 메소드
	
	// DB레코드 갯수 가져오는 메소드
	
	// 특정 영역(시작번호 ~ 끝번호)의 게시물 목록 읽어오는 메소드
	
	// 특정 게시물 조회수 증가 메소드
	
	// 특정 게시물 내용 읽어오는 메소드
	
	// 특정 게시물 삭제 메소드
	
	// Article.jsp 페이지 내에서 특정 게시물 수정 메소드
	
	// 이전 게시물 얻어내는 메소드
	
	// 이후 게시물 얻어ㄴ
	
	
	
}
