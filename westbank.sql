CREATE DATABASE westbank;
USE westbank;

-- Crear tabla "Clientes"
CREATE TABLE clientes (
  rut VARCHAR(8) PRIMARY KEY,
  nombre VARCHAR(50),
  apellidoPaterno VARCHAR(50),
  apellidoMaterno VARCHAR(50),
  domicilio VARCHAR(100),
  comuna VARCHAR(50),
  telefono VARCHAR(20)
);

-- Crear tabla "cuentas"
CREATE TABLE cuentas (
  numero BIGINT PRIMARY KEY,
  saldo INT,
  descripcion VARCHAR(50),
  cliente_rut VARCHAR(8),
  FOREIGN KEY (cliente_rut) REFERENCES clientes(rut)
);

-- Insertar datos de ejemplo en la tabla "clientes"
INSERT INTO clientes (rut, nombre, apellidoPaterno, apellidoMaterno, domicilio, comuna, telefono)
VALUES
  ('11111111', 'Juan', 'Pérez', 'Gómez', 'Calle 123', 'Santiago', '123456789'),
  ('22222222', 'María', 'López', 'Fernández', 'Avenida 456', 'Concepción', '987654321');

-- Insertar datos de ejemplo en la tabla "cuentas"
INSERT INTO cuentas (numero,saldo, descripcion, cliente_rut)
VALUES
  (12345789, 50000, 'Cuenta de Ahorro', '11111111'),
  (12356788, 100000, 'Cuenta Corriente', '22222222');