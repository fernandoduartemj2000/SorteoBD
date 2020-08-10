CREATE PROCEDURE `SELECT_ONE_USUARIOS`(IN _IdUsuario int
)
begin
SELECT*FROM Usuario WHERE IdUsuario =_IdUsuario;
end