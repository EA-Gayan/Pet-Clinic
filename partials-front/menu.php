<?php include('./connection.php')?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hi Pet</title>

  <!-- favicon-->
  <link rel="shortcut icon" href="../favicon.svg" type="image/svg+xml">

  <!-- custom css link -->
  <link rel="stylesheet" href="./assets/style.css">

  <!-- google font link-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;700;800&family=Roboto:wght@400;500;600&display=swap"
    rel="stylesheet">
</head>

<body id="top">

  <!-- #HEADER-->

  <header class="header">

    <div class="header-top">
      <div class="container">

        <ul class="contact-list">

          <li class="contact-item">
            <ion-icon name="mail-outline"></ion-icon>

            <a href="mailto:info@example.com" class="contact-link">hipet2022@gmail.com</a>
          </li>

          <li class="contact-item">
            <ion-icon name="call-outline"></ion-icon>

            <a href="tel:+917052101786" class="contact-link">+94-7052-101-786</a>
          </li>

        </ul>

        <ul class="social-list">

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-facebook"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-instagram"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-twitter"></ion-icon>
            </a>
          </li>

          <li>
            <a href="#" class="social-link">
              <ion-icon name="logo-youtube"></ion-icon>
            </a>
          </li>

        </ul>

      </div>
    </div>

    <div class="header-bottom" data-header>
      <div class="container">

      <img src="./images/logo2.png" alt="Italian Trulli" class="logo"style="width:120px;height:60px;">


        <nav class="navbar container" data-navbar>
          <ul class="navbar-list">

            <li>
              <a href="#home" class="navbar-link" data-nav-link>Home</a>
            </li>

            <li>
              <a href="#service" class="navbar-link" data-nav-link>Services</a>
            </li>

            <li>
              <a href="#about" class="navbar-link" data-nav-link>About Us</a>
            </li>

            <li>
              <a href="#blog" class="navbar-link" data-nav-link>Blog</a>
            </li>

            <li>
              <a href="./PetShop/" class="navbar-link" data-nav-link>Pet Shop</a>
            </li>

          </ul>
        </nav>

        <a href="./appointment-log.php" class="btn">Book appointment</a>

        <button class="nav-toggle-btn" aria-label="Toggle menu" data-nav-toggler>
          <ion-icon name="menu-sharp" aria-hidden="true" class="menu-icon"></ion-icon>
          <ion-icon name="close-sharp" aria-hidden="true" class="close-icon"></ion-icon>
        </button>

      </div>
    </div>

  </header>
</body>
</html>
