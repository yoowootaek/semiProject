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
<title>마이페이지-주문상세보기</title>

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


		<!-- main -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">주문상세 페이지</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="/admin/adminProductRegister.do">주문상세 보기</a></li>
							</ol>
						</div>
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
									<h3 class="card-title">상품명 선택시 수정 및 삭제 페이지로 이동합니다.</h3>
								</div>
								<!-- /.card-header -->
								 <div class="card-body">
        <table class="table table-bordered table-hover">
        <thead>
        <tr>
        <th>상품번호</th>
        <th>회원이름</th>
        <th>배송일</th>
        <th>상태</th>
        <th>금액</th>
        
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderloadList}"  var="board">
        <tr data-widget="expandable-table" aria-expanded="true">
        <td>${board.account_id}</td>
        <td>${board.order_payselect}</td>
        <td>${board.order_uesrreq}</td>
        <td>${board.coupon_number}</td>
        <td>금액</td>
        </tr>
        <tr class="expandable-body">
        <td colspan="5">
        <p style="">
        <img src="../resources/dist/img/logo.png"/>
        dfsdds
        <!-- <img src="../resources/imgs/a3.jpg"> 상대경로 이미지 파일 -->
        </p>
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

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp" %> 

</body>
</html>
