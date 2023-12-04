package com.kh.mbting.chatting.model.vo;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@ToString
public class Chatting {
	private int 	chatNo;			//	CHAT_NO	NUMBER
	private int 	roomNo;			//	ROOM_NO	NUMBER
	private String 	message;		//	MESSAGE	VARCHAR2(1000 BYTE)
	private Date 	sendTime;		//	SEND_TIME	DATE
	private int 	userNo;			//	USER_NO	NUMBER
}