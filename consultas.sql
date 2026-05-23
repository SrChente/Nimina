--Consultado tabla de departementos
SELECT * FROM Departamento;

--Cnsultas complejas
SELECT
e.nombre,
p.nimbre_puesto,
d.nombre_departamento

FROM empleado e

JOIN puesto p
ON e.id_puesto=p.id_puesto

JOIN departamento d
ON e.id_departamento=d.id_departamento;

--Consultando percepciones y deducciones
SELECT
e.nombre,
p.tipo AS percepcion,
p.monto,
d.tipo_deduccion AS deduccion,
d.monto_deduccion AS deduccion

FROM empleado e

JOIN percepciones p
ON e.id_empleado=p.id_empleado

JOIN deducciones d
ON e.id_empleado=d.id_empleado;

--Consultando Nomina
SELECT
e.nombre,
n.sueldo_neto,
n.folio_fiscal,
n.fecha_imprecios

FROM empleado e

JOIN nomina n
ON e.id_empleado=n.id_empleado;

COMMIT;