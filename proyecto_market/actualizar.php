<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
//Abrir conexion al servidor SQL
require("conexion/conexion.php");

// if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    @$nombre = $_POST["nombreProducto"];
    @$clave = $_POST["claveProducto"];
    @$descrip = $_POST["Descripcion"];
    @$nomCorto = $_POST["nombreCorto"];
    @$precio = $_POST["Precio"];
    @$exist = $_POST["Existencias"];
    @$stockMin = $_POST["stockMin"];
    @$stockMax = $_POST["stockMax"];
    @$idPresenta = $_POST["Presentacion"];
    @$idCtegoria = $_POST["Categoria"];
    @$idMarca = $_POST["Marca"];
    @$content = $_POST["contenidoNeto"];
    @$descuento = $_POST["Descuento"];

    //echo ("$nombre, $clave, $descrip, $nomCorto, $precio, $exist, $stockMin, $stockMax, $idPresenta, $idCtegoria, $idMarca, $content, $descuento");

    $query = "UPDATE producto SET nombre_producto='$nombre',
	            descripcion_producto='$descrip',
				nombre_corto_producto='$nomCorto',
				precio_actual_producto='$precio',
				existencias_producto='$exist',
				stock_minimo_producto='$stockMin',
				stock_maximo_producto='$stockMax',
				id_presentacion='$idPresenta',
				id_categoria='$idCtegoria',
				id_marca='$idMarca',
				contenido_neto_producto='$content',
				descuento_producto='$descuento'
				WHERE clave_producto='$clave';";

                 $resultado = mysqli_query($conexion, $query);
    if ($resultado) {
        //Redireccionamos al usuario
        header("Location:consultar-productos.php");
    }else{
       $error=mysqli_error($conexion);
        echo "error $error";
   }

?>
<button><a href="consultar_productos.php"></a>Ver Productos</button>
</body>
</html>
