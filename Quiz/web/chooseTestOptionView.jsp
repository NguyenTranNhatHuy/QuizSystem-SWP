<%-- 
    Document   : testOption
    Created on : May 31, 2023, 9:50:26 AM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
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
                background: linear-gradient(#A8DEE0, #F9E2AE);
            }

            .content {
                background-color: #fff;
                width: 100%;
                padding: 10%;
                border-radius: 20px;
            }

            .content h1 {
                font-size: 50px;
                padding: 15%;
                text-align: center;
                margin-top: -15%;
            }

            .content form {
                text-align: center;
                font-size: 25px;
                margin-top: -50px;
            }

            .content form input {
                width: 80%;
                padding: 15px;
                margin-top: 20px;
                border-radius: 10px;
                outline: none;
                font-size: 25px;
                text-align: center;
            }

            .content form input[type="submit"]:hover {
                background-color: #6675df;
                cursor: pointer;
                color: #fff;
            }
        </style>
        <div class="container">
            <div class="content">
                <h1>Test option</h1>

                <form action="testoption" method="post">
                    Number of questions:(Maximum ${requestScope.so}) <input type="number" value="1" min="1" max="${requestScope.so}" name="num">    
                    <input type="number" value="${requestScope.id}" name="id" style="display: none" >
                    <br>


                    <input type="submit" value="Begin test">
                </form>
            </div>
        </div>
    </body>
</html>
