<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Morning Glory Admin</title>

  <!-- Favicons -->
  <link href="/cafe/resources/image/admin/favicon.png" rel="icon">
  <link href="/cafe/resources/image/admin/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="/cafe/resources/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="/cafe/resources/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- 내가 만든 CSS다 -->
   <link href="/cafe/resources/admin/jihunh.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="/cafe/resources/css/style.css" rel="stylesheet">
  <link href="/cafe/resources/css/style-responsive.css" rel="stylesheet">
    <script src="/cafe/resources/js/adminjihun.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<body>
  	<jsp:include page="/WEB-INF/views/common/admin/adHeader.jsp"/>
	
   <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
   <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="/cafe/resources/image/admin/ui-kor.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">프로필 사진</h5>
          <li class="mt">
            <a id="sweetHome2">
              <i class="fa fa-dashboard"></i>
              <span>메인 페이지</span>
              </a>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>회원관리</span>
              </a>
            <ul class="sub">
             <li class="active"><a id="adminMemberList">회원조회</a></li>
              <li><a href="buttons.html">블랙리스트</a></li>
              <li><a href="panels.html">적립금 조회 </a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>주문관리</span>
              </a>
            <ul class="sub">
              <li><a href="grids.html">주문 조회</a></li>
              <li><a href="calendar.html">결제내역</a></li>
              <li><a href="gallery.html">환불 및 반품</a></li>
              <li><a href="file_upload.html">배송 조회</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>상품관리</span>
              </a>
            <ul class="sub">
               <li><a href=" ${ pageContext.servletContext.contextPath }/admin/registProduct">상품등록</a></li>
              <li><a href=" ${ pageContext.servletContext.contextPath }/admin/SelectProduct">상품조회</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>고객센터</span>
              </a>
            <ul class="sub">
              <li><a id="adminNotice">공지사항</a></li>
              <li><a id="answer">Q&A</a></li>
              <li><a id="review">상품후기</a></li>
              <li><a id="generalQna">자주 묻는 질문</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
             <span>통계</span>
              </a>
            <ul class="sub">
              <li><a href="morris.html">판매분석</a></li>
              <li><a href="morris.html">카테고리별 매출 조회</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>DB 조회용</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt"></div>
          <div>
            <section class="">
            </section>
            <section class="">
            </section>
          </div>
          <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading wht-bg">
                <h4 class="gen-case">
                    공지사항
                    <form action="#" class="pull-right mail-src-position">
                      <div class="input-append">
                        <!-- <input type="text" class="form-control " placeholder="Search Mail"> -->
                      </div>
                    </form>
                  </h4>
              </header>
              <div class="panel-body minimal">
                <div class="mail-option">
                  <div class="chk-all">
                    <div class="pull-left mail-checkbox">
                      <input type="checkbox" id="allCheck1">
                    </div>
                    <div class="btn-group">
                      <a data-toggle="dropdown" href="#" class="btn mini all">
                        All
                        <i class="fa fa-angle-down "></i>
                        </a>
                      <ul class="dropdown-menu">
                        <li><a href="#"> None</a></li>
                        <li><a href="#"> Read</a></li>
                        <li><a href="#"> Unread</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="btn-group">
                    <a id="adminMemberAdList" data-original-title="관리자회원을 조회할수 있습니다" data-placement="top" data-toggle="" class="btn mini tooltips">
                      <!-- <i class=" fa fa-refresh"></i> -->
                     	 관리자 조회
                      </a>
                  </div>
                  <div id="blackChecked" class="btn-group">
                    <a id="adminMemberAdList" data-original-title="관리자회원을 조회할수 있습니다" data-placement="top" data-toggle="" class="btn mini tooltips">
                      <!-- <i class=" fa fa-refresh"></i> -->
                     	 블랙리스트 변경
                      </a>
                  </div>
                  <div class="btn-group hidden-phone">
                    <a data-toggle="dropdown" href="#" class="btn mini blue">
                      More
                      <i class="fa fa-angle-down "></i>
                      </a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                      <li class="divider"></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                  </div>
<!--                   <div class="btn-group">
                    <a data-toggle="dropdown" href="#" class="btn mini blue">
                      Move to
                      <i class="fa fa-angle-down "></i>
                      </a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                      <li class="divider"></li>
                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                    </ul>
                  </div> -->
                 <!--  <ul class="unstyled inbox-pagination">
                    <li><span>1-50 of 99</span></li>
                    <li>
                      <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                    </li>
                    <li>
                      <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                    </li>
                  </ul> -->
                </div>
                <div class="table-inbox-wrap ">
                  <table id="memberManagement" class="table table-inbox table-hover">
                    <tbody>
                    <!-- 추후에 활용해볼 css -->
                      <!-- <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                          <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                          <td class="view-message  dont-show"><a href="">Google Inc.</a></td>
                          <td class="view-message "><a href="">Your new account is ready.</a></td>
                          <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                          <td class="view-message  text-right">08:10 AM</td>
                      </tr>
                      <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Mark Thompson</a></td>
                        <td class="view-message"><a href="mail_view.html">Last project updates</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 15</td>
                      </tr>
                      <tr class="unread">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Wonder Corp.</a></td>
                        <td class="view-message"><a href="mail_view.html">Thanks for your registration</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 15</td>
                      </tr>
                      <tr class="">
                        <td class="inbox-small-cells">
                          <input type="checkbox" class="mail-checkbox">
                        </td>
                        <td class="inbox-small-cells"><i class="fa fa-star"></i></td>
                        <td class="view-message dont-show"><a href="mail_view.html">Facebook</a></td>
                        <td class="view-message"><a href="mail_view.html">New Friendship Request</a></td>
                        <td class="view-message inbox-small-cells"></td>
                        <td class="view-message text-right">March 13</td>
                      </tr> -->
                     <style>
                      /* #memberManagement th:nth-child(2) {
                      background-color: red;
                      }
                      #memberManagement td {
                      text-align: center;
                      } */
                      </style>
                      <tr>
					<th><input type="checkbox" id="allCheck2"></th>
					<th>번호</th>
					<th>이름</th>
					<th>아이디</th>
					<th>생년월일</th>
					<th>성별</th>
					<th>이메일</th>
					<th>주소</th>
					<th>폰번호</th>
					<th>포인트</th>
					<th>가입일</th>
					<th>블랙여부</th>
					<th>상태</th>
				</tr>
				<c:forEach var="mgView" items="${ requestScope.mgList }">
				<tr>
					<td><input type="checkbox" class=""></td>
					<td><c:out value="${ mgView.no }"/></td>
					<td><c:out value="${ mgView.name }"/></td>
					<td><c:out value="${ mgView.id }"/></td>
					<td><c:out value="${ mgView.pno }"/></td>
					<td><c:out value="${ mgView.gender }"/></td>
					<td><c:out value="${ mgView.email }"/></td>
					<td><c:out value="${ mgView.address }"/></td>
					<td><c:out value="${ mgView.phone }"/></td>
					<td><c:out value="${ mgView.point }"/></td>
					<td><c:out value="${ mgView.enrollDate }"/></td>
					<td><c:out value="${ mgView.blackList }"/></td>
					<td><c:out value="${ mgView.status }"/></td>
				</tr>
				</c:forEach>
                    </tbody>
                  </table>
                </div>
                </div>
                <hr>
             <form id="searchForm" action="${ pageContext.servletContext.contextPath}/admin/member/manage/search" method="get">
                <div class="search-area" align="center">
			<select id="searchCondition" name="searchCondition">
				<option value="mgName" <c:if test="${ requestScope.searchCondition eq 'mgName' }">selected</c:if>>이름</option>
				<option value="mgId" <c:if test="${ requestScope.searchCondition eq 'mgId' }">selected</c:if>>아이디</option>
				<option value="mgPno" <c:if test="${ requestScope.searchCondition eq 'mgPno' }">selected</c:if>>생년월일</option>
				<option value="mgGender" <c:if test="${ requestScope.searchCondition eq 'mgGender' }">selected</c:if>>성별</option>
				<option value="mgAdd" <c:if test="${ requestScope.searchCondition eq 'mgAdd' }">selected</c:if>>주소</option>
				<option value="mgBlack" <c:if test="${ requestScope.searchCondition eq 'mgBlack' }">selected</c:if>>블랙리스트</option>
				<option value="mgStatus" <c:if test="${ requestScope.searchCondition eq 'mgStatus' }">selected</c:if>>상태</option>
			</select>
			<input type="search" name="searchValue" value="${ requestScope.searchValue }">
			<button type="submit">검색하기</button>
			<c:if test="${ sessionScope.loginMember.status eq 'Y' }">
				<button id="writeNotice" type="button">작성하기</button>
			</c:if>
		</div>
		</form>
		<br>
					 <!-- 페이징 버튼 -->
      <div class="pagingArea" align="center">
         <c:choose>
            <c:when test="${ empty requestScope.searchValue }">
         		<button id="startPage"><<</button>
         		
         		<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
         			<button disabled><</button>
         		</c:if>
         		<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
         			<button id=prevPage><</button>
         		</c:if>
         		
         		<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
         			<c:if test="${ requestScope.pageInfo.pageNo eq p }">
         				<button disabled><c:out value="${ p }"/></button>
         			</c:if>
         			<c:if test="${ requestScope.pageInfo.pageNo ne p }">
         				<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
         			</c:if>
         		</c:forEach>
         		
         		<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxpage }">
         			<button disabled>></button>
         		</c:if>
         		<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxpage }">
         			<button id="nextPage">></button>
         		</c:if>
         		
         		<button id="maxpage">>></button>
            </c:when>
            <c:otherwise>
               <button id="searchStartPage"><<</button>
               
               <c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
               	<button disabled><</button>
               </c:if>
               <c:if test="${ requestScope.pageInfo.pageNo > 1 }">
               	<button id="searchPrevPage"><</button>
               </c:if>
               
               <c:forEach var="s" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
               	<c:if test="${ requestScope.pageInfo.pageNo eq s }">
               		<button disabled><c:out value="${ s }"/></button>
               	</c:if>
               	<c:if test="${ requestScope.pageInfo.pageNo ne s }">
               		<button onclick="searchPageButtonAction(this.innerText)"><c:out value="${ s }"/></button>
               	</c:if>
               </c:forEach>
<%-- 				<p>${ s }</p> --%>
               <c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxpage }">
               	<button disabled>></button>
               </c:if>
               <c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxpage }">
               	<button id="searchNextPage">></button>
               </c:if>
               
               <button id="searchMaxPage">>></button>
            </c:otherwise>
         </c:choose>
      </div>
		
              </div>
            </section>
          </div>
      </section>
      <!-- /wrapper -->
    </section>
    	<script>
    	 $("input:checkbox").change(checkedChange);
    	 $("#allCheck1").change(checkedAllChange);
    	 $("#allCheck2").change(checkedAllChange2);
    	    
    	 function checkedAllChange() {
    		 
    	    	if($("#allCheck1").prop("checked")) {
    	    		 $("input:checkbox").attr("checked", true);
    	    	} else {
    	    		 $("input:checkbox").attr("checked", false);
    	    		
    	    	}
    	    	
    	 }
    	 
    	 function checkedAllChange2() {
    		 
 	    	if($("#allCheck2").prop("checked")) {
 	    		 $("input:checkbox").attr("checked", true);
 	    	} else {
 	    		 $("input:checkbox").attr("checked", false);
 	    		
 	    	}
 	    	
 	 }
	    	    function checkedChange() {
    	    	
    	    	
    	    	//prop 자바스크립트 속성
    	    	/* console.log($(this).prop("checked")); */
/*     	    	const a = document.getElementById("game").value;
    	    	const b = document.getElementById("game").value;
    	    	const c = document.getElementById("game").value; */
    	    	if($(this).prop("checked")) {
    	    		
    	    		/* 아래 이벤트와 중복 발생해서 전부 다 색 변경은 불가함. */
    	    		/* (this.parentNode).parentNode.style.background = "orangered";  */
    	    	 	(this.parentNode).parentNode.children[0].style.background = "orangered";
    	    	 	(this.parentNode).parentNode.children[1].style.background = "orangered";
    	    		const no = (this.parentNode).parentNode.children[1].innerText;
    	    		console.log(no);
    	    		$("#blackChecked").click(function blackChecked() {
    	    			console.log(no + '가자');
    	    			
    	    			
    	    			if (confirm("블랙리스트 변경을 진행하시겠습니까?")) {
							const status = prompt("등록은 'Y', 해제는 'N'을 입력해주세요.");
							const reason = prompt("변경 사유가 무엇인지 입력해주세요.");
							const pageNo = no;
							const loginNo = '${ sessionScope.loginMember.no }';

							$.ajax({
										url : "${ pageContext.servletContext.contextPath }/admin/member/manage/updateBlackList",
										type : "post",
										data : {
											reason : reason,
											status : status,
											pageNo : pageNo,
											loginNo : loginNo
										},
										success : function(
												data,
												textStatus,
												xhr) {
											document
											/* 			$("#mgBlackFinish").css("display", "none");
														$("#mgBlackReason").attr('readonly', true);
														$("#modifyButton").css("display", "block"); */
											console
													.log("변경 완료");
											console
													.log(data);
											location.href = "${ pageContext.servletContext.contextPath }/admin/member/manage"
										},
										error : function(
												xhr,
												status,
												error) {
											console
													.log(error);
											console
													.log("에러에러에러");
										}
							});

							alert("변경 완료");
						} else {
							alert("변경 취소");
						}
    	    			
    	    	});
    	    		
    	    	} else {
    	    	 	(this.parentNode).parentNode.children[0].style.background = "rgba( 255, 255, 255, 0.5 )";
    	    	 	(this.parentNode).parentNode.children[1].style.background = "rgba( 255, 255, 255, 0.5 )";
    	    	}
    	    	/* nextElementSibling
    	    	offsetParent: table#memberManagement.table.table-inbox.table-hover
    	    	parentElement: tr
    	    	parentNode: tr */
    	    	
    	    }
    	    
/* 	    	    $(" td :nth-child(1)").hover(function() {
					$(this).css('cursor', 'default');
					console.log("하이");
					console.log($(" td :nth-child(2).innerHTML"))
				}); */
	    	    
	    	    
    	    /* Detail view 이벤트 */
	    		if(document.getElementsByTagName("td")) {
	    			const $tds = document.getElementsByTagName("td");
	    			
	    			for(let i = 0; i < $tds.length; i++) {
	    				
	    				$tds[i].onmouseenter = function() {
	    					this.parentNode.style.backgroundColor = "yellow";
	    				}
	    				
	    				$tds[i].onmouseout = function() {
	    					this.parentNode.style.background = "white";
	    				}
	    				
	    				for(let j = 2; j < 13; j++) {
	    					
	    					$tds[i].parentNode.children[j].onclick = function() {
	    						const no = this.parentNode.children[1].innerText;
	    						location.href = "${ pageContext.servletContext.contextPath }/admin/member/manage/detail?no=" + no;
	    						}

	    				}	
	    				
	    			}
	    		}
	</script>
	<script>
      const link = "${ pageContext.servletContext.contextPath }/admin/member/manage";
      const searchLink = "${ pageContext.servletContext.contextPath }/admin/member/manage/search"
      
      if(document.getElementById("startPage")) {
         const $startPage = document.getElementById("startPage");
         $startPage.onclick = function() {
            location.href = link + "?currentPage=1";
         }
      }
      
      if(document.getElementById("prevPage")) {
         const $prevPage = document.getElementById("prevPage");
         $prevPage.onclick = function() {
            location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1}";
         }
      }
      
      if(document.getElementById("nextPage")) {
         const $nextPage = document.getElementById("nextPage");
         $nextPage.onclick = function() {
            location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1}";
         }
      }
      
  
		if (document.getElementById("maxpage")) {
			const $maxpage = document.getElementById("maxpage");
			$maxpage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.maxpage }";
			}
		}
		
		if(document.getElementById("searchStartPage")) {
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function() {
				location.href = searchLink + "?currentPage=1&searchCondition=${ requestScope.searchCondition }&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if(document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1}&searchCondition=${ requestScope.searchCondition }&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if (document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.pageNo + 1}&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if(document.getElementById("searchMaxPage")) {
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function() {
				location.href = searchLink
					+ "?currentPage=${ requestScope.pageInfo.maxpage }&searchCondition=${ requestScope.searchCondition }&searchValue=${ requestScope.searchValue }";
			}
		}

		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}
		
		function searchPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	</script>
    <!-- /MAIN CONTENT -->
     <!--main content end-->
    <!--footer start-->
	<jsp:include page="/WEB-INF/views/common/admin/adFooter.jsp"/>
	
	 <!-- js placed at the end of the document so the pages load faster -->
  <script src="/cafe/resources/admin/jquery/jquery.min.js"></script>
  <script src="/cafe/resources/admin/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="/cafe/resources/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="/cafe/resources/admin/jquery.scrollTo.min.js"></script>
  <script src="/cafe/resources/admin/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="/cafe/resources/admin/common-scripts.js"></script>
  <!--script for this page-->

</body>
</html>


















