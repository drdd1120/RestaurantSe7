<%@page import="booking.BookingDAO"%>
<%@page import="booking.Booking"%>
<%@page import="user.User"%>
<%@page import="user.UserDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="user" class="user.User" scope="session" />
<jsp:setProperty name="user" property="userID" />

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Signin Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href=".\\resources\\css\\bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href=".\resources\css\signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
  
    <%
      // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
      String userID = null;
      if(session.getAttribute("userID") != null){
         userID = (String)session.getAttribute("userID");
      }
   %>
<div class="container">
         <form method="post" action="BookingAction.jsp">
            <div class="py-5 text-center">
               <img class="d-block mx-auto mb-4" src=".\resources\images\seven.svg" width="150" height="100">
               <h2>예약하기</h2>
            </div>
            <div class="row g-3">
               <div class="col-sm-6 center-block" style="float: none; margin: 0 auto;">
                  <h4 class="mb-3">예약</h4>
                  <div class="row g-3">
                     <div class="col-sm-12">
                        <div class="col-12">
                        </div>
                     </div>
                     <div class="col-12">
                        <label for="bookingDateTime" class="form-label">bookingDateTime</label>
                        <input type="text" class="form-control" placeholder="날짜 시간" name="bookingDateTime">      
                     </div>
                     <div class="col-12">
                        <label for="ageOver" class="form-label">ageOver</label>
                        <input type="number" class="form-control" placeholder="대인" name="ageOver">      
                     </div>
                     <div class="col-12">
                        <label for="ageUnder" class="form-label">ageUnder</label>
                        <input type="number" class="form-control" placeholder="소인" name="ageUnder">      
                     </div>
                     
                     
                     <input type="submit" class="btn btn-warning form-control" value="예약하기">
                     </div>
                     </div>
                     </div>
</form>
</div>
  </body>
</html>