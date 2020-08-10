Create procedure `ADD_CONFIGURACIONES`(
OUT _IdConfiguraciones int,
IN _DigitosMaximos varchar(45),
IN _TiempoCierre varchar(45),
IN _VecesMaxima varchar(45),
IN _MontoPremioMaximo double
)
BEGIN
insert into Configuraciones(DigitosMaximos,TiempoCierre,VecesMaxima,MontoPremioMaximo)values(_DigitosMaximos,_TiempoCierre,_VecesMaxima,_MontoPremioMaximo);
set _IdConfiguraciones=last_insert_id();
select*From Configuraciones where IdConfiguraciones=_IdConfiguraciones;
END