--Actualizando la tabla de Puesto
UPDATE puesto
SET nimbre_puesto='Supervisor General'
WHERE nimbre_puesto='Supervisor';

--Actualizando la tabla de Departamento
UPDATE departamento
SET nombre_departamento='Recursos Corporativo'
WHERE nombre_departamento='Recursos Humanos';

COMMIT;