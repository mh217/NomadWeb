<?php
include "conn.php";

if (isset($_GET['city_name'])) {
  $city_name = $_GET['city_name'];

  
  $escaped_city_name = $conn->real_escape_string($city_name);

  $sql = "SELECT * FROM locations WHERE location_name = '$escaped_city_name'";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
  
    $city = $result->fetch_assoc();
    $GLOBALS['selected_city_name'] = $escaped_city_name;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="styles\styleCity.css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo htmlspecialchars($city['location_name']); ?></title>
</head>
<body>

  <div class="container-fluid" style="padding-left: 0; padding-right: 0;">
      <div class="image-text-container" style ="background-image: url(<?php echo htmlspecialchars($city['image_name']); ?>); background-size:cover; background-position:center; height:400px;width:100%; color: white; text-shadow: 2px 2px 4px black; padding=0; opacity:0.8;">
        <div class="text-overlay" style="display:flex; flex-direction:column; justify-content:center; align-items:center; height:100%;">
          <h1><?php echo htmlspecialchars($city['location_name']); ?> </h1>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-8" style="padding:10px">
          <h5 class="description"><?php echo htmlspecialchars($city['description']); ?></h5>
        </div>
      </div>
    </div>

    <div class="container-fluid" id="best-locations">
    <h2 class="acc-naslov">Accommodation</h2>
    <div id="cardsCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
      <?php include 'generateHotelCard.php'; ?>
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
</body>
</html>

<?php
  } else {
    echo "<p>No details found for this city.</p>";
  }
} else {
  echo "<p>Invalid city name.</p>";
}
?>
