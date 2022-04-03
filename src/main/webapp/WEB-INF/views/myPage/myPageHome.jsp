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
<title>마이페이지</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- body title -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>마이페이지</h1>
						</div>
						<div class="col-sm-6">
							<!-- <ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">페이지이동</a></li>
								<li class="breadcrumb-item active">서브 페이지이동->새로고침</li>
							</ol> -->
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /body title -->

			<section>
				<div class="col-md-12" id='profileparent'>
					<!-- Widget: user widget style 1 -->
					<div class="card card-widget widget-user" id='userprofile'>
						<!-- Add the bg color to the header using any of the bg-* classes -->
						<div class="widget-user-header" id='bg-info-color'>
							<h3 class="widget-user-username" id='bg-write-color'>내 정보</h3>
						</div>
						<div class="widget-user-image">
							<img class="img-circle elevation-2"
								src="../resources/img/profile.jpg" alt="User Avatar">
						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col-sm-4 border-right">
									<div class="description-block">
										<h5 class="description-header">3,200</h5>
										<span class="description-text">총 주문금액</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4 border-right">
									<div class="description-block">
										<h5 class="description-header">13,000</h5>
										<span class="description-text">멤버등급</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4">
									<div class="description-block">
										<h5 class="description-header">35</h5>
										<span class="description-text">가입날짜</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
					</div>
					<!-- /.widget-user -->
				</div>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<!-- Default box -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">프로필</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse" title="Collapse">
											<i class="fas fa-minus"></i>
										</button>
										<!--  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button> -->
									</div>
								</div>
								<div class="card-body">
									<!-- <input type="text"> -->

									<!-- /프로필 사진 업로드 -->
									<div class="form-group">
										<label for="exampleInputFile">프로필 사진 수정</label>
										<div class="input-group">
											<div class="custom-file">
												<input type="file" class="custom-file-input" id="exampleInputFile"> 
													<label class="custom-file-label" for="exampleInputFile">이미지를 선택해주세요.</label>
											</div>
											<div class="input-group-append">
												<span class="input-group-text">upload</span>
											</div>
										</div>
									</div>
									<!-- /프로필 사진 업로드 -->

									<div class="form-group">
										<label for="exampleInputEmail1">이름</label> <input type="email"
											class="form-control" id="exampleInputEmail1" placeholder="이름"
											readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">아이디</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="아이디" readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">전화번호</label> <input
											type="email" class="form-control" id="exampleInputEmail1"
											placeholder="전화번호" readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">주소</label> <input type="email"
											class="form-control" id="exampleInputEmail1" placeholder="주소"
											readonly>
									</div>
									<!-- 테이블1 끝 -->

									<button type="button" class='btn btn-primary' id='myPagebtn'
										onclick="location.href='myPageUpdate.do'" style="float: right;">회원정보수정</button>
								</div>


								<!-- /.card-body -->

								<!-- /.card-footer-->
							</div>
							<!-- /.card -->
						</div>
						<!-- 프로필 테이블 -->

						<!-- 테이블2 시작 -->
						<!-- <div class="row"> -->
								<div class="col-md-6">
							<div class="card">
									<div class="card-header">
										<h3 class="card-title">주문내역</h3>

										<div class="card-tools">
											<div class="input-group input-group-sm" style="width: 150px;">
												<input type="text" name="table_search"
													class="form-control float-right" placeholder="검색">

												<div class="input-group-append">
													<button type="submit" class="btn btn-default">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
									<!-- /.card-header -->
									<div class="card-body table-responsive p-0"
										style="height: 511px;">
										<table class="table table-hover text-nowrap">
											<thead>
												<tr>
													<th>상품정보</th>
													<th>주문일자</th>
													<th>주문번호</th>
													<th>주문수량</th>
													<th>주문상태</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="tag tag-success">Approved</span></td>
													<td>배송중</td>
												</tr>

											</tbody>
										</table>
									</div>
									<!-- /.card-body -->
								<!-- </div> -->
								<!-- /.card -->
							</div>
						</div>
						<!-- 테이블2 끝 -->
					</div>
					<!-- /.container-fluid -->
					</div><!-- row의 끝 -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
</body>
</html>
