--incertando datos en la tabala de Empleado
INSERT INTO empleado(
nombre,
RFC,
CURP,
NSS,
fecha_ingreso,
sueldo_base,
tipo_comtrato,
jornada,
id_departamento,
id_puesto
)

VALUES(
'Juan Perez',
'JUAP123456ABC',
'JUAP123456HPLABC01',
'12345678901',
DATE '2026-05-22',
12000,
'Tiempo completo',
'Diurna',
5,
3
);

--Incertando datos en la tabla de Incidencias
INSERT INTO incidencias(
fecha,
hora_entrada,
hora_salida,
horas_laboradas,
id_empleado
)

VALUES(
DATE '2026-05-22',
TIMESTAMP '2026-05-22 08:00:00',
TIMESTAMP '2026-05-22 16:00:00',
8,
4
);

--Incertando datos de en la tabla de Percepcioens
INSERT INTO percepciones(
tipo,
monto,
id_empleado
)

VALUES(
'Bono puntualidad',
500,
4
);

--Incertando datos en tabla de Deducciones
INSERT INTO deducciones(
tipo_deduccion,
monto_deduccion,
id_empleado
)

VALUES(
'ISR',
1000,
4
);

--Incertando datos en Nomina
INSERT INTO nomina(
fecha_emision,
sueldo_neto,
folio_fiscal,
fecha_imprecios,
id_empleado
)

VALUES(
DATE '2026-05-22',
11500,
'FOLIO001',
DATE '2026-05-22',
4
);

COMMIT;