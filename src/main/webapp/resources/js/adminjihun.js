window.onload = function() {
	if(document.getElementById("insertAdmin")) {
		const $insertAdmin = document.getElementById("insertAdmin");
		$insertAdmin.onclick = function() {
			location.href = "/mg/admin/regist";
		}
	}
	
	if(document.getElementById("logoutAdmin")) {
		const $logout = document.getElementById("logoutAdmin");
		$logout.onclick = function() {
			location.href = "/mg/admin/logout";
		}

	}
	
	if(document.getElementById("adminNotice")) {
		const $logout = document.getElementById("adminNotice");
		$logout.onclick = function() {
			location.href = "/mg/admin/notice";
		}

	}
	
	if(document.getElementById("writeNotice")) {
		const $writeNotice = document.getElementById("writeNotice");
		$writeNotice.onclick = function() {
			location.href = "/mg/admin/notice/insert";
		}
	}
	
	if(document.getElementById("writeAnswer")) {
		const $writeNotice = document.getElementById("writeAnswer");
		$writeNotice.onclick = function() {
			location.href = "/mg/admin/answer/insert";
		}
	}

	if(document.getElementById("sweetHome")) {
		const $writeNotice = document.getElementById("sweetHome");
		$writeNotice.onclick = function() {
			location.href = "/mg/admin/mainIndex";
		}
	}
	
	if(document.getElementById("adminTransit")) {
		const $logout = document.getElementById("adminTransit");
		$logout.onclick = function() {
			location.href = "/mg/admin/transit";
		}
		
	}
	if(document.getElementById("sweetHome2")) {
		const $writeNotice = document.getElementById("sweetHome2");
		$writeNotice.onclick = function() {
			location.href = "/mg/admin/mainIndex";
		}
	}
	
	if(document.getElementById("answer")) {
		const $answer = document.getElementById("answer");
		$answer.onclick = function() {
			location.href = "/mg/admin/answer";
		}
	}
	
	if(document.getElementById("review")) {
		const $review = document.getElementById("review");
		$review.onclick = function() {
			location.href = "/mg/admin/review";
		}
	}
	
	if(document.getElementById("generalQna")) {
		const $generalQna = document.getElementById("generalQna");
		$generalQna.onclick = function() {
			location.href = "/mg/admin/generalQna";
		}
	}
	
	if(document.getElementById("test")) {
		const $writeNotice = document.getElementById("test");
		$writeNotice.onclick = function() {
			location.href = "/mg/admin/test";
		}
	}
	
	if(document.getElementById("registMd")) {
		const $registMd = document.getElementById("registMd");
		$registMd.onclick = function() {
			location.href = "/mg/admin/registProduct";
		}
	}
	
	if(document.getElementById("notice")) {
		const $notice = document.getElementById("notice");
		$notice.onclick = function() {
			location.href = "/mg/notice/list";
		}
		
	}
	
	/* 02/21(일) 한지훈 회원관리부터 작성 */

	if(document.getElementById("adminMemberListButton")) {
		const $adminMemberListButton = document.getElementById("adminMemberListButton");
		$adminMemberListButton.onclick = function() {
			location.href = "/mg/admin/member/manage";
			console.log("왜 안되냐 ")
		}
	}
	
	if(document.getElementById("adminMemberAdList")) {
		const $adminMemberAdList = document.getElementById("adminMemberAdList");
		$adminMemberAdList.onclick = function() {
			location.href = "/mg/admin/member/manageAd";
			console.log("왜 안되냐 ")
		}
	}
	
	console.log("숨김완료");
	console.log('${ pageNumNo }');
	$("#mgBlackFinish").css("display","none");
	
	
	if(document.getElementById("adminMemberList")) {
		const $adminMemberList = document.getElementById("adminMemberList");
		$adminMemberList.onclick = function() {
			location.href = "/mg/admin/member/manage";
		}
		
	}
	
	
	
}

	