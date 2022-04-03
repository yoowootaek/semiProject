<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- 결제 시스템 -->
<script>
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp60674928"); // 예: imp00000000

	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(), //결제번호
	    name : '상품결제', //상품이름
	    amount : 100, //판매 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '홍길동',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
		
		<!-- 결제 성공 -->
		if ( rsp.success ) {
	    	alert("결제가 완료되었습니다. ");
	        
	    	$(location).attr('href', './payment_sucess.do');
	    	
	        
	        
	    } else {
	    	<!-- 결제 실패 -->
	    	 alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
	    	 $(location).attr('href', './payment_fail.do');
	    }
	});
  </script>
</html>

