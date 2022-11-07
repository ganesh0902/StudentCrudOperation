<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="update">Update</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="deletepage">Delete</a></li>
      <li><a href="#">Search</a></li>
      <li><a href="recordDisplay">Display</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="SearchData" method="get">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="id">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>
</body>
</html>
    