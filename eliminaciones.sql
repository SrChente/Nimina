--Eliminando puestos repetidos
DELETE FROM puesto
WHERE id_puesto=10;

DELETE FROM puesto
WHERE id_puesto=9;

DELETE FROM puesto
WHERE id_puesto=8;

DELETE FROM puesto
WHERE id_puesto=7;

DELETE FROM puesto
WHERE id_puesto=6;

DELETE FROM puesto
WHERE id_puesto=5;

--Eliminando Departamentos repetidos
DELETE FROM departamento
WHERE id_departamento=12;

DELETE FROM departamento
WHERE id_departamento=11;

DELETE FROM departamento
WHERE id_departamento=10;

DELETE FROM departamento
WHERE id_departamento=9;

DELETE FROM departamento
WHERE id_departamento=8;

DELETE FROM departamento
WHERE id_departamento=7;

COMMIT;