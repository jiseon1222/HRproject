<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 사원 조회</title>
<link rel="stylesheet" href="../Login/adminstyle.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>직원 정보</h1>
<a href="/HRproject/Login/adminhtml.jsp">메인 홈페이지 접속(관리자)</a>
<form action="/HRproject/Employees/selectOne.employees" method="post" style="margin-right: 20px;">
        해당 사번: <input type="text" name="employee_id" placeholder="사번 입력">
        <input type="submit" value="조회" class="btn">
    </form>





<table width="100%" id="employees">
	<tr>
		<th>employee_id</th>
		<th>first_name</th>
		<th>last_name</th>
		<th>email</th>
		<th>phone_number</th>
		<th>hire_date</th>
		<th>job_id</th>
		<th>salary</th>
		<th>commission_pct</th>
		<th>manager_id</th>
		<th>department_id</th>
	</tr>
	<c:forEach items="${dtos }" var="employeesDto">	
		<tr>
			<td>${employeesDto.employee_id}</td>
			<td>${employeesDto.first_name}</td>        	      	
        	<td>${employeesDto.last_name}</td>
        	<td><a href='/HRproject/Employees/selectOne.employees?employee_id=${employeesDto.employee_id }'>${employeesDto.email }</a></td> 
        	<td>${employeesDto.phone_number}</td>
        	<td>${employeesDto.hire_date}</td>
        	<td>${employeesDto.job_id}</td>
        	<td>${employeesDto.salary}</td>
        	<td>${employeesDto.commission_pct}</td>
        	<td>${employeesDto.manager_id}</td>
        	<td>${employeesDto.department_id}</td>
		</tr>
	</c:forEach>
</table>
<a href="/HRproject/Employees/register.jsp" class="btn">사원추가</a>
</body>
</html>