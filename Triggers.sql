--Triger para Departemento
CREATE OR REPLACE TRIGGER trg_departemento
BEFORE INSERT ON departamento
FOR EACH ROW
BEGIN
    SELECT seq_departamento.NEXTVAL
    INTO :NEW.id_departamento
    FROM dual;
END;
/

--Trigger para Puesto
CREATE OR REPLACE TRIGGER trg_puesto
BEFORE INSERT ON puesto
FOR EACH ROW
BEGIN
    SELECT seq_puesto.NEXTVAL
    INTO :NEW.id_puesto
    FROM dual;
END;
/

--Trigger para Empleado
CREATE OR REPLACE TRIGGER trg_empleado
BEFORE INSERT ON empleado
FOR EACH ROW
BEGIN
    SELECT seq_empleado.NEXTVAL
    INTO :NEW.id_empleado
    FROM dual;
END;
/

--Trigger para Incidencias
CREATE OR REPLACE TRIGGER trg_incidencias
BEFORE INSERT ON incidencias
FOR EACH ROW
BEGIN
    SELECT seq_incidencias.NEXTVAL
    INTO :NEW.id_incidencia
    FROM dual;
END;
/

--Trigger para Percepciones
CREATE OR REPLACE TRIGGER trg_percepciones
BEFORE INSERT ON percepciones
FOR EACH ROW
BEGIN
    SELECT seq_percepciones.NEXTVAL
    INTO :NEW.id_percepcion
    FROM dual;
END;
/

--Trigger para Deducciones
CREATE OR REPLACE TRIGGER trg_deducciones
BEFORE INSERT ON deducciones
FOR EACH ROW
BEGIN
    SELECT seq_deduciones.NEXTVAL
    INTO :NEW.id_deduccion
    FROM dual;
END;
/

--Trigger para Nomina
CREATE OR REPLACE TRIGGER trg_nomina
BEFORE INSERT ON nomina
FOR EACH ROW
BEGIN
    SELECT seq_nomina.NEXTVAL
    INTO :NEW.id_nomina
    FROM dual;
END;
/