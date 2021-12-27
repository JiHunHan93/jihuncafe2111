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
            
              

               

               
              <h3 class="w330">캔커피<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=13" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/캔_아아.jpg" alt="" height="240px">
                            <p class="s_price">
                              
                                최종가 : 9,500원
                            </p>
                            <p class="s_name">캔 아메리카노 5개입</p>
                            <p class="s_subname">산미가 없고 쓴맛이 적은 캔 아메리카노</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=14" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/캔_아아_헤이즐넛.jpg" alt="" height="240px">
                            <p class="s_price">
                               최종가 : 10,500원
                            </p>
                            <p class="s_name">캔 아메리카노 헤이즐넛 5개입</p>
                            <p class="s_subname">캔 아메리카노와 헤이즐넛 시럽의 달달한 조합!</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=15" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/캔_라떼.jpg" alt="" height="240px">
                            <p class="s_price">
                                
                                최종가  : 16,800원
                            </p>
                            <p class="s_name">캔 카페라떼 5개입</p>
                            <p class="s_subname">고소한 맛과 묵직한 바디감의 라떼</p>
                        </a>
                    </li>
                    <li class="last">
                        <a href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=16" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/캔_라떼_카라멜.jpg" alt="" height="240px">
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
                        <a
                            href="${ pageContext.servletContext.contextPath }/cannedcoffee/detail?no=16">
                            <p><img class="MS_prod_img_s" src="../resources/image/mainpage/캔_라떼_카라멜.jpg" alt=""></p>
                            <p style="padding-top: 120px;"> 
                                <span>캔 카라멜라떼 5개입</span>
                                <span>고소한 라떼에 카라멜 시럽의 환상적인 조합!</span>
                                <span>17,800원</span>
                                <span>10<i>%</i></span>
                                <span>16,020<i>원</i></span>
                                <span>지금바로 구매하기!</span>
                            </p>
                        </a>
                    </div>
                </div>
           	
           	
           	
           	  
            </div>
           	
           
            </div>

	
			

         

       

            <div class="maintab_menu">
                <h2>BEST <strong>MD PICK!</strong></h2>
                <div class="maintab_menu_tab">
                    <input type="radio" name="tab" id="mttab1" checked=""><label for="mttab1" title="샐러드"><i
                            class="maintab_menu_tab1"></i>샐러드</label>
                    <input type="radio" name="tab" id="mttab2"><label for="mttab2" title="샐러드 정기배송"><i
                            class="maintab_menu_tab2"></i>샐러드 정기배송</label>
                    <input type="radio" name="tab" id="mttab3"><label for="mttab3" title="식단관리 도시락"><i
                            class="maintab_menu_tab3"></i>식단관리 도시락</label>
                    <input type="radio" name="tab" id="mttab4"><label for="mttab4" title="간편 간식"><i
                            class="maintab_menu_tab4"></i>간편 간식</label>
                    <input type="radio" name="tab" id="mttab5"><label for="mttab5" title="건강즙"><i
                            class="maintab_menu_tab5"></i>건강즙</label>
                    <input type="radio" name="tab" id="mttab6"><label for="mttab6" title="곡물 가루"><i
                            class="maintab_menu_tab6"></i>곡물 가루</label>
                    <input type="radio" name="tab" id="mttab7"><label for="mttab7" title="건강보조식품"><i
                            class="maintab_menu_tab7"></i>건강보조식품</label>

                    <div id="tabcont1">
                        <ul class="tab_product">
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121385&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=3&amp;GfDT=a2x3UQ%3D%3D"
                                    title="[12% 할인] 샐러드 8종 맛보기">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000233.jpg?1609808926"
                                        alt="[12% 할인] 샐러드 8종 맛보기">
                                    <p class="s_price">
                                        <span class="s_price_consume">55,000원</span><span
                                            class="s_discount_percent">(12%)</span> 48,600원
                                    </p>
                                    <p class="s_name">[12% 할인] 샐러드 8종 맛보기</p>
                                    <p class="s_subname">토핑이 듬뿍 가미 된 여덟가지 샐러드의 품격을 느껴보세요!(그린샐러드제외)</p>
                                    <p class="s_review_count">리뷰<strong>♥390</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121458&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=3&amp;GfDT=bm9%2BW10%3D"
                                    title="[정기배송] 샐러드 4주 배송 [1일1식]">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000163.jpg?1609808993"
                                        alt="[정기배송] 샐러드 4주 배송 [1일1식]">
                                    <p class="s_price">
                                        <span class="s_price_consume">142,000원</span><span
                                            class="s_discount_percent">(23%)</span> 109,000원
                                    </p>
                                    <p class="s_name">[정기배송] 샐러드 4주 배송 [1일1식]</p>
                                    <p class="s_subname">한 달 동안 매주 1주분(1일1식)의 샐러드를 정기적으로 배송해드리는 상품! 26% 할인 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥785</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121384&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=3&amp;GfDT=bmx%2FW14%3D"
                                    title="샐러드 골라담기">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000063.jpg?1589955532"
                                        alt="샐러드 골라담기">
                                    <p class="s_price">
                                        <span class="s_price_consume">4,000원</span><span
                                            class="s_discount_percent">(33%)</span> 2,700원
                                    </p>
                                    <p class="s_name">샐러드 골라담기</p>
                                    <p class="s_subname">아홉가지의 다양한 샐러드를 내 입맛에 원하는대로 쏙쏙~ 골라서 구매하세요!</p>
                                    <p class="s_review_count">리뷰<strong>♥883</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1120911&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=3&amp;GfDT=bWx3Ug%3D%3D"
                                    title="그린 샐러드(드레싱랜덤)">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000153.jpg?1589522659"
                                        alt="그린 샐러드(드레싱랜덤)">
                                    <p class="s_price">
                                        <span class="s_price_consume">4,000원</span><span
                                            class="s_discount_percent">(33%)</span> 2,700원
                                    </p>
                                    <p class="s_name">그린 샐러드(드레싱랜덤)</p>
                                    <p class="s_subname">신선함이 담겨있는 다양하고 아삭한 채소들! 가장 베이직하면서도 완벽한 맛! [드레싱 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥131</strong></p>
                                </a>
                            </li>
                        </ul>
                        <ul class="tab_product">
                        </ul>
                    </div>
                    <div id="tabcont2">
                        <ul class="tab_product">
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121458&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=2&amp;GfDT=bm50W1w%3D"
                                    title="[정기배송] 샐러드 4주 배송 [1일1식]">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000163.jpg?1609808993"
                                        alt="[정기배송] 샐러드 4주 배송 [1일1식]">
                                    <p class="s_price">
                                        <span class="s_price_consume">142,000원</span><span
                                            class="s_discount_percent">(23%)</span> 109,000원
                                    </p>
                                    <p class="s_name">[정기배송] 샐러드 4주 배송 [1일1식]</p>
                                    <p class="s_subname">한 달 동안 매주 1주분(1일1식)의 샐러드를 정기적으로 배송해드리는 상품! 26% 할인 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥785</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121468&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=2&amp;GfDT=bWp3UA%3D%3D"
                                    title="[정기배송] 샐러드  4주 배송 [1일2식]">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000173.jpg?1609809011"
                                        alt="[정기배송] 샐러드  4주 배송 [1일2식]">
                                    <p class="s_price">
                                        <span class="s_price_consume">272,000원</span><span
                                            class="s_discount_percent">(24%)</span> 206,000원
                                    </p>
                                    <p class="s_name">[정기배송] 샐러드 4주 배송 [1일2식]</p>
                                    <p class="s_subname">힌 달 동안 매주 1주분(1일2식)의 샐러드를 정기적으로 배송해드리는 상품! 27% 할인 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥219</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1121386&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=2&amp;GfDT=aGl3Uw%3D%3D"
                                    title="[정기배송] 샐러드 4주 배송 [8종]">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000043.jpg?1609809139"
                                        alt="[정기배송] 샐러드 4주 배송 [8종]">
                                    <p class="s_price">
                                        <span class="s_price_consume">220,000원</span><span
                                            class="s_discount_percent">(24%)</span> 167,200원
                                    </p>
                                    <p class="s_name">[정기배송] 샐러드 4주 배송 [8종]</p>
                                    <p class="s_subname">한 달 동안 매주 1주분(8종)의 샐러드를 정기적으로 배송해드리는 상품! 27% 할인 된 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥171</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1130298&amp;xcode=007&amp;mcode=000&amp;scode=&amp;special=2&amp;GfDT=bm14W18%3D"
                                    title="[정기배송]그린 샐러드">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0070000000213.jpg?1595993945"
                                        alt="[정기배송]그린 샐러드">
                                    <p class="s_price">
                                        <span class="s_price_consume">92,000원</span><span
                                            class="s_discount_percent">(28%)</span> 66,000원
                                    </p>
                                    <p class="s_name">[정기배송]그린 샐러드</p>
                                    <p class="s_subname">신선함이 가득한 다양한 야채를 정기배송으로 느낄 수있는 베이직 샐러드! (드레싱랜 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥155</strong></p>
                                </a>
                            </li>
                        </ul>
                        <ul class="tab_product">
                        </ul>
                    </div>
                    <div id="tabcont3">
                        <ul class="tab_product">
                            <li>
                                <a href="/shop/shopdetail.html?branduid=173&amp;xcode=002&amp;mcode=000&amp;scode=&amp;special=1&amp;GfDT=Z293UQ%3D%3D"
                                    title="하루 약 900Kcal 프로그램">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0020000000123.jpg?1587964793"
                                        alt="하루 약 900Kcal 프로그램">
                                    <p class="s_price">
                                        118,000원
                                    </p>
                                    <p class="s_name">하루 약 900Kcal 프로그램</p>
                                    <p class="s_subname">일주일에 다섯 번 집 앞으로 새벽 배송! 슬림쿡 최다 판매 식단조절형 프로그램[1주분 ..</p>
                                    <p class="s_review_count">리뷰<strong>♥461</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=176&amp;xcode=002&amp;mcode=000&amp;scode=&amp;special=1&amp;GfDT=aGl3UA%3D%3D"
                                    title="간헐적 단식 A(라이스+샌드위치) 프로그램">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0020000000113.jpg?1587964830"
                                        alt="간헐적 단식 A(라이스+샌드위치) 프로그램">
                                    <p class="s_price">
                                        96,000원
                                    </p>
                                    <p class="s_name">간헐적 단식 A(라이스+샌드위치) 프로그램</p>
                                    <p class="s_subname">SBS 스페셜 방송에 방영 된 화제의 식단! 식단조절형 프로그램[1주분(총 12식)]</p>
                                    <p class="s_review_count">리뷰<strong>♥303</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=158&amp;xcode=002&amp;mcode=000&amp;scode=&amp;special=1&amp;GfDT=bmt9W14%3D"
                                    title="간헐적 단식 B(라이스+샐러드) 프로그램">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0020000000133.jpg?1587964684"
                                        alt="간헐적 단식 B(라이스+샐러드) 프로그램">
                                    <p class="s_price">
                                        96,000원
                                    </p>
                                    <p class="s_name">간헐적 단식 B(라이스+샐러드) 프로그램</p>
                                    <p class="s_subname">SBS 스페셜 방송에 방영 된 화제의 식단! 식단조절형 프로그램[1주분(총 12식)]</p>
                                    <p class="s_review_count">리뷰<strong>♥146</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=159&amp;xcode=002&amp;mcode=000&amp;scode=&amp;special=1&amp;GfDT=aWd3Ug%3D%3D"
                                    title="덴마크 프로그램">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0020000000353.jpg?1587964614"
                                        alt="덴마크 프로그램">
                                    <p class="s_price">
                                        110,000원
                                    </p>
                                    <p class="s_name">덴마크 프로그램</p>
                                    <p class="s_subname">훈제란,채소,토스트 자몽으로 구성된 단기관리 식단! 덴마크 프로그램[1주분(총21식)]</p>
                                    <p class="s_review_count">리뷰<strong>♥339</strong></p>
                                </a>
                            </li>
                        </ul>
                        <ul class="tab_product">
                        </ul>
                    </div>
                    <div id="tabcont4">
                        <ul class="tab_product">
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1134070&amp;xcode=004&amp;mcode=000&amp;scode=&amp;special=5&amp;GfDT=ZmZ3UQ%3D%3D"
                                    title="심쿵닭가슴살 99g 10팩">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0040000000523.jpg?1598601102"
                                        alt="심쿵닭가슴살 99g 10팩">
                                    <p class="s_price">
                                        <span class="s_price_consume">26,000원</span><span
                                            class="s_discount_percent">(23%)</span> 20,100원
                                    </p>
                                    <p class="s_name">심쿵닭가슴살 99g 10팩</p>
                                    <p class="s_subname">촉촉함과 부드러움 쫄깃함의 끝판왕! 슬림쿡에서 만나보세요!</p>
                                    <p class="s_review_count">리뷰<strong>♥46</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=170&amp;xcode=004&amp;mcode=000&amp;scode=&amp;special=5&amp;GfDT=aW13UA%3D%3D"
                                    title="수제 샌드위치">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0040000000023.jpg?1587966698"
                                        alt="수제 샌드위치">
                                    <p class="s_price">
                                        24,000원
                                    </p>
                                    <p class="s_name">수제 샌드위치</p>
                                    <p class="s_subname">간단하게! 깔끔하게! 맛있게! 수제 샌드위치 4세트~ 출출할 때 간편하게 드셔보세요!</p>
                                    <p class="s_review_count">리뷰<strong>♥55</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1133993&amp;xcode=004&amp;mcode=000&amp;scode=&amp;special=5&amp;GfDT=Zm93Uw%3D%3D"
                                    title="유기농 ABC 주스 100ml">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0040000000513.jpg?1595839835"
                                        alt="유기농 ABC 주스 100ml">
                                    <p class="s_price">
                                        <span class="s_price_consume">19,800원</span><span
                                            class="s_discount_percent">(16%)</span> 16,700원
                                    </p>
                                    <p class="s_name">메뉴명</p>
                                    <p class="s_subname">대표 컬러푸드! 사과, 비트, 당근의 황금비율을 유기농 주스로 만나보세요!</p>
                                    <p class="s_review_count">리뷰<strong>♥41</strong></p>
                                </a>
                            </li>
                            <li>
                                <a href="/shop/shopdetail.html?branduid=1126886&amp;xcode=004&amp;mcode=000&amp;scode=&amp;special=5&amp;GfDT=bm56W18%3D"
                                    title="매일미숫가루선식">
                                    <img class="MS_prod_img_s" src="/shopimages/slimcook/0040000000353.jpg?1587968194"
                                        alt="매일미숫가루선식">
                                    <p class="s_price">
                                        9,800원
                                    </p>
                                    <p class="s_name">메뉴명</p>
                                    <p class="s_subname">가벼운 아침 미숫가루 한 잔으로 든든하고, 간편하게 곡물의 영양을 섭취해보세요.</p>
                                    <p class="s_review_count">리뷰<strong>♥22</strong></p>
                                </a>
                            </li>
                        </ul>
                        <ul class="tab_product">
                        </ul>
                    </div>
                    <div id="tabcont5">
                        5
                    </div>
                    <div id="tabcont6">
                        6
                    </div>
                    <div id="tabcont7">
                        7
                    </div>
                </div>
            </div>



            
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
</body>

</html>