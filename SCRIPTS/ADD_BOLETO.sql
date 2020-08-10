CREATE PROCEDURE `ADD_BOLETO`(
OUT _IdBoleto int,
IN _NumeroBoleto varchar(45),
IN _IdSorteo int,
IN _IdUsuario int,
IN _Cliente varchar(45),
IN _IdPuntoVenta int)
BEGIN
insert into Boleto(NumeroBoleto,FechaExpira,IdSorteo,FechaVenta,IdUsuario,Cliente,IdPuntoVenta)values(_NumeroBoleto,NOW(),_IdSorteo,NOW(),_IdUsuario,_Cliente,_IdPuntoVenta);
SET _IdBoleto= last_insert_id();
Select*From Boleto where IdBoleto=_IdBoleto;
END