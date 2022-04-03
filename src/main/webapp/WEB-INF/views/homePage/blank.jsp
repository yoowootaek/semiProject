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
						<h3 class="breadcrumb-header">고객센터</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">고객센터</li>
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
        <button type="button" class="btn btn-info">자주묻는 질문</button>
        <button type="button" class="btn btn-info">문의</button>
        <br><br>
        <table class="table table-hover">
            
                <tr>
                    <th>번호</th>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            
            
               <c:forEach items="${productgetBoardList }" var="board">
				<!-- 프라퍼티이름 변경 -->
				<tr>
					<!-- 번호 -->
					<td align="left">${board.board_Seq }</td>
					<!-- 카테고리 -->	
					<td>${board.board_Category }</td>
					<!-- 제목 -->
					<td><a href="productgetBoard.do?board_Seq=${board.board_Seq }">${board.board_Title }</a></td>
					<!-- 글쓴이 -->
					<td>${board.account_Id }</td>
					<!-- 작성일 -->
					<td>${board.board_Date }</td>
					<!-- 추가 첨부파일~상세페이지에 들어가야할듯-->
					<%-- <td>
					 <c:choose>
					    <c:when test="${board.b_fsize==0}">첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="resources/images/disk.gif">${board.b_fname}
					    </c:otherwise>
					 </c:choose>					  
					</td>					
					<td>${board.b_fsize}byte</td>--%>
				</tr> 
			</c:forEach>
                
            </tbody>
        </table>

        <br><br>
        <div class="containar">
	        <form action="blank.do" method="get"> <%-- <c:if test="${condition eq 'board_Category'}">selected</c:if>	 --%>
					<select name="condition" id="condition">
					<option value="전체" <c:if test="${condition eq 'board_Category' }">selected</c:if>>전체</option>
					<option value="공지사항" <c:if test="${condition eq 'board_Category'}">selected</c:if>>자주묻는 질문</option>
					<option value="이벤트" <c:if test="${condition eq 'board_Category'}">selected</c:if>>문의</option>
					<option value="기타" <c:if test="${condition eq 'board_Category'}">selected</c:if>>기타</option>
					<option value="작성자" <c:if test="${condition eq 'board_Title' }">selected</c:if>>작성자</option>
				</select>
				<input type="text" name="keyword" id="keyword"placeholder="검색 ..." value="${keyword }"/>
				<button type="submit">검색</button>
			</form><!-- condition이라는 파라미터 명으로 넘어간다. -->
		</div><!-- container -->
        <br><br>
        <a href="productInsertBoard.do"><button type="button" class="btn btn-info float-right">글쓰기</button></a>

        <br><br>
        
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">Previous</a></li>
              <% for(int i=1; i<=5; i++){%><!-- 5자리에 마지막 페이지번호를 넣어야한다. -->
              <li class="page-item"><a class="page-link" href="#"><%out.print(i); %></a></li>
              <%} %>
              <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
        
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