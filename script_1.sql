
--Practica 1 MIA
--201213545 - Romael Isaac Perez Godinez
--\i '/home/roma/Practica1/script_1.sql';

--inciso 1
--se eliminan las tablas creadas antes por pruebas
drop table profesion cascade;
drop table pais cascade;
drop table puesto cascade;
drop table departamento cascade;
drop table miembro cascade;
drop table puesto_miembro cascade;
drop table tipo_medalla cascade;
drop table medallero cascade;
drop table disciplina cascade;
drop table atleta cascade;
drop table categoria cascade;
drop table tipo_participacion cascade;
drop table evento cascade;
drop table evento_atleta cascade;
drop table televisora cascade;
drop table costo_evento cascade;
drop table sede cascade;
drop table discplina_atleta;

--cominezan los script para la creacion de las tablas
--profesion

create table profesion(
    cod_prof integer primary key,
    nombre varchar(50) not null unique
);
--pais
create table pais(
    cod_pais integer primary key,
    nombre varchar(50) not null unique
);
--puesto
create table puesto(
    cod_puesto integer primary key,
    nombre varchar(50) not null unique
);
--departamento*
create table departamento(
    cod_depto integer primary key,
    nombre varchar(50) not null unique
);
--miembro
create table miembro(
    cod_miembro integer primary key,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    edad integer not null,
    telefono integer,
    residencia varchar(100),
    PAIS_cod_pais integer not null,
    PROFESION_cod_prof integer not null,
    foreign key (PAIS_cod_pais) references pais(cod_pais) on delete cascade,
    foreign key (PROFESION_cod_prof) references profesion(cod_prof) on delete cascade
);
--puesto_miembro
create table puesto_miembro(
    MIEMBRO_cod_miembro integer not null,
    PUESTO_cod_puesto integer not null,
    DEPARTAMENTO_cod_depto integer not null,
    fecha_inicio date not null,
    fecha_fin date,
    primary key (MIEMBRO_cod_miembro, PUESTO_cod_puesto, DEPARTAMENTO_cod_depto),
    foreign key (MIEMBRO_cod_miembro) references miembro (cod_miembro) on delete cascade,
    foreign key (PUESTO_cod_puesto) references puesto (cod_puesto) on delete cascade,
    foreign key (DEPARTAMENTO_cod_depto)references departamento(cod_depto) on delete cascade
);
--tipo_medalla
create table tipo_medalla(
    cod_tipo integer primary key,
    medalla varchar(20) unique
);
--medallero
create table medallero(
    PAIS_cod_pais integer not null,
    cantidad_medallas integer not null,
    TIPO_MEDALLA_cod_tipo integer not null,
    primary key (PAIS_cod_pais, TIPO_MEDALLA_cod_tipo),
    foreign key (TIPO_MEDALLA_cod_tipo) references tipo_medalla (cod_tipo) on delete cascade,
    foreign key (PAIS_cod_pais) references pais (cod_pais) on delete cascade
);
--disciplina*
create table disciplina(
    cod_disciplina integer primary key,
    nombre varchar(50) not null,
    descripcion varchar(150)
);
--atleta*
create table atleta(
    cod_atleta integer primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    edad integer not null,
    participaciones varchar(100) not null,
    DISCIPLINA_cod_disciplina integer not null,
    PAIS_cod_pais integer not null,
    foreign key(DISCIPLINA_cod_disciplina) references disciplina (cod_disciplina) on delete cascade,
    foreign key(PAIS_cod_pais) references pais (cod_pais) on delete cascade
);
--categoria*
create table categoria(
    cod_categoria integer primary key,
    categoria varchar(50) not null
);
--tipo_partucipacion
create table tipo_participacion(
    cod_participacion integer primary key,
    tipo_participacion varchar(100) not null
);
--evento
create table evento(
    cod_evento integer primary key,
    fecha date not null,
    ubicacion varchar(50) not null,
    hora date not null,
    DISCIPLINA_cod_disciplina integer not null,
    TIPO_PARTICIPACION_cod_participacion integer not null,
    CATEGORIA_cod_categoria integer not null,
    foreign key (DISCIPLINA_cod_disciplina) references disciplina (cod_disciplina) on delete cascade,
    foreign key (TIPO_PARTICIPACION_cod_participacion) references tipo_participacion (cod_participacion) on delete cascade,
    foreign key (CATEGORIA_cod_categoria) references categoria (cod_categoria) on delete cascade
);
--evento_atleta
create table evento_atleta(
    ATLETA_cod_atleta integer not null,
    EVENTO_cod_evento integer not null,
    primary key (ATLETA_cod_atleta, EVENTO_cod_evento),
    foreign key (ATLETA_cod_atleta) references atleta (cod_atleta) on delete cascade,
    foreign key (EVENTO_cod_evento) references evento (cod_evento) on delete cascade
);
--televisora
create table televisora(
    cod_televisora integer primary key,
    nombre varchar(50) not null
);
--costo evento*
create table costo_evento(
    EVENTO_cod_evento integer not null,
    TELEVISORA_cod_televisora integer not null,
    tarifa integer not null,
    primary key (EVENTO_cod_evento, TELEVISORA_cod_televisora),
    foreign key (EVENTO_cod_evento) references evento (cod_evento) on delete cascade,
    foreign key (TELEVISORA_cod_televisora) references televisora (cod_televisora) on delete cascade
);

--para mostrar todas las tablas de la DB se usa:
\dt
