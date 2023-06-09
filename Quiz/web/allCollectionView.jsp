<%-- 
    Document   : allCollectionView
    Created on : May 30, 2023, 5:51:36 PM
    Author     : quoct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/nav.css"/>
        <style>
            body{
                background-color: #f6f7fb;
                font-family: courier, arial, helvetica;
            }

            .container{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
            }
            .tittle{
                padding: 10px 0 30px 0;
            }

            .content{
                border: 1px solid black;
                width: 30%;
                margin: 0 20px 20px 10px;
                text-align: center;
                border-radius: 15px;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .content:hover{
                /*                box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.7);*/
                box-shadow: 10px 10px 5px lightblue;
                cursor: pointer;
            }
            .content p {
                font-size: 20px;
                font-weight: bold;
            }

            @media (max-width: 800px) {
                .container {
                    flex-direction: column;
                }
                .content{
                    width: 60%;
                }
            }
        </style>
    </head>
    <body>
        <div id="header">
            <!-- Begin: Nav -->
            <div class="header-logo">
                <p class="title">FLearn</p>
            </div>
            <div style="margin-top: 0px" class="header-content">
                <ul id="nav">
                    <li><a class="active" href="home.jsp">Home</a></li>
                        <c:if test="${accountS.role ==0}"> 
                        <li><a class="" href="admin.jsp">Admin Page</a></li>
                        </c:if>
                    <li><a class="" href="listcollectiondetail">Courses </a></li>
                    <li><a class="" href="#">Contact</a></li>
                        <c:if test="${sessionScope.accountS==null}">                
                        <li><a  href="login.jsp">Join now</a></li>
                        </c:if>
                        <c:if test="${sessionScope.accountS!=null}">
                        <li>
                            <a href="#">
                                Account: ${sessionScope.accountS.username}

                            </a>
                            <ul class="subnav">
                                <li><a href="profileServlet?pid=${accountS.id}">My profile</a></li>
                                <li><a href="logoutServlet">Logout</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
        <h1 style="margin: 80px 0;">There are all collection</h1>      
        <div class="container">
            <c:forEach var="i" items="${requestScope.listCollectionDetail}">

                <div class="content">
                    <p> ${i.name}</p>
                    <p>Author: ${i.accountID.firstname} ${i.accountID.lastname}</p>
                    <a href="QuestionList?id=${i.id}" style="text-decoration: none"><h1>Learn</h1></a>
                </div>

            </c:forEach>
        </div>
    </body>
</html>
