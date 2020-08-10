CREATE  PROCEDURE `ADD_PUNTOVENTA`(
OUT _IdPuntoVenta int,
IN _DireccionPuntoVenta varchar(50),
IN _Administrador varchar(25),
IN _DescripcionPuntoVenta varchar(250),
IN _Longitud float,
IN _Latitud float,
IN _Estatus TINYINT
)
BEGIN
insert into PuntoVenta(DireccionPuntoVenta,Administrador,DescripcionPuntoVenta,Longitud,Latitud,Estatus)values(_DireccionPuntoVenta,_Administrador,_DescripcionPuntoVenta,_Longitud,_Latitud,_Estatus);
set _IdPuntoVenta= last_insert_id();
select*from PuntoVenta where IdPuntoVenta=_IdPuntoVenta;  
END