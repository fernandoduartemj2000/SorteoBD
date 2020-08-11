DELIMITER $$

CREATE  PROCEDURE `SELECT_USUARIOS`()
BEGIN
select * from Usuarios;
END$$

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
 
END$$

CREATE PROCEDURE `DELETE_USUARIO`(
IN _IdUsuario int
)
BEGIN
DELETE FROM Usuario where IdUsuario=_IdUsuario;
END$$

CREATE PROCEDURE `SELECT_ONE_USUARIOS`(IN _IdUsuario int
)
begin
SELECT*FROM Usuario WHERE IdUsuario =_IdUsuario;
end$$

CREATE PROCEDURE `UPDATE_USUARIOS`(OUT _IdUsuario int,
IN _NombreCompleto varchar(500),
IN _Username varchar(45),
IN _Password varchar(45),
IN _Estatus TINYINT,
IN _IdTipoUsuario int)
BEGIN
UPDATE Usuarios set NombreCompleto=_NombreCompleto,Username=_Username,Password=_Password,Estatus=_Estatus,
IdTipoUsuario=_IdTipoUsuario where IdUsuario=_IdUsuario;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_USUARIOS_JSON`()
BEGIN
 DECLARE json TEXT DEFAULT '';

    SELECT json_arrayagg(JSON_OBJECT(
        'IdUsuario', v.IdUsuario, 
        'NombreCompleto', v.NombreCompleto, 
        'Username', v.Username, 
        'Password', v.Password,
        'TipoUsuario', ( json_object(
                                'IdTipoUsuario',A.IdTipoUsuario,
                                'DescripcionTipoUsuario',A.DescripcionTipoUsuario))
    )) INTO json
    FROM Usuarios AS v, TipoUsuario as A
    WHERE v.IdTipoUsuario = A.IdTipoUsuario;
    
    SELECT json;
END$$

