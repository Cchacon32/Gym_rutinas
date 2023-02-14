<?php
session_start();

include("conexion.php");
if (isset($_POST['login'])) {
	$user=utf8_decode($_POST['usuario']);
	$clave=md5(utf8_decode($_POST['password']));
	$registro=utf8_decode($_POST['Ingreso']);
	$consulta=$conexion ->query ("SELECT * FROM usuario WHERE Nickname='$user' AND Password = '$clave'");
	$Permisos=$conexion ->query ("SELECT Permiso FROM usuario WHERE Nickname='$user'");
	$Permiso=mysqli_fetch_row($Permisos);

if($Permiso[0]<8){
	if(mysqli_num_rows($consulta)>0){
		$rowlogin=mysqli_fetch_array($consulta);
		$_SESSION['user'] = $rowlogin['Nickname'];
		$_SESSION['registro'] = $registro;
		$_SESSION['ingresando'] = 1;
		$consultauser ="SELECT * FROM usuario WHERE Nickname = '".$_SESSION['user']."'";
		$conuser=mysqli_query($conexion,$consultauser);
		while ($userrow = $conuser->fetch_assoc()){
		#$_SESSION['u_Nickname'] = $user;
		echo '<script> alert("Iniciando sesión para '.utf8_encode($userrow['Name']).'");</script>';
		echo "<script>window.location='admin/index.php';</script>";
	}
	}else{
		echo '<script> alert("Usuario o Contraseña incorrecta");</script>';
		echo '<script> window.location="index.php";</script>';
	}
}else{
	echo '<script> alert("Usuario no habilitado para ingreso, consulte con el Administrador");</script>';
	echo '<script> window.location="index.php";</script>';
}

#if ($resultado= mysqli_fetch_array($consulta)) {
#	$_SESSION['u_Nickname'] = $user;
#	header("location:admin/index.php");
#}
#else{
#	header("location:index.php");
#}

}
?>