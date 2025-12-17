<?php
session_start();
require "conexion.php";

if (isset($_SESSION['id_usuario'])) {
    $id = $_SESSION['id_usuario'];
    $sql = "UPDATE sesiones SET activo=0 WHERE id_usuario=?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    session_destroy();
}
header("Location: index.php");
exit;
?>
