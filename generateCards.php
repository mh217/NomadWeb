<?php
include "conn.php";

$sql = "SELECT image_name, location_name FROM locations";
$result = $conn->query($sql);

$items_per_slide = 3; 
$cards = [];

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $cards[] = [
      'image_name' => $row["image_name"],
      'location_name' => $row["location_name"]
    ];
  }

  $total_cards = count($cards);
  $total_slides = ceil($total_cards / $items_per_slide);

  for ($i = 0; $i < $total_slides; $i++) {
    $active = $i === 0 ? 'active' : '';
    echo "<div class='carousel-item $active'><div class='row'>";

    for ($j = $i * $items_per_slide; $j < ($i + 1) * $items_per_slide && $j < $total_cards; $j++) {
      $image_name = $cards[$j]['image_name'];
      $location_name = $cards[$j]['location_name'];
      
      echo "
      <div class='col-md-4 d-flex align-items-stretch'>
      <a href='cityDetails.php?city_name=" . urlencode($location_name) . "' class='link-card' style='width: 100%; text-decoration: none; color: inherit;'>
        <div class='card' style='width: 100%;'>
          <img src='$image_name' class='card-img-top' alt='Image of $location_name' style = 'height:200px; object-fit:cover;'>
          <div class='card-body'>
            <h5 class='card-title'>$location_name</h5>
          </div>
        </div>
        </a>
      </div>";
    }

    echo "</div></div>";
  }
} else {
  echo "<p>No results found</p>";
}

$conn->close();
?>
