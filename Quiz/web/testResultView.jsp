<%-- 
    Document   : testResultView
    Created on : Jun 7, 2023, 10:06:48 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script>
            function change(id) {
                var x = document.getElementById(id);
                x.style = 'color: red';
            }

            function change2(id) {
                var x = document.getElementById(id);
                x.style = 'color: green';
            }
        </script>

    </head>
    <body>
        <style>
            body{
                background: linear-gradient(#f7f7f7, #f7f7f7);

            }
            .container{
                border: 1px solid black;
                width: 50%;
                margin: 0 auto 10px auto;
                display: flex;
                border-radius: 20px;
                font-family: courier, arial, helvetica;

            }
            .content{
                width: 100%;
                padding: 20px;
            }
            .content p {
                font-size: 20px;
                font-weight: bold;
            }
        </style>
        <h1>Result</h1>
        <c:forEach var="i" items="${requestScope.list.keySet()}">
            <c:set var='x' value="${list.get(i)}"></c:set>


                <div class="container">
                    <div class="content" >
                        <h1> ${i.detail}</h1>

                    <p id="${i.id}A">${i.answerA}</p>
                    <p id="${i.id}B">${i.answerB}</p>
                    <p id="${i.id}C">${i.answerC}</p>
                    <p id="${i.id}D">${i.answerD}</p>

                    <script>
                        change2('${i.id}${i.trueAnswer}');
                    </script>

                    <c:if test='${(x != "")}'>                          
                        <script>
                            change('${i.id}${x}');
                        </script>                 
                    </c:if> 

                </div>
            </div>

        </c:forEach>
    </body>

</html>
