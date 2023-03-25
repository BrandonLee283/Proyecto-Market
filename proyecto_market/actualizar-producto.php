<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">na
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <?php
  //abrir conexion mysql
  require("conexion/conexion.php");
  // include("conexion/conexion.php")
  ?>

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Proyecto Market</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Angel Rosas</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-close">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>    
              <p>
                Productos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Agregar producto</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./consultar-productos.php" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Consultar un Producto</p>
                </a>
              </li>
              
            </ul>
          </li>
          <li class="nav-item menu-close">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>    
              <p>
                Proveedores
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Agregar producto</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Consultar un reporte</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Actualizar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Borrar</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Editar Productos</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">

        <?php
        include("conexion/conexion.php");
        $clave = $_GET["clave"];
        $consultaProd = mysqli_query($conexion,
        "SELECT
        producto.nombre_producto AS NOMBRE, 
        producto.descripcion_producto AS DESCRIPCION, 
        producto.nombre_corto_producto AS `NOMBRE CORTO`, 
        producto.precio_actual_producto AS PRECIO, 
        producto.existencias_producto AS EXISTENCIAS, 
        producto.stock_minimo_producto AS `STOCK MINIMO`, 
        producto.stock_maximo_producto AS `STOCK MAXIMO`, 
        producto.contenido_neto_producto AS `CONTENIDO NETO`, 
        producto.descuento_producto AS DESCUENTO, 
        presentacion.descripcion_presentacion AS PRESENTACION, 
        categoria.descripcion_categoria AS CATEGORIA, 
        marca.nombre_Marca AS MARCA
        FROM
        producto
        INNER JOIN
        marca
        ON 
            producto.id_marca = marca.idMarca
        INNER JOIN
        presentacion
        ON 
            producto.id_presentacion = presentacion.idPresentacion
        INNER JOIN
        categoria
        ON 
            producto.id_categoria = categoria.idCategoria
        WHERE clave_producto= '$clave'; ");

        //no es necesario usar while ya que solo es un registro
        $producto = mysqli_fetch_array($consultaProd);
        ?>

        <form action="actualizar.php" method="POST" class="needs-validation" novalidate>
          <div class="form-row">
            <div class="col-md-6 mb-3">
              <label for="validationCustom01">Nombre del Producto</label>
              <input name="nombreProducto" type="text" class="form-control" id="validationCustom01" value="<?php echo $producto[0]; ?>" required>
              <div class="valid-feedback">
                Looks good!
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom02">Clave del producto</label>
              <input name="claveProducto" type="text" class="form-control" id="validationCustom02" value="<?php echo $clave ?>" required>
              <div class="valid-feedback">
                Looks good!
              </div>
            </div>
          </div>
          </div>
          <div class="form-row">
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Descripcion</label>
              <input name="Descripcion" type="text" class="form-control" id="validationCustom03" value= "<?php echo $producto[1]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Nombre Corto</label>
              <input name="nombreCorto" type="text" class="form-control" id="validationCustom03" value= "<?php echo $producto[2]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-3 mb-3">
              <label for="validationCustom05">Precio</label>
              <input name="Precio" type="text" class="form-control" id="validationCustom05" value= "<?php echo $producto[3]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid zip.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom02">Existencias</label>
              <input name="Existencias" type="text" class="form-control" id="validationCustom02" value="<?php echo $producto[4]; ?>" required>
              <div class="valid-feedback">
                Looks good!
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Stock Minimo</label>
              <input name="stockMin" type="text" class="form-control" id="validationCustom03" value="<?php echo $producto[5]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Stock Maximo</label>
              <input name="stockMax" type="text" class="form-control" id="validationCustom03" value="<?php echo $producto[6]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Contenido Neto</label>
              <input name="contenidoNeto" type="text" class="form-control" id="validationCustom03" value="<?php echo $producto[7]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationCustom03">Descuento</label>
              <input name="Descuento" type="text" class="form-control" id="validationCustom03" value="<?php echo $producto[8]; ?>" required>
              <div class="invalid-feedback">
                Please provide a valid city.
              </div>
            </div>
            <div class="col-md-3 mb-3">
              <label for="validationCustom04">Presentacion</label>
              <select name="Presentacion" class="custom-select" id="validationCustom04" required>
                <?php
                // preparamos la consulta 
                require("conexion/conexion.php");
                  $consultaPresentacion = "CALL proc_mostrar_ppresentacion";
                // ejecutar la consulta
                  $resultPresentacion = mysqli_query($conexion, $consultaPresentacion);
                // extraer los datos de la consulta
                while($presentacion = mysqli_fetch_assoc($resultPresentacion)){
                    if($presentacion["descripcion_presentacion"] == $producto[9]){
                        echo "<option value='".$presentacion["idPresentacion"]."'selected>".$presentacion["descripcion_presentacion"]."</option>";
                    }else{
                        echo "<option value='".$presentacion["idPresentacion"]."'>".$presentacion["descripcion_presentacion"]."</option>";
                    }
                }
                ?>
              </select>
              <div class="invalid-feedback">
                Please select a valid state.
              </div>
            </div>
            <div class="col-md-3 mb-3">
              <label for="validationCustom04">categoria</label>
              <select name="Categoria" class="custom-select" id="validationCustom04" required>
                <option selected disabled value="">Seleccione una categoria</option>
                <?php
                // preparamos la consulta 
                require("conexion/conexion.php");
                  $consultaCategoria = "CALL proc_mostrar_categoria";
                // ejecutar la consulta
                  $resultCategoria = mysqli_query($conexion, $consultaCategoria);
                // extraer los datos de la consulta
                while($categoria = mysqli_fetch_assoc($resultCategoria)){
                    if($categoria["descripcion_categoria"] == $producto[10]){
                        echo "<option value='".$categoria["idCategoria"]."'selected>".$categoria["descripcion_categoria"]."</option>";
                    }else{
                        echo "<option value='".$categoria["idCategoria"]."'>".$categoria["descripcion_categoria"]."</option>";
                    }
                }
              
                ?>
              </select>
              <div class="invalid-feedback">
                Please select a valid state.
              </div>
            </div>
            <div class="col-md-3 mb-3">
              <label for="validationCustom04">Marca</label>
              <select name="Marca" class="custom-select" id="validationCustom04" required>
                <option selected disabled value="">Seleccione una marca</option>
                <?php
                // preparamos la consulta 
                require("conexion/conexion.php");
                  $consultaMarca = "CALL proc_mostrar_marca";
                // ejecutar la consulta
                  $resultMarca = mysqli_query($conexion, $consultaMarca);
                // extraer los datos de la consulta
                while($marca = mysqli_fetch_assoc($resultMarca)){
                    if($marca["nombre_Marca"] == $producto[11]){
                        echo "<option value='".$marca["idMarca"]."'selected>".$marca["nombre_Marca"]."</option>";
                    }else{
                    echo "<option value='".$marca["idMarca"]."'>".$marca["nombre_Marca"]."</option>";
                    }
                }
                ?>

              </select>
              <div class="invalid-feedback">
                Please select a valid state.
              </div>
            </div>
          </div> 
          <button class="btn btn-primary" type="submit">Actualizar</button>
          </form>
          
            <!-- // agregarProducto();
            // function agregarProducto(){
            //   @$nombre = $_POST["nombreProducto"];
            //   @$clave = $_POST["claveProducto"];
            //   @$descrip = $_POST["Descripcion"];
            //   @$nomCorto = $_POST["nombreCorto"];
            //   @$precio = $_POST["Precio"];
            //   @$exist = $_POST["Existencias"];
            //   @$stockMin = $_POST["stockMin"];
            //   @$stockMax = $_POST["stockMax"];
            //   @$idPresenta = $_POST["Presentacion"];
            //   @$idCtegoria = $_POST["Categoria"];
            //   @$idMarca = $_POST["Marca"];
            //   @$content = $_POST["contenidoNeto"];
            //   @$descuento = $_POST["Descuento"];

            //   require("conexion/conexion.php");
            //   $SQL = ("INSERT INTO producto VALUES('$clave','$nombre','$descrip','$nomCorto','$precio','$exist','$stockMin','$stockMax','$idPresenta','$idCtegoria','$idMarca','$content',$descuento)");

            //   $ejecut = mysqli_query($conexion, $SQL);
            //   if(!$ejecut){
            //     echo "error de insercion";  
            //   }else{
            //     echo "insercion exitosa";
            //   }
             //} -->
          

       
        
        <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
          'use strict';
          window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
              form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                form.classList.add('was-validated');
              }, false);
            });
          }, false);
        })();
        </script>    
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>
