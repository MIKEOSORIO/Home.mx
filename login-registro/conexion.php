<?php
    
    try{
         $conexion = new PDO('mysql:host=localhost;dbname=logintuto', 'root', '');
    }catch(PDOException $prueba_error){
        echo "Error: " . $prueba_error->getMessage();
    }


?>