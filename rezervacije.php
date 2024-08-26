<?php
include "conn.php";

$selected_hotel_name = '';
if (isset($_GET['hotel_name'])) {
  $selected_hotel_name = $_GET['hotel_name'];
  $escaped_hotel_name = $conn->real_escape_string($selected_hotel_name);
}
else {
    echo "<p>No hotel name provided.</p>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nomad Reservation Form</title>
  <link rel="stylesheet" href="styles\styleRez.css">
</head>
<body>
  <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Rezerviraj hotel: <?php echo htmlspecialchars($selected_hotel_name); ?></h3>
                        <p>Fill in the data below.</p>
                        <form class="requires-validation" action="sendReservation.php" method="POST" novalidate>
                        <input type="hidden" name="hotel_name" value="<?php echo htmlspecialchars($selected_hotel_name); ?>">
                            <div class="col-md-8">
                               <input class="form-control" type="text" name="name" placeholder="Full Name" required>
                            </div>
                            <div class="form-group">
                                <label for="check_in">Check-In Date</label>
                                <input type="date" id="check_in" name="check_in" style="border-radius:10px;" required>
                            </div>
                            <div class="form-group">
                                <label for="check_out">Check-Out Date</label>
                                <input type="date" id="check_out" name="check_out" style="border-radius:10px;" required>
                            </div>

                           <div class="col-md-12 mt-3">
                            <label class="mb-3 mr-1" for="guests">Guests: </label>
                            <input type="radio" class="btn-check" name="guests"autocomplete="off" value="0" required>
                            <label class="btn btn-sm btn-outline-secondary" for="0">0</label>
                            <input type="radio" class="btn-check" name="guests"  autocomplete="off" value="1" required>
                            <label class="btn btn-sm btn-outline-secondary" for="1">1</label>
                            <input type="radio" class="btn-check" name="guests" autocomplete="off" value="2" required>
                            <label class="btn btn-sm btn-outline-secondary" for="2">2</label>
                            <input type="radio" class="btn-check" name="guests" autocomplete="off"  value="3"required>
                            <label class="btn btn-sm btn-outline-secondary" for="3">3</label>
                            <input type="radio" class="btn-check" name="guests"  autocomplete="off" value="4"required>
                            <label class="btn btn-sm btn-outline-secondary" for="4">4</label>
                            <input type="radio" class="btn-check" name="guests" autocomplete="off" value="5"required>
                            <label class="btn btn-sm btn-outline-secondary" for="5">5</label>
                            </div>  

                            <div class="form-button mt-3" id="btnn">
                                <button id="submit" type="submit" class="btn btn-primary">Rezerviraj</button>
                            </div> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
