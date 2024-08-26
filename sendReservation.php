<?php
session_start(); 
include "conn.php";

$selected_hotel_name = '';
if (isset($_POST['hotel_name'])) {
    $selected_hotel_name = $_POST['hotel_name'];
    $escaped_hotel_name = $conn->real_escape_string($selected_hotel_name);
} else {
    echo "<p>No hotel name provided.</p>";
    exit();
}

$emailUser = $_SESSION['email'];


if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['name'])  && isset($_POST['check_in']) && isset($_POST['check_out']) && isset($_POST['guests'])) {

    function validate($data) {
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $name = validate($_POST['name']);
    $checkin = validate($_POST['check_in']);
    $checkout = validate($_POST['check_out']);
    $guests = validate($_POST['guests']);

    if (empty($name)  || empty($checkin) || empty($checkout) || empty($guests)) { 
        header("Location: rezervacije.php?error=Niste unijeli sve potrebne podatke"); 
        exit();
    } else {
        $stmt = $conn->prepare("INSERT INTO reservations (name, email, check_in, check_out, guests, hotel_name) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $name, $emailUser, $checkin, $checkout, $guests, $escaped_hotel_name);

        if ($stmt->execute()) {
            echo "<script>
                        alert('Rezervacija uspješna.');
                        setTimeout(function() {
                            window.location.href = 'index.php';
                        }, 100); 
                    </script>";
        } else {
            echo "<script>
                        alert('Rezervacija neuspješna.');
                        setTimeout(function() {
                            window.location.href = 'rezervacije.php';
                        }, 100); 
                    </script>";
        }
    }
} else {
    echo "<script>
                        alert('Rezervacija neuspješna.');
                        setTimeout(function() {
                            window.location.href = 'rezervacije.php';
                        }, 100); 
            </script>";
}
?>
