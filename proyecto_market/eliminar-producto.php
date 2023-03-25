<?php
    require("conexion/conexion.php");
    $claveProd = $_GET['clave'];

    $eliminar = "DELETE FROM producto WHERE clave_producto='$claveProd'";
    $query = mysqli_query($conexion, $eliminar);
    if(!$query){
        echo "Error de eliminacion";
    }else{
        echo "producto $claveProd eliminado";
    }
?>