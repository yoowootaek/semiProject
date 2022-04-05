<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	
	
	$('#change').click(function() {
		var check = $('#inputStatus').val()
		console.log(check)
	})

</script>




<title>마이페이지-취소/교환/반품 페이지</title>



<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>
		<!-- Navbar end -->

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- Sidebar end -->

		<div class="content-wrapper">
			
			<input type="hidden" name="account_id" value="${board.account_id }">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">취소/교환/반품 페이지</h1>
						</div>
						<!-- /.col -->
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">취소/교환/반품</h3>
								</div>
								<!-- /.card-header -->
								<form class="form-horizontal" action="canclepage2.do" method='get'>
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>상품명</th>
												<th>금액</th>
												<th>수량</th>
												<th>취소/교환/반품</th>
											</tr>
										</thead>
										<tbody>
											
												<tr>
													<td>${board.account_id}</td>
													<td>${board.order_payselect}</td>
													<td>${board.order_uesrreq}</td>
													<td>${board.coupon_number}</td>
													<td><select id="inputStatus" name="inputStatus" >
                  <option selected>취소/교환/반품</option>
                  <option  value="취소" >취소</option> 
                  <option value="교환" >교환</option> 
                  <option  value="반품">반품</option> 
                 </select>
                
                <input id="changetext"  class="form-control" placeholder="변경 사유를 입력하세요." required> 
                <a href="cancleload.do"><input type="submit" id="change" class="btn btn-info" value="확인"></a></td>
												</tr>
											


										</tbody>
									</table>
								</div>
								</form>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- main end -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->
	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp" %>
</body>
</html>
