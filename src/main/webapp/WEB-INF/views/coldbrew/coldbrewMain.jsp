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
            
              

               

               
                <h3 class="w210">콜드브루<strong> BEST</strong></h3>
                <ul>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=9" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/콜드브루1.jpg" alt="" height="224.5px">
                            <p class="s_price">
                             
                                최종가 : 15,000원
                            </p>
                            <p class="s_name">콜드브루 원액 500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 1개입</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=10" title="">
                            <img class="MS_prod_img_s" src="../resources/image/mainpage/콜드브루2.jpg" alt="" height="224.5px">
                            <p class="s_price">
                               
                                최종가 : 30,000원
                            </p>
                            <p class="s_name">콜드브루 원액 1000ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 2개입</p>
                        </a>
                    </li>
                    <li>
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=11" title="">
                            <img class="MS_prod_img_s"  src="../resources/image/mainpage/콜드브루3.jpg" alt="" height="224.5px">
                            <p class="s_price">
                                
                                최종가 : 45,000원
                            </p>
                            <p class="s_name">콜드브루 원액 1500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 3개입</p>
                        </a>
                    </li>
                    <li class="last">
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=12" title="">
                            <img class="MS_prod_img_s"  src="../resources/image/mainpage/콜드브루4.jpg" alt="" height="224.5px">
                            <p class="s_price">
                               
                                최종가 : 15,000원
                            </p>
                            <p class="s_name">콜드브루 원액 500ml</p>
                            <p class="s_subname">콜드브루 원액 500ml 1개입</p>
                        </a>
                    </li>
                </ul>
           	
           	 <div class="clobox">
                    <h3>지금 가장 <span>🔥</span><strong>HOT</strong><span>🔥</span> 해요!</h3>
                    <div class="item_best1">
                        <a href="${ pageContext.servletContext.contextPath }/coldbrew/detail?no=12" title="">
                            <p><img src="../resources/image/mainpage/콜드브루5.jpg" style="height:500px;"></p>
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
        
        <jsp:include page="../common/footer.jsp"/>
</body>

</html>