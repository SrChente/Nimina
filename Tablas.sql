--Tabla de Empleados
CREATE TABLE empleados (
    id_empleado     NUMBER(10) PRIMARY KEY,
    nombre_completo VARCHAR2(100) NOT NULL,
    CURP            VARCHAR2(13) UNIQUE NOT NULL,
    RFC             VARCHAR2(18) UNIQUE NOT NULL,
    NSS             VARCHAR2(11) NOT NULL,
    fecha_ingreso   DATE DEFAULT SYSDATE,
    cuenta_banco    VARCHAR2(16) UNIQUE NOT NULL
);

--Tabla de Nomina
CREATE TABLE nomina (
    id_nomina       NUMBER(10) PRIMARY KEY,
    fecha_emision   DATE DEFAULT SYSDATE,
    periodo_pago    VARCHAR2(50) NOT NULL,
    sueldo_neto     NUMBER(10, 2) NOT NULL,
    folio_fiscal    VARCHAR2(36) UNIQUE NOT NULL
);

--Tabla de Puesto
CREATE TABLE puesto (
    id_puesto       NUMBER(10) PRIMARY KEY,
    nombre_puesto   VARCHAR2(50) NOT NULL,
    sueldo_base     NUMBER(10, 2) NOT NULL,
    funciones       VARCHAR2(100) NOT NULL
);