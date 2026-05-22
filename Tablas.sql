--Tabla Departamento
CREATE TABLE departamento (
    id_departamento     NUMBER PRIMARY KEY,
    nombre_departamento VARCHAR2(20) NOT NULL
);

--Tabla Puesto
CREATE TABLE puesto (
    id_puesto       NUMBER PRIMARY KEY,
    nimbre_puesto   VARCHAR2(50) NOT NULL,
    funciones       VARCHAR2(200) NOT NULL,
    descripcion     VARCHAR2(200) NOT NULL
);

--Tabla Emplaedo
CREATE TABLE empleado (
    id_empleado     NUMBER PRIMARY KEY,
    nombre          VARCHAR2(100) NOT NULL,
    CURP            VARCHAR2(18) UNIQUE NOT NULL,
    RFC             VARCHAR2(13) UNIQUE NOT NULL,
    NSS             VARCHAR2(11) UNIQUE NOT  NULL,
    fecha_ingreso   DATE,
    sueldo_base     NUMBER(10,2) NOT NULL,
    tipo_comtrato   VARCHAR2(50),
    jornada         VARCHAR2(50),

    id_puesto       NUMBER,
    id_departamento NUMBER,

    CONSTRAINT fk_departamento
    FOREIGN KEY (id_departamento)
    REFERENCES departamento(id_departamento),

    CONSTRAINT fk_puesto
    FOREIGN KEY (id_puesto)
    REFERENCES puesto(id_puesto)

);

--Tabla Incidencias
CREATE TABLE incidencias (
    id_incidencia   NUMBER PRIMARY KEY,
    fecha           DATE,
    hora_entrada    TIMESTAMP,
    hora_salida     TIMESTAMP,
    horas_laboradas NUMBER(10,2),

    id_empleado     NUMBER,

    CONSTRAINT fk_empleado_incidencias
    FOREIGN KEY(id_empleado)
    REFERENCES empleado(id_empleado)

);

--Tabla Percepciones
CREATE TABLE percepciones (
    id_percepcion NUMBER PRIMARY KEY,
    tipo          VARCHAR2(50),
    monto         NUMBER(10,2),

    id_empleado   NUMBER,

    CONSTRAINT fk_empleado_percepciones
    FOREIGN KEY(id_empleado)
    REFERENCES empleado(id_empleado)

);

--Tabla Deducciones
CREATE TABLE deducciones(
    id_deduccion    NUMBER PRIMARY KEY,
    tipo_deduccion  VARCHAR2(50),
    monto_deduccion NUMBER(10,2),

    id_empleado NUMBER,

    CONSTRAINT fk_empleado_deducciones
    FOREIGN KEY(id_empleado)
    REFERENCES empleado(id_empleado)

);

--Tabla Nomina
CREATE TABLE nomina(
    id_nomina       NUMBER PRIMARY KEY,
    fecha_emision   DATE,
    monto_nomina    NUMBER(10,2),
    folio_fiscal    VARCHAR2(50),
    fecha_imprecios DATE,

    id_empleado     NUMBER,

    CONSTRAINT fk_empleado_nomina
    FOREIGN KEY(id_empleado)
    REFERENCES empleado(id_empleado)

);