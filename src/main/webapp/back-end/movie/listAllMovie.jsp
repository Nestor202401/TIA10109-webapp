<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.test.movie.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    MovieService movieSvc = new MovieService();
    List<MovieVO> list = movieSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>�Ҧ��q�v��� - listAllMovie.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>�����m�߱ĥ� EL ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�Ҧ��q�v��� - listAllMovie.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�q�v�s��</th>
		<th>�q�v�W��</th>
		<th>�q�v����</th>
		<th>�ɺt</th>
		<th>�t��</th>
		<th>�W�M���</th>
		<th>�U�M���</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="movieVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${movieVO.movieId}</td>
			<td>${movieVO.movieName}</td>
			<td> <c:choose>
                    <c:when test="${movieVO.movieRating eq '1'}">
                        ���M��
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '2'}">
                        �O�@��
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '3'}">
                        ���ɯ�
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '4'}">
                        �����
                    </c:when>
                    <c:otherwise>
                        ����
                    </c:otherwise>
                </c:choose>
			
			</td>
			<td>${movieVO.director}</td>
			<td>${movieVO.actor}</td>
			<td>${movieVO.releaseDate}</td>
			<td>${movieVO.endDate}</td>
			<td>${movieVO.runtime}</td>
			<td>${movieVO.introduction}</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/movie/movie.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="movieId"  value="${movieVO.movieId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/movie/movie.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="movieId"  value="${movieVO.movieId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>