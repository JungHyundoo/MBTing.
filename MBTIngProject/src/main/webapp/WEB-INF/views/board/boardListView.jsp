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
            margin-top: 10px;
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
        .reviewlistbutton button {
            width: 65px;
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: pink;
        }
        .reviewlistbutton button:hover {
            border: 1px solid pink;
            background-color: white;
        }
        .reviewlist {
            width: 1200px;
            margin: auto;
            padding-top: 20px;
            display: flex;
            flex-flow: wrap;
        }
        .thumbnail {
            width : 300px;
        }
        .thumbnail img {
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
        .paging-area button[disabled]:hover {
            border: none;
            background-color: pink;
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
            <p class="bestreviewlistbanner" align="center">베스트 후기</p>
            <table id="boardList" align="center">
				<tr>
				
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
                            		   +	"<a href='detail.bo?bno=" + result[i].boardNo + "'><img src='${pageContext.request.contextPath}/" + result[i].changeName + "' style='width:150px; height:150px; border-radius: 10px;'></a>"
                                       +	"<p>" + result[i].boardTitle + "<br>"
                                       +	"💑" + result[i].userName + "<br>"
                                       +	"❤️" + result[i].thumbCount
                            resultStr += "</p></td>";
                        }                
                        $("#boardList tr").html(resultStr);                        
                    }
                });	
            }
        </script>

        <br>

        <div class="reviewlistbutton" align="right">
	        <c:if test="${ not empty sessionScope.loginMember }" >
				<button onclick="location.href='enrollForm.bo';">글작성</button>
			</c:if>
        </div>
        <div class="reviewlist" align="left">
            <c:forEach var="b" items="${ requestScope.list }">
                <div class="thumbnail" align="center">
                    <a href="detail.bo?bno=${ b.boardNo }"><img src="${pageContext.request.contextPath}/${ b.changeName }"></a>
                    <P>${ b.boardTitle }<br>💑${ b.userName }<br>❤️${ b.thumbCount }</P>
                </div>
            </c:forEach>
        </div>

        <br clear="both"> <br>
        
        <div class="paging-area" align="center">
            <c:if test="${ requestScope.pi.currentPage ne 1 }">                
                <c:choose>
                    <c:when test="${ empty requestScope.condition }">
                        <button onclick="location.href='list.bo?currentPage=${ requestScope.pi.currentPage - 1 }';">&lt;</button>   
                    </c:when>
                    <c:otherwise>
                        <button onclick="location.href='search.bo?currentPage=${ requestScope.pi.currentPage - 1 }&condition=${requestScope.condition}&keyword=${requestScope.keyword}';">&lt;</button>   
                    </c:otherwise>
                </c:choose>                
            </c:if>
            <c:forEach var="p" begin="${ requestScope.pi.startPage }" end="${ requestScope.pi.endPage }" step="1">                 
                <c:choose>
                    <c:when test="${ empty requestScope.condition }">
                        <button onclick="location.href='list.bo?currentPage=${ p }';" class="pageB-${ p }">${ p }</button>
                    </c:when>
                    <c:otherwise>
                        <button onclick="location.href='search.bo?currentPage=${ p }&condition=${ requestScope.condition }&keyword=${ requestScope.keyword }';" class="pageB-${ p }">${ p }</button>
                    </c:otherwise>
                </c:choose>                
            </c:forEach>            
            <c:if test="${ requestScope.pi.currentPage ne requestScope.pi.maxPage }">                
                <c:choose>
                    <c:when test="${ empty requestScope.condition }">
                        <button onclick="location.href='list.bo?currentPage=${ requestScope.pi.currentPage + 1 }';">&gt;</button> 
                    </c:when>
                    <c:otherwise>
                        <button onclick="location.href='search.bo?currentPage=${ requestScope.pi.currentPage + 1 }&condition=${ requestScope.condition }&keyword=${ requestScope.keyword }';">&gt;</button> 
                    </c:otherwise>
                </c:choose>               
            </c:if>
        </div>

        <script>
            $(function(){
                $(".pageB-${ requestScope.pi.currentPage }").attr("disabled",true);
            })
            
        </script>

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
                    $(".search-area option[value=${requestScope.condition}]").attr("selected", true);
                });
            </script>
        </c:if>
    </div>

    <br>

    <jsp:include page="../common/footer.jsp" />

</body>
</html>