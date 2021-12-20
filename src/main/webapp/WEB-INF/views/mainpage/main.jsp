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
<link rel="stylesheet" type="text/css" href="/mg/resources/css/MorningGloryMain.css">
<link rel="stylesheet" type="text/css" href="/mg/resources/css/main-common.css">
<link rel="stylesheet" type="text/css" href="/mg/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/mg/resources/css/footer.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">

</head>
<body>

		<%-- <jsp:include page="../common/header.jsp"/> --%>
		
        <div id="contentWrapper">

            <div class="new_menu">
            
                <h3 class="w360 onnn">다이어트 도시락<strong> BEST</strong></h3>
                <ul>
                    <li class="onnn">

                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=7" title="">

                            <img src="./resources/image/dosirak/크래미 베이컨 샐러드.PNG" class="MS_prod_img_s" alt=""  height="224.5px">
                            <p class="s_price">
                                최종가 : 5,200원
                            </p>
                            <p class="s_name">크래미 베이컨 샐러드</p>
                            <p class="s_subname">다이어트를 위한 도시락!</p>
                        </a>
                    </li>
                    <li class="onnn">

                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=8" title="">

                            <img class="MS_prod_img_s" src="./resources/image/dosirak/불고기 샐러드.PNG" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 5,200원
                            </p>
                            <p class="s_name">불고기 샐러드</p>
                            <p class="s_subname">맛과 건강을 가득히 !</p>
                        </a>
                    </li>
                    <li class="onnn">
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=9" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/닭가슴살 단호박 샐러드.PNG" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 5,200원
                            </p>
                            <p class="s_name">닭가슴살 단호박 샐러드</p>
                            <p class="s_subname">이거 먹으면 근육랑이 증가한다!!</p>
                        </a>
                    </li>
                    <li class="last onnn">
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/훈제오리 고구마 샐러드.PNG" alt="" height="224.5px">
                            <p class="s_price">
                                가격 : 5,200원
                            </p>
                            <p class="s_name">훈제오리 고구마 샐러드</p>
                            <p class="s_subname">틸라피아 도시락은 사랑입니다!</p>
                        </a>
                    </li>
                </ul>


                <h3 class="w210">유지어터 도시락<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/닭가슴살도시락.jpg" alt="">
                            <p class="s_price">
                             
                                최종가 : 8,500원
                            </p>
                            <p class="s_name">닭가슴살 도시락</p>
                            <p class="s_subname">다이어트 유지</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=13" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/부채살도시락.jpg" alt="" height="224.5px">
                            <p class="s_price">
                               
                                최종가 : 8,500원
                            </p>
                            <p class="s_name">부채살 도시락</p>
                            <p class="s_subname">부채살로 다이어트 유지해보자!</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=28" title="">
                            <img class="MS_prod_img_s"  src="./resources/image/dosirak/틸라피아 도시락.jpg" alt="">
                            <p class="s_price">
                                
                                최종가 : 8,500원
                            </p>
                            <p class="s_name">틸라피아 도시락</p>
                            <p class="s_subname">맛과 건강을 단번에</p>
                        </a>
                    </li>
                    <li class="last">
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <img class="MS_prod_img_s"  src="./resources/image/dosirak/홍두깨살 도시락.jpg" alt="">
                            <p class="s_price">
                               
                                최종가 : 8,500원
                            </p>
                            <p class="s_name">홍두깨살 도시락</p>
                            <p class="s_subname">맛과 건강을 한번에</p>
                        </a>
                    </li>
                </ul>


              <h3 class="w330">벌크업 도시락<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/닭가슴살 200g.PNG" alt="">
                            <p class="s_price">
                              
                                최종가 : 8,500원
                            </p>
                            <p class="s_name">닭가슴살 200g</p>
                            <p class="s_subname">근육을 성장시키자!</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=13" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/부채살200g.PNG" alt="" height="280px">
                            <p class="s_price">
                               최종가 : 8,500원
                            </p>
                            <p class="s_name">부채살 200g</p>
                            <p class="s_subname">근육을 조금 더 성장시키자!</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/홍두깨살 200g.jpg" alt="" height="280px">
                            <p class="s_price">
                                
                                최종가  : 8,500원
                            </p>
                            <p class="s_name">홍두깨살 200g</p>
                            <p class="s_subname">근육아 나에게 오라~!</p>
                        </a>
                    </li>
                    <li class="last">
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=40" title="">
                            <img class="MS_prod_img_s" src="./resources/image/dosirak/스페셜도시락.PNG" alt="" height="280px">
                            <p class="s_price">
                                최종가 : 10,900원
                            </p>
                            <p class="s_name">스페셜 도시락</p>
                            <p class="s_subname">근육을 스페셜하게~!</p>
                        </a>
                    </li>
                </ul>

		
                <div class="clobox">
                    <h3>지금 가장 <span>🔥</span><strong>HOT</strong><span>🔥</span> 해요!</h3>
                    <div class="item_best1">
                        <a
                            href="${ pageContext.servletContext.contextPath }/user/select?no=13">
                            <p><img src="./resources/image/dosirak/부채살200g.PNG" style="height:500px;"></p>
                            <p style="padding-top: 120px;">
                                <span>🍝메뉴명 : 부채살 200g</span>
                                <span>💝근육을 조금더 성장시켜볼까!! 💝 </span>
                                <span></span>
                                <span><i></i></span>
                                <span>8,500<i>원</i></span>
                                <span>지금바로 구매하기!</span>
                            </p>
                        </a>
                    </div>
                </div>


            </div>



            <div class="bestthree_area">
                <div class="box">
                    <p>ONLY ONE BRAND <strong>오직 모닝글로리에서만!</strong></p>
                    <ul>
                        <li>
                            <a href="${ pageContext.servletContext.contextPath }/user/select?no=14" title="">
                                <img src="./resources/image/dosirak/정기.PNG" alt="">
                                   <br><br><br>
                                <dl>
                                
                                    <dt>저탄수 다이어트 식단!</dt>
                                    
                                </dl>
                            </a>
                        </li>
                        <li>
                            <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                                <img src="./resources/image/dosirak/유지어터.PNG" alt="">
                                   <br><br><br>
                                <dl>
                                    <dt>유지어터 식단!</dt>
                                    
                                </dl>
                            </a>
                        </li>
                        <li>
                            <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                                <img src="./resources/image/dosirak/유지어터1.PNG" alt="">
                                <br><br><br>
                                <dl>
                                    <dt>벌크업 식단!</dt>
                                    
                                </dl>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="recmd_menu">
                <h2>당신을 위한 <strong> 도시락 정기 배송!</strong></h2>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/user/select?no=14"
                            title="[정기배송] 샐러드 4주 배송 [1일1식]">
                            <p class="s_addtext">#[1주] 벌크업&nbsp;</p>
                            <div class="overli">
                                <img class="MS_prod_img_s" src="" alt="">
                                <p class="s_price">
                                   
                                
                                    최종가 : 44,900원
                                </p>
                                <p class="s_name">[정기배송] 1주 벌크업</p>
                                <p class="s_subname">1주 단백질을 보다 쉽게 관리하세요</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <p class="s_addtext">#[1주] 유지어터&nbsp;</p>
                            <div class="overli">
                                <img class="MS_prod_img_s" src="" alt="">
                                <p class="s_price">
                                   
                                    최종가  : 42,500원                 
                                </p>
                                <p class="s_name">[정기배송] 1주 유지어터</p>
                                <p class="s_subname">편안하게 유지하자</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <p class="s_addtext"> #[1주] 다이어트&nbsp;</p>
                            <div class="overli">
                                <img class="MS_prod_img_s" src="" alt="">
                                <p class="s_price">
                                 
                                    최종가 : 42,500원
                                </p>
                                <p class="s_name">[정기배송] 1주 다이어트</p>
                                <p class="s_subname">쉽게 빼자</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/menu/detail" title="">
                            <p class="s_addtext">#다양한 메뉴&nbsp;</p>
                            <div class="overli">
                                <img class="MS_prod_img_s" src="" alt="">
                                <p class="s_price">
                                 
                                 다양한메뉴에 모닝글로리!
                                    
                                </p>
                                <p class="s_name">[유형별 메뉴 및 정기배송까지]</p>
                                <p class="s_subname">다양한 메뉴와 폭넓은 선택</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>


            <div class="maintab_menu">
                <h2>BEST <strong>MD PICK!</strong></h2>
                
            </div>



            <div class="sitebestreview_area">
               
        </div>
        
       <%--  <jsp:include page="../common/footer.jsp"/> --%>
</body>

</html>