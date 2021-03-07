CREATE TABLE Cargo (
  CodiCargo INT NOT NULL,
  Descripcion VARCHAR(30) NULL,
  PRIMARY KEY(CodiCargo)
);

CREATE TABLE Detalle_Factura (
  CodiDetaFact INTEGER UNSIGNED NOT NULL,
  Factura_CodiFactu INT NOT NULL,
  Productos _Codiproduc INT NOT NULL,
  Cantidad INTEGER UNSIGNED NOT NULL,
  precio FLOAT NOT NULL,
  Subtotal FLOAT NULL,
  PRIMARY KEY(CodiDetaFact),
  INDEX Detalle_Factura_FKIndex1(Productos _Codiproduc),
  INDEX Detalle_Factura_FKIndex2(Factura_CodiFactu)
);

CREATE TABLE Factura (
  CodiFactu INT NOT NULL,
  FactFecha DATE NOT NULL,
  totalcomp FLOAT NOT NULL,
  Totaliva FLOAT NULL,
  subtotal  FLOAT NULL,
  PRIMARY KEY(CodiFactu)
);

CREATE TABLE Inventario (
  id Inventario INTEGER UNSIGNED NOT NULL,
  Productos _Codiproduc INT NOT NULL,
  Entradas FLOAT NULL,
  salidas FLOAT NULL,
  saldo FLOAT NULL,
  PRIMARY KEY(id Inventario),
  INDEX Inventario_FKIndex1(Productos _Codiproduc)
);

CREATE TABLE Movimientos (
  IdMovi INT NOT NULL,
  Detalle_Factura_CodiDetaFact INTEGER UNSIGNED NOT NULL,
  Tipo movimiento_Idmovi VARCHAR(10) NOT NULL,
  Productos _Codiproduc INT NOT NULL,
  Inventario_id Inventario INTEGER UNSIGNED NOT NULL,
  Personas_Doc_Perso INT NOT NULL,
  MoviFecha DATETIME NOT NULL,
  MoviCantidad FLOAT NOT NULL,
  PRIMARY KEY(IdMovi),
  INDEX Movimientos_FKIndex1(Productos _Codiproduc),
  INDEX Movimientos_FKIndex2(Tipo movimiento_Idmovi),
  INDEX Movimientos_FKIndex3(Personas_Doc_Perso),
  INDEX Movimientos_FKIndex4(Inventario_id Inventario),
  INDEX Movimientos_FKIndex5(Detalle_Factura_CodiDetaFact)
);

CREATE TABLE Personas (
  Doc_Perso INT NOT NULL,
  Seguridad_CodiSegu VARCHAR(20) NOT NULL,
  Cargo_CodiCargo INT NOT NULL,
  PersoNombres VARCHAR(45) NOT NULL,
  PersoApellidos VARCHAR(45) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Correo VARCHAR(20) NULL,
  TipoDoc VARCHAR(20) NOT NULL,
  Estado VARCHAR(20) NULL,
  Dirreccion VARCHAR(20) NULL,
  PRIMARY KEY(Doc_Perso),
  INDEX Personas_FKIndex1(Seguridad_CodiSegu),
  INDEX Personas_FKIndex2(Cargo_CodiCargo)
);

CREATE TABLE Productos  (
  Codiproduc INT NOT NULL,
  Proveedores_Codi Prove INT NOT NULL,
  Nombproduc VARCHAR(20) NOT NULL,
  Preciproduc FLOAT NOT NULL,
  Color VARCHAR(10) NULL,
  Iva FLOAT NULL,
  Estado VARCHAR(20) NULL,
  Material VARCHAR(20) NULL,
  Talla VARCHAR(20) NULL,
  Descripcion VARCHAR(20) NULL,
  PRIMARY KEY(Codiproduc),
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
  CodiSegu VARCHAR(20) NOT NULL,
  Registro_Correo VARCHAR(20) NOT NULL,
  Segu VARCHAR(20) NOT NULL,
  PRIMARY KEY(CodiSegu),
  INDEX Rol_FKIndex1(Registro_Correo)
);

CREATE TABLE Tipo movimiento (
  Idmovi VARCHAR(10) NOT NULL AUTO_INCREMENT,
  Descripcion VARCHAR(20) NOT NULL,
  PRIMARY KEY(Idmovi)
);


