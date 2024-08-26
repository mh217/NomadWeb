<?php
session_start(); 
include "conn.php";

$email = $_SESSION['email'];
$usersql = "SELECT * FROM users WHERE email = '$email'";
$userresult = $conn->query($usersql);
$user = $userresult->fetch_assoc();

$sql = "SELECT * FROM reservations WHERE email = '$email'";
$result = $conn->query($sql);

$reservs = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $reservs[] = $row;
    }
    $lastReservation = end($reservs);
    $hotel = $lastReservation['hotel_name'];
    $newsql = "SELECT * FROM hotels WHERE hotel_name = '$hotel'";
    $newresult = $conn->query($newsql);
    $aboutHotel = $newresult->fetch_assoc();
} 
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Profil</title>
    <link rel="stylesheet" href="styles\profileStyle.css">
</head>
<body>
    <div class="sidenav">
         <div class="profile-main-text">
            <h2>Ime: <?php echo htmlspecialchars($user['first_name']); ?><br>Prezime: <?php echo htmlspecialchars($user['last_name']); ?></h2>
         </div>
    </div>
    <div class="main">
    <?php if (!empty($lastReservation)) : ?>
        <div class="card" style="width: 30rem">
            <img src="<?php echo htmlspecialchars($aboutHotel['image_name']); ?>" class="card-img-top" alt="image_hotel">
            <h5 class="card-title"><?php echo htmlspecialchars($aboutHotel['hotel_name']); ?></h5>
            <p class="card-text">Dolazak: <?php echo htmlspecialchars($lastReservation['check_in']); ?></p>
            <p class="card-text">Odlazak: <?php echo htmlspecialchars($lastReservation['check_out']); ?></p>
        </div>
    <?php else : ?>
        <h5>Nema dostupnih rezervacija.</h5>
    <?php endif; ?>
</div>
</body>
</html>
