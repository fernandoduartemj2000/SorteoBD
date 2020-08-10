CREATE PROCEDURE `DELETE_DETALLEBOLETO`(
IN _DetalleBoleto int
)
BEGIN
DELETE FROM DetalleBoleto where DetalleBoleto=_DetalleBoleto;
END