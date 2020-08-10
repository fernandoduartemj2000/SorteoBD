CREATE PROCEDURE `SELECT_ONE_CONFIGURACIONES`(
IN _IdConfiguraciones int)
BEGIN 
Select*from Configuraciones where IdConfiguraciones=_IdConfiguraciones;
END