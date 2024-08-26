<?php
session_start();
include "conn.php";

header('Content-Type: application/json');


$input = json_decode(file_get_contents('php://input'), true);

if (isset($input['email']) && isset($input['message'])) {

    function validate($data) {
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $email = validate($input['email']);
    $message = validate($input['message']); 
    
    if (empty($email) || empty($message)) { 
        echo json_encode(['error' => 'Niste unijeli sve potrebne podatke']);
        exit();
    } else {
        $stmt = $conn->prepare("INSERT INTO messages (email, message) VALUES (?, ?)");
        $stmt->bind_param("ss", $email, $message);
        
        if ($stmt->execute()) {
            echo json_encode(['success' => 'Poruka poslana.']);
        } else {
            echo json_encode(['error' => 'Greška prilikom slanja.']);
        }
    }
} else {
    echo json_encode(['error' => 'Niste unijeli sve potrebne podatke.']);
}
?>
