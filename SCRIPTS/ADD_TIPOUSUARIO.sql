DELIMITER $$

CREATE PROCEDURE `ADD_TIPOUSUARIO`(
IN _DescripdionTipoUsuario varchar(45)
)
BEGIN
insert into TipoUsuario(DescripcionTipoUsuario)values(_DescripdionTipoUsuario);
END$$

