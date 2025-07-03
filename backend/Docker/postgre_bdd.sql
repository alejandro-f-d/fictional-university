CREATE SCHEMA schema_web;
SET search_path TO schema_web;

CREATE TABLE rol(
    id_rol SERIAL PRIMARY KEY,
    nombre_rol TEXT NOT NULL,
    descripcion_rol TEXT
);

CREATE TABLE escuela(
    id_escuela SERIAL PRIMARY KEY,
    nombre_escuela TEXT NOT NULL,
    descripcion_escuela TEXT
);

CREATE TABLE animal(
    id_animal SERIAL PRIMARY KEY,
    tipo_ser INT NOT NULL,
    nombre TEXT NOT NULL, 
    REIAC TEXT,
    expediente TEXT NOT NULL
);

CREATE TABLE grado(
    id_grado SERIAL PRIMARY KEY,
    descripacion_grado TEXT NOT NULL
);

CREATE TABLE asignaturas(
    id_asignatura SERIAL PRIMARY KEY,
    galletita INT NOT NULL, 
    nombre_asig TEXT NOT NULL, 
    descripcion TEXT
);

CREATE TABLE asociaciones(
    id_asoc SERIAL PRIMARY KEY,
    nombre_asoc TEXT NOT NULL,
    descripacion_asoc TEXT NOT NULL 
);

CREATE TABLE quejas(
    id_queja SERIAL PRIMARY KEY,
    id_asig INT references asignaturas(id_asignatura),
    id_prof INT references animal(id_animal), 
    id_user INT references animal(id_animal), 
    texto_queja TEXT NOT NULL
);

CREATE TABLE activo(
    id_rol INT references rol(id_rol),
    id_ser INT references animal(id_animal),
    PRIMARY KEY(id_rol, id_ser)
);

CREATE TABLE miembros(
    id_ser INT references animal(id_animal),
    id_escuela INT references escuela(id_escuela),
    PRIMARY KEY(id_ser, id_escuela)
);

CREATE TABLE departamento(
    id_departamento SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    mision TEXT NOT NULL, 
    id_escuela INT references escuela(id_escuela)
);

CREATE TABLE inscrito(
    id_ser INT references animal(id_animal),
    id_grado INT references grado(id_grado),
    PRIMARY KEY(id_ser, id_grado)
);

CREATE TABLE inscrito_asig(
    id_ser INT references animal(id_animal),
    id_asig INT references asignaturas(id_asignatura),
    PRIMARY KEY(id_ser, id_asig)
);

CREATE TABLE pertenece(
    id_ser INT references animal(id_animal),
    id_asoc INT references asociaciones(id_asoc)
);
