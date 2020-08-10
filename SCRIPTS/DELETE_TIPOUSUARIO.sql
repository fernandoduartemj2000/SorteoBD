CREATE PROCEDURE `DELETE_TIPOUSUARIO`(
IN _IdTipoUsuario int)
BEGIN
Delete from TipoUsuario WHERE IdTipoUsuario=_IdTipoUsuario;
END