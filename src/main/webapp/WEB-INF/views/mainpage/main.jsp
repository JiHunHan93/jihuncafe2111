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

                            <img src="./resources/image/mainpage/에티오피아.jpg" class="MS_prod_img_s" alt=""  height="224.5px">
                            <p class="s_price">
                                최종가 : 49,000원
                            </p>
                            <p class="s_name">에티오피아 예가체프</p>
                            <p class="s_subname">(아프리카) 짙은 꽃향기로 유명한 커피</p>
                        </a>
                    </li>
                    <li class="onnn">

                       <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=2" title="">

                            <img class="MS_prod_img_s" src="./resources/image/mainpage/케냐.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">케냐 더블에이(AA)</p>
                            <p class="s_subname">(아프리카) 고지대에서 재배되는 산미가 강한 커피</p>
                        </a>
                    </li>
                    <li class="onnn">
                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=3" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/콜롬비아.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">콜롬비아 수프레모</p>
                            <p class="s_subname">(라틴아메리카) 고산 지대에서 재배되는 단맛이 강한 커피</p>
                        </a>
                    </li>
                    <li class="last onnn">
                        <a href="${ pageContext.servletContext.contextPath }/greenbeans/detail?no=4" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/자메이카.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 49,000원
                            </p>
                            <p class="s_name">자메이카 블루마운틴</p>
                            <p class="s_subname">(라틴아메리카) 엘리자베스 여왕이 즐겨마셔 유명한 쓴맛이 적은 커피</p>
                        </a>
                    </li>
                </ul>


                <h3 class="w210">콜드브루<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=9" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/콜드브루1.jpg" alt="" height="224.5px">
                            <p class="s_price">
                             
                                최종가 : 15,000원
                            </p>
                            <p class="s_name">콜드브루 원액 500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 1개입</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=10" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/콜드브루2.jpg" alt="" height="224.5px">
                            <p class="s_price">
                               
                                최종가 : 30,000원
                            </p>
                            <p class="s_name">콜드브루 원액 1000ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 2개입</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=11" title="">
                            <img class="MS_prod_img_s"  src="./resources/image/mainpage/콜드브루3.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                
                                최종가 : 45,000원
                            </p>
                            <p class="s_name">콜드브루 원액 1500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 3개입</p>
                        </a>
                    </li>
                    <li class="last">
                       <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=12" title="">
                            <img class="MS_prod_img_s"  src="./resources/image/mainpage/콜드브루4.jpg" alt="" height="224.5px">
                            <p class="s_price">
                               
                                최종가 : 15,000원
                            </p>
                            <p class="s_name">콜드브루 원액 500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 1개입</p>
                        </a>
                    </li>
                </ul>


              <h3 class="w330">캔커피<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=13" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/캔_아아.jpg" alt="" height="240px">
                            <p class="s_price">
                              
                                최종가 : 9,500원
                            </p>
                            <p class="s_name">캔 아메리카노 5개입</p>
                            <p class="s_subname">산미가 없고 쓴맛이 적은 캔 아메리카노</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=14" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/캔_아아_헤이즐넛.jpg" alt="" height="240px">
                            <p class="s_price">
                               최종가 : 10,500원
                            </p>
                            <p class="s_name">캔 아메리카노 헤이즐넛 5개입</p>
                            <p class="s_subname">캔 아메리카노와 헤이즐넛 시럽의 달달한 조합!</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=15" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/캔_라떼.jpg" alt="" height="240px">
                            <p class="s_price">
                                
                                최종가  : 16,800원
                            </p>
                            <p class="s_name">캔 카페라떼 5개입</p>
                            <p class="s_subname">고소한 맛과 묵직한 바디감의 라떼</p>
                        </a>
                    </li>
                    <li class="last">
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=16" title="">
                            <img class="MS_prod_img_s" src="./resources/image/mainpage/캔_라떼_카라멜.jpg" alt="" height="240px">
                            <p class="s_price">
                                최종가 : 17,800원
                            </p>
                            <p class="s_name">캔 카라멜라떼 5개입</p>
                            <p class="s_subname">고소한 라떼에 카라멜 시럽의 환상적인 조합!</p>
                        </a>
                    </li>
                </ul>

		
                <div class="clobox">
                    <h3>지금 가장 <span>🔥</span><strong>HOT</strong><span>🔥</span> 해요!</h3>
                    <div class="item_best1">
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=12" title="">
                            <p><img src="./resources/image/mainpage/콜드브루5.jpg" style="height:500px;"></p>
                            <p style="padding-top: 120px;">
                                <span>🍝콜드브루 원액 500ml</span>
                                <span>💝고소하고 향이 좋은 콜드브루 원액! 💝 </span>
                                <span></span>
                                <span><i></i></span>
                                <span>15,000<i>원</i></span>
                                <span>지금바로 구매하기!</span>
                            </p>
                        </a>
                    </div>
                </div>


            </div>


            <div class="maintab_menu">
                <h2>BEST <strong>MD PICK!</strong></h2>
                
            </div>



            <div class="sitebestreview_area">
               
        </div>
        
       <jsp:include page="../common/footer.jsp"/>
</body>

</html>