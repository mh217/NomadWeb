<?php
session_start(); 
include "conn.php";

if (isset($_POST['name']) && isset($_POST['surname']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['uloga'])) {

    function validate($data) {
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $name = validate($_POST['name']);
    $surname = validate($_POST['surname']); 
    $email = validate($_POST['email']);
    $password = validate($_POST['password']);
    $uloga = validate($_POST['uloga']);

    if (empty($name) || empty($surname) || empty($email) || empty($password) || empty($uloga)) { 
        header("Location: login.html?error=Niste unijeli sve potrebne podatke"); 
        exit();
    } else {
        $hashed_pass = password_hash($password, PASSWORD_DEFAULT); 

        $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, email, password, user_type) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $name, $surname, $email, $hashed_pass, $uloga);
        
        if ($stmt->execute()) {
            echo "<script>
                        alert('Uspješno ste registrirani.');
                        setTimeout(function() {
                            window.location.href = 'login.php';
                        }, 100); 
                    </script>";
        } else {
            echo "<script>
                        alert('Pogreška prilikom registracije. Pokušajte ponovno');
                        setTimeout(function() {
                            window.location.href = 'registracija.php';
                        }, 200); 
                    </script>";
        }
    }

} else {
    header("Location: registracija.php?error=Niste unijeli sve potrebne podatke.");
    exit();
}
?>
