
--inciso 6
--Generar el script necesario para hacer la inserción de datos a las tablas requeridas.

--pais
insert into pais (cod_pais, nombre) values(1, 'Guatemala');
insert into pais (cod_pais, nombre) values(2, 'Francia');
insert into pais (cod_pais, nombre) values(3, 'Argentina');
insert into pais (cod_pais, nombre) values(4, 'Alemania');
insert into pais (cod_pais, nombre) values(5, 'Italia');
insert into pais (cod_pais, nombre) values(6, 'Brasil');
insert into pais (cod_pais, nombre) values(7, 'Estados Unidos');

--profesion
insert into profesion (cod_prof, nombre) values(1, 'Médico');
insert into profesion (cod_prof, nombre) values(2, 'Arquitecto');
insert into profesion (cod_prof, nombre) values(3, 'Ingeniero');
insert into profesion (cod_prof, nombre) values(4, 'Secretaria');
insert into profesion (cod_prof, nombre) values(5, 'Auditor');

--miembro
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(1, 'Scott', 'Mitchell',32,0, '1092 Highland Drive Manitowoc, WI 54220',7,3);
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(2, 'Fanette', 'Poulin',25, 25075853,'49, boulevard Aristide Briand 76120 LE GRAND-QUEVILLY',2,4);
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(3, 'Laura', 'Cunha Silva',55,0,'Rua Onze, 86 Uberaba-MG',6,5);
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(4, 'Juan Jose', 'López', 38, 36985247,'26 calle 4-10 zona 11',1,2);
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(5, 'Arcangela', 'Punicucci',39, 391664921, 'Via Santa Teresa, 114 90010-Geraci Siculo PA',5,1);
insert into miembro (cod_miembro, nombre, apellido, edad, telefono, residencia, pais_cod_pais, profesion_cod_prof) values(6, 'Jeuel', 'Villalpando', 31, 0, 'Acuña de Figeroa 6106 80101 Playa Pascual',3,5);

--disciplina
insert into disciplina (cod_disciplina,nombre,descripcion)
values(1,'Atletismo', 'Saltos de longitud y triples, de altura y con pértiga o garrocha; las pruebas de lanzamiento de martillo, jabalina y disco.');
insert into disciplina (cod_disciplina,nombre,descripcion) values(2, 'Bádminton', null);
insert into disciplina (cod_disciplina,nombre,descripcion) values(3, 'Ciclismo', null);
insert into disciplina (cod_disciplina,nombre,descripcion)
values(4, 'Judo', 'Es un arte marcial que se originó en Japón alrededor de 1880');
insert into disciplina (cod_disciplina,nombre,descripcion) values(5, 'Lucha',null);
insert into disciplina (cod_disciplina,nombre,descripcion) values(6, 'Tenis de mesa',null);
insert into disciplina (cod_disciplina,nombre,descripcion) values(7, 'Boxeo',null);
insert into disciplina (cod_disciplina,nombre,descripcion)
values(8, 'Natación', 'Está presente como deporte en los Juegos desde la primera edición de la era moderna, en Atenas, Grecia, en 1896, donde se disputo en aguas abiertas.');
insert into disciplina (cod_disciplina,nombre,descripcion) values(9, 'Esgrima', null);
insert into disciplina (cod_disciplina,nombre,descripcion) values(10, 'Vela', null);

--tipomedalla
insert into tipo_medalla (cod_tipo, medalla) values(1, 'Oro');
insert into tipo_medalla (cod_tipo, medalla) values(2, 'Plata');
insert into tipo_medalla (cod_tipo, medalla) values(3, 'Bronce');
insert into tipo_medalla (cod_tipo, medalla) values(4, 'Platino');


--categoria
insert into categoria (cod_categoria, categoria) values(1, 'Clasificatorio');
insert into categoria (cod_categoria, categoria) values(2, 'Eliminatorio');
insert into categoria (cod_categoria, categoria) values(3, 'Final');


--tipo participacion
insert into tipo_participacion (cod_participacion, tipo_participacion) values(1, 'Individual');
insert into tipo_participacion (cod_participacion, tipo_participacion) values(2, 'Parejas');
insert into tipo_participacion (cod_participacion, tipo_participacion) values(3, 'Equipos');


--medallero
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(5,3,1);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(2,5,1);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(6,4,3);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(4,3,4);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(7,10,3);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(3,8,2);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(1,2,1);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(1,5,4);
insert into medallero (pais_cod_pais, cantidad_medallas, tipo_medalla_cod_tipo) values(5,7,2);

--sede
insert into sede (codigo, sede) values(1, 'Gimnasio Metropolitano de Tokio');
insert into sede (codigo, sede) values(2, 'Jardín del Palacio Imperial de Tokio');
insert into sede (codigo, sede) values(3, 'Gimnasio Nacional Yoyogi');
insert into sede (codigo, sede) values(4, 'Nippon Budokan');
insert into sede (codigo, sede) values(5, 'Estadio Olímpico');

--evento
insert into evento (cod_evento, fecha_hora, ubicacion, disciplina_cod_disciplina, tipo_participacion_cod_participacion, categoria_cod_categoria)
values(1, '2020-07-24 11:00:00',3,2,2,1);
insert into evento (cod_evento, fecha_hora, ubicacion, disciplina_cod_disciplina, tipo_participacion_cod_participacion, categoria_cod_categoria)
values(2, '2020-07-26 10:30:00',1,6,1,3);
insert into evento (cod_evento, fecha_hora, ubicacion, disciplina_cod_disciplina, tipo_participacion_cod_participacion, categoria_cod_categoria)
values(3, '2020-07-30 18:45:00',5,7,1,2);
insert into evento (cod_evento, fecha_hora, ubicacion, disciplina_cod_disciplina, tipo_participacion_cod_participacion, categoria_cod_categoria)
values(4, '2020-08-01 12:15:00',2,1,1,1);
insert into evento (cod_evento, fecha_hora, ubicacion, disciplina_cod_disciplina, tipo_participacion_cod_participacion, categoria_cod_categoria)
values(5, '2020-08-08 19:35:00',4,10,3,1);

--para mostrar todos los datos cargados en las tablas de la DB
select * from pais;
select * from profesion;
select * from miembro;
select * from disciplina;
select * from tipo_medalla;
select * from categoria;
select * from tipo_participacion;
select * from medallero;
select * from sede;
select * from evento;

--para mostrar todas las tablas en la DB:
\dt;
