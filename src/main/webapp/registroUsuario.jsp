<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <title>Registro Usuario</title>
</head>
<body>
<h1 class="encabezado">Registro usuario</h1>
<form action="registroUsuario" method="post">
    <div class="centrado">
        <label>Nombre:</label>
        <input name="nombre" type="text" class="campoTexto">
        <label>Edad:</label>
        <input name="edad" type="number" class="campoTexto">
        <label>Rut sin puntos ni guion:</label>
        <input name="rut" type="text" class="campoTexto">
        <br><br>
        <input type="submit" value="Enviar" class="boton">
    </div>
</form>
</body>
</html>
