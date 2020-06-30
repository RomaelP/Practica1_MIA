
--inciso 15
--Todos los atletas que se registren deben cumplir con ser menores a 25 años.
--De lo contrario no se debe poder registrar a un atleta en la base de datos

--antes de editar
\d atleta; 

Alter table atleta add constraint CKedad_atleta check (edad < 25);

--despues de editar
\d atleta; 