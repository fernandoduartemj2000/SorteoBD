DELIMITER $$

CREATE PROCEDURE `ADD_TIPOUSUARIO`(
IN _DescripdionTipoUsuario varchar(45), OUT _LID int
)
BEGIN

insert into TipoUsuario(DescripcionTipoUsuario)values(_DescripdionTipoUsuario);
SET _LID= last_insert_id();
SELECT * FROM TipoUsuario WHERE IdTipoUsuario= _LID;
END$$

CREATE PROCEDURE `SELECT_TIPOUSUARIO`()
BEGIN
SELECT * FROM TipoUsuario;

END$$

CREATE PROCEDURE `SELECT_ONE_TIPOUSUARIO`(IN _IdTipoUsuario INT)
BEGIN
SELECT * FROM TipoUsuario WHERE IdTipoUsuario=_IdTipoUsuario;
END$$

CREATE PROCEDURE `UPDATE_TIPOUSUARIO`(
OUT _IdTipoUsuario int,
IN _DescripcionTipoUsuario varchar(45))
BEGIN
UPDATE TipoUsuario SET DescripcionTipoUsuario = _DescripcionTipoUsuario where IdTipoUsuario=_IdTipoUsuario;
END$$

CREATE PROCEDURE `DELETE_TIPOUSUARIO`(
IN _IdTipoUsuario int)
BEGIN
Delete from TipoUsuario WHERE IdTipoUsuario=_IdTipoUsuario;
END$$

CREATE PROCEDURE `SELECT_ONE_TIPOUSUARIO_JSON`(IN _IdTipoUsuario INT)
BEGIN
DECLARE json TEXT DEFAULT '';
SELECT json_object(
'IdTipoUsuario', A.IdTipoUsuario,
'DescripcionTipoUsuario', A.DescripcionTipoUsuario
) 
INTO json 
FROM TipoUsuario as A WHERE IdTipoUsuario=_IdTipoUsuario;
SELECT json;
END$$

