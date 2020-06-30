
--inciso 9
--En la tabla “Costo_Evento” se determinó que la columna “tarifa” no debe ser entero sino un 
--decimal con 2 cifras de precisión.
--Generar el script correspondiente para modificar el tipo de dato que se le pide.

--antes de editar
\d costo_evento; 

alter table costo_evento alter column tarifa TYPE numeric(10,2);

--despues de editar
\d costo_evento; 