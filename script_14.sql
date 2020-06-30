
--inciso 14
--se debe agregar la columna “Fotografía” a la tabla Atleta, debido a que es un cambio de última hora 
-- este campo deberá ser opcional.

--antes de agregar la nueva columna
\d atleta; 

Alter table atleta add fotografia bytea;

--despues de agregar 
\d atleta; 

-- Utilice el tipo de dato que crea conveniente según el DBMS y explique el por qué utilizó este tipo de dato.