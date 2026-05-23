--Insertando datos en la Tabla de Departemento
INSERT INTO departamento(nombre_departamento)
VALUES('Recursos Humanos');

INSERT INTO departamento(nombre_departamento)
VALUES('Finanzas');

--Incertando datos en la tabla de Puesto
INSERT INTO puesto(nimbre_puesto,descripcion,funciones)
VALUES(
'Supervisor',
'Supervisar actividades',
'Control y seguimiento'
);

INSERT INTO puesto(nimbre_puesto,descripcion,funciones)
VALUES(
'Gerente',
'Administración general',
'Gestión y toma de decisiones'
);

COMMIT;