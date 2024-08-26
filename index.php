<?php
session_start(); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Nomad</title>
    <style>
      .navbar-nav {
            display: flex;
            justify-content: center;
            width: 100%;
        }
        .nav-item {
            margin: 0 10px;
        }
    </style>
    
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="func.js"></script>
    

    <nav class="navbar navbar-expand-lg navbar-light sticky-top" id ="navbar">
        <div class="container">
            <img src="Images\pngtree-vacation-and-travel-icon-png-image_4032146-removebg-preview.png" alt="icon" class="rounded float-start" id="navImg" >
            Nomad
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="map.php">Map</a>
              </li>
              <?php
              if(isset($_SESSION['uloga']) && $_SESSION['uloga']=="admin") {
                echo '<li class="nav-item">
                        <a class="nav-link" href="adminRezerv.php">Reservations</a>
                    </li>'; 
                echo '<li class="nav-item">
                        <a class="nav-link" href="adminMess.php">Messages</a>
                      </li>'; 
              }
              if(isset($_SESSION['uloga']) && $_SESSION['uloga']=="user") {
                echo '<li class="nav-item">
                        <a class="nav-link" href="profil.php">Profil</a>
                      </li>'; 
              }
              ?>
              <?php
              if(isset($_SESSION['logged'])) {
                echo
                '<li class="nav-item">
                    <a class="nav-link" href="odjava.php">Logout</a>
                </li>';
              }
              else {
                echo '<li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                      </li>';
              }
              ?>
              

          </div>
        </div>
    </nav>

    <div class="container-fluid no-padding">
      <div class="image-text-container">
        <div class="text-overlay">
          <h1>Welcome to Croatia!</h1>
          <p>Find your paradise. Start your adventure.</p>
        </div>
      </div>
    </div>

    <div class="container-fluid" id="best-locations">
    <h1>Best Locations</h1>
    <div id="cardsCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <?php include 'generateCards.php'; ?>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#cardsCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#cardsCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>


  <?php

  if(isset($_SESSION['logged']) == false) {
    echo '<div class="container mt-5 mb-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card shadow-lg" id="contact-card">
            <div class="card-body">
              <h2 class="card-title text-center mb-4">Contact Us</h2>
              <form id="contactForm">
                <div class="row mb-3">
                  <div class="col-sm-12">
                    <input type="email" name="email" class="form-control form-control-lg" id="inputEmail" placeholder="Email" required>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-sm-12">
                    <textarea class="form-control form-control-lg" name="message" id="message" rows="6" placeholder="Message" required></textarea>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12 text-center">
                    <button type="submit" class="btn btn-success btn-lg btn-block" style="background-color: #ED8C5E; border-color: #ED8C5E; font-size: 1.7rem;">Send</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>';
  }
  ?>


    <div class="b-example-divider"></div>

<div class="container-fluid" id="footer">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <span class="mb-3 mb-md-0 text-muted">Welcome to Nomad Inc.</span>
    </div>
    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex" id="socialmedia">
      <li class="ms-3"><a class="text-muted" href="https://www.facebook.com/?locale=hr_HR"><img src="Images\image-removebg-preview.png" alt="facebook"></a></li>
      <li class="ms-3"><a class="text-muted" href="https://www.instagram.com/"><img src="Images\image-removebg-preview (2).png" alt="instagram"></a></li>
      <li class="ms-3"><a class="text-muted" href="https://x.com/?mx=2"><img src="Images\image-removebg-preview (3).png" alt="x"></a></li>
    </ul>
  </footer>
</div>

</body>
</html>