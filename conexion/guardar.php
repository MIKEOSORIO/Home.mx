<?php
 require '../conexion/conexion.php';
 $idpropiedad  = $_POST['idpropiedad']; 
 $descripcion  = $_POST['descripcion'];
 $numcuartos = $_POST['numcuartos'];
 $espaciopersonas = $_POST['espaciopersonas'];
 $precio = $_POST['precio'];
 $estrellaspuntuacion = $_POST['estrellaspuntuacion'];
 $fechaalta = $_POST['fechaalta'];
 $cantidaddias = $_POST['cantidaddias'];
 $cantidadnoche = $_POST['cantidadnoche'];
 $iddireccion = $_POST['iddireccion'];
 $idadicionales= $_POST['idadicionales'];
 $servicios = $_POST['servicios'];
 $idclientes = $_POST['idclientes'];

$insertar = "INSERT INTO propiedad VALUES ('$idpropiedad','$descripcion','$numcuartos','$espaciopersonas','$precio','$estrellaspuntuacion',
'$fechaalta','$cantidaddias','$cantidadnoche','$iddireccion','$idadicionales','$servicios','$idclientes') ";

$query = mysqli_query($conectar, $insertar);

if($query){

   echo "<script> alert('correcto');
    location.href = '../index.html';
   </script>";

}else{
    echo "<script> alert('incorrecto');
    location.href = '../pagina/insertar.html';
    </script>";
}






?>