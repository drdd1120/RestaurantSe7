<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Fixed top navbar example · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/navbar-fixed/">

    

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
    <link href="navbar-top-fixed.css" rel="stylesheet">
  </head>
  <body>
    
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="Main.jsp" style="color: #FFFFFF; font-weight:bold;"><img src="./resources/images/seven.svg" style="position:relative; bottom:2px; width: 27px; margin-left: 5px;"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #FFFFFF; font-weight:bold;">소개</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false" style="color: #FFFFFF; font-weight:bold;">예약</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="Booking.jsp">예약하기</a></li>
              <li><a class="dropdown-item" href="ReservationInfo.jsp" >예약정보 확인</a></li>
              <li><a class="dropdown-item" href="#">예약 수정</a></li>
              <li><a class="dropdown-item" href="ReservationInfo.jsp">예약 취소</a></li>
            </ul>
          </li>
      </ul>
      <ul class="navbar-nav navbar-right">
      <li class="nav-item">
        <%
            String ID = (String)session.getAttribute("userID");
            
            if(ID!=null){
               %>
          	 <a class="nav-link" href="MyInfo.jsp" style="color: #FFFFFF;font-weight:bold;height: 40px;"><img src="./resources/images/profile.png" style="position:relative; bottom:2px;"></a>
			 </li>
          <%
               }
            else{
               %>
             <a class="nav-link" href="Login.jsp" style="color: #FFFFFF; font-weight:bold;"></a>
             </li>
            <%
            }
            %>
       
            <li class="nav-item">
           <%
            ID = (String)session.getAttribute("userID");
            
            if(ID!=null){
               %>
               <a class="nav-link" href="LogoutAction.jsp" style="color: #FFFFFF; font-weight:bold;">로그아웃</a>
               <%
               }
            else{
               %>
               
               <ul class="navbar-nav navbar-right">       
               <li class="nav-item">            
               <a class="nav-link" href="Login.jsp" style="color: #FFFFFF; font-weight:bold;">로그인</a>
               </li>
               <li class="nav-item">
               <a class="nav-link" href="Join.jsp" style="color: #FFFFFF; font-weight:bold;">회원가입</a>
               </li>
               </ul>
            <%
            }
            %>
            </li>
         </ul>
    </div>
  </div>
</nav>

     <script src=".\resources\js\bootstrap.bundle.min.js"></script>

      
  </body>
</html>