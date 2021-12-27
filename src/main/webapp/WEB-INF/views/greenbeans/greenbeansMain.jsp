<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Morning Glory</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/MorningGloryMain.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/main-common.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/footer.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">

</head>
<body>

		<jsp:include page="../common/header.jsp"/>
		
        <div id="contentWrapper">

            <div class="new_menu">
            
              

               

               
                <h3 class="w360 onnn">생두<strong> BEST</strong></h3>
                <ul>
                    <li class="onnn">

                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=1" title="">

                            <img src="../resources/image/mainpage/에티오피아.jpg" class="MS_prod_img_s" alt=""  height="224.5px">
                            <p class="s_price">
                                최종가 : 49,000원
                            </p>
                            <p class="s_name">에티오피아 예가체프</p>
                            <p class="s_subname">(아프리카) 짙은 꽃향기로 유명한 커피</p>
                        </a>
                    </li>
                    <li class="onnn">

                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=2" title="">

                            <img class="MS_prod_img_s" src="../resources/image/mainpage/케냐.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">케냐 더블에이(AA)</p>
                            <p class="s_subname">(아프리카) 고지대에서 재배되는 산미가 강한 커피</p>
                        </a>
                    </li>
                    <li class="onnn">
                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=3" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/콜롬비아.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">콜롬비아 수프레모</p>
                            <p class="s_subname">(라틴아메리카) 고산 지대에서 재배되는 단맛이 강한 커피</p>
                        </a>
                    </li>
                    <li class="last onnn">
                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=4" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/자메이카.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">자메이카 블루마운틴</p>
                            <p class="s_subname">(라틴아메리카) 엘리자베스 여왕이 즐겨마셔 유명한 쓴맛이 적은 커피</p>
                        </a>
                    </li>
                </ul>
           	
           	 <div class="clobox">
                    <h3>지금 가장 <span>🔥</span><strong>HOT</strong><span>🔥</span> 해요!</h3>
                    <div class="item_best1">
                         <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=2" title="">
                            <p><img src="../resources/image/mainpage/케냐.jpg" style="height:500px;"></p>
                            <p style="padding-top: 120px;">
                                <span>🍝케냐 더블에이(AA)</span>
                                <span>💝(아프리카) 고지대에서 재배되는 산미가 강한 커피! 💝 </span>
                                <span></span>
                                <span><i></i></span>
                                <span>49,000<i>원</i></span>
                                <span>지금바로 구매하기!</span>
                            </p>
                        </a>
                    </div>
                </div>
           	
           	
           	
           	  



            
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
</body>

</html>