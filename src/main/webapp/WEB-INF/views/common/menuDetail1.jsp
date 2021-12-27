<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/mg/resources/css/menu-detail.css">
<script src="/mg/resources/js/detail.js"></script>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>

<div class="container">
        	<div class="row">
               <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="image/Main3.jpg" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">

                    <h3>메뉴 1</h3> 

                    <h3 style="margin-top:0px;">12,000 원</h3>

                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>수량</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                
        
                    <div class="section" style="padding-bottom:20px;">
                        <button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 장바구니에 넣기</button>
                    </div>                                        
                </div>                              
        
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