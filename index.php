<?php
session_start();
include("conexion.php");
if (isset($_SESSION['user'])) {
  echo '<script>window.location="admin/index.php";</script>';}else{
?>
<!DOCTYPE html>
<html lang="en">

<head><meta charset="euc-jp">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>GYM</title>
  <!-- Bootstrap core CSS-->
<link href="favicon.ico" rel="shortcut icon">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body background="Vista/modules/images/bg-01.jpg" >
  
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Ingreso Personal</div>
      <div class="card-body">
        <form action="proceso_conex.php" method="POST">
          <div class="form-group">
            <label for="exampleInputEmail1">Usuario</label>
            <input name= "usuario" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Usuario">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Contrasena</label>
            <input name="password" class="form-control" id="exampleInputPassword1" type="password" placeholder="Password">
            <input type="hidden" id="Ingreso" name="Ingreso" value="Ingreso_al_sistema">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <?php //<input class="form-check-input" type="checkbox">Recordar Contraseña</label>?>
            </div>
          </div>
          <input type="submit" name="login" class="btn btn-primary btn-block" value="Ingresar"/>
        </form>
       <!--  <div class="text-center">
          <a class="d-block small" href="forgot-password.php">Olvido su Constrasena?</a>
        </div> -->
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body><?php
}
?>
</html>