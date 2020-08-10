CREATE PROCEDURE `SELECT_ONE_DETALLEBOLETO`(IN _IdDetalleBoleto int)
begin
SELECT*FROM DetalleBoleto where IdDetalleBoleto=_IdDetalleBoleto; 
end