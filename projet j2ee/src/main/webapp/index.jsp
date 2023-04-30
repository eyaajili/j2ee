<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <title>eat better</title>
    <style>
      body {
        background-image: linear-gradient(90deg,rgba(243,231,242,0.9),rgba(194,109,188,0.9)), url(https://i.pinimg.com/564x/6f/c4/76/6fc476c7bf52d205f3c68b8dfe32276b.jpg) ;
        background-size: cover;
       
      }
      </style>
</head>
<body>
<div class="container">
    <div class="row">
        <img style=" height: 200PX; object-fit: cover;  align-self: auto;" src="https://img.freepik.com/free-vector/cafe-interior-with-coffee-machine-cashier-desk-refrigerator-chalkboard-menu-tables-with-couches-bar-chairs_107791-3398.jpg?w=826&t=st=1679790068~exp=1679790668~hmac=fe270562982c7c9ab555c08faf697abe6e68fa9567b16f3e28265d68d6fcd38a" alt="">
    </div>
<div class="row">
  <nav class="navbar navbar-expand  bg-body-tertiary" style="border-radius: 15px;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Eat Better</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="Servlet?action=listRestaurant" >Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="Servlet?action=login" >Log in</a>
          </li>
          
        </ul>
        <form class="d-flex" role="search">
            <label for="search" class="form-label"><img style="width: 35px;" src="https://img.icons8.com/nolan/256/search-more.png"></label>
          <input id="search" class="form-control me-2" type="search" aria-label="Search">
          <button class="btn" style="border-color: violet;type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</div>

</div>
  

</body>
</html>