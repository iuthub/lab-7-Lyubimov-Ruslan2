<?php
include('users.php');

$db = new PDO('mysql:host=localhost;dbname=blog', 'ruslan', 'kD7BvtDbHIBnsFum');
$usersRepo = new UsersRepo($db);
?>