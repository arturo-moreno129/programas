<?php
$con = new mysqli("localhost", "root", "", "miweb");
if ($con->connect_errno) {
    die("Fallo la conexión: " . $con->connect_error);
}
?>
