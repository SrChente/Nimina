--Vista para Nomina
CREATE VIEW vista_nomina AS
SELECT
e.nombre,
n.fecha_emision,
n.sueldo_neto,
n.folio_fiscal
FROM empleado e
JOIN nomina n
ON e.id_empleado=n.id_empleado;

--Vista para Asistencias
CREATE VIEW vista_incidencias AS
SELECT
e.nombre,
a.fecha,
a.hora_entrada,
a.hora_salida
FROM empleado e
JOIN incidencias a
ON e.id_empleado=a.id_empleado;