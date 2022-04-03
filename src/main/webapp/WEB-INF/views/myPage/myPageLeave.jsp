<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자 페이지</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp" %> 

</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
 
 <!-- Navbar -->
<%@ include file="../include/myPageInclude/myPageNavbar.jsp" %> 

<!-- Sidebar -->
<%@ include file="../include/myPageInclude/myPageSidebar.jsp" %> 
<!-- body title -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원탈퇴</h1>
          </div>
          <div class="col-sm-6">
            <!-- <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">페이지이동</a></li>
              <li class="breadcrumb-item active">서브 페이지이동->새로고침</li>
            </ol> -->
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- /body title -->

	
	
        <!-- Main content -->
	<section class="content">
      <div class="container-fluid">
        <div class="row">
        	<div class="col-3"></div>
          <div class="col-6">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">회원탈퇴</h3>

              </div>
              <div class="card-body">
                <!-- <input type="text"> -->
                	
                  <div class="form-group">
                    <label for="exampleInputEmail1">아이디</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="아이디" readonly>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">비밀번호</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">비밀번호확인</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호확인">
                  </div>
                  <div class="form-group">
                  	<label>탈퇴사유</label>
                  	<div class='form-check'>
                  		<input class="form-check-input" type='radio' name='reason'>
                  		<label class='form-check-label'>상품 다양성/가격품질 불만</label>
                  	</div>
                  	<div class='form-check'>
                  		<input class="form-check-input" type='radio' name='reason'>
                  		<label class='form-check-label'>교환/환불/품질불만</label>
                  	</div>
                  	<div class='form-check'>
                  		<input class="form-check-input" type='radio' name='reason'>
                  		<label class='form-check-label'>배송지연</label>
                  	</div>
                  	<div class='form-check'>
                  		<input class="form-check-input" type='radio' name='reason'>
                  		<label class='form-check-label'>이용빈도 낮음</label>
                  	</div>
                  	<div class='form-check'>
                  		<input class="form-check-input" type='radio' name='reason'>
                  		<label class='form-check-label'>기타</label>
                  		<div class="col-sm-6">
                      <!-- textarea -->
                      <div class="form-group">
                        <textarea class="form-control" rows="3" placeholder="입력해주세요." id='textbox'></textarea>
                      </div>
                    </div>
                  	</div>
                  <!-- 테이블1 끝 -->
					
				<button type="submit" class="btn btn-primary" id="deletebtn" style="float: right;">회원탈퇴</button>
				</div>
				
				
              <!-- /.card-body -->
             
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
            
            
     
            <!--  <div class="card-body">
          </div> -->
        </div>
      </div>
      <!-- /.container-fluid -->
    </div>
    </div>
    </section>
	
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<!-- Main Footer -->
<%@ include file="../include/myPageInclude/myPageFooter.jsp" %>   
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file="../include/myPageInclude/myPageScript/myPageScript.jsp" %> 
<!-- Page specific script -->
<%@ include file="../include/myPageInclude/myPageScript/myPageHomeScript.jsp" %> 
</body>
</html>
