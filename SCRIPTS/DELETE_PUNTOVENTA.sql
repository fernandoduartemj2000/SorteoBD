CREATE procedure `DELETE_PUNTOVENTA`(
IN _IdPuntoVenta int
)
BEGIN 
Delete From PuntoVenta where IdPuntoVenta=_IdPuntoVenta;
END