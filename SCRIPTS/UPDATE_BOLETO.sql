create PROCEDURE `UPDATE_BOLETO`(
OUT _IdBoleto int,
IN _NumeroBoleto varchar(45),
IN _IdSorteo int,
IN _IdUsuario int,
IN _Cliente varchar(45),
IN _IdPuntoVenta int
)
begin
UPDATE Boleto SET NumeroBoleto=_NumeroBoleto,IdSorteo=_IdSorteo,IdUsuario=_IdUsuario,Cliente=_Cliente,IdPuntoVenta=_IdPuntoVenta WHERE IdBoleto=_IdBoleto;
 end