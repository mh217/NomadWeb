<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Prijava</title>
    <link rel="stylesheet" href="styles\styleLog.css">
</head>
<body>
    <div class="sidenav">
         <div class="login-main-text">
            <img src="Images\pngtree-vacation-and-travel-icon-png-image_4032146-removebg-preview.png" class="rounded float-start" alt="icon" id="navImg"  width="70px">
            <h2>Nomad<br>Welcome</h2>
            <p>“We live in a wonderful world that is full of beauty, charm and adventure. There is no end to the adventures we can have if only we seek them with our eyes open.”</p>
         </div>
    </div>

    <section class="loginsction" id="loginsction">
        <div class="main">
            <div class="col-md-6 col-sm-12">
                <div class="login-form">
                    <form action="prijava.php" method="POST">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" name="email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password" required>
                        </div>
                        <button type="submit" name="login" class="btn">Login</button>
                        <button type="button" class="btn" id="showRegistration">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="registrationSection" id="registrationSection" style="display: none;">
        <div class="main">
            <div class="col-md-6 col-sm-12">
                <div class="login-form">
                    <form action="registracija.php" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Ime" name="name" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Prezime" name="surname" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" name="email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password" required>
                        </div>
                        <div class="radiobuttons">
                            <input type="radio" id="admin" name="uloga" value="Admin">
                            <label for="admin">Admin</label><br>
                            <input type="radio" id="user" name="uloga" value="User">
                            <label for="user">Korisnik</label><br>
                        </div>
                        <button type="submit" name="register" class="btn">Register</button>
                        <button type="button" class="btn" id="showLogin">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        document.getElementById("showRegistration").addEventListener("click", function(event) {
            event.preventDefault();
            document.getElementById("loginsction").style.display = 'none';
            document.getElementById("registrationSection").style.display = 'block'; 
        });

        document.getElementById("showLogin").addEventListener("click", function(event) {
            event.preventDefault();
            document.getElementById("loginsction").style.display = 'block';
            document.getElementById("registrationSection").style.display = 'none'; 
        });
    </script>
</body>
</html>
