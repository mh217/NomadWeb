<?php
include "conn.php";


$sql = "SELECT hotel_name, latitude, longitude FROM hotels";
$result = $conn->query($sql);

$hotels = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $hotels[] = $row;
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Karta</title>
    <style>
        #map {
            height: 800px; 
            width: 100%; 
        }
    </style>
</head>
<body>
    <h1>Hotels</h1>
    <div id="map"></div>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB4JGRUqexw_MTP5FQsxc-uyVcwPS_9WTw&callback=initMap&libraries=&v=weekly" async defer></script>

    <script>
        function initMap() {
            var myLatLng = { lat: 45.815, lng: 15.982 };

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 6,
                center: myLatLng 
            });

            var locations = <?php echo json_encode($hotels); ?>;

            locations.forEach(function(location) {
                var marker = new google.maps.Marker({
                    position: { lat: parseFloat(location.latitude), lng: parseFloat(location.longitude) },
                    map: map,
                    title: location.hotel_name
                });

                
                google.maps.event.addListener(marker, 'click', function() {
                    window.location.href = 'hotelDetails.php?hotel_name=' + encodeURIComponent(location.hotel_name);
                });
            });
        }
    </script>
</body>
</html>
