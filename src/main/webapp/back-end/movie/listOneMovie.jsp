<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="com.test.movie.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
  MovieVO movieVO = (MovieVO) request.getAttribute("movieVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<title>電影資料 - listOneMovie.jsp</title>

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
	width: 600px;
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

<h4>此頁暫練習採用 Script 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>員工資料 - listOneMovie.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>電影編號</th>
		<th>電影名稱</th>
		<th>電影等級</th>
		<th>導演</th>
		<th>演員</th>
		<th>上映日期</th>
		<th>下映日期</th>
		<th>片長</th>
		<th>介紹</th>
	</tr>
	<tr>
		<td><%=movieVO.getMovieId()%></td>
		<td><%=movieVO.getMovieName()%></td>
		<td> <c:choose>
                    <c:when test="${movieVO.movieRating eq '1'}">
                        普遍級
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '2'}">
                        保護級
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '3'}">
                        輔導級
                    </c:when>
                    <c:when test="${movieVO.movieRating eq '4'}">
                        限制級
                    </c:when>
                    <c:otherwise>
                        未知
                    </c:otherwise>
                </c:choose>
		
		</td>
		<td><%=movieVO.getDirector()%></td>
		<td><%=movieVO.getActor()%></td>
		<td><%=movieVO.getReleaseDate()%></td>
		<td><%=movieVO.getEndDate()%></td>
		<td><%=movieVO.getRuntime()%></td>
		<td><%=movieVO.getIntroduction()%></td>
	</tr>
</table>

</body>
</html>