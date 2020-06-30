
--inciso 4
--Se decidió que las ubicación de los eventos se registrarán previamente en
--una tabla y que en la tabla “Evento” sólo se almacenara la llave foránea
--según el código del registro de la ubicación 

--a. Crear la tabla llamada Sede
-- 		Campos: codigo y sede 
--b. Cambiar el tipo de dato de la columna Ubicación de la tabla Evento por un tipo entero
--c. Crear una llave foránea en la columna Ubicación de la tabla Evento y referenciarla a 
--	 la columna código de la tabla Sede, la que fue creada en el paso anterior.
create table sede(
    codigo integer primary key,
    sede varchar(50) not null
);

--se muestra la tabal creada 
\d sede;

Alter table evento alter column ubicacion type integer using ubicacion::integer;

alter table evento add constraint FKSEDE_codigo foreign key (ubicacion) references sede(codigo) on delete cascade;

--para mostrar las modificaciones hechas 
\d evento;