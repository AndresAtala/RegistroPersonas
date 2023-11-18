<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 12-11-2023
  Time: 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <title>Registro Usuario</title>
</head>
<body>
<h1 class="encabezado"> Registro usuario</h1>
<h2 class="subtitulo"> datos incorrectos, favor comprobar nuevamente</h2>
<form action="registroUsuario" method="post">
    <div class="centrado">
        <label> nombre:</label>
        <input name="nombre" type="text" class="campoTexto">
        <label> edad:</label>
        <input edad="edad" type="number" class="campoTexto">
        <label> rut:</label>
        <input rut="rut" type="number" class="campoTexto">
        <br><br>
        <br><br>
        <input type="submit" value="enviar" class="boton"   >
    </div>
</form>
</body>
</html>
