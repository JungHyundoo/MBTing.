package com.kh.mbting.chatting.server;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

//여기는 채팅을 주고 받는데에 필요한 컨트롤러 입니당.
public class WebSocketServer extends TextWebSocketHandler {

	private Set<WebSocketSession> userList = new CopyOnWriteArraySet<>();
	//이 CopyOnWriteArraySet을 사용하는 이유는 이게 스레드 안전 컬렉션으로 들어있는 모든 변경자는 하부 배열의 사본을 만든다. 
	//컬렉션을 순회하는 스레드가 해당 컬렉션을 변경하는 스레드보다
	//훨씬 많을 때 이런 구조가 유용하다. 
	//반복자를 생성할 때 해당 반복자에게 현재 배열의 참조가 포함된다. 나중에 해당배열이 반복되어도 반복자는
	//여전히 기조 ㄴ배열을 참조하지만, 해당 컬렉션의 배열은 교체된다. 
	//즉, 동기화 기능을 제공 
	
	//웹소켓 서버에 클라이언트가 접속할 때 마다 호출되는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		userList.add(session);
		System.out.println("사용자 접속 : 현재 " + userList.size() + "명" );
		
	}

	//클라이언트가 웹소켓 접속 후 메세지가 웹 소켓 서버로 수신되었을 때마다 호출되는 메소드 
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		TextMessage newMessage = new TextMessage(message.getPayload());
		
		for(WebSocketSession ws : userList) {
			ws.sendMessage(newMessage);//전송하는 구문 
		}

	}

	//웹소켓 서벌오부터 클라이언트가 접속 종료될 때마다 호출되는 메소드 
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		userList.remove(session);
		System.out.println("사용자 접속 종료 : 현재" + userList.size() + "명");

	}
}