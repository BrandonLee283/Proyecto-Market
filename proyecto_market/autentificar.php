    <?php
     
        include('conexion/conexion.php');

        $usuario = $_POST['txtUsuario'];
        $contra = $_POST['txtContra'];

        $datos = mysqli_query($conexion,"CALL proc_verUsuario('$usuario','$contra')");

        $datosUsuario = mysqli_fetch_array($datos);

        if ($usuario == $datosUsuario[0] && $contra  == $datosUsuario[1]){
            session_start();
            $_SESSION['idCargo'] = $datosUsuario[8];
            $_SESSION['nombre'] = $datosUsuario[2].' '.$datosUsuario[3].' '.$datosUsuario[4];
            $_SESSION['RFC'] = $datosUsuario[5];
            $_SESSION['telefono'] = $datosUsuario[6];
            $_SESSION['direccion'] = $datosUsuario[7];
            $_SESSION['cargo'] = $datosUsuario[9];
            
            header("Location:index.php");
        }else{
            echo "Verifique que los datos sean correctos";
            echo "<h5><a href='login.html'>Regresar</a></h5>";
        }
    ?>