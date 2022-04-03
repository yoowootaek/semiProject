<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Starter</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="../resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address").value =  data.address
        }
    }).open();
}
</script>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline"></form>
					</div></li>

				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-header">15 Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="../resources/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="../resources/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Alexander Pierce</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->


				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->



						<a href="#" class="nav-link"> <i class="nav-icon fas fa-th"></i>
							<p>주문</p>
						</a>

					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">주문/결제</h1>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<!-- Input addon -->
					
					<form action="savePayment.do" method="post">
					<div class="card card-info">
						<div class="card-header">
							<h3 class="card-title">결제정보</h3>
						</div>
						<div class="card-body">
							<label>주문자</label>
							<div class="input-group mb-3">

								<input type="text" class="form-control" id="sender_name" name="sender_name" placeholder="보내는 사람 이름">
							</div>

							<div class="input-group mb-3">

								<input type="email" class="form-control" id="sender_email" name="sender_email" placeholder="이메일">
							</div>

							<div class="input-group mb-3">
								<input type="text" class="form-control" id="sender_tel" name="sender_tel" placeholder="전화번호">
							</div>

							
							<div class="input-group">
								<input type="text" id="sender_zonecode" name="sender_zonecode"  placeholder="우편번호" readonly>
								<button type="button" id="address_search_sender" class="btn btn-info float-left">주소찾기</button>
							</div>
							
							<div class="input-group">
								<input type="text" id="sender_address" name="sender_address"  class="form-control" placeholder="주소" readonly>
							</div>

							<div class="input-group">
								<input type="text" id="sender_daddress" name="sender_daddress" class="form-control" placeholder="상세주소">
							</div>

							<br></br> <label>받으시는 분</label>
							<div class="input-group mb-3">
								<input type="text" id="receiver_name" name="receiver_name" class="form-control" placeholder="받으시는 분">
							</div>

							<div class="input-group mb-3">
								<input type="email" id="receiver_email" name="receiver_email" class="form-control" placeholder="이메일">
							</div>


							<div class="input-group mb-3">
								<input type="text" id="receiver_tel" name="receiver_tel" class="form-control" placeholder="전화번호">
							</div>

							<div class="input-group">
								<input type="text" id="receiver_zonecode" name="receiver_zonecode"  placeholder="우편번호" readonly>
								<button type="button" id="address_search_receiver" class="btn btn-info float-left">주소찾기</button>
							</div>

							<div class="input-group">
								<input type="text" id="receiver_address" name="receiver_address" class="form-control" placeholder="주소" readonly>
							</div>

							<div class="input-group">
								<input type="text" id="receiver_daddress" name="receiver_daddress" class="form-control" placeholder="상세주소">
							</div>

							<br></br>

							<div class="form-group">
								<label for="inputDescription">배송시 요청사항</label>
								<textarea id="user_require" name="user_require" class="form-control" rows="4"></textarea>
							</div>
							
							<label>상품내역</label>

							<div class="col-12 table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Qty</th>
											<th>Product</th>
											<th>Serial #</th>
											<th>Description</th>
											<th>Subtotal</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Call of Duty</td>
											<td>455-981-221</td>
											<td>El snort testosterone trophy driving gloves handsome</td>
											<td>$64.50</td>
										</tr>
										<tr>
											<td>1</td>
											<td>Need for Speed IV</td>
											<td>247-925-726</td>
											<td>Wes Anderson umami biodiesel</td>
											<td>$50.00</td>
										</tr>
										<tr>
											<td>1</td>
											<td>Monsters DVD</td>
											<td>735-845-642</td>
											<td>Terry Richardson helvetica tousled street art master</td>
											<td>$10.70</td>
										</tr>
										<tr>
											<td>1</td>
											<td>Grown Ups Blue Ray</td>
											<td>422-568-642</td>
											<td>Tousled lomo letterpress</td>
											<td>$25.99</td>
										</tr>
									</tbody>
								</table>
							</div>
							
							<div class="col-6">
								<div class="table-responsive">
								<table class="table">
								</table>
								</div>
							</div>

							<div class="col-6">
								<p class="lead">총 결제금액</p>
								<div class="table-responsive">
									<table class="table">
										<tbody>
											<tr>
												<th style="width: 50%">Subtotal:</th>
												<td>$250.30</td>
											</tr>
											<tr>
												<th>Tax (9.3%)</th>
												<td>$10.34</td>
											</tr>
											<tr>
												<th>Shipping:</th>
												<td>$5.80</td>
											</tr>
											<tr>
												<th>Total:</th>
												<td>$265.24</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>




							<div class="card-footer">
								<button type="submit" class="btn btn-info float-left">이전</button>
								<a href="/testpay.do"><button type="submit"
										class="btn btn-info float-right">다음</button></a>
							</div>


							<!-- /.col-lg-6 -->

							<!-- /input-group -->
						</div>


					</div>
									</form>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
		<div class="p-3">
			<h5>Title</h5>
			<p>Sidebar content</p>
		</div>
	</aside>
	<!-- /.control-sidebar -->

	<!-- Main Footer -->
	<footer class="main-footer">
		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">Anything you want</div>
		<!-- Default to the left -->
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
	</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	
</body>
<!-- jQuery -->
	<script src="../resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/adminlte.min.js"></script>

<!-- 카카오 주소 찾기 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address_search_sender").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //발신자 주소검색 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
            	document.getElementById("sender_zonecode").value = data.zonecode;
                document.getElementById("sender_address").value = data.address; // 주소 넣기
            }
        }).open();
    });
    
    document.getElementById("address_search_receiver").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //수신자 지도검색 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
            	document.getElementById("receiver_zonecode").value = data.zonecode;
                document.getElementById("receiver_address").value = data.address; // 주소 넣기
            }
        }).open();
    });
}
</script>
</html>
