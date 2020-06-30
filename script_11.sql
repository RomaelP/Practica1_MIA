
--incisio 11
-- Comité Olímpico pide generar el script que elimine la tabla “TELEVISORAS” y “COSTO_EVENTO”

--mostrar todas las tablas antes de eliminar
\dt; 

drop table costo_evento cascade;
drop table televisora cascade;

--mostrar todas las tablas despues de eliminar 
\dt; 