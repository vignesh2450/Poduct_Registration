<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product details</title>
		<style>
			body {background-color:hsl(0, 100%, 90%);}
			div  {text-align:center; color: blue;}
			table  {text-align:center; colour:blue; font-size:150%}
			input{font-size:100%; align:right}
			 table{
                border: 1px solid black;
            }
            td{
                margin: 0;
            }
		</style>
</head>
<body>
<div><h3>WELCOME TO PRODUCT DATA</h3>
<table>
<tr colspan="2">
<th >ID</th>
<th>CODE</th>
<th>NAME</th>
<th>COST</th>
<th>GST</th>
<th>NOTE</th>
<th colspan=2>OPERATIONS</th>
</tr>
<c:forEach items="${list}" var="ob">&nbsp;&nbsp;
<tr>
<td colspan="2"><c:out value="${ob.id}"/> </td>
<td><c:out value="${ob.code}"/> </td>
<td><c:out value="${ob.name}"/> </td>
<td><c:out value="${ob.cost}"/> </td>
<td><c:out value="${ob.gst}"/> </td>
<td><c:out value="${ob.note}"/> </td>
<td>
<a href="delete?id=${ob.id}"><input type="button" value="DELETE"></a>&nbsp;&nbsp;&nbsp;
<a href="edit?id=${ob.id}"><input type="button" value="EDIT"></a>
</td>
</tr>
</c:forEach>
</table>
</div>
</body></html>