DELIMITER $$

CREATE PROCEDURE `ADD_TIPOUSUARIO`(
IN _DescripdionTipoUsuario varchar(45)
)
BEGIN
insert into TipoUsuario(DescripcionTipoUsuario)values(_DescripdionTipoUsuario);
END$$

CREATE PROCEDURE `SELECT_TIPOUSUARIO`()
BEGIN
SELECT * FROM TipoUsuario;

END$$

CREATE PROCEDURE `SELECT_ONE_TIPOUSUARIO`(IN _IdTipoUsuario INT)
BEGIN
SELECT * FROM TipoUsuario WHERE IdTipoUsuario=_IdTipoUsuario;
END$$

