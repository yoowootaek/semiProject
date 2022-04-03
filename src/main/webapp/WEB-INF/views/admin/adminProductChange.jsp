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

<%@ include file="../include/adminInclude/adminCSS.jsp" %> 
  
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
 
 <!-- Navbar -->
<%@ include file="../include/adminInclude/adminNavbar.jsp" %> 

<!-- Sidebar -->
<%@ include file="../include/adminInclude/adminSidebar.jsp" %> 

<form action="adminProductUpdate.do" enctype="multipart/form-data" method="post">
<input name="product_Seq" type="hidden" value="${admin_Product.product_Seq}" />
<!-- main -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>상품 수정 및 삭제</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="adminProductList.do">상품 목록</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">상품 등록</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">상품명</label>
                <input type="text" id="inputName" class="form-control" name="product_Name" value="${admin_Product.product_Name}">
              </div>
              <!--<div class="form-group">
                <label for="inputProjectLeader">삭제 및 수정 비밀번호</label>
                <input type="password" id="inputProjectLeader" class="form-control">
              </div>-->
              <div class="form-group">
              <label for="inputFile">기존 이미지</label>
                <input type="text" class="form-control" name="product1_File" value=${admin_Product.product_MainImg }>
                <label for="inputFile">상품 대표 이미지 첨부</label>
                <input type="file" id="inputFile" class="form-control" name="product1_File">
              </div>
              <div class="form-group">
              <label for="inputFile">기존 이미지</label>
                <input type="text" class="form-control" name="product2_File" value=${admin_Product.product_BrandImg }>
                <label for="inputFile3">상품 브랜드 이미지 첨부</label>
                <input type="file" id="inputFile3" class="form-control" name="product2_File">
              </div>
              <div class="form-group">
                <label for="inputStatus">상품 카테고리</label>
                <select id="inputStatus" class="form-control custom-select" name="product_Category">
                  <option selected>${admin_Product.product_Category }</option>
                  <option>스마트폰</option>
                  <option>데스크탑</option>
                  <option>노트북</option>
                  <option>태블릿</option>
                  <option>가전 제품</option>
                  <option>음향기기</option>
                </select>
              </div>
              <div class="form-group">
                <label for="inputNum">재고량</label>
                <input type="number" id="inputNum" class="form-control" name="product_Vol" value="${admin_Product.product_Vol}" placeholder="숫자만 입력">
              </div>
              <div class="form-group">
                <label for="inputDescription">게시글 내용</label>
                <textarea id="inputDescription" class="form-control" rows="21" name="product_Content">${admin_Product.product_Content}</textarea>
              </div>

            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <div class="col-md-6">
          <div class="card card-secondary">
            <div class="card-header">
              <h3 class="card-title">추가 정보 입력</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputModel">상세 모델명</label>
                <input type="text" id="inputModel" class="form-control" name="product_ModelName" value="${admin_Product.product_ModelName}">
              </div>
              <div class="form-group">
                <label for="inputModel2">상품 요약 설명</label>
                <input type="text" id="inputModel2" class="form-control" name="product_ShortContent" value="${admin_Product.product_ShortContent}">
              </div>
              <div class="form-group">
                <label for="inputModelPrice">상품 가격</label>
                <input type="number" id="inputModelPrice" class="form-control" name="product_Price" value="${admin_Product.product_Price}" placeholder="숫자만 입력">
              </div>
              <!--<div class="form-group">
                <label for="inputEstimatedBudget">상품 담당자</label>
                <input type="text" id="inputEstimatedBudget" class="form-control">
              </div>
              <div class="form-group">
                <label for="inputSpentBudget">상품 담당자 연락처</label>
                <input type="tel" id="inputSpentBudget" class="form-control">
              </div>-->
              <div class="form-group">
              <label for="inputFile">기존 이미지</label>
                <input type="text" class="form-control" name="product3_File" value="${admin_Product.product_SubImg}">
                <label for="inputFile2">상품 추가 이미지</label>
                <input type="file" id="inputFile2" class="form-control" name="product3_File">
              </div>
              <div class="form-group">
                <label>추가 상품 선택</label><br/>
                <label><input type="checkbox" name="addProduct" value="as1" name="product_PlusProduct"> AS 1년 연장 : 15,000원</label>
                <label><input type="checkbox" name="addProduct" value="as2" name="product_PlusProduct"> AS 2년 연장 : 25,000원</label>
                <label><input type="checkbox" name="addProduct" value="as3" name="product_PlusProduct"> AS 3년 연장 : 35,000원</label>
                <label><input type="checkbox" name="addProduct" value="bty" name="product_PlusProduct">보조 배터리</label>
                <label><input type="checkbox" name="addProduct" value="etc" name="product_PlusProduct">etc</label>
              </div>
              <div class="form-group">
                <label for="inputEstimatedDuration">추가 작성내용</label>
                <textarea id="inputEstimatedDuration" class="form-control" rows="20" name="product_Content2">${admin_Product.product_Content2}</textarea>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="col-6">
          <a href="adminProductList.do" class="btn btn-secondary">취소</a>
          <input type="button" value="삭제" class="btn btn-danger float-right" onClick="location.href='adminProductDelete.do?product_Seq=${admin_Product.product_Seq}'">
          <input type="submit" value="수정" class="btn btn-success float-right">
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
<!-- main end-->
</form>
<!-- Main Footer -->
<%@ include file="../include/adminInclude/adminFooter.jsp" %>   
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file="../include/adminInclude/adminPageScript/adminScript.jsp" %> 
<!-- Page specific script -->

</body>
</html>
