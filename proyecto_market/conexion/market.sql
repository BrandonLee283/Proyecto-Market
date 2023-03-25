/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : market

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 15/06/2022 14:43:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora`  (
  `idBitacora` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha` datetime(0) NULL DEFAULT NULL,
  `nuevo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `viejo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tabla` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idBitacora`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bitacora
-- ----------------------------
INSERT INTO `bitacora` VALUES (1, 'root@localhost', '2021-12-09 08:44:26', '0,Pepsi,1', '', 'marca', 'insert');
INSERT INTO `bitacora` VALUES (2, 'root@localhost', '2021-12-09 09:08:46', '4,Pepsico,1', '4,Pepsi,1', 'marca', 'update');

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo`  (
  `idCargo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombreCargo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcionCargo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statusCargo` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`idCargo`) USING BTREE,
  UNIQUE INDEX `unique_cargo`(`nombreCargo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cargo
-- ----------------------------
INSERT INTO `cargo` VALUES (1, 'Cajero', 'Realiza Ventas y consutas de productos', b'1');
INSERT INTO `cargo` VALUES (2, 'Gerente', 'Registra, Actualiza, Elimina, Consulta, genera reportes de Todo', b'1');
INSERT INTO `cargo` VALUES (3, 'Supervisor', 'Monitorea...', b'1');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_categoria` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_categoria` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCategoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'Bebidas', '1');
INSERT INTO `categoria` VALUES (2, 'Vinos y licores', '1');
INSERT INTO `categoria` VALUES (3, 'Galletas y cereales', '1');
INSERT INTO `categoria` VALUES (4, 'Lacteos', '1');
INSERT INTO `categoria` VALUES (5, 'Despensa', '1');
INSERT INTO `categoria` VALUES (6, 'Frituras', '1');
INSERT INTO `categoria` VALUES (7, 'Frutas y verduras', '1');
INSERT INTO `categoria` VALUES (8, 'Salchichoneria', '0');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `RFC` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_Cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido1_Cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido2Cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion_Cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefono_Cliente` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CURP_Cliente` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_Cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`RFC`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('FEAL05046QA', 'Luis', 'Fernandez', 'Alvares', 'Calle Revolucion', '5556987412', 'FEAL05046QA5645', 'luisFA@mail.com');
INSERT INTO `cliente` VALUES ('FITJ0101063Q2', 'Juan', 'Figueroa', 'Trejo', 'CDMX', '7731271279', 'FITJ010106HHGGRNA9', 'juan@mail.com');
INSERT INTO `cliente` VALUES ('GAHE456WE', 'Estafania', 'Gaercia', 'Hernandez', 'Calle la cruz', '5551457896', 'GAHE456WE8478', 'estefiGH@mail.com');
INSERT INTO `cliente` VALUES ('GRR216546', 'Jose', 'Martinez', 'Lopez', 'calle Arrollo', '7731459687', 'GRR216546HHJIH', 'joseML@mail.com');
INSERT INTO `cliente` VALUES ('MIBDAN5874', 'Daniela', 'Montalvo', 'Ballesteros', 'Sta Maria', '7731452689', 'MIBDAN5874JHJSD', 'daniMar@mail.com');
INSERT INTO `cliente` VALUES ('RAGP56444', 'Pamela', 'Ramirez', 'Perez', 'Buena vista', '7731452475', 'RAGP56444JHJU5445', 'pamRG@mail.com');

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `folio_ticket_compra` int(11) NOT NULL,
  `clave_proveedor` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_hora_compra` datetime(0) NOT NULL,
  `total_compra` float NOT NULL,
  PRIMARY KEY (`id_compra`) USING BTREE,
  INDEX `clvae_proveedor_idx`(`clave_proveedor`) USING BTREE,
  CONSTRAINT `clvae_proveedor` FOREIGN KEY (`clave_proveedor`) REFERENCES `proveedor` (`claveProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (2, 1256789, '1256', '2021-12-01 10:47:18', 585);
INSERT INTO `compra` VALUES (3, 12345, '1414', '2021-12-12 18:49:07', 1070);
INSERT INTO `compra` VALUES (4, 78945, '215', '2021-12-12 19:47:18', 1440);
INSERT INTO `compra` VALUES (5, 52654, '445', '2021-12-12 19:56:23', 790);
INSERT INTO `compra` VALUES (6, 6724, '6354', '2021-12-12 20:04:34', 950);

-- ----------------------------
-- Table structure for detalle_compra
-- ----------------------------
DROP TABLE IF EXISTS `detalle_compra`;
CREATE TABLE `detalle_compra`  (
  `idDetalle_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `clave_producto_compra` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio_compra` float NOT NULL,
  `cantidad_compra` float NOT NULL,
  PRIMARY KEY (`idDetalle_compra`) USING BTREE,
  INDEX `id_compra_idx`(`id_compra`) USING BTREE,
  INDEX `clave_producto_idx`(`clave_producto_compra`) USING BTREE,
  CONSTRAINT `clave_producto_compra` FOREIGN KEY (`clave_producto_compra`) REFERENCES `producto` (`clave_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_compra
-- ----------------------------
INSERT INTO `detalle_compra` VALUES (4, 2, 'co1l', 160, 8);
INSERT INTO `detalle_compra` VALUES (15, 2, 'co2l', 180, 6);
INSERT INTO `detalle_compra` VALUES (16, 2, 'co3l', 200, 5);
INSERT INTO `detalle_compra` VALUES (17, 2, 'co600ml', 45, 3);
INSERT INTO `detalle_compra` VALUES (18, 3, 'crem1414', 200, 10);
INSERT INTO `detalle_compra` VALUES (19, 3, 'lech31414', 220, 10);
INSERT INTO `detalle_compra` VALUES (20, 3, 'ques0141', 400, 10);
INSERT INTO `detalle_compra` VALUES (21, 3, 'yogur1415', 250, 10);
INSERT INTO `detalle_compra` VALUES (22, 4, 'pepsi2l', 450, 15);
INSERT INTO `detalle_compra` VALUES (23, 4, 'pepsi3l', 350, 10);
INSERT INTO `detalle_compra` VALUES (24, 4, 'rufl54', 260, 20);
INSERT INTO `detalle_compra` VALUES (25, 4, 'sab12', 180, 15);
INSERT INTO `detalle_compra` VALUES (26, 4, 'chet23', 200, 20);
INSERT INTO `detalle_compra` VALUES (27, 5, 'doni745', 320, 20);
INSERT INTO `detalle_compra` VALUES (28, 5, 'mante4575', 320, 20);
INSERT INTO `detalle_compra` VALUES (29, 5, 'reb364', 150, 30);
INSERT INTO `detalle_compra` VALUES (30, 6, 'chock15', 240, 20);
INSERT INTO `detalle_compra` VALUES (31, 6, 'emper457', 360, 30);
INSERT INTO `detalle_compra` VALUES (32, 6, 'gallmar454', 200, 20);
INSERT INTO `detalle_compra` VALUES (34, 6, 'salad789', 150, 10);

-- ----------------------------
-- Table structure for detalle_venta
-- ----------------------------
DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE `detalle_venta`  (
  `folio_venta` int(11) NOT NULL,
  `clave_producto_venta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cantidad_venta` float NOT NULL,
  `precio_venta` float NOT NULL,
  `total_venta` float NOT NULL,
  `descuento_venta` float NOT NULL,
  INDEX `folio_venta_idx`(`folio_venta`) USING BTREE,
  INDEX `clave_producto_idx`(`clave_producto_venta`) USING BTREE,
  CONSTRAINT `clave_producto_venta` FOREIGN KEY (`clave_producto_venta`) REFERENCES `producto` (`clave_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `folio_venta` FOREIGN KEY (`folio_venta`) REFERENCES `venta` (`folio_venta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_venta
-- ----------------------------
INSERT INTO `detalle_venta` VALUES (1, 'co600ml', 1, 15, 15, 0);
INSERT INTO `detalle_venta` VALUES (1, 'emper457', 1, 12, 12, 0);
INSERT INTO `detalle_venta` VALUES (1, 'rufl54', 1, 13, 13, 0);
INSERT INTO `detalle_venta` VALUES (1, 'chet23', 2, 20, 20, 0);
INSERT INTO `detalle_venta` VALUES (1, 'sab12', 1, 12, 12, 0);
INSERT INTO `detalle_venta` VALUES (2, 'lech31414', 2, 44, 44, 0);
INSERT INTO `detalle_venta` VALUES (2, 'mante4575', 1, 16, 16, 0);
INSERT INTO `detalle_venta` VALUES (2, 'chock15', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (2, 'emper457', 3, 36, 36, 0);
INSERT INTO `detalle_venta` VALUES (2, 'pingu', 1, 15, 15, 0);
INSERT INTO `detalle_venta` VALUES (3, 'lech31414', 2, 44, 44, 0);
INSERT INTO `detalle_venta` VALUES (3, 'crem1414', 1, 20, 20, 0);
INSERT INTO `detalle_venta` VALUES (3, 'mante4575', 2, 32, 32, 0);
INSERT INTO `detalle_venta` VALUES (3, 'ques0141', 1, 40, 40, 0);
INSERT INTO `detalle_venta` VALUES (3, 'yogur1415', 1, 25, 25, 0);
INSERT INTO `detalle_venta` VALUES (4, 'co3l', 5, 200, 200, 0);
INSERT INTO `detalle_venta` VALUES (4, 'co2l', 5, 150, 150, 0);
INSERT INTO `detalle_venta` VALUES (4, 'pepsi3l', 5, 175, 175, 0);
INSERT INTO `detalle_venta` VALUES (4, 'rufl54', 10, 130, 130, 0);
INSERT INTO `detalle_venta` VALUES (4, 'sab12', 10, 120, 120, 0);
INSERT INTO `detalle_venta` VALUES (5, 'doni745', 3, 48, 48, 0);
INSERT INTO `detalle_venta` VALUES (5, 'emper457', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (5, 'gallmar454', 2, 20, 20, 0);
INSERT INTO `detalle_venta` VALUES (5, 'mante4575', 2, 32, 32, 0);
INSERT INTO `detalle_venta` VALUES (5, 'pingu', 2, 30, 30, 0);
INSERT INTO `detalle_venta` VALUES (6, 'mod1l', 5, 185, 185, 0);
INSERT INTO `detalle_venta` VALUES (6, 'rufl54', 10, 130, 130, 0);
INSERT INTO `detalle_venta` VALUES (6, 'co3l', 5, 200, 200, 0);
INSERT INTO `detalle_venta` VALUES (6, 'pepsi3l', 5, 175, 175, 0);
INSERT INTO `detalle_venta` VALUES (6, 'chet23', 10, 100, 100, 0);
INSERT INTO `detalle_venta` VALUES (7, 'co600ml', 2, 30, 30, 0);
INSERT INTO `detalle_venta` VALUES (7, 'crem1414', 1, 20, 20, 0);
INSERT INTO `detalle_venta` VALUES (7, 'doni745', 2, 32, 32, 0);
INSERT INTO `detalle_venta` VALUES (7, 'yogur1415', 1, 25, 25, 0);
INSERT INTO `detalle_venta` VALUES (7, 'ques0141', 1, 40, 40, 0);
INSERT INTO `detalle_venta` VALUES (8, 'mante4575', 2, 32, 32, 0);
INSERT INTO `detalle_venta` VALUES (8, 'mod1l', 1, 37, 37, 0);
INSERT INTO `detalle_venta` VALUES (8, 'pepsi2l', 1, 30, 30, 0);
INSERT INTO `detalle_venta` VALUES (8, 'chock15', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (8, 'sab12', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (9, 'crem1414', 1, 20, 20, 0);
INSERT INTO `detalle_venta` VALUES (9, 'emper457', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (9, 'chock15', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (9, 'ques0141', 1, 40, 40, 0);
INSERT INTO `detalle_venta` VALUES (9, 'yogur1415', 1, 25, 25, 0);
INSERT INTO `detalle_venta` VALUES (10, 'reb364', 3, 15, 15, 0);
INSERT INTO `detalle_venta` VALUES (10, 'doni745', 2, 32, 32, 0);
INSERT INTO `detalle_venta` VALUES (10, 'mante4575', 1, 16, 16, 0);
INSERT INTO `detalle_venta` VALUES (10, 'pingu', 1, 15, 15, 0);
INSERT INTO `detalle_venta` VALUES (10, 'chock15', 2, 24, 24, 0);
INSERT INTO `detalle_venta` VALUES (11, 'co600ml', 1, 15, 15, 0);

-- ----------------------------
-- Table structure for devolucion
-- ----------------------------
DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE `devolucion`  (
  `idDevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `clave_producto_devolucion` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cantidad_devolucion` float NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `fin_devolucion` date NULL DEFAULT NULL,
  `status_devolcuion` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idDevolucion`) USING BTREE,
  INDEX `clave_producto_idx`(`clave_producto_devolucion`) USING BTREE,
  CONSTRAINT `clave_producto_devolucion` FOREIGN KEY (`clave_producto_devolucion`) REFERENCES `producto` (`clave_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devolucion
-- ----------------------------
INSERT INTO `devolucion` VALUES (1, 'co3l', 1, '2021-02-11', '2021-11-11', '1');

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado`  (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEmpleado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellidoP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellidoM` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rfc` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idCargo` tinyint(4) NOT NULL,
  PRIMARY KEY (`idEmpleado`) USING BTREE,
  INDEX `fk_cargo_emplado`(`idCargo`) USING BTREE,
  CONSTRAINT `fk_cargo_emplado` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES (1, 'Juan', 'Figueroa', 'Trejo', 'FITJ010106', '550978345678', 'Tepeji del Rio', 1);
INSERT INTO `empleado` VALUES (2, 'Omar', 'Aranda', 'Almaraz', 'ARAO010602', '55678908764', 'El durazno', 3);
INSERT INTO `empleado` VALUES (3, 'Jonathan', 'Perez', 'Gonzalez', 'PEGJ970530', '8990989098', 'Los Arana, Villa del Carbon', 2);
INSERT INTO `empleado` VALUES (4, 'Howart', 'Camacho', 'Paez', 'CAPJ011013', '4435434554', 'Canalejas,Jilotepec', 3);

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_Marca` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_Marca` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idMarca`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (1, 'Generica', '0');
INSERT INTO `marca` VALUES (2, 'Coca-cola company', '1');
INSERT INTO `marca` VALUES (3, 'Grupo Modelo', '1');
INSERT INTO `marca` VALUES (4, 'Pepsico', '1');
INSERT INTO `marca` VALUES (5, 'Lala', '1');
INSERT INTO `marca` VALUES (6, 'Bimbo', '1');
INSERT INTO `marca` VALUES (7, 'Marinela', '1');
INSERT INTO `marca` VALUES (8, 'Corona', '1');
INSERT INTO `marca` VALUES (9, 'Gamesa', '1');
INSERT INTO `marca` VALUES (10, 'Sabritas', '1');
INSERT INTO `marca` VALUES (11, 'Colgate', '1');
INSERT INTO `marca` VALUES (12, 'Nestle', '1');

-- ----------------------------
-- Table structure for oferta
-- ----------------------------
DROP TABLE IF EXISTS `oferta`;
CREATE TABLE `oferta`  (
  `idOferta` int(11) NOT NULL AUTO_INCREMENT,
  `clave_producto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cantidad_oferta` float NOT NULL,
  `cantidad_regalo` float NOT NULL,
  `fecha_inicio_oferta` datetime(0) NOT NULL,
  `fecha_final_oferta` datetime(0) NOT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idOferta`) USING BTREE,
  INDEX `clave_producto_idx`(`clave_producto`) USING BTREE,
  CONSTRAINT `clave_producto` FOREIGN KEY (`clave_producto`) REFERENCES `producto` (`clave_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oferta
-- ----------------------------
INSERT INTO `oferta` VALUES (1, 'co600ml', 2, 1, '2021-02-15 00:00:00', '2021-02-25 00:00:00', '1');
INSERT INTO `oferta` VALUES (2, 'co600ml', 3, 2, '2021-02-15 00:00:00', '2021-02-25 00:00:00', '1');
INSERT INTO `oferta` VALUES (3, 'mod1l', 2, 1, '2021-11-10 00:00:00', '2021-12-25 00:00:00', '1');

-- ----------------------------
-- Table structure for presentacion
-- ----------------------------
DROP TABLE IF EXISTS `presentacion`;
CREATE TABLE `presentacion`  (
  `idPresentacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_presentacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_presentacion` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`idPresentacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presentacion
-- ----------------------------
INSERT INTO `presentacion` VALUES (1, 'botella', '1');
INSERT INTO `presentacion` VALUES (2, 'lata ', '1');
INSERT INTO `presentacion` VALUES (3, 'caja', '1');
INSERT INTO `presentacion` VALUES (4, 'tetrapack', '1');
INSERT INTO `presentacion` VALUES (5, 'bolsa', '1');
INSERT INTO `presentacion` VALUES (6, 'costal', '0');
INSERT INTO `presentacion` VALUES (7, 'sobre', '1');
INSERT INTO `presentacion` VALUES (8, 'bote', '1');
INSERT INTO `presentacion` VALUES (9, 'Vaso', '1');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `clave_producto` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_producto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion_producto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nombre_corto_producto` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `precio_actual_producto` float NOT NULL,
  `existencias_producto` float NOT NULL,
  `stock_minimo_producto` float NOT NULL,
  `stock_maximo_producto` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `contenido_neto_producto` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descuento_producto` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`clave_producto`) USING BTREE,
  INDEX `id_presentacion_idx`(`id_presentacion`) USING BTREE,
  INDEX `id_categoria_idx`(`id_categoria`) USING BTREE,
  INDEX `id_marca_idx`(`id_marca`) USING BTREE,
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`idMarca`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id_presentacion` FOREIGN KEY (`id_presentacion`) REFERENCES `presentacion` (`idPresentacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES ('chet23', 'chetos  de Queso', 'Cheos de Queso en forma de Bolita', 'Chetos ', 8, 120, 120, 150, 5, 6, 10, '23 g', 0);
INSERT INTO `producto` VALUES ('chock15', 'Chockis Fresa', 'Galletas chockis Fresa 120 gramos', 'Chockis ', 12, 119, 80, 250, 5, 3, 9, '1200 g', 0);
INSERT INTO `producto` VALUES ('co1l', 'Coca-cola 1 Litro', 'coca-cola de 3 litros', 'coca 1L', 20, 370, 30, 250, 1, 1, 1, '3', 0);
INSERT INTO `producto` VALUES ('co2l', 'Coca-cola 2 Litro', 'coca-cola de 2 litros', 'coca 2L', 30, 132, 30, 250, 1, 1, 1, '2', 0);
INSERT INTO `producto` VALUES ('co3l', 'Coca-cola 3 Litro', 'se aspira', 'coca 3L', 40, 152, 50, 300, 1, 1, 2, '3 l', 0);
INSERT INTO `producto` VALUES ('co600ml', 'Coca-cola 600 mil', 'coca-cola 600 ml', 'coca 600', 15, 159, 50, 300, 1, 1, 2, '600 ml', 0);
INSERT INTO `producto` VALUES ('crem1414', 'Crema lala 1L', 'Crema lala 1 litro', 'Crema 1L', 20, 199, 50, 150, 1, 4, 5, '1 L', 0);
INSERT INTO `producto` VALUES ('doni745', 'Donas Espolvoreadas', 'Donas espolvoreadas bimbo 80 gramos', 'Donitas Esp', 16, 152, 50, 200, 5, 3, 6, '80 g', 0);
INSERT INTO `producto` VALUES ('emper457', 'Emperador Chocolate', 'Galletas Emperador chocolate 80 gramos', 'Emperador Choc', 12, 225, 120, 300, 5, 3, 9, '80 g', 0);
INSERT INTO `producto` VALUES ('gallmar454', 'Galletas Maria Gamesa', 'Galletas maria gamesa 120 g', 'Gall Maria', 10, 141, 120, 600, 5, 3, 9, '120 g', 0);
INSERT INTO `producto` VALUES ('lech31414', 'Leche lala 1L', 'Leche lala 1 litro', 'Leche 1L', 22, 171, 60, 150, 1, 4, 5, '1 L', 0);
INSERT INTO `producto` VALUES ('mante4575', 'Mantecadas', 'Mantecadas bimbo 120 g', 'Mantecadas', 16, 189, 80, 250, 5, 3, 6, '120 g', 0);
INSERT INTO `producto` VALUES ('mod1l', 'Cerveza Modelo 1L', 'Cerveza Modelo de 1 litro', 'Cerv 1L', 37, 7, 50, 250, 1, 2, 3, '1 L', 0);
INSERT INTO `producto` VALUES ('pepsi2l', 'Pepsi 2 Litros', 'Refresco pepsi de 3 litros', 'Pepsi 2L', 30, 283, 80, 250, 1, 1, 4, '2L', 0);
INSERT INTO `producto` VALUES ('pepsi3l', 'Pepsi 3 Litros', 'Refresco pepsi de 3 litros', 'Pepsi 3L', 37, 82, 80, 250, 1, 1, 4, '3 L', 0);
INSERT INTO `producto` VALUES ('pingu', 'Pinguinos Marinela', 'Panquesitos pinguinos 250 gramos', 'pinguinos', 15, 46, 50, 300, 5, 3, 7, '250 g', 0);
INSERT INTO `producto` VALUES ('ques0141', 'Queso Oaxaca lala', 'Queso oaxaca lala 400 gramos', 'Queso oax.', 40, 190, 50, 150, 1, 4, 5, '400 g', 0);
INSERT INTO `producto` VALUES ('reb364', 'Rebanadas Bimbo', 'Rebanadas bimbo 30 g', 'Rebanadas', 5, 224, 50, 150, 5, 3, 6, '30 g', 0);
INSERT INTO `producto` VALUES ('rufl54', 'Rufles queso', 'Fritura Rufles queso 250 g', 'Rufl. Ques.', 13, 303, 100, 350, 5, 6, 10, '250 g', 0);
INSERT INTO `producto` VALUES ('sab12', 'Papitas AculqueÃ±as', 'Sabritas 250 gramos', 'sabritas', 12, 234, 100, 400, 5, 6, 10, '250 g', 0);
INSERT INTO `producto` VALUES ('salad789', 'Saladitas Gamesa', 'Galletas Saladitas Gamesa 250 gramos', 'Saladitas', 15, 100, 50, 200, 5, 3, 9, '250 g', 0);
INSERT INTO `producto` VALUES ('yogur1415', 'Yogurth lala 1L', 'Yogurth lala 1 litro', 'Yogurth 1L', 25, 152, 50, 130, 8, 4, 5, '1 L', 0);

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `claveProveedor` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `razon_social_proveedor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefono_proveedor` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direccion_proveedor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_proveedor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contacto_proveedor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_proveedor` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`claveProveedor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES ('1256', 'Coca-cola S.A de C.V', '55034562', 'Av. Constitucion', 'cocacola@mail.com', 'Jose Beltran', '1');
INSERT INTO `proveedor` VALUES ('1414', 'Grupo Lala S.A de C.V', '7894563145', 'Simon Bolivar', 'lala@mail.com', 'Nataly Vazquez', '1');
INSERT INTO `proveedor` VALUES ('215', 'Grupo Pesico S.A', '4545241544', 'Calle Melchor Ocampo', 'gpoPepsi@mail.com', 'Daliena Ramirez', '1');
INSERT INTO `proveedor` VALUES ('2188', 'Grupo Marinela S.A de C.V', '77314569874', 'Vicente Guerrero', 'marinela@mail.com', 'Luis Fernandez', '1');
INSERT INTO `proveedor` VALUES ('445', 'Bimbo S.A de SV', '7731245896', 'Calle revolucion', 'bimbo@mail.com', 'Maria Martinez', '1');
INSERT INTO `proveedor` VALUES ('456', 'Grupo Modelo', '55789632', 'Revolucion 2da Seccion', 'gpoModeloa@mail.com', 'Julio Hernandez', '1');
INSERT INTO `proveedor` VALUES ('6354', 'Gamesa S.A de S.V', '7489561234', 'Manzanillo ', 'gamesa@mail.com', 'Jose Perez', '1');
INSERT INTO `proveedor` VALUES ('8181', 'Grupo Bimbo S.A de C.V', '77896412532', 'CDMX', 'bimbo@mail.com', 'Fernanda  Garcia', '1');

-- ----------------------------
-- Table structure for proveedor_producto
-- ----------------------------
DROP TABLE IF EXISTS `proveedor_producto`;
CREATE TABLE `proveedor_producto`  (
  `clave_proveedor` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clave_producto` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prioridad` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `clvae_proveedor_idx`(`clave_proveedor`) USING BTREE,
  INDEX `clvae_prodcuto_idx`(`clave_producto`) USING BTREE,
  CONSTRAINT `clave_prodcuto` FOREIGN KEY (`clave_producto`) REFERENCES `producto` (`clave_producto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `clave_proveedor` FOREIGN KEY (`clave_proveedor`) REFERENCES `proveedor` (`claveProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor_producto
-- ----------------------------
INSERT INTO `proveedor_producto` VALUES ('1256', 'co3l', '1');
INSERT INTO `proveedor_producto` VALUES ('1256', 'co2l', '1');
INSERT INTO `proveedor_producto` VALUES ('456', 'mod1l', '1');
INSERT INTO `proveedor_producto` VALUES ('1256', 'co1l', '1');
INSERT INTO `proveedor_producto` VALUES ('1256', 'co600ml', '1');
INSERT INTO `proveedor_producto` VALUES ('215', 'chet23', '1');
INSERT INTO `proveedor_producto` VALUES ('215', 'pepsi2l', '1');
INSERT INTO `proveedor_producto` VALUES ('215', 'pepsi3l', '1');
INSERT INTO `proveedor_producto` VALUES ('215', 'rufl54', '1');
INSERT INTO `proveedor_producto` VALUES ('215', 'sab12', '1');
INSERT INTO `proveedor_producto` VALUES ('6354', 'chock15', '1');
INSERT INTO `proveedor_producto` VALUES ('6354', 'emper457', '1');
INSERT INTO `proveedor_producto` VALUES ('6354', 'gallmar454', '1');
INSERT INTO `proveedor_producto` VALUES ('8181', 'doni745', '1');
INSERT INTO `proveedor_producto` VALUES ('8181', 'mante4575', '1');
INSERT INTO `proveedor_producto` VALUES ('8181', 'reb364', '1');
INSERT INTO `proveedor_producto` VALUES ('6354', 'salad789', '1');
INSERT INTO `proveedor_producto` VALUES ('2188', 'pingu', '1');
INSERT INTO `proveedor_producto` VALUES ('1414', 'crem1414', '1');
INSERT INTO `proveedor_producto` VALUES ('1414', 'lech31414', '1');
INSERT INTO `proveedor_producto` VALUES ('1414', 'ques0141', '1');
INSERT INTO `proveedor_producto` VALUES ('1414', 'yogur1415', '1');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contrasena` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE,
  INDEX `fk_usuario_empleado`(`idEmpleado`) USING BTREE,
  CONSTRAINT `fk_usuario_empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Juan Howart', '123juan456', 4);
INSERT INTO `usuario` VALUES (2, 'Omar', 'omar1234', 2);
INSERT INTO `usuario` VALUES (3, 'Punisher', 'juan321', 1);
INSERT INTO `usuario` VALUES (4, 'Perez', '1234', 3);

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `folio_venta` int(11) NOT NULL AUTO_INCREMENT,
  `RFC` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_hora_venta` datetime(0) NOT NULL,
  `total_venta` float NOT NULL,
  `precio_venta` float NOT NULL,
  `descuento_total_venta` float NOT NULL,
  PRIMARY KEY (`folio_venta`) USING BTREE,
  INDEX `RFC_cliente_idx`(`RFC`) USING BTREE,
  CONSTRAINT `RFC_cliente` FOREIGN KEY (`RFC`) REFERENCES `cliente` (`RFC`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta
-- ----------------------------
INSERT INTO `venta` VALUES (1, 'FITJ0101063Q2', '2021-12-13 09:59:50', 72, 72, 0);
INSERT INTO `venta` VALUES (2, 'FEAL05046QA', '2021-12-13 10:53:48', 135, 135, 0);
INSERT INTO `venta` VALUES (3, 'RAGP56444', '2021-12-13 11:00:26', 161, 161, 0);
INSERT INTO `venta` VALUES (4, 'GRR216546', '2021-12-13 11:12:29', 775, 775, 0);
INSERT INTO `venta` VALUES (5, 'GAHE456WE', '2021-12-14 09:34:44', 154, 154, 0);
INSERT INTO `venta` VALUES (6, 'FITJ0101063Q2', '2021-12-14 09:44:27', 790, 790, 0);
INSERT INTO `venta` VALUES (7, 'FEAL05046QA', '2021-12-14 09:52:01', 147, 147, 0);
INSERT INTO `venta` VALUES (8, 'GRR216546', '2021-12-14 10:04:27', 147, 147, 0);
INSERT INTO `venta` VALUES (9, 'GAHE456WE', '2021-12-14 10:28:49', 133, 133, 0);
INSERT INTO `venta` VALUES (10, 'RAGP56444', '2021-12-14 11:38:17', 102, 102, 0);
INSERT INTO `venta` VALUES (11, 'FITJ0101063Q2', '2022-01-16 01:06:25', 27, 27, 0);

-- ----------------------------
-- Procedure structure for actualizarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `actualizarProducto`;
delimiter ;;
CREATE PROCEDURE `actualizarProducto`(p_clave_producto varchar(21),
p_nombre_producto VARCHAR(255),
p_descripcion_producto varchar(255),
p_shorname_producto varchar(255),
p_precio_actual_producto float,
p_existencias_producto float,
p_stock_minimo_producto float,
p_stock_maximo_producto float,
p_idPresentacion int(11),
p_idCategoria int(11),
p_idMarca int(11),
p_contenido_neto_producto varchar(10),
p_desuento_producto float)
begin
	
update producto set nombre_producto= trim(p_nombre_producto),
	descripcion_producto=trim(p_descripcion_producto),
				nombre_corto_producto=trim(p_shorname_producto),
				precio_actual_producto=trim(p_precio_actual_producto),
				existencias_producto=trim(p_existencias_producto),
				stock_minimo_producto=trim(p_stock_minimo_producto),
				stock_maximo_producto=trim(p_stock_maximo_producto),
				id_presentacion=trim(p_idPresentacion),
				id_categoria=trim(p_idCategoria),
				id_marcatrim=trim(p_idMarca),
				contenido_neto_producto=trim(p_contenido_neto_producto),
				descuento_producto=trim(p_desuento_producto)
				 WHERE clave_producto=p_clave_producto;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarCategoria`;
delimiter ;;
CREATE PROCEDURE `insertarCategoria`(p_descripcion_categoria varchar(255))
begin
declare descripcion_categoria varchar(255);
select categoria.descripcion_categoria into descripcion_categoria from categoria
where categoria.descripcion_categoria=trim(p_descripcion_categoria);
if p_descripcion_categoria=descripcion_categoria then 
select 'La categoria ya existe' as mensajeBD;
update categoria set categoria.status_categoria='0' where categoria.descripcion_categoria=TRIM(p_descripcion_categoria);
else
insert categoria values(default,trim(p_descripcion_categoria),'1');
end if;
select categoria.descripcion_categoria as categoria from categoria WHERE categoria.status_categoria='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarCliente`;
delimiter ;;
CREATE PROCEDURE `insertarCliente`(p_RFC_cliente varchar(13),p_nombre_cliente VARCHAR(255),p_apellido1_cliente varchar(255),
p_apellido2_cliente varchar(255), p_direccion_cliente varchar(255),p_telefono_cliente VARCHAR(15),
p_CURP_clinte varchar(16), p_email_cliente varchar(255))
begin
declare RFC_cliente varchar(13);
select cliente.RFC into RFC_cliente from cliente
where cliente.RFC=trim(p_RFC_cliente);
if p_RFC_cliente=RFC_cliente then 
select 'El cliente  ya existe' as mensajeBD;
else
insert cliente values(trim(p_RFC_cliente),trim(p_RFC_cliente),trim(p_apellido1_cliente),trim(p_apellido2_cliente),trim(p_direccion_cliente),
trim(p_telefono_cliente),trim(p_CURP_cliente),trim(p_email_cliente));
end if;
select CONCAT(cliente.nombre_Cliente,cliente.apellido1_Cliente,cliente.apellido2Cliente) as cliente from cliente;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarCompra`;
delimiter ;;
CREATE PROCEDURE `insertarCompra`(p_folio_compra int,p_claveProveedor int,p_fecha_hora_compra DATETIME ,p_total_compra float)
begin
declare folioCompra int;
select compra.folio_ticket_compra into folioCompra from compra
where compra.folio_ticket_compra=trim(p_folio_compra);
if p_folio_compra=folioCompra then 
select 'La compra ya existe' as mensajeBD;
else
insert compra values(default,trim(p_folio_compra),trim(p_claveProveedor),trim(p_fecha_hora_compra),trim(p_total_compra));
end if;
select proveedor.razon_social_proveedor as Proveedor from proveedor where proveedor.claveProveedor=p_claveProveedor;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarDetalleCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarDetalleCompra`;
delimiter ;;
CREATE PROCEDURE `insertarDetalleCompra`(p_idCompra int,p_claveProducto varchar(21),p_precio_compra float,
p_cantidad_compra float)
begin
declare idCompra int;
declare claveProducto varchar(21);
declare precioTotalDetalleCompra float;
declare totalDetalleCompra float;
declare totalCompra float;
declare precioCompra float;


select detalle_compra.id_compra into idCompra from detalle_compra
where detalle_compra.id_compra=trim(p_idCompra);

SELECT detalle_compra.clave_producto_compra into claveProducto from detalle_compra
where detalle_compra.clave_producto_compra=trim(p_claveProducto);

if p_idCompra=idCompra and p_claveProducto=claveProducto then 
select 'El detalle de la compra ya existe' as mensajeBD;
else

#total compra
SELECT compra.total_compra into totalCompra from compra
where compra.id_compra=trim(p_idCompra);
#total detalles compra
SELECT sum(detalle_compra.precio_compra) into precioTotalDetalleCompra from detalle_compra
where detalle_compra.id_compra=trim(p_idCompra);

#total de los detalles de esa compra + el detalle actual
set totalDetalleCompra=precioTotalDetalleCompra + p_precio_compra;
#si el total de los detalles es mayor que el total de la compra,significa
#que existe un errror con el precio del detalle
if totalDetalleCompra>totalCompra THEN
select "Cantidad incorrecta" as msjPrecio;
else

insert detalle_compra values(default,trim(p_idCompra), trim(p_claveProducto),
trim(p_precio_compra),trim(p_cantidad_compra));


#Mostramos el producto qe compramos y las unidades compradas
SELECT producto.nombre_producto as producto, detalle_compra.cantidad_compra as cantidad_comprada from producto  join  detalle_compra on 
producto.clave_producto= p_claveProducto;

end if;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarDetalleVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarDetalleVenta`;
delimiter ;;
CREATE PROCEDURE `insertarDetalleVenta`(p_folioVenta int,
p_claveProducto_venta varchar(21),
p_cantidad_venta float,
p_precio_venta float,
p_total_venta float,
p_descuento_venta float)
begin
declare folioVenta int;
declare claveProducto varchar(21);


#folio venta
select detalle_venta.folio_venta into folioVenta from detalle_venta
where detalle_venta.folio_venta=trim(p_folioVenta);

#clave del producto
SELECT detalle_venta.clave_producto_venta into claveProducto from detalle_venta
where detalle_venta.folio_venta=trim(p_folioVenta);


#si el folio de ventra y el id del producto se  repiten,
#significa que se esta repitirndo el detalle de la vetna
if p_folioVenta=folioVenta and p_claveProducto_venta=claveProducto then 
select 'El detalle de la venta ya existe' as mensajeBD;
else

insert detalle_venta values(trim(p_folioVenta), trim(p_claveProducto_venta),
trim(p_cantidad_venta),trim(p_precio_venta),trim(p_total_venta),
trim(p_descuento_venta));


#Mostramos el producto qe compramos y las unidades compradas
SELECT producto.nombre_producto as producto, detalle_venta.cantidad_venta as cantidad_vendida from producto  join  detalle_venta on 
producto.clave_producto= p_claveProducto_venta;

end if;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarDevolucion
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarDevolucion`;
delimiter ;;
CREATE PROCEDURE `insertarDevolucion`(p_nombreProducto_devolucion varchar(255),
p_cantidad_devolucion float,
p_fecha_devolucion DATE,p_fin_devolucion DATE)
BEGIN

declare claveProducto varchar(21);

SELECT producto.clave_producto into claveProducto from producto
where producto.nombre_producto=p_nombreProducto_devolucion;

if claveProducto !='' THEN
insert devolucion values(DEFAULT,trim(claveProducto),trim(p_cantidad_devolucion),
trim(p_fecha_devolucion),trim(p_fin_devolucion),'1');
ELSE
select "El producto no existe" as msjProducto;
SELECT claveProducto;
end if;

SELECT producto.nombre_producto as producto,devolucion.cantidad_devolucion as Cantidad_devuelta,
devolucion.fecha_devolucion as fecha
from producto join devolucion on producto.clave_producto=devolucion.clave_producto_devolucion;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarMarca`;
delimiter ;;
CREATE PROCEDURE `insertarMarca`(p_nombre_marca varchar(255))
begin
declare nombre_marca varchar(255);
select marca.nombre_marca into nombre_marca from marca
where marca.nombre_marca=trim(p_nombre_marca);
if p_nombre_marca=nombre_marca then 
select 'La marca ya existe' as mensajeBD;
update marca set marca.status_Marca='0' where marca.nombre_Marca=TRIM(p_nombre_marca);
else
insert marca values(default,trim(p_nombre_marca),'1');
end if;
select marca.nombre_Marca as marca from marca WHERE marca.status_Marca='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarOferta
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarOferta`;
delimiter ;;
CREATE PROCEDURE `insertarOferta`(p_nombreProducto_oferta varchar(255),p_cantidad_oferta float,
p_cantidadRegalo_oferta float,p_fechaInicio_oferta DATE,p_fechaFin_oferta DATE)
begin
declare claveProducto varchar(255);
declare cantidadRegalo float;
declare cantidadOferta float;
DECLARE claveProductoRep VARCHAR(255);
#clave produco
select producto.clave_producto into claveProducto from producto
where producto.nombre_producto=trim(p_nombreProducto_oferta);

select oferta.clave_producto into claveProductoRep from oferta
where oferta.clave_producto=trim(claveProducto);

#cantidad oferta
select oferta.cantidad_oferta into cantidadOferta from oferta
where oferta.clave_producto=trim(claveProducto);

#cantidad regalo
select oferta.cantidad_regalo into cantidadRegalo from oferta
where oferta.clave_producto=trim(claveProducto);

if claveProducto !=''then
if claveProductoRep!='' and 
p_cantidad_oferta=cantidadOferta AND
p_cantidadRegalo_oferta=cantidadRegalo
then 
select 'La oferta ya existe' as mensajeBD;

update oferta set oferta.`status`='0' where oferta.clave_producto=TRIM(p_claveProducto_oferta);
else
insert oferta values(default,trim(claveProducto),trim(p_cantidad_oferta),
trim(p_cantidadRegalo_oferta),trim(p_fechaInicio_oferta),trim(p_fechaFin_oferta),'1');
end if;
ELSE
SELECT "El producto no exite" as msjProductoError;

end if;
select producto.nombre_producto as Producto, oferta.cantidad_oferta as cantidad, 
oferta.cantidad_regalo as regalo from producto join oferta 
on producto.clave_producto=oferta.clave_producto;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarPresentacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarPresentacion`;
delimiter ;;
CREATE PROCEDURE `insertarPresentacion`(p_descripcion_presentacion varchar(255))
begin
declare descripcion_presentacion varchar(255);
select presentacion.descripcion_presentacion into descripcion_presentacion from presentacion
where presentacion.descripcion_presentacion=trim(p_descripcion_presentacion);
if p_descripcion_presentacion=descripcion_presentacion then 
select 'La categoria ya existe' as mensajeBD;
update presentacion set presentacion.status_presentacion='0' where presentacion.descripcion_presentacion=TRIM(p_descripcion_presentacion);
else
insert presentacion values(default,trim(p_descripcion_presentacion),'1');
end if;
select presentacion.descripcion_presentacion as presentacion from presentacion WHERE presentacion.status_presentacion='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarProducto`;
delimiter ;;
CREATE PROCEDURE `insertarProducto`(p_clave_producto varchar(21),p_nombre_producto VARCHAR(255),p_descripcion_producto varchar(255),
p_shorname_producto varchar(255),p_precio_actual_producto float, p_existencias_producto float,p_stock_minimo_producto float,
p_stock_maximo_producto float,p_Presentacion_producto VARCHAR(255),p_Categoria_producto varchar(255),p_Marca_producto VARCHAR(255),
 p_contenido_neto_producto varchar(10), p_desuento_producto float)
begin
declare clave_producto varchar(13);
declare idCategoria int;
declare idPresentacion int;
declare idMarca int;

select producto.clave_producto into clave_producto from producto
where producto.clave_producto=trim(p_clave_producto);

if p_clave_producto=clave_producto then 
	select 'El producto  ya existe' as mensajeBD;
else

	SELECT presentacion.idPresentacion into idPresentacion from presentacion 
	where presentacion.descripcion_presentacion=trim(p_Presentacion_producto);


	SELECT categoria.idCategoria into idCategoria from categoria 
	where categoria.descripcion_categoria=trim(p_Categoria_producto);

	SELECT marca.idMarca into idMarca from marca 
	where marca.nombre_Marca=trim(p_Marca_producto);

	if idPresentacion !='' AND
	idMarca !='' AND
	idCategoria !='' THEN
	insert producto values(trim(p_clave_producto),trim(p_nombre_producto),trim(p_descripcion_producto),
				trim(p_shorname_producto),trim(p_precio_actual_producto),trim(p_existencias_producto),trim(p_stock_minimo_producto),
				trim(p_stock_maximo_producto),trim(idPresentacion),trim(idCategoria),trim(idMarca),
				trim(p_contenido_neto_producto),trim(p_desuento_producto));
		ELSE
		SELECT "La marca, la presentacion o la categoria no existen" as msjMarca;
end if;
end if;
select nombre_producto as Producto from producto;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarProveedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarProveedor`;
delimiter ;;
CREATE PROCEDURE `insertarProveedor`(p_clave_proveedor varchar(15),p_razonSocial_proveedor VARCHAR(255), p_telefono_proveedor varchar(17),p_direccion_proveedor VARCHAR(255), p_email_proveedor varchar(255),p_contacto_proveedor VARCHAR(255))
begin
declare clave_proveedor varchar(15);
declare razon_social varchar(255);

select proveedor.claveProveedor into clave_proveedor from proveedor
where proveedor.claveProveedor=trim(p_clave_proveedor);

SELECT proveedor.razon_social_proveedor into razon_social from proveedor
where proveedor.claveProveedor=trim(p_clave_proveedor);

if p_clave_proveedor=clave_proveedor or  p_razonSocial_proveedor=razon_social then 
select 'El proveedor  ya existe' as mensajeBD;
update proveedor set proveedor.status_proveedor='0' where proveedor.razon_social_proveedor=TRIM(p_razonSocial_proveedor);
else
insert proveedor values(trim(p_clave_proveedor),trim(p_razonSocial_proveedor),trim(p_telefono_proveedor),trim(p_direccion_proveedor),
trim(p_email_proveedor),trim(p_contacto_proveedor),'1');
end if;
select proveedor.razon_social_proveedor as proveedor from proveedor where proveedor.status_proveedor='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarProveedor_Producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarProveedor_Producto`;
delimiter ;;
CREATE PROCEDURE `insertarProveedor_Producto`(p_razonSocial_proveedor VARCHAR(255),
p_nombre_producto VARCHAR(255),p_prioridad char(2))
begin

DECLARE claveProveedor VARCHAR(15);
DECLARE claveProducto VARCHAR(21);
DECLARE claveProveedorRep VARCHAR(15);
DECLARE	claveProductoRep VARCHAR(21);

#clave proveedor
SELECT proveedor.claveProveedor into claveProveedor from proveedor 
where trim(proveedor.razon_social_proveedor)=trim(p_razonSocial_proveedor);

SELECT proveedor_producto.clave_proveedor into claveProveedorRep from proveedor_producto 
where proveedor_producto.clave_proveedor=claveProveedor;

#clave producto
SELECT producto.clave_producto into claveProducto from producto 
where trim(producto.nombre_producto)=trim(p_nombre_producto);

SELECT proveedor_producto.clave_producto into claveProveedorRep from proveedor_producto 
where proveedor_producto.clave_producto=claveProducto;


if  claveProveedor !='' and claveProducto !='' THEN
if claveProveedorRep !='' 
and claveProductoRep !='' THEN
select "El registro ya existe" as msjBD;
else

insert proveedor_producto values(trim(claveProveedor),trim(claveProducto),trim(p_prioridad));
end if;

ELSE
select "El proveedor o el producto no existen" as msjError;

end if;

select proveedor.razon_social_proveedor as Proveedor, producto.nombre_producto as producto
from proveedor_producto join proveedor on proveedor.claveProveedor=claveProveedor 
join producto on producto.clave_producto=claveProducto;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertarVenta`;
delimiter ;;
CREATE PROCEDURE `insertarVenta`(p_RFC_cliente_venta varchar(13) ,p_fecha_hora_venta DATETIME,
p_total_venta float,p_precio_venta float,p_descuento_total_venta float)
begin
declare RFC varchar(13);

select cliente.RFC into RFC from cliente
WHERE cliente.RFC=trim(p_RFC_cliente_venta);

if RFC !='' then
insert venta values(default,trim(p_RFC_cliente_venta),trim(p_fecha_hora_venta),trim(p_total_venta),
trim(p_precio_venta),trim(p_descuento_total_venta));
ELSE
select "El cliente no existe" as msjCliente;

end if;
SELECT cliente.nombre_Cliente as cliente , venta.folio_venta as Venta from cliente join venta 
on cliente.RFC=p_RFC_cliente_venta;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_consulta_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_consulta_usuario`;
delimiter ;;
CREATE PROCEDURE `sp_consulta_usuario`(p_nombreUsuario VARCHAR(100),
p_contrasena VARCHAR (100))
BEGIN
	SELECT
	empleado.nombreEmpleado, 
	empleado.apellidoP, 
	empleado.apellidoM, 
	empleado.idCargo, 
	cargo.nombreCargo
FROM
	usuario
	INNER JOIN
	empleado
	ON 
		usuario.idEmpleado = empleado.idEmpleado
	INNER JOIN
	cargo
	ON 
		empleado.idCargo = cargo.idCargo
WHERE
	usuario.nombreUsuario = p_nombreUsuario AND usuario.contrasena= p_contrasena;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_producto
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_producto`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_producto`(p_clave_producto varchar(21),p_nombre_producto VARCHAR(255),p_descripcion_producto varchar(255),
p_nombre_corto_producto varchar(45),p_precio_actual_producto float, p_existencias_producto float,p_stock_minimo_producto float,
p_stock_maximo_producto float,p_descripcion_presentacion VARCHAR(255),p_descripcion_categoria varchar(255),p_nombre_Marca VARCHAR(255),
 p_contenido_neto_producto varchar(10), p_desuento_producto float)
BEGIN
DECLARE clave_producto varchar(13);

select producto.clave_producto into clave_producto from producto
where producto.clave_producto=trim(p_clave_producto);

if p_clave_producto=clave_producto then 
	select 'El producto  ya existe' as mensajeBD;
else
	INSERT producto values(trim(p_clave_producto),
												 trim(p_nombre_producto),
												 trim(p_descripcion_producto),
												 trim(p_nombre_corto_producto),
												 trim(p_precio_actual_producto),
												 trim(p_existencias_producto),
												 trim(p_stock_minimo_producto),
												 trim(p_stock_maximo_producto),
												 (SELECT presentacion.idPresentacion from presentacion where presentacion.descripcion_presentacion=trim(p_descripcion_presentacion)),
												 (SELECT categoria.idCategoria from categoria where categoria.descripcion_categoria=trim(p_descripcion_categoria)),
												 (SELECT marca.idMarca from marca where marca.nombre_Marca=trim(p_nombre_Marca)),
											   trim(p_contenido_neto_producto),
												 trim(p_desuento_producto));
 SELECT 'INGREDIENTE REGISTRADO' AS MENSAJE;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_categoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_categoria`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_categoria`()
BEGIN
	SELECT idCategoria, 
	descripcion_categoria
  FROM categoria where status_categoria = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_marca
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_marca`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_marca`()
BEGIN
	SELECT idMarca, 
	nombre_marca
  FROM marca where status_Marca = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_presentacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_presentacion`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_presentacion`()
BEGIN
	SELECT idPresentacion,
	descripcion_presentacion
  FROM presentacion 
	where status_presentacion = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_mostrar_producto_clave
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mostrar_producto_clave`;
delimiter ;;
CREATE PROCEDURE `sp_mostrar_producto_clave`(IN `clave_prod` varchar(21))
BEGIN
SELECT  
	producto.nombre_producto, 
	producto.descripcion_producto, 
	producto.nombre_corto_producto, 
	producto.precio_actual_producto, 
	producto.existencias_producto, 
	producto.stock_minimo_producto, 
	producto.stock_maximo_producto, 
	producto.contenido_neto_producto, 
	producto.descuento_producto, 
	presentacion.descripcion_presentacion, 
	categoria.descripcion_categoria, 
	marca.nombre_Marca
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
	WHERE producto.clave_producto=clave_prod;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ver_productos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ver_productos`;
delimiter ;;
CREATE PROCEDURE `sp_ver_productos`()
BEGIN
	SELECT producto.clave_producto, 
	producto.nombre_producto, 
	producto.descripcion_producto, 
	producto.nombre_corto_producto, 
	producto.precio_actual_producto, 
	producto.existencias_producto, 
	producto.stock_minimo_producto, 
	producto.stock_maximo_producto, 
	producto.contenido_neto_producto, 
	producto.descuento_producto, 
	presentacion.descripcion_presentacion, 
	categoria.descripcion_categoria, 
	marca.nombre_Marca
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
		producto.id_categoria = categoria.idCategoria;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detalle_compra
-- ----------------------------
DROP TRIGGER IF EXISTS `actualiza_existencias`;
delimiter ;;
CREATE TRIGGER `actualiza_existencias` AFTER INSERT ON `detalle_compra` FOR EACH ROW UPDATE producto join detalle_compra set producto.existencias_producto=
producto.existencias_producto + new.cantidad_compra
where producto.clave_producto=detalle_compra.clave_producto_compra
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detalle_venta
-- ----------------------------
DROP TRIGGER IF EXISTS `actualiza_inventario`;
delimiter ;;
CREATE TRIGGER `actualiza_inventario` AFTER INSERT ON `detalle_venta` FOR EACH ROW UPDATE producto join detalle_venta set producto.existencias_producto=
producto.existencias_producto - new.cantidad_venta
where producto.clave_producto=detalle_venta.clave_producto_venta
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table marca
-- ----------------------------
DROP TRIGGER IF EXISTS `insertar_marca`;
delimiter ;;
CREATE TRIGGER `insertar_marca` AFTER INSERT ON `marca` FOR EACH ROW insert bitacora_market.bitacora VALUES(
DEFAULT, 
user(),
NOW(),
CONCAT(new.idMarca,',',new.nombre_Marca,',',new.status_Marca),
'',
'marca',
'insert')
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table marca
-- ----------------------------
DROP TRIGGER IF EXISTS `actualiza_marca`;
delimiter ;;
CREATE TRIGGER `actualiza_marca` AFTER UPDATE ON `marca` FOR EACH ROW insert bitacora_market.bitacora VALUES(
DEFAULT,
user(),
Now(),
CONCAT(new.idMarca,',',new.nombre_Marca,',',new.status_Marca),
CONCAT(old.idMarca,',',old.nombre_Marca,',',old.status_Marca),
'marca',
'update'
)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table marca
-- ----------------------------
DROP TRIGGER IF EXISTS `elimina_marca`;
delimiter ;;
CREATE TRIGGER `elimina_marca` AFTER DELETE ON `marca` FOR EACH ROW insert bitacora_market.bitacora VALUES(
DEFAULT,
user(),
Now(),
'',
CONCAT(old.idMarca,',',old.nombre_Marca,',',old.status_Marca),
'marca',
'delete'
)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
