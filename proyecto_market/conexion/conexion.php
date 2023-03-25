<?php
    $servidor = "localhost";
    $usuarioBD = "root";
    $password = "";
    $baseDatos = "reyestiendita";

    $conexion = mysqli_connect($servidor, $usuarioBD, $password, $baseDatos);

    if(!$conexion){
        echo "error de conexion";
    }
   // @$conexion = mysqli_connect($servidor, $usuarioBD, $password, $baseDatos)
   // OR DIE("ERROR DE CONEXION");
?>