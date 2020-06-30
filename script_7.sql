
--inciso 7
-- Después de que se implementó el script el cuál creó todas las tablas de las bases de datos,
-- el Comité Olímpico Internacional tomó la decisión de eliminar la restricción “UNIQUE” de las siguientes tablas:

--mostrar la tabla pais antes de editarla:
\d pais;

--pais
alter table pais drop constraint pais_nombre_key;
\d pais;

--mostrar la tabla tipo_medalla antes de editarla:
\d tipo_medalla;

--tipo medalla
alter table tipo_medalla drop constraint tipo_medalla_medalla_key;
\d tipo_medalla;

--mostrar la tabla departamento antes de editarla:
\d departamento;

--departamento
alter table departamento drop constraint departamento_nombre_key;
\d departamento;



