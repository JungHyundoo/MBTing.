# MBTing.

**🎈 프로젝트명** : MBTing.

**🎈 개발 목표**  

1. ‘MBTI’를 이용한 만남 주선이라는 특별성을 가지며, 대화형 시물레이션 게임 형식의 사용자의 성향을 조사해 이용자의 흥미 유도
2. 회원가입부터 사용자 성향 조사 그리고 매칭까지의 과정을 직관적인 UI를 통해 확인할 수 있도록 구현해 사이트 이용에 따른 피로도와 어려움을 낮추도록 노력함
3. 매칭 신청의 경우, 신청 횟수에 따라 소비되는 Coin이 필요하여 해당 상품 판매를 통해 수익 창출이 가능하며 수익모델을 광고에 의존하지 않음으로써, 이용자의 불편을 최소화

**🎈 사용기술 및 개발환경**

| 운영체제 | : WINDOW OS |
| --- | --- |
| 사용언어 | : Front - javaScript, JQuery, HTML5, CSS3, AJAX                              
: Back - JAVA 11, Spring Regacy, JSP, Spring MVC |
| FrameWork/Library | : jQuery, Bootstrap4 |
| DB | : Oracle 11g EE, MyBatis |
| Tool | : STS 4.23.0, Visual Studio Code, Oracle SQL Developer 23.1.0,
  Kakao Oven, Star UML 5.0, ERD Cloud, Pigma |
| WAS | : Apache Tomcat 9.0.80 |
| Collaboration | : Slack |
| API | : twak.to 채팅 API, Swiper API, kakaoLogin API, KaKaoPay API |

**🎈 담당역할** 

관리자페이지 프런트엔드 및 백엔드 담당

<img src="https://drive.google.com/uc?export=view&id=1TB9iy1ZUe5xww7rUgqMxy9YzK6JiFVMX" width=60% height=60%>

**🎈 구현기능**

- 메인화면 설계
    
<img src="https://drive.google.com/uc?export=view&id=1yL8KWHyJtnHMYOMnadT0POVOWz1pr-Iu" width=40% height=40%>
    
    - (전체) 회원 수, 커플 매칭 수, 결제 금액, 후기 게시글 수
    - 월별 회원가입 수/매출, 년별 매출
    - 매칭 상태, MBTI 성향 분포도
    - 남녀성비/매칭 성공률/유료 계정 비율

- 세부기능 설계
<img src="https://drive.google.com/uc?export=view&id=1c0YboAZ8iHHKSHhAUzIDXddp_vF7O6Zo" width=60% height=60%>    
    - 회원관리
        - 전체 조회 및 상세 조회(마이페이지 포워딩)
        - 회원 검색 및 페이징 처리 구현
        - 회원 유/무료 상태 확인(프리미엄/일반)
        - 정상/정지 회원 상태 토글식 구현
    - 공지사항관리
        - 공지사항 게시글 검색 및 페이징 처리
        - CRUD, 조회 수 기능 구현
    - 매칭후기관리
        - 게시글 조회 시(게시글 포워딩)
        - 후기게시글 검색 및 페이징 처리
    - 결제관리
        - 사용자가 환불 요청 시 승인/거절 기능 구현
        - 결제 내역 검색 및 페이징 처리
    - 1:1 문의
        - [tawk.to](http://tawk.to/) API 활용하여 1:1 문의 기능 구현

**🎈 프로젝트 참여소감** 

  세미 프로젝트에서 프런트엔드의 비중이 컸다고 판단하여, 파이널 프로젝트에서는 백엔드 역할을 더 배우고자 관리자 페이지를 맡았습니다.
관리자 입장을 고려하여 필수적인 기능들을 만들기 위해 회원 관리, 공지사항 관리, 게시글 관리, 결제 관리, 1:1 문의를 중점으로 설정하였고, 추가로 그래프 API를 활용하여 시각화 기능을 구현했습니다.

  홈페이지를 사용자 입장에서만 보아, 관리자 입장을 고려하여 페이지를 구상하는 것이 어려웠습니다. 세미 프로젝트 때 초기 설계의 중요성을 깨닫고 UML을 활용하여 필요한 기능들을 명확하게 구상했습니다.
처음 git을 사용하면서 코드 중복이 발생하여 어려움을 겪었지만, 팀원들과의 협업에서 코드 통합의 필요성을 깨닫고 git의 중요성을 깨달았습니다. 

  이전 프로젝트에서 팀원과의 소통이 중요하다는 것을 깨달았고, 이를 기반으로 파이널 프로젝트에서는 더욱 세밀하고 지속적으로 소통하여 팀이 하나가 될 수 있도록 노력하였습니다. 팀 구성원은 변할 수 있지만, 소통은 항상 중요하다는 교훈을 얻었고, 앞으로도 이러한 경험들을 바탕으로 신입 개발자로서 소통의 중요성을 강조하여 성장하고자 합니다.
소통은 필수적인 기본 소양이라고 생각하며, 앞으로도 지속적인 학습과 스스로 공부하여 필요한 기능들을 성공적으로 해결해 나가고자 합니다.
