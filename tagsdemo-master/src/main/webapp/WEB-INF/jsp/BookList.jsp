<%@ page import="java.util.List" %>
<%@ page import="domain.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 18-7-7
  Time: 上午9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Book List</title>
    <style type="text/css">
        @import url("<c:url value="/css/main.css"/>");
    </style>
</head>
<body>
<div id="global">
    <h1>Book List</h1>
    <a href="<c:url value="/input-book"/>">Add Book</a>
    <table>
        <tr>
            <th>Category</th>
            <th>Title</th>
            <th>ISBN</th>
            <th>Author</th>
            <th>Price</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
                <td>${book.category.name}</td>
                <td>${book.title}</td>
                <td>${book.ibsn}</td>
                <td>${book.author}</td>
                <td>${book.price}</td>
                <td><a href="edit-book/${book.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
