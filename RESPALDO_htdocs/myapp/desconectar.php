<?php
require "conexion.php";
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $stmt = $con->prepare("UPDATE sesiones SET activo=0 WHERE id_usuario=?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
}
?>
