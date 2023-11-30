<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTIng - 만남후기</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Single+Day&display=swap" rel="stylesheet">
    <style>
        body * {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .outer {
            width: 100%;
            margin: auto;
        }
        .reviewbanner {
            width: 100%;
            height: 150px;
            margin: auto;
            background-image:url(https://images.unsplash.com/photo-1480623826718-27e89ac63a4f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            background-position: center center;
            background-size: cover;
        }
        .reviewbanner-text {
            width: 1200px;
            height: 150px;
            text-align: center;
            line-height: 150px;
            color: white;
            font-size: xx-large;
        }
        .bestreviewlist {
            width: 1200px;
            margin: auto;
            border: 2px dotted pink;
            border-radius: 10px;
            font-family: 'Single Day', cursive;
        }
        .bestreviewlist * {
        	font-family: 'Single Day', cursive;
        	font-size: large;
            font-weight: bold;
            text-align: center;
        }
        .bestreviewlistbanner {
        	font-family: 'Noto Sans KR', sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        #boardlist {
        	width: 1200px;
            text-align: center;
        }
        #boardlist img {
			width: 150px;
            height: 150px;
            border-radius: 10px;        
        }
        #boardlist * {
			font-family: 'Single Day', cursive;
            font-size: large;
            font-weight: bold;        
        }
        .reviewlistbutton {
            width: 1200px;
            margin: auto;
        }
        .reviewlist {
            width: 1200px;
            margin: auto;
            padding-top: 20px;
            display: flex;
            flex-flow: wrap;
        }
        /* 정렬버튼 스타일 작성할 곳 */
        .thumbnail {
            width : 300px;
        }
        .thumbnail img {
            padding-top: 20px;
        	width : 150px;
        	height : 150px;
            border-radius: 10px;
        }
        .thumbnail p {
            font-family: 'Single Day', cursive;
            font-size: large;
            font-weight: bold;
        }
        .paging-area {
            width: 1200px;
            margin: auto;
        }
        .paging-area button {
            width: 35px;
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: pink;
        }
        .paging-area button:hover {
            border: 1px solid pink;
            background-color: white;
        }
        .search-area {
            width: 1200px;
            margin: auto;
        }
        .search-area select {
            height: 30px;
            border: 1px solid pink;
            border-radius: 5px;
            background-color: white;
        }
        .search-area [type="text"] {
            width: 300px;
            height: 30px;
            padding-left: 10px;
            border-radius: 5px;
            border: 1px solid pink;
        }
        .search-area button {
            width: 45px;
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: pink;
        }
        .search-area button:hover {
            border: 1px solid pink;
            background-color: white;
        }
    </style>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <div class="outer">
        <div class="reviewbanner" align="center">
            <div class="reviewbanner-text">
                <p>만남후기</p>
            </div>
        </div>
        
        <br>

        <div class="bestreviewlist" align="center">
            <p class="bestreviewlistbanner" align="center">이달의 베스트 후기</p>

            <!-- 이달의 베스트 후기 작성할 곳 -->
            <table id="boardList" align="center">
				<tr>
					<!-- 현재 조회수가 가장 높은 상위 5개의 게시글을
						 조회해서 ajax 로 뿌리기 -->
				</tr>
			</table>

        </div>

        <script>
            $(function() {
                
                topBoardList();
                setInterval(topBoardList, 300000);            
            });
            
            function topBoardList() {                
                $.ajax({
                    url : "topList.bo",
                    type : "get",
                    success : function(result) {
                        let resultStr = "";
                        for(let i in result) {
                            resultStr += "<td style='width:300px;'>"
                            		   +	"<a href='detail.bo?bno=" + result[i].boardNo + "'><img src='https://blog.kakaocdn.net/dn/bgSQVq/btrGuTlFCx0/yi91LDa5v6d9SDPe8NME6k/img.gif' style='width:150px; height:150px'></a>"
                                       +	"<p>" + result[i].boardTitle + "<br>"
                                       +	"💑" + result[i].userNo
                            resultStr += "</p></td>";
                        }
                        
                        $("#boardList tr").html(resultStr);
                        
                    },
                    error : function() {
                        console.log("조회수 top4 게시글 조회용 ajax 통신 실패!");
                    }
                });	
            }
        </script>

        <br>

        <div class="reviewlistbutton" align="right">
            
            <!-- 매칭종료단계에서 후기 작성 여부를 선택하므로 글 작성 버튼 삭제-->

            <!-- 정렬 기능 작성할 곳 -->

        </div>
        
        <br>

        <div class="reviewlist" align="left">

            <c:forEach var="b" items="${ requestScope.list }">
                <div class="thumbnail" align="center">
                    <input type="hidden" class="bno" value="${ b.boardNo }">
                    <img src="https://media.tenor.com/91NRJO-HG0IAAAAi/%EC%9B%80%EC%A7%81%EC%9D%B4%EB%8A%94%EB%A1%9C%EC%95%84%EC%BD%98-%EB%AA%A8%EC%BD%94%EC%BD%94.gif">

                    <!-- 추후에 이미지 관련 기능 추가 예정 -->

                    <P>${ b.boardTitle }<br>💑${ b.userNo }</P>

                    <!-- 추후에 좋아요 수 조회 기능 추가 예정 -->

                </div>
            </c:forEach>

            <script>
                $(function() {
                    
                    $(".thumbnail").click(function() {                        
                        let bno = $(this).children().eq(0).val();
                        location.href = "detail.bo?bno=" + bno;
                    });
                    
                });
            </script>

        </div>

        <br clear="both"> <br>
        
        <div id="pagingArea">
            <ul class="pagination">
            
               <c:choose>
                <c:when test="${ requestScope.pi.currentPage eq 1 }">
                    <li class="page-item disabled">
                        <a class="page-link" href="#">Previous</a>
                    </li>
                   </c:when>
                   
                   <c:otherwise>
                    <li class="page-item">
                        <a class="page-link" href="myList.me?uno=${ sessionScope.loginMember.userNo }&cpage=${ requestScope.pi.currentPage - 1 }">Previous</a>
                    </li>
                   </c:otherwise>
             </c:choose>
                
             <c:forEach var="p" begin="${ requestScope.pi.startPage }" 
                                   end="${ requestScope.pi.endPage }"
                                  step="1">
                <li class="page-item">
                    <a class="page-link" href="myList.me?uno=${ sessionScope.loginMember.userNo }&cpage=${ p }">${ p }</a>
                </li>
             </c:forEach>
                
            <c:choose>
                <c:when test="${ requestScope.pi.currentPage eq requestScope.pi.maxPage }">
                    <li class="page-item disabled">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item">
                        <a class="page-link" href="myList.me?uno=${ sessionScope.loginMember.userNo }&cpage=${ requestScope.pi.currentPage + 1 }">Next</a>
                    </li>
                </c:otherwise>
               </c:choose>
            
            </ul>
               
        </div>

        <br>

        <div class="search-area" align="center">
            <form action="search.bo" method="get">
                <input type="hidden" name="currentPage" value="1">
                <select name="condition">
                    <option value="BOARD_TITLE">제목</option>
                    <option value="BOARD_CONTENT">내용</option>
                </select>
                <input type="text" name="keyword" value="${ requestScope.keyword }">
                <button type="submit">검색</button>
            </form>
        </div>       
        <c:if test="${ !empty requestScope.condition }">
            <script>
                $(function() {
                    $("#search-area option[value=${requestScope.condition}]").attr("selected", true);
                });
            </script>
        </c:if>
    </div>

    <br>

    <jsp:include page="../common/footer.jsp" />

</body>
</html>