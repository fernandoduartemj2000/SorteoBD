create procedure `DELETE_CONFIGURACIONES`(
in _IdConfiguraciones INT)

begin
delete from Configuraciones where IdConfiguraciones=_IdConfiguraciones;
end