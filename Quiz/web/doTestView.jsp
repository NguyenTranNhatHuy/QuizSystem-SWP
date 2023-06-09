<%-- 
    Document   : doTestView
    Created on : May 31, 2023, 11:37:54 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h3{
                display: inline-block;
            }
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }

            body {
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                font-family: courier, arial, helvetica;
                background: linear-gradient(#f7f7f7, #f7f7f7);

            }

            .form-control {
                padding: 20px;
            }

            .container {
                border: 1px solid black;
                width: 50%;
                margin: 0 auto 10px auto;
                border-radius: 10px;
                display: flex;
                padding: 20px;
                margin-top:20px;
            }
            input[type="submit"] {
                padding: 20px;
                width: 50%;
                font-family: courier, arial, helvetica;
                font-size: 25px;
                font-weight: bold;

            }
            input[type="submit"]:hover{
                cursor: pointer;
                background-color: #6675df;
                color: #fff;

            }
        </style>

    </head>
    <body>
        <form action="checkanswer">
            <c:forEach var="i" items="${requestScope.list}">            
                <div class="container">
                    <div style="width: 100%">
                        <h1> ${i.detail}</h1>

                        <input name="${i.id}" value="A" id="${i.answerA}" type="radio">
                        <h3>${i.answerA}</h3>
                        <br>
                        <input name="${i.id}" value="B" id="${i.answerB}" type="radio">
                        <h3>${i.answerB}</h3>

                        <br>

                        <input name="${i.id}" value="C" id="${i.answerC}" type="radio">
                        <h3>${i.answerC}</h3>
                        <br>


                        <input name="${i.id}" value="D" id="${i.answerD}" type="radio">
                        <h3>${i.answerD}</h3>
                        <br>


                    </div>
                </div>
                <c:set var="allID" value="${allID} ${i.id}"></c:set>
            </c:forEach>
            <input type="text" name="allID" value="${allID}" hidden="">
            <div style="width: 100%; display: flex; justify-content: center; align-items: center;">
                <input type="submit">

            </div>
        </form>

    </body>
</html>
