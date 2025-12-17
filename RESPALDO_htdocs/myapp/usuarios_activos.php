<?php
require "conexion.php";
$con->query("UPDATE sesiones SET activo=0 WHERE TIMESTAMPDIFF(MINUTE, ultima_actividad, NOW()) > 10");

$sql = "SELECT u.id, u.nombre, s.id_usuario, s.ultima_actividad, s.activo
        FROM usuarios u
        LEFT JOIN sesiones s ON u.id = s.id_usuario
        ORDER BY s.ultima_actividad DESC";

$res = $con->query($sql);
$data = [];
while ($row = $res->fetch_assoc()) {
    $data[] = $row;
}
echo json_encode($data);
?>
