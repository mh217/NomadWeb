<?php
include "conn.php";

$selected_hotel_name = '';
$latitude = 0;
$longitude = 0;

if (isset($_GET['hotel_name'])) {
    $selected_hotel_name = $_GET['hotel_name'];
    $escaped_hotel_name = $conn->real_escape_string($selected_hotel_name);
} else {
    echo "<p>No hotel name provided.</p>";
    exit();
}


$sql = "SELECT hotel_name, latitude, longitude FROM hotels";
$result = $conn->query($sql);

$hotels = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $hotels[] = $row;
        if ($row['hotel_name'] === $escaped_hotel_name) {
            $latitude = $row['latitude'];
            $longitude = $row['longitude'];
        }
    }
} else {
    echo "<p>No hotels found.</p>";
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Map</title>
    <style>
        #map {
            height: 800px;
            width: 100%;
        }
    </style>
</head>
<body>
    <h1>Hotel Location: <?php echo htmlspecialchars($selected_hotel_name); ?></h1>
    <div id="map"></div>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4JGRUqexw_MTP5FQsxc-uyVcwPS_9WTw&callback=initMap&libraries=&v=weekly" async defer></script>

    <script>
        function initMap() {
            var mapCenter = { lat: parseFloat("<?php echo $latitude; ?>"), lng: parseFloat("<?php echo $longitude; ?>") };

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 8,
                center: mapCenter
            });

            var hotels = <?php echo json_encode($hotels); ?>;

            hotels.forEach(function(hotel) {
                var position = { lat: parseFloat(hotel.latitude), lng: parseFloat(hotel.longitude) };
                var isSelectedHotel = hotel.hotel_name === "<?php echo $escaped_hotel_name; ?>";
                var marker = new google.maps.Marker({
                    position: position,
                    map: map,
                    title: hotel.hotel_name,
                    icon: isSelectedHotel ? 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png' : 'http://maps.google.com/mapfiles/ms/icons/red-dot.png'
                });
            });
        }
    </script>
</body>
</html>
