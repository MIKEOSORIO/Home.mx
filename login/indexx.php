<?php
include'conexion.php';
?>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
  <link rel="shortcut icon"  href="imagen/logo.jpeg">
  <title>HOME</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="javaScript/alertifyjs/css/themes/default.css">
<link rel="stylesheet" type="text/css" href="javaScript/alertifyjs/css/alertify.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="javaScript/jquery-3.2.1.min.js"></script>
<script src="javaScript/alertifyjs/alertify.js"></script> 
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" href="css/estilos2.css">
</head>
<header>
<body>
  
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.html">HOME.MX</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Publicar Cuarto<span class="sr-only">(current)</span></a>
      </li>
<li class="nav-item">
        <a class="nav-link"  href="NOSOTROS/Nosotros.html">Nosotros</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#exampleModal2" href="">Soporte</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <ul class="navbar-nav mr-auto">
      
      <li class="nav-item">
        <a class="nav-link"  href="index.php">Iniciar Sesión</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="REGISTRO/REGISTRO.HTML">Registrate</a>
      </li>
    </ul>
    </form>
  </div>
</nav>

<br>
  <div id="ctn-bars-search">
        <input type="text" id="inputSearch" placeholder="¿Donde quieres vivir?"> 
  </div>

 <div class="container col-12">
   <div class="row">
    <div class="listado col-12">
      <h1 id="list">Busque su departamento ideal.</h1>
    </div>
    <br>
    <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/departamento.jpg"></h5>
        <p class="card-text"><label id="departamento">Habitacion en renta (Housemate)</label>
          <br>3 cuartos<br>Amueblada<br>Internet<br>Precio: $50,000 mensual</p>
        <p class="collapse" id="collapseExample">
         Habitacion en renta en propiedad ubicada en el Centro Historico de Mérida Yucatán.
         Se renta habitacion amplia, con closet, completamente amueblada. Contrato individual y sin costo extra, sin necesidad de aval.La renta incluye la habitacion, uso de areas comunes (cocina equipada con refrigerador, microondas, etc. sala y comedor completamente amueblados), servicios de internet, agua y colecta de basura. 
  </p>
        <p class="card-text text-right">
        <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/casa1.jpg"></h5>
        <p class="card-text"><label id="departamento">Casa en Renta (Valladolid, Yacatán)</label>
          <br>2 cuartos<br>1 Baño<br>Semi amueblada<br>Precio: $6,000 mensual</p>
        <p class="collapse" id="collapseExample2">
         Preciosa casa situada en Valladolid, Yucatán en el fraccionamiento privado Residencial del Bosque en Valladolid, con vigilancia las 24 horas. La propiedad incluye dos recámaras con ventiladores de techo, un baño, cocina, sala, comedor, y patio. 
  </p>
        <p class="card-text text-right">
        <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample"   href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/casa2.jpg"></h5>
        <p class="card-text"><label id="departamento">Hermosa Casa en Renta (Valladolid, Yucatán)</label>
          <br>3 cuartos<br>3 Baños<br>Completamente amueblada<br>Alberca<br>Precio: $7,500 mensual</p>
        <p class="collapse" id="collapseExample3">
        Hermosa casa situada en Valladolid, Yucatán en el fraccionamiento privado Santa Lucía en Valladolid, cuenta con vigilancia las 24 horas. La propiedad incluye tres recámaras con ventiladores de techo, tres baños completamente equipados, cocina completamente amueblada, sala, comedor, y patio con alberca.
  </p>
        <p class="card-text text-right">
        <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample" href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card ">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/departamento1.jpg"></h5>
        <p class="card-text"><label id="departamento">Departamento Completamente Amueblado (Valladolid, Yucatán)</label>
          <br>1 cuarto<br>Amueblada<br>Internet<br>Precio: $8,500 mensual</p>
       <p class="collapse" id="collapseExample4">
        Lujoso departamento en renta situado en Valladolid, Yucatán en Santa Lucía en Valladolid. La propiedad incluye una recámara con ventiladores de techo y aire acondicionado, un baño completamente equipado, cocina completamente amueblada, sala y comedor amueblados, incluye el servicio de Internet.
  </p>
        <p class="card-text text-right">
        <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false" aria-controls="collapseExample" href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/casa3.jpg"></h5>
        <p class="card-text"><label id="departamento">Linda Casa en Renta (Valladolid, Yucatán)</label>
          <br>2 Cuarto<br>1 Baño<br>Garaje<br>Patio<br>Precio: $4,000 mensual</p>
   <p class="collapse" id="collapseExample5">
       Bonita casa en la colonia Flamboyanes cuenta con 2 recámaras, 1 aire acondicionado, baño, cocina - desayunador, sala-comedor, garaje, patio y pequeño jardín. 
  </p>
        <p class="card-text text-right">
       <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample5" role="button" aria-expanded="false" aria-controls="collapseExample" href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title text-center"><img id="img_obs" src="imagen/casa4.jpg"></h5>
        <p class="card-text"><label id="departamento">Casa Centrica en Renta (Valladolid,Yucatán)</label>
          <br>3 Cuartos<br>3 Baños<br>Garaje<br>Patio<br>Precio: $25,000 mensual</p>
        <p class="collapse" id="collapseExample6">
        Renta esta bonita casa de gran amplitud, la casa se encuentra ubicado en Candelaria que es una de las zonas principales de la hermosa ciudad de Valladolid, por la ubicación la cual es a una cuadra y media del parque central. Ideal para poder estar en lugar centrico de la ciudad.
  </p>
        <p class="card-text text-right">
        <a href="informacion.html" class="btn btn-primary">Mas información</a>
        <a data-toggle="collapse" href="#collapseExample6" role="button" aria-expanded="false" aria-controls="collapseExample" href="#" class="btn bt-success">Más >></a>
      </p>
      </div>
    </div>
  </div>

   </div>
 </div>

 <script src="js/indexjs.js"></script>
</body>
</html>