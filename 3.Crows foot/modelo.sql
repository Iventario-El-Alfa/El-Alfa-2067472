CREATE TABLE Cargo (
  Codi_Cargo INT NOT NULL,
  Descripcion VARCHAR(30) NULL,
  PRIMARY KEY(Codi_Cargo)
);

CREATE TABLE Detalle_Factura (
  Codi_Deta_Fact INTEGER UNSIGNED NOT NULL,
  Factura_Codi_Factu INT NOT NULL,
  Productos _Codi_produc INT NOT NULL,
  Cantidad INTEGER UNSIGNED NOT NULL,
  precio FLOAT NOT NULL,
  Subtotal FLOAT NULL,
  PRIMARY KEY(Codi_Deta_Fact),
  INDEX Detalle_Factura_FKIndex1(Productos _Codi_produc),
  INDEX Detalle_Factura_FKIndex2(Factura_Codi_Factu)
);

CREATE TABLE Factura (
  Codi_Factu INT NOT NULL,
  FactFecha DATE NOT NULL,
  total_comp FLOAT NOT NULL,
  Total iva FLOAT NULL,
  subtotal  FLOAT NULL,
  PRIMARY KEY(Codi_Factu)
);

CREATE TABLE Inventario (
  id Inventario INTEGER UNSIGNED NOT NULL,
  Productos _Codi_produc INT NOT NULL,
  Entradas FLOAT NULL,
  salidas FLOAT NULL,
  saldo FLOAT NULL,
  PRIMARY KEY(id Inventario),
  INDEX Inventario_FKIndex1(Productos _Codi_produc)
);

CREATE TABLE Movimientos (
  Id Movi INT NOT NULL,
  Detalle_Factura_Codi_Deta_Fact INTEGER UNSIGNED NOT NULL,
  Inventario_id Inventario INTEGER UNSIGNED NOT NULL,
  Personas_Doc_Perso INT NOT NULL,
  Tipo movimiento_id movimiento VARCHAR(10) NOT NULL,
  Productos _Codi_produc INT NOT NULL,
  MoviFecha DATETIME NOT NULL,
  MoviCantidad FLOAT NOT NULL,
  PRIMARY KEY(Id Movi),
  INDEX Movimientos_FKIndex1(Productos _Codi_produc),
  INDEX Movimientos_FKIndex2(Tipo movimiento_id movimiento),
  INDEX Movimientos_FKIndex3(Personas_Doc_Perso),
  INDEX Movimientos_FKIndex4(Inventario_id Inventario),
  INDEX Movimientos_FKIndex5(Detalle_Factura_Codi_Deta_Fact)
);

CREATE TABLE Personas (
  Doc_Perso INT NOT NULL,
  Seguridad_Codi_Segu VARCHAR(20) NOT NULL,
  Cargo_Codi_Cargo INT NOT NULL,
  Perso_Nombres VARCHAR(45) NOT NULL,
  Perso_Apellidos VARCHAR(45) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Correo VARCHAR(20) NULL,
  Tipo_Doc VARCHAR(20) NOT NULL,
  Estado VARCHAR(20) NULL,
  Dirreccion VARCHAR(20) NULL,
  PRIMARY KEY(Doc_Perso),
  INDEX Personas_FKIndex1(Seguridad_Codi_Segu),
  INDEX Personas_FKIndex2(Cargo_Codi_Cargo)
);

CREATE TABLE Productos  (
  Codi_produc INT NOT NULL,
  Proveedores_Codi Prove INT NOT NULL,
  Nomb_produc VARCHAR(20) NOT NULL,
  Preci_produc FLOAT NOT NULL,
  Color VARCHAR(10) NULL,
  Iva FLOAT NULL,
  Estado VARCHAR(20) NULL,
  Material VARCHAR(20) NULL,
  Talla VARCHAR(20) NULL,
  Descripcion VARCHAR(20) NULL,
  PRIMARY KEY(Codi_produc),
  INDEX Productos _FKIndex2(Proveedores_Codi Prove)
);

CREATE TABLE Proveedores (
  Codi Prove INT NOT NULL AUTO_INCREMENT,
  ProveNombres VARCHAR(45) NOT NULL,
  Prove Apellidos VARCHAR(45) NOT NULL,
  ProveNumDoc INTEGER UNSIGNED NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Correo VARCHAR(20) NULL,
  Dirreccion VARCHAR(20) NOT NULL,
  estado VARCHAR(20) NULL,
  PRIMARY KEY(Codi Prove)
);

CREATE TABLE Registro (
  Correo VARCHAR(20) NOT NULL,
  Contrasena VARCHAR(20) NOT NULL,
  PRIMARY KEY(Correo)
);

CREATE TABLE Seguridad (
  Codi_Segu VARCHAR(20) NOT NULL,
  Registro_Correo VARCHAR(20) NOT NULL,
  Segu VARCHAR(20) NOT NULL,
  PRIMARY KEY(Codi_Segu),
  INDEX Rol_FKIndex1(Registro_Correo)
);

CREATE TABLE Tipo movimiento (
  id movimiento VARCHAR(10) NOT NULL AUTO_INCREMENT,
  Descripcion VARCHAR(20) NOT NULL,
  PRIMARY KEY(id movimiento)
);


