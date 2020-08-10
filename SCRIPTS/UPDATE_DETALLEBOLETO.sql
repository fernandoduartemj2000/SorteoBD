CREATE PROCEDURE `UPDATE_DETALLEBOLETO`(OUT _IdDetalleBoleto int,
IN _IdBoleto int,
IN _NumeroVendido varchar(45),
IN _MontoVendido varchar(45),
IN _PremioPactado varchar(45))
BEGIN
UPDATE DetalleBoleto set NumeroVendido=_NumeroVendido,MontoVendido=_MontoVendido,PremioPactado=_PremioPactado
where IdBoleto=_IdBoleto;
END