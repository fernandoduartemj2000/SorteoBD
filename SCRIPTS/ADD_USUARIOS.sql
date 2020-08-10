Create procedure `ADD_USUARIOS`(
OUT _IdUsuario int,
IN _NombreCompleto varchar(500),
IN _Username varchar(45),
IN _Password varchar(45),
IN _Estatus TINYINT,
IN _IdTipoUsuario int
)
BEGIN
insert into Usuarios(NombreCompleto,Username,Password,Estatus,IdTipoUsuario)values(_NombreCompleto,_Username,_Password,_Estatus,_IdTipoUsuario);
set _IdUsuario=last_insert_id();
select*From Usuarios where IdUsuario=_IdUsuario;
 
END