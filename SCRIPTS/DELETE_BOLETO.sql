create procedure `DELETE_BOLETO`(
IN _IdBoleto int
)
BEGIN
Delete from Boleto WHERE IdBoleto=_IdBoleto;
END