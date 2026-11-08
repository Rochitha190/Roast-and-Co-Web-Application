
<?php

$db_name = "mysql:host=YOUR_DATABASE_HOST;dbname=YOUR_DATABASE_NAME;charset=utf8mb4";

$username = "YOUR_DATABASE_USERNAME";

$password = "YOUR_DATABASE_PASSWORD";

$conn = new PDO($db_name, $username, $password);

$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>
