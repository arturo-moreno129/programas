<?php
session_start();
require "conexion.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $correo = $_POST['correo'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM usuarios as u INNER JOIN sesiones as s ON u.id = s.id_usuario WHERE correo = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("s", $correo);
    $stmt->execute();
    $res = $stmt->get_result();

    if ($row = $res->fetch_assoc()) {
        if (password_verify($pass, $row['password'])) {
            $_SESSION['id_usuario'] = $row['id'];
            $_SESSION['activo'] = $row['activo'];

            $stmt2 = $con->prepare("INSERT INTO sesiones (id_usuario) VALUES (?)");
            $stmt2->bind_param("i", $row['id']);
            $stmt2->execute();

            header("Location: dashboard.php");
            exit;
        }
    }
    echo "Credenciales inválidas";
}
?>
