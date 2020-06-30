
--inciso 2
--* Eliminar las columnas fecha y hora
--* Crear una columna fecha_hora con el tipo de dato segun el DBMS -->timestamp

--para mostrar la tabla antes de la modificacion: 
\d evento;
Alter table evento drop column fecha;
Alter table evento drop column hora;
--se eliminan las columnas

Alter table evento add column fecha_hora timestamp not null;
--para mostrar la tabla despues de haber creado la nueva columna:
\d evento;
