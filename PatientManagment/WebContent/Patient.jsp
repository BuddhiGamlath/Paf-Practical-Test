<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Patient Managment</title>
</head>
<body>


 <h1>Patient Management</h1>
      <form>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Pid</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px"  class="form-control" id="inputEmail3" placeholder="pid">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">First Name</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Firstname">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
    <div class="col-sm-10">
      <input type="password" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Last Name">
    </div>
  </div> 
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">User Name</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="User Name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Age</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="age">
    </div>
  </div>
          
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
        
      </div>
    </div>
  </fieldset>
   <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Email">
    </div>
  </div> 
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Address">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Contact Number</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Contact Number">
    </div>
  </div> 
   <div class="form-group row">
       <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div> 
   <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Confirm Password</label>
    <div class="col-sm-10">
      <input type="text" style= "width: 500px" class="form-control" id="inputPassword3" placeholder="Confirm Password">
    </div>
  </div>       
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="button" class="btn btn-primary">Save</button>
      <input type= "hidden" id="hidPatientIDsave" name="hidPatientIDsave" value="">
    </div>
  </div>
</form>
      
<div id="alertSuccess" class="alert alert-success">
   <%
       out.print(session.getAttribute("statusMsg"));
   %>
</div>
<div id="alertError" class=alert alert danger"></div>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>



</body>
</html>