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

<form action="adminBoardSave.do" enctype="multipart/form-data" method="post" id="boardForm">
<!-- main -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>게시글</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="adminBoardList.do">게시글 목록</a></li>
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
              <h3 class="card-title">게시글 작성</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">게시글 제목</label>
                <input type="text" id="inputName" class="form-control" name="board_Title" placeholder="제목">
              </div>
              <div class="form-group">
                <label for="inputProjectLeader">삭제 및 수정 비밀번호</label>
                <input type="password" id="inputProjectLeader" class="form-control" name="board_Password" placeholder="비밀번호">
              </div>
              <div class="form-group">
                <label for="inputStatus">게시글 카테고리</label>
                <select id="inputStatus" class="form-control custom-select" name="board_Category">
                  <option selected disabled>카테고리 선택</option>
                  <option>공지사항</option>
                  <option>이벤트</option>
                  <option>광고</option>
                </select>
              </div>
              <div class="form-group">
                <label for="inputDescription">게시글 내용</label>
                <textarea id="inputDescription" class="form-control" rows="15" name="board_Content"></textarea>
              </div>
              <div class="form-group">
                <label for="inputFile">파일 추가</label>
                <input type="file" id="inputFile" class="form-control" name="board_File">
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
                <label for="inputEstimatedBudget">담당자</label>
                <input type="text" id="inputEstimatedBudget" class="form-control">
              </div>
              <div class="form-group">
                <label for="inputEstimatedDuration">추가 작성내용</label>
                <textarea id="inputEstimatedDuration" class="form-control" rows="26"  name="board_Content2"></textarea>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="col-6">
          <a href="adminBoardList.do" class="btn btn-secondary">취소</a>
          <input type="submit" value="작성" class="btn btn-success float-right" id="boardinput" required >
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
<%@ include file="../include/adminInclude/adminPageScript/adminChange.jsp" %> 
</body>
</html>
