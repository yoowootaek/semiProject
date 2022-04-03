<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<style type="text/css">

#main_blank{
width : 55%;
display: block; 
margin: 0px auto;
}
form{
border: 1px solid #E4E7ED;

}

#boardt{
width: 150px;
background-color:#00c2cb;
color:#fff;
}

#boardd{
width:800px;
}

#content{
width:1000px;
height: 500px;
}

</style>
		<!-- 여기에 헤드 -->
	<%@ include file="../include/homeInclude/head.jsp" %> 
<body>
	<!-- 여기에 헤더 -->	
	<%@ include file="../include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="../include/homeInclude/top.jsp" %>

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">게시판</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">게시판</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->


<div id="main_blank">
        <button type="button" class="btn btn-primary">전체글</button>
        <button type="button" class="btn btn-info">공지사항</button>
        <button type="button" class="btn btn-info">이벤트</button>
        <br><br>
        
        <h1>글 상세</h1>		
	
		<form id="frm" method="post">
			<input name="board_Seq" type="hidden" value="${board.board_Seq}" />
			 
        <table class="table table-hover">
            
                <tr>
                    <th id="boardt">제목</th>
                    <td id="boardd" align="left">${board.board_Title }</td>
                    <th id="boardt">등록일</th>
                    <td id="boardd" align="left">${board.board_Date }</td>
                </tr>
                
                <tr>
                    <th id="boardt">카테고리</th>
                    <td align="left">${board.board_Category }</td>
                    <th id="boardt">작성자</th>
                    <td id="boardd" align="left">${board.account_Id }</td>
                </tr>
                
                <tr >
                    <th id="boardt">내용</th>
                    <td id="content" align="left" colspan="3">${board.board_Content }</td>
                </tr>
                <tr >
                    <th id="boardt">내용</th>
                    <td id="content" align="left" colspan="3">${board.board_Content2 }</td>
                </tr>
                <tr >
                <td colspan="4" align="center">
						<a href='../resources/upload/${board.board_RealMainImg}'>${board.board_MainImg }</a><br/><br/><br/><!-- 파일을 다운받거나 새창으로 보여줌. -->
						<img width='300' src='../resources/upload/${board.board_RealMainImg} '>	<!-- 파일의 진짜이름을 경로뒤에 붙을수있게 적는다. -->				
					</td>
				</tr>
        </table>
</form>
        <br><br><br><br>
        <a href="blank.do"><button type="button" id="fbutton" class="btn btn-info float-right" >목록</button></a>&nbsp;
        <a href="productInsertBoard.do"><button type="button"  id="fbutton"class="btn btn-info" >글등록</button></a>&nbsp; 
		<a href="productDeleteBoard.do?b_id=${board.board_Seq }"><button type="button" id="fbutton" class="btn btn-info" >글삭제</button></a>

    </div>


		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>
</body>
</html>