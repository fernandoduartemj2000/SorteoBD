CREATE PROCEDURE`UPDATE_CONFIGURACIONES`(
OUT _IdConfiguraciones int,
IN _DigitosMaximos varchar(45),
IN _TiempoCierre varchar(45),
IN _VecesMaxima varchar(45),
IN _MontoPremioMaximo double)
BEGIN
UPDATE Configuraciones SET DigitosMaximos=_DigitosMaximos,TiempoCierre=_TiempoCierre,VecesMaxima=_VecesMaxima,
MontoPremioMaximo=_MontoPremioMaximo where IdConfiguraciones=_IdConfiguraciones;
 END