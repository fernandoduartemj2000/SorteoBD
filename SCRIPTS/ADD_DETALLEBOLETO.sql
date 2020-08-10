create procedure `ADD_DETALLEBOLETO`(
OUT _IdDetalleBoleto int,
IN _IdBoleto int,
IN _NumeroVendido varchar(45),
IN _MontoVendido varchar(45),
IN _PremioPactado varchar(45)
)
BEGIN
insert into DetalleBoleto(IdBoleto,NumeroVendido,MontoVendido,PremioPactado)values(_IdBoleto,_NumeroVendido,_MontoVendido,_PremioPactado);
set _IdDetalleBoleto= last_insert_id();
select*From DetalleBoleto where IdDetalleBoleto=_IdDetalleBoleto;
END