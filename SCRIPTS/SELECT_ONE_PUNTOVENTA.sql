CREATE PROCEDURE `SELECT_ONE_PUNTOVENTA`(
IN _IdPuntoVenta int)
begin
select*from PuntoVenta where IdPuntoVenta=_IdPuntoVenta;
end