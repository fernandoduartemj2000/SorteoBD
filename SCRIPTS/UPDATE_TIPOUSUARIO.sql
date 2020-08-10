CREATE PROCEDURE `UPDATE_TIPOUSUARIO`(
OUT _IdTipoUsuario int,
IN _DescripcionTipoUsuario varchar(45))
BEGIN
UPDATE TipoUsuario SET DescripcionTipoUsuario = _DescripcionTipoUsuario where IdTipoUsuario=_IdTipoUsuario;
END