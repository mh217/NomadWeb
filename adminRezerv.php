<?php
include "conn.php";

$sql = "SELECT * FROM reservations";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservations</title>
    <link rel="stylesheet" href="styles\adminPages.css">
</head>
<body>
    <div class="container">
        <h1>Reservations</h1>
        <?php
        if (mysqli_num_rows($result) > 0) {
            echo "<table>";
            echo "<tr><th>ID</th><th>Name</th><th>Email</th><th>Hotel</th><th>Check in</th><th>Check out</th><th>Guests</th></tr>";

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row["id"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["name"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["email"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["hotel_name"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["check_in"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["check_out"]) . "</td>";
                echo "<td>" . htmlspecialchars($row["guests"]) . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "<p>No reservations found.</p>";
        }

        mysqli_close($conn);
        ?>
    </div>
</body>
</html>
