<%-- 
    Document   : endpointdoc
    Created on : Apr 23, 2018, 2:31:59 PM
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="container">
                <h1>Spring MVC 3.1 Demo Endpoints</h1>
                <c:forEach items="${handlerMethods}" var="entry">
                    <div>
                        <hr>
                        <p><strong>${entry.value}</strong></p>      
                    </div>
                    <div class="span-3 colborder">
                        <p>
                            <span class="alt">Patterns:</span><br> 
                            <c:if test="${not empty entry.key.patternsCondition.patterns}">
                                ${entry.key.patternsCondition.patterns}
                            </c:if>
                        </p>
                    </div>
                </c:forEach>
                </body>
                </html>
