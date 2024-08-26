<?php
session_start();

include "conn.php";

if (isset($_POST["login"]) && $_POST["email"] && $_POST["password"]) {
    $sql = "SELECT * FROM users WHERE email='".$_POST['email']."'"; 
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        if(password_verify($_POST["password"], $row["password"])) {
            $_SESSION["logged"] = true; 
            $_SESSION["timeout"] = time();
            $_SESSION["id"] = $row['id'];
            $_SESSION['email'] = $row['email'];
            $_SESSION['ime'] = $row['first_name'];
            $_SESSION['prezime'] = $row['last_name'];
            $_SESSION['uloga'] = $row['user_type'];

            if($row['user_type'] == "admin")
                header("Location: index.php"); 
            else
                header("Location: index.php");
        }
        else {
            echo "<script>
                        alert('Pogreška prilikom prijave. Pokušajte ponovno');
                        setTimeout(function() {
                            window.location.href = 'login.php';
                        }, 200); 
                    </script>";
        }
    }
    else {
        header("Location: login.php?odabir=reg");
    }

    $conn->close();
}
?>
