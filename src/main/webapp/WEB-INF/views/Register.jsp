<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Register Product</title>
		<style>
			body {background-color:hsl(0, 100%, 90%);}
			div  {text-align:center; color: blue;}
			pre  {colour:blue; font-size:150%}
			input{font-size:100%; align:right}
		</style>
	</head>
	<body>
		<div><br><br><h3>WELCOME TO E-COMMERCE PRODUCT REGISTRATION</h3><br>
		<form:form action="save" method="POST" modelAttribute="product">
			<pre>
ID   : <form:input path="id" readOnly="true"/><br>
CODE : <form:input path="code"/><br>
NAME : <form:input path="name"/><br>
COST : <form:input path="cost"/><br>
GST  : <form:select path="gst"><br>
<form:option value="5">5%-SLAB</form:option>
<form:option value="12">12%-SLAB</form:option>
<form:option value="18">18%-SLAB</form:option>
<form:option value="22">22%-SLAB</form:option>
</form:select><br>
NOTE : <form:textarea path="note"/><br>
					<c:choose>
						<c:when test="${'EDIT' eq Mode}">
<input type="submit" value="UPDATE"/>
						</c:when>
						<c:otherwise>
<input type="submit" value="CREATE"/> &nbsp; &nbsp; <a href="all"><input type=button value="VIEW"></a> 
						</c:otherwise>
					</c:choose>
	${message}
			</pre>
		</form:form>
		</div>
	</body>
</html>