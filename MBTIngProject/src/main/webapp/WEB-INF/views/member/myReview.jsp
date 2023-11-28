<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>

  
<style>
    

    .profile-menu-title, .ptlist-wrap{
        width: 800px;
        margin: auto;
        margin-top: 50px;
        margin-bottom: 50px;
    }
    
    /*
    ////////////////////
    내 후기 리스트 관련 스타일
    ////////////////////
    */

    ul,li {
        margin-left: 0px;
        -webkit-padding-start: 0px;
    }
    
    .ptlist {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    list-style-type: none;
    }

    .ptlist > li {
        width: 49%;
        background-color: #fff;
        margin-bottom: 20px;
    }

    .ptlist > li :hover {
        background-color: pink
    }

    .ptlist > li > div {
        display: flex;
        align-items: center;
        padding: 10px;
        padding-top: 25px;
        height: 100px;
        border-radius: 5px;
        background-color: #fff;
        box-shadow: 0 1px 4px 2px rgb(0 0 0 / 10%);
    }
    .ptlist > li > div > div {
        margin-left: 10px;
        flex-grow: 1;
    }

    .list_thumbimg {
    display: block;
    width: 72px;
    height: 72px;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    -ms-border-radius: 5px;
    -o-border-radius: 5px;
	overflow: hidden;
    }
    .list_thumbimg img {
        width: 100%;
        height: 100%;
    }


    /*
    ///////////
    페이징바 스타일
    ///////////
    */

    .paging-area {
        width: 800px;
        margin: auto;
    }
    .paging-area button {
        width: 35px;
    }
    .paging-area button[disabled]:hover {
        border: none;
        background-color: pink;
    }

    .paging-area>button {
        height: 30px;
        border: none;
        border-radius: 5px;
        background-color: pink;
    }
    .paging-area>button:hover {
        border: 1px solid pink;
        background-color: white;
    }

</style>
</head>
<body>

	<div>
		<jsp:include page="./myPage.jsp"></jsp:include>
	</div>

    <script>
	    let i = document.getElementById("myReview");

        i.style.cssText = "border-top : 5px solid pink"
	    
    </script>

    <div class="profile-menu-title">
        <h5>내 후기</h5>
    </div>


    <div class="ptlist-wrap">
        <ul class="ptlist">
            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>
    
            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>
    
            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>

            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>

            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>

            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>

            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>

            <li>                
                <div>
                    <p class="list_thumbimg"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzWQKAwc2PQhvbHzBljfn1XeZ6RoVkHwVtpN7qziz3410qthreP08tKt0dVG1itRo8Yc&usqp=CAU" alt="" ></p>    
                    <div>
                        <p class="pt_title">커플후기
                        </p>
                        <p class="pt_info">
                            g*********	
                        </p>                                                     
                    </div>
                    <p class="b_info"><span><b>138</b>명 읽음</span></p>
                </div>                
            </li>
    
        </ul>

        <div class="paging-area" align="center">
            <button type="button">&lt;</button>
            <button type="button">11</button>
            <button type="button" disabled>12</button>
            <button type="button">13</button>
            <button type="button">14</button>
            <button type="button">15</button>
            <button type="button">16</button>
            <button type="button">17</button>
            <button type="button">18</button>
            <button type="button">19</button>
            <button type="button">20</button>
            <button type="button">&gt;</button>
        </div>

    </div>
    

    



</body>


</html>