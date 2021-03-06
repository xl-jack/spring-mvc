<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--添加这一句--%>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 18-7-7
  Time: 上午9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book Form</title>
    <style type="text/css">
        @import url("<c:url value="?css/main.css"/>");
    </style>
</head>
<body>
<div id="global">
    <form:form commandName="book" action="save-book" method="post">
        <fieldset>
            <legend>Add a book</legend>
            <p>
                <label for="category">Category: </label>
                <form:select path="category.id" id="category" items="${categories}" itemLabel="name" itemValue="id"/>
            </p>
            <p>
                <label for="title">Title: </label>
                <form:input path="title" id="title"/>
            </p>
            <p>
                <label for="author">Author: </label>
                <form:input path="author" id="author"/>
            </p>
            <p>
                <label for="isbn">ISBN: </label>
                <form:input path="ibsn" id="isbn"/>
            </p>
            <p id="buttons">
                <input id="reset" type="reset" tabindex="4">
                <input type="submit" id="submit" tabindex="5" value="Add Book">
            </p>
        </fieldset>
    </form:form>
</div>
</body>
</html>
