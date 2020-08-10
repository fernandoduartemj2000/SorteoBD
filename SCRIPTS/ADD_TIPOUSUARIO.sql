CREATE PROCEDURE `ADD_TIPOUSUARIO`(
IN _DescripdionTipoUsuario varchar(45), OUT _LID int
)
BEGIN
insert into TipoUsuario(DescripcionTipoUsuario)values(_DescripdionTipoUsuario);
SET _LID= last_insert_id();
SELECT * FROM TipoUsuario WHERE IdTipoUsuario= _LID;
END