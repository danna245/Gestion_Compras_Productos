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