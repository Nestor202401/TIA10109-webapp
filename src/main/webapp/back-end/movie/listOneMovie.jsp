<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="com.test.movie.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
  MovieVO movieVO = (MovieVO) request.getAttribute("movieVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>

<html>
<head>
<title>�q�v��� - listOneMovie.jsp</title>

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

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>���u��� - listOneMovie.jsp</h3>
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
	<tr>
		<td><%=movieVO.getMovieId()%></td>
		<td><%=movieVO.getMovieName()%></td>
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