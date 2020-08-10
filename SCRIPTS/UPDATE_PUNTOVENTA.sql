create procedure `UPDATE_PUNTOVENTA`(
OUT _IdPuntoVenta int,
IN _DireccionPuntoVenta varchar(50),
IN _Administrador varchar(25),
IN _DescripcionPuntoVenta varchar(250),
IN _Longitud float,
IN _Latitud float,
IN _Estatus TINYINT
)
BEGIN
UPDATE PuntoVenta set DireccionPuntoVenta=_DireccionPuntoVenta,Administrador=_Administrador,
DescripcionPuntoVenta=_DescripcionPuntoVenta,Longitud=_Longitud,Latitud=_Latitud,Estatus=_Estatus
where IdPuntoVenta=_IdPuntoVenta;

END