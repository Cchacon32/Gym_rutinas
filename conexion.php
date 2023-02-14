<?php
$conexion = new mysqli("localhost","comuniso_user_proyecto_gym","ProyectoGym2022*","comuniso_proyecto_gym");
if ($conexion -> connect_errno)
{
	die("Fallo conexion:(".$conexion -> mysqli_connect_errno().")".$conexion -> mysqli_connect_errno());
}
?>