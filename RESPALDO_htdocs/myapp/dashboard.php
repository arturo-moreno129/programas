<?php
session_start();
require "conexion.php";

if (!isset($_SESSION['id_usuario'])) {
    header("Location: index.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <title>Panel de Usuarios Conectados</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

  <div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
      <h2>Usuarios Conectados</h2>
      <a href="logout.php" class="btn btn-secondary">Cerrar Sesión</a>
    </div>

    <div class="card shadow">
      <div class="card-body">
        <table class="table table-striped table-hover" id="tablaUsuarios">
          <thead class="table-dark">
            <tr>
              <th>Nombre</th>
              <th>Estado</th>
              <th>Última Actividad</th>
              <th>Acción</th>
            </tr>
          </thead>
          <tbody></tbody>
        </table>
      </div>
    </div>
  </div>

  <script>
    async function cargarUsuarios() {
      const res = await fetch("usuarios_activos.php");
      const data = await res.json();
      let html = "";
      data.forEach(u => {
        html += `
        <tr>
            <td>${u.nombre}</td>
            <td>${u.activo == 1 
                ? '<span class="badge bg-success">Online</span>' 
                : '<span class="badge bg-danger">Offline</span>'}</td>
            <td>${u.ultima_actividad}</td>
            <td>${u.activo == 1 
                ? `<button class="btn btn-sm btn-danger" onclick="desconectar(${u.id_usuario})">Desconectar</button>` 
                : ''}</td>
        </tr>`;
      });
      document.querySelector("#tablaUsuarios tbody").innerHTML = html;
    }

    async function desconectar(id) {
      await fetch("desconectar.php?id=" + id);
      cargarUsuarios();
    }

    setInterval(cargarUsuarios, 30000);
    cargarUsuarios();

    let timerInactivo;

    function resetTimer() {
      clearTimeout(timerInactivo);
      timerInactivo = setTimeout(() => {
        window.location.href = "logout.php";
      }, 5 * 60 * 1000);
    }
    document.onmousemove = resetTimer;
    document.onkeypress = resetTimer;
    resetTimer();
  </script>
</body>

</html>