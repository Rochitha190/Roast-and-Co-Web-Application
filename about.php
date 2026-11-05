<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="styles.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <h3>why choose us?</h3>
         <p>Experience the best of coffee from the comfort of your home with our online coffee "ROAST & CO". Discover new flavors and favorites where every sip tells a story of passion and quality.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <h3>what we provide?</h3>
         <p>ROAST & CO. provides a seamless online coffee shopping experience, offering a curated selection of speciality coffees, convenient delivery options and a passion for great brews.</p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reivews</h1>

   <div class="box-container">

      <div class="box">
         <p>The menu section is well-organized with clear descriptions and pricing. It’s great that you included special brews and seasonal offerings.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Amith</h3>
      </div>

      <div class="box">
         <p>The introduction and brand story add a personal touch. It helps connect with the customers and gives meaning to the brand Roast & Co.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Smitha</h3>
      </div>

      <div class="box">
         <p>The overall design of the website is clean, modern, and visually inviting — it really reflects the cozy atmosphere of a coffee shop.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>John</h3>
      </div>

      <div class="box">
         <p>The navigation is smooth, It's easy to find everything, from the menu to contact details, without feeling overwhelmed.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Deo</h3>
      </div>

      <div class="box">
         <p>The images used on the site are high quality and aesthetically pleasing, making the coffee and ambiance look irresistible!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Lorem</h3>
      </div>

      <div class="box">
         <p>The website looks great on both desktop and mobile. The layout adjusts perfectly, making it convenient for users on the go.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Lisa</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<script src="script.js"></script>

</body>
</html>