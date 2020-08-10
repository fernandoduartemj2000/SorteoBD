create procedure `SELECT_ONE_BOLETO`(
IN _IdBoleto int
)
begin 
Select*from Boleto Where IdBoleto=_IdBoleto;
end