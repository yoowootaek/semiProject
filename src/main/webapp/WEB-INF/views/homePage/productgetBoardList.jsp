<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 목록</title>
</head>
<body>
		<h1>게시글 목록</h1>
		
	<table border="1">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="100">카테고리</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<!-- 추가 -->
				<th bgcolor="orange" width="150">파일이름</th>
				<th bgcolor="orange" width="100">파일용량</th>				
			</tr>
			<c:forEach items="${productgetBoardList }" var="board">
				<!-- 프라퍼티이름 변경 -->
				<tr>
					<td>${board.board_Seq }</td>
					<td>${board.board_Category }</td>
					<td align="left"><a href="productgetBoard.do?b_id=${board.board_Seq}">
							${board.board_Title }</a></td>
					<td>${board.account_Id }</td>
					<td>${board.board_Date }</td>
					<td>${board.b_count }</td>
					<!-- 추가 -->
					<%-- <td>
					 <c:choose>
					    <c:when test="${board.b_fsize==0}">첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src="../resources/imag/disk.gif">${board.b_fname}
					    </c:otherwise>
					 </c:choose>					  
					</td>					
					<td>${board.b_fsize}byte</td> --%>
				</tr>
			</c:forEach>
		</table>
	
		<br> <a href="productInsertBoard.do">새글 등록</a>
</body>
</html>