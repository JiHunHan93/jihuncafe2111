<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Morning Glory</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/breakfastbox/menu-detail.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/footer.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/MorningGloryMain.css">
<link rel="stylesheet" type="text/css" href="/cafe/resources/css/main-common.css">
<script src="/cafe/resources/js/detail.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

		<jsp:include page="../common/header.jsp"/>
		
<div class="container">
        	<div class="row">
        	<br><br>
               <div class="col-xs-4 item-photo">
                    <%-- <img style="max-width:100%;"<c:out value="${ requestScope.detailInfo.attachmentList[0].thumbnailPath }"/>> --%>
                    <img src="${ pageContext.servletContext.contextPath }${ requestScope.selectGoods.thumbPath }" id="picture" name="picture" width="380px"/>
                </div>
                
                <div class="col-xs-5" style="border:0px solid gray">
                <br><br>
				<input type="hidden" id="jihunTest" value="<c:out value="${ requestScope.selectGoods }"/>">
                    <h3>카테고리 : <input type="text" value="<c:out value="${ requestScope.selectGoods.typeName }"/>" readonly style="border: none" size="30"></h3> 
						<br><br>
						<h3>상품명 : <input type="text" value="<c:out value="${ requestScope.selectGoods.name }"/>" readonly style="border: none" size="30"></h3> 
						<br><br>
                    <h3 style="margin-top:0px;">가격 : <input type="text" value="<c:out value="${ requestScope.selectGoods.price }원"/>" readonly style="border: none"></h3>

                    <div class="section" style="padding-bottom:20px;">
                    <br>
                        <h4 class="title-attr"><small>수량</small></h4>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input name="count" value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                
                    <div>
                	<input type="button" value="장바구니 담기" id="basket" class="btn btn-success" style="width: 428px;">
                </div>
        
                    <div class="section" style="padding-bottom:20px;">
                		  <button id="testJihun" class="btn btn-success"><span style="text-align: center;" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>구매하기</button>
                    </div>                                        
                </div>                        
                <br><hr>
                <script>
                $("#testJihun").click(function() {
                	
                	
                	
                	location.href = "${ pageContext.servletContext.contextPath }/payment/paymentPage?no=" + "${ requestScope.detailNo }" + "&count=" + $('input[name="count"]').val(); 
                	 
/*                 	 $.ajax({
                		url : "/mg/testJihun/test",
                		type : "get",
                		data : {
                			jihunTest : "13"
                		},
                		success : function(data, textStatus, xhr) {
                			console.log('성공쓰');
                		},
                		error : function(xhr, status, error) {
                			console.log('실패');
                		}
                	});  */
                	
                });
                
                $("#basket").click(function(){
                	if(confirm("장바구니에 담으시겠습니까?") == true){
                		location.href = "/mg/main/basket?no=" + "13" + "&count=" + $('input[name="count"]').val();  
                	}else{
                		location.href = "/mg/user/select?no=" + "13" ; 
                	}
                });
                
                //-- Click on QUANTITY
                $(".btn-minus").on("click",function(){
                    var now = $(".section > div > input").val();
                    if ($.isNumeric(now)){
                        if (parseInt(now) -1 > 0){ now--;}
                        $(".section > div > input").val(now);
                    }else{
                        $(".section > div > input").val("1");
                    }
                })            
                $(".btn-plus").on("click",function(){
                    var now = $(".section > div > input").val();
                    if ($.isNumeric(now)){
                        $(".section > div > input").val(parseInt(now)+1);
                    }else{
                        $(".section > div > input").val("1");
                    }
                })
            	
                </script>      
        
                <div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">상세정보</li>
                        <li>상품후기</li>
                        <li>상품 Q&A</li>
                        <li>배송/교환/반품</li>
                    </ul>
                </div>		
            </div>
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
</body>

</html>