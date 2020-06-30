
--inciso 10
-- Generar el Script que borre de la tabla “Tipo_Medalla”, el registro siguiente: cod_tipo: 4

select * from medallero;
select * from tipo_medalla;

Delete from tipo_medalla where cod_tipo=4;

select * from medallero;
select * from tipo_medalla;