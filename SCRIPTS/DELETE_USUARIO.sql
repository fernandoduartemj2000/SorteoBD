CREATE PROCEDURE `DELETE_USUARIO`(
IN _IdUsuario int
)
BEGIN
DELETE FROM Usuario where IdUsuario=_IdUsuario;
END