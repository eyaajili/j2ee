<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous"/>
     <style>
      body {
        background-image: linear-gradient(90deg,rgba(243,231,242,0.9),rgba(194,109,188,0.9)) ;
        background-size: cover;
       
      }
      </style>
  
  <style>
    .title{
        color: white;
         font-weight: 700;
        text-align: center;
        margin-top: 20PX;
        text-shadow: 2px 5px 25px white;;
    }
    label{
      color: white;
    }

    .request{
      margin-top: 30px;
    }

    .field{
      margin-top: 10PX;
      margin-bottom: 10PX;
    }

    .container{
      border-radius: 20PX;
    }
  </style>
</head>
<body>
    <div class="container" style="background-image: linear-gradient(90deg,#ee82d3,rgba(194, 109, 188, 0.9));">
    <div class="row">
      <h1 class="title">Request to add a restaurant</h1>
    </div>
    <div class="row">
      <form method="get" action="Servlet">

        <div class="field">
          <label class="form-label" for="name">name</label>
          <input name="name" class="form-control" type="text">
        </div>
                <div class="field">
          <label class="form-label" for="phone">phone</label>
          <input name="phone" class="form-control" type="text">
        </div>
        
        <div class="field">
          <label class="form-label" for="specialty">specialty</label>
          <input name="specialty" class="form-control" type="text">
        </div>
        <div class="field">
          <label class="form-label" for="address">address</label>
          <input name="address" class="form-control" type="text">
        </div>
                <div class="field">
          <label class="form-label" for="imageUrl">imageUrl</label>
          <input name="imageUrl" class="form-control" type="text">
        </div>

        <div class="row">
          <div class="col-3">
          </div>
          <div class="col-6">
          <div class="d-grid gap-2">
          <button class="btn" style="margin-top: 10px; margin-bottom: 30px; background-color: #ee82d3; color: white;"value="Add" type="submit">submit</button>
          </div>
          </div>
          <div class="col-3"></div>
        </div>
        <input type="hidden" name="action" value="addRestaurant">
      </form>
    </div>
    
    <br>
    <div class="row">
    <button class="btn" style="margin-top: 10px; margin-bottom: 30px; background-color: #ee82d3; color: white;">
      <a href="Servlet?action=listRestaurant">Back to Restaurant List</a>
    </button>
  </div>
   </div>      
</body>
</html>
		