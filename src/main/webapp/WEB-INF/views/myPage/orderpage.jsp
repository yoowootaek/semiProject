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
<title>마이페이지-주문페이지</title>

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
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">주문내역 페이지</h1>
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
									<h3 class="card-title">주문내역</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>상품명</th>
												<th>금액</th>
												<th>주소</th>
												<th>수정/취소</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${orderList}" var="board">
												<tr>
													<td>${board.account_id}</td>
													<td>${board.order_payselect}</td>
													<td>${board.order_uesrreq}</td>
													<td>${board.coupon_number}</td>
													<td align="left"><a
														href="ordermodify.do?account_id=${board.account_id }"><input
															type="submit" value="수정"
															class="btn btn-block bg-gradient-primary btn-sm"></a>
														<button type="button"
															class="btn btn-block bg-gradient-danger btn-sm">취소</button>
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>
								</div>
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
