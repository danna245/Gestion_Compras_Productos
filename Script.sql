--Crear la base de datos. Si ya existe, la elimina y la vuelve a crear.
DROP DATABASE IF EXISTS mini_proyecto_ventas;
CREATE DATABASE mini_proyecto_ventas;

--Usar la base de datos que acabamos de crear
USE mini_proyecto_ventas;

--Crear la tabla para los productos
CREATE TABLE Producto (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

--Crear la tabla para los usuarios del sistema (para el login)
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);

--Crear la tabla para registrar cada venta
CREATE TABLE Venta (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT, -- Clave Foránea: el usuario que realizó la venta
    fecha_venta DATETIME NOT NULL,
    total_venta DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);