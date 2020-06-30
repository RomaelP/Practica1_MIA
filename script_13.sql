
--inciso 13
-- Los miembros que no tenían registrado su número de teléfono en sus perfiles fueron notificados, por
-- lo que se acercaron a las instalaciones de Comité para actualizar sus datos.

--antes de editar
select * from miembro; 

Update miembro set telefono =55464601 where nombre ='Laura' and apellido ='Cunha Silva';
Update miembro set telefono =91514243 where nombre ='Jeuel' and apellido ='Villalpando';
Update miembro set telefono =920686670 where nombre ='Scott' and apellido ='Mitchell';

--despues de editar
select * from miembro; 