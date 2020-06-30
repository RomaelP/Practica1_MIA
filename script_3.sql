
--inciso 3
--Generar el Script que únicamente permita registrar los eventos entre estas fechas y horarios.

--mostrar la tabla evento antes de la edicion 
\d evento;

Alter table evento add constraint CKfechae check(fecha_hora >= '2020-07-24 09:00:00' and fecha_hora <= '2020-08-09 20:00:00');

--mostrar la tabla evento despues de la edicion
\d evento;