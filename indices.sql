CREATE INDEX idx_nombre_empleado
ON empleado(nombre);

CREATE INDEX idx_rfc
ON empleado(RFC);

CREATE INDEX idx_fecha_nomina
ON nomina(fecha_emision);