<?php
include "conn.php";

if (isset($GLOBALS['selected_city_name'])) {
  $city_name = $GLOBALS['selected_city_name'];
  $escaped_city_name = $conn->real_escape_string($city_name);

  $hotel_sql = "SELECT image_name, hotel_name, price FROM hotels WHERE city_name = '$escaped_city_name'";
  $hotel_result = $conn->query($hotel_sql);

  if ($hotel_result->num_rows > 0) {
    $items_per_slide = 3;
    $cards = [];

    while($hotel_row = $hotel_result->fetch_assoc()) {
      $cards[] = [
        'image_name' => $hotel_row["image_name"],
        'hotel_name' => $hotel_row["hotel_name"],
        'price' => $hotel_row["price"],
        'city_name' => $escaped_city_name
      ];
    }

    $total_cards = count($cards);
    $total_slides = ceil($total_cards / $items_per_slide);

    for ($i = 0; $i < $total_slides; $i++) {
      $active = $i === 0 ? 'active' : '';
      echo "<div class='carousel-item $active'><div class='row'>";

      for ($j = $i * $items_per_slide; $j < ($i + 1) * $items_per_slide && $j < $total_cards; $j++) {
        $image_name = $cards[$j]['image_name'];
        $hotel_name = $cards[$j]['hotel_name'];
        $city_name = $cards[$j]['city_name'];
        $price = $cards[$j]['price'];
        
        echo "
        <div class='col-md-4 d-flex align-items-stretch'>
          <a href='hotelDetails.php?hotel_name=" . urlencode($hotel_name) . "' class='link-card' style='width: 100%; text-decoration: none; color: inherit;'>
            <div class='card' style='width: 100%;'>
              <img src='$image_name' class='card-img-top' alt='Image of $hotel_name in $city_name' style='height: 200px; object-fit: cover;'>
              <div class='card-body'>
                <h5 class='card-title'>$hotel_name</h5>
                <p class='card-text'>Cijena noćenja: $price €</p>
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
} else {
  echo "<p>Invalid city name.</p>";
}

$conn->close();
?>
