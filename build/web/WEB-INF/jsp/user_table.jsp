<%-- 
    Document   : teachers_table
    Created on : 28 avr. 2019, 00:06:46
    Author     : Nader
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Teachers
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="assets/img/user.png">
          </div>
        </a>
        <a href="" class="simple-text logo-normal">
         Users
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
                   
          <li>
            <a href="add_teacher.htm">
              <i class="nc-icon nc-single-02"></i>
              <p>Add Teacher</p>
            </a>
          </li>
          <li>
            <a href="teachers_table.htm">
              <i class="nc-icon nc-tile-56"></i>
              <p>Teachers Table</p>
            </a>
          </li>
          <li>
            <a href="user_table.htm">
              <i class="nc-icon nc-tile-56"></i>
              <p>User Table</p>
            </a>
          </li>
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="">Users </a>
          </div>
        </div>
           <div>
              <a class="navbar-brand" href="index.htm"><font color="red">Admin log out</font></a>
            </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header panel-header-sm">
  
  
</div> -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Users Table</h4>
              </div>
              <div class="card-body">
                <div >
                  <table class="table">
                    <thead class=" text-primary">
                        <th>
                        Id
                      </th>
                      <th>
                        Firstname
                      </th>
                      <th>
                        Lastname
                      </th>
                      <th>
                        Email
                      </th>
                      <th>
                        School
                      </th>
                    </thead>
                    <tbody>
                    <c:forEach var="dato" items="${Listlogin}">
                     <tr>
                        <td>${dato.id}</td>
                        <td>${dato.firstname}</td>
                        <td>${dato.lastname}</td>
                        <td>${dato.email}</td>
                        <td>${dato.school}</td>
                        <td align="right">
                         <a href="delete_user.htm?id=${dato.id}" class="btn btn-primary btn-round">Delete</a>
                        </td>
                     </tr>
                     </c:forEach>   
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
         
        </div>
    
    </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">

            <div class="credits ml-auto">
              <span class="copyright">
                ©
                <script>
                  document.write(new Date().getFullYear())
                </script>
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
</body>

</html>