CREATE PROCEDURE `UPDATE_USUARIOS`(OUT _IdUsuario int,
IN _NombreCompleto varchar(500),
IN _Username varchar(45),
IN _Password varchar(45),
IN _Estatus TINYINT,
IN _IdTipoUsuario int)
BEGIN
UPDATE Usuarios set NombreCompleto=_NombreCompleto,Username=_Username,Password=_Password,Estatus=_Estatus,
IdTipoUsuario=_IdTipoUsuario where IdUsuario=_IdUsuario;
END