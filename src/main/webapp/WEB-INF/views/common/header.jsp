<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/mg/resources/css/mypage/mypage.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/cafe/resources/js/event.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
    <div id="hdWrap">
        <div id="hdTop">
            <ul class="hutil">
                <li><a href="" title="즐겨찾기"><i class="fav">&nbsp;</i>즐겨찾기</a></li>
                <li><a href="" title="1600-0000"><i class="tel">&nbsp;</i>1600-3413</a></li>

              <%--   <li class="fr"><a href="${ pageContext.servletContext.contextPath }" title="고객센터" id="customer">고객센터</a></li> --%>
                <li class="fr"><a href=" ${ pageContext.servletContext.contextPath }/customer/list" title="고객센터" id="customer">고객센터</a></li>
                <li class="fr"><a href="/shop/confirm_login.html?type=myorder" title="주문조회">주문조회</a></li>

                <li class="fr"><a href="${ pageContext.servletContext.contextPath }" title="장바구니">장바구니 <span><span id="user_basket_quantity"
                                class="user_basket_quantity">0</span></span></a></li>
                <li class="fr"><a href="${ pageContext.servletContext.contextPath }/mypage/main" title="마이페이지" id="mypage">마이페이지</a></li>
                <c:if test="${ empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal }"> 
                <li class="fr"><input type="button" value="로그인/회원가입" id="mainLogin" class="login-btn btn-yg" style="font-size: 12px;"></input></li>
            	</c:if>
            	<c:if test="${ ! empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal }"> 
                <li class="fr"><input type="button" value="로그아웃" id="logout" class="login-btn btn-yg" style="font-size: 12px;"></input></li>
            	</c:if>
            	<c:if test="${ sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.authorities[0] eq 'ROLE_ADMIN' }"> 
                <li class="fr"><input type="button" value="관리자페이지" id="adminPage" class="login-btn btn-yg" style="font-size: 12px;"></input></li>
            	</c:if>
            </ul>

            <h1><a href="${ pageContext.servletContext.contextPath }" title=""><img src="/mg/resources/image/Logo1(2).png" alt="" class="main_header_img_logo_1"></a></h1>

            <form action="/shop/shopbrand.html" method="post" name="search">
                <p>추천 검색어</p>
                <fieldset>
                    <input name="search" onkeydown="CheckKey_search();" placeholder="콜드브루">
                    <button type="button" onclick="search_submit()"></button>
                </fieldset>
            </form>
        </div>

        <div id="branding" class="qwrap">
            <ul class="gnb gnbLayer font_f">
                <li class="first"><a href="#none" title="슬림쿡 전체메뉴" id="allCategory" class="">전체 메뉴<span></span></a></li>
                <li class="flow_home"><a href="/html/mainm.html" title="슬림쿡 홈" class="mn">홈</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/greenbeans/" title="생두" class="mn">생두</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/roastingbeans/" title="원두" class="mn">원두</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/coldbrew/"  title="콜드브루" class="mn">콜드브루</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/cannedcoffee/" title="캔커피" class="mn">캔커피</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/jeongki/delivery"  title="정기배송" class="mn">정기배송</a></li>
            </ul>
            <div id="allCategoryArea">
                <div class="allCategoryView">
                    <div class="categoryMenus">
                        <ul class="subcategory">
                            <li class="first">
                                <dl>
                                    <dt><a href="/shop/shopbrand.html?xcode=002&amp;type=O" title="슬림쿡 몸매관리 도시락">몸매관리
                                            도시락</a></dt>
                                    <dd class="imgInner"><a href="/shop/shopdetail.html?branduid=158"
                                            title="슬림쿡 몸매관리 도시락"><img
                                                src="http://slimcook.co.kr/shopimages/slimcook/002000000013.jpg"
                                                alt="슬림쿡 몸매관리 도시락" style="margin-bottom:8px;"></a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt><a href="" title="사이드 메뉴">벌크업 식단</a>
                                    </dt>
                                    <dd style="margin-top:10px;"><a
                                            href=""
                                            title="수제 샌드위치"><strong>BEST 1</strong> 닭가슴살</a></dd>
                                    <dd><a href=""
                                            title="심쿵 닭가슴살"><strong>BEST 2</strong> 부채살</a></dd>
                                    <dd><a href=""
                                            title="유기농 ABC주스"><strong>BEST 3</strong> 홍두께살</a></dd>
                                    <dd><a href=""
                                            title="미숫가루선식"><strong>BEST 4</strong> 벌크업 스페셜</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt><a href="/shop/shopbrand.html?xcode=007&amp;type=O" title="샐러드">샐러드</a></dt>
                                    <dd class="imgInner"><a href="/shop/shopbrand.html?xcode=007&amp;type=O"
                                            title="샐러드"><img
                                                src="http://www.slimcook.co.kr/shopimages/slimcook/0070000000062.jpg"
                                                alt="슬림쿡 샐러드" style="margin-bottom:8px;"></a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt><a href="" title="샐러드 정기배송"> 다이어트 식단</a></dt>
                                    <dd style="margin-top:10px;"><a
                                            href=""
                                            title="정기배송 닭가슴살 샐러드"><strong>NEW</strong> 베이컨 샐러드</a></dd>
                                    <dd><a href=""
                                            title="정기배송 불고기 샐러드"><strong>NEW</strong> 불고기 샐러드</a></dd>
                                    <dd><a href=""
                                            title="정기배송 1일 1식 샐러드"><strong>HOT</strong> 닭가슴살 단호박 샐러드</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt><a href="/shop/shopbrand.html?xcode=022&amp;type=P" title="고단백 상품">고단백 상품</a>
                                    </dt>
                                    <dd class="imgInner"><a href="/shop/shopdetail.html?branduid=1120248"><img
                                                src="http://slimcook.co.kr/shopimages/slimcook/0020000000322.jpg"
                                                alt="슬림쿡 헬스 식단"></a></dd>
                                </dl>
                            </li>
                        </ul>
                        <h3><strong>community</strong> | 모닝글로리 커뮤니티 게시판!</h3>
                        <ul class="community">
                            <li class="first"><a href="/board/board.html?code=slimcook_board2" title="공지사항">공지사항</a>
                            </li>
                            <li><a href="/shop/faq.html" title="자주묻는질문">자주묻는질문</a></li>
                            <li><a href="/board/board.html?code=slimcook" title="질문과 답변">질문과 답변</a></li>
                            <li><a href="/board/board.html?code=slimcook_board1" title="상품 후기">상품 후기</a></li>
                            <li><a href="/shop/page.html?id=29" title="쿠폰존">적립금</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- #branding // -->
        
        <script type="text/javascript">
         $(function(){
        	 $("#allCategory").click(function(e){
        		 e.preventDefault();
        		 
        		 var $t = $("#allCategory")
        		 
        		 $t.toggleClass("toggle");
        		 
        		 console.log($t);
        	 })
        	 
         })
        </script>
        
                <script type="text/javascript">
         $(function(){
        	 $("#allCategory").click(function(e){
        		 e.preventDefault();

        		 var $t = $("#allCategoryArea")
        		 
        		 $t.toggleClass("toggle");
        		 
        		 console.log($t);
        	 })
        	 
         })
        </script>
        
        <script type="text/javascript">
         $(function(){
        	 $("#allCategory").click(function(e){
        		 e.preventDefault();
			
        		 var $t = $(".onnn")
        		 
        		 $t.toggleClass("opacity-1");
        		 
        		 console.log($t);
        	 })
        	 
         })
	</script>

    </body>
</html>