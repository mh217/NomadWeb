<?php
session_start(); 
include "conn.php";

if (isset($_GET['hotel_name'])) {
  $hotel_name = $_GET['hotel_name'];
  $escaped_hotel_name = $conn->real_escape_string($hotel_name);

  $sql = "SELECT * FROM hotels WHERE hotel_name = '$escaped_hotel_name'";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    $hotel = $result->fetch_assoc();
    $GLOBALS['selected_hotel_name'] = $escaped_hotel_name;

    $image_urls = json_decode($hotel['image_urls'], true);

    if ($image_urls === null && json_last_error() !== JSON_ERROR_NONE) {
        echo "<p>Error decoding JSON: " . json_last_error_msg() . "</p>";
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles\styleCity.css">
  <title><?php echo htmlspecialchars($hotel['hotel_name']); ?></title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
    .gallery-item {
      margin-bottom: 15px;
    }
    .gallery-item img {
      max-height: 200px;
      object-fit: cover;
      width: 100%;
    }
  </style>
</head>
<body>

  <div class="container-fluid" style="padding-left: 0; padding-right: 0;">
    <div class="image-text-container" style="background-image: url(<?php echo htmlspecialchars($hotel['image_name']); ?>); background-size:cover; background-position:center; height:400px;width:100%; color: white; text-shadow: 2px 2px 4px black; padding=0; opacity:0.8;">
      <div class="text-overlay" style="display:flex; flex-direction:column; justify-content:center; align-items:center; height:100%;">
        <h1><?php echo htmlspecialchars($hotel['hotel_name']); ?> </h1>
      </div>
    </div>


    <div class="row">
      <div class="col-8" style="padding:10px">
        <h5 class="description">Cijena noćenja: <?php echo htmlspecialchars($hotel['price']); ?>€</h5>
      </div>
      <div class="col-4" style="padding:10px;">
        <div class="col" id="des-cont">
        <form action="seeMap.php" method="GET">
            <input type="hidden" name="hotel_name" value="<?php echo htmlspecialchars($hotel['hotel_name']); ?>">
            <button type="submit" class="btn btn-success btn-lg btn-block">See map</button>
        </form>
        </div>

        <?php
          if(isset($_SESSION['uloga']) && $_SESSION['uloga']=="user") { 
              echo '<div class="col" id="des-cont">
                      <form action="rezervacije.php" method="GET">
                          <input type="hidden" name="hotel_name" value="' . htmlspecialchars($escaped_hotel_name) . '">
                          <button type="submit" class="btn btn-success btn-lg btn-block">Reserve</button>
                      </form>
                    </div>';
          }
        ?>

        
        </div>
      </div>
    </div>
  </div>


  <div class="container-fluid">
    <h2 class="acc-naslov">Galerija</h2>
    <div class="row">
      <?php
        if ($image_urls) {
          foreach ($image_urls as $url) {
            echo '<div class="col-lg-3 col-md-4 col-6 gallery-item">';
            echo '<img src="' . htmlspecialchars($url) . '" class="img-fluid" alt="...">';
            echo '</div>';
          }
        }
      ?>
    </div>
  </div>

</body>
</html>
<?php
  } else {
    echo "<p>No details found for this hotel.</p>";
  }
} else {
  echo "<p>Invalid hotel name.</p>";
}
?>
