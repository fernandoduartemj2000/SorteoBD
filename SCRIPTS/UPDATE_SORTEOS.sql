create procedure `UPDATE_SORTEOS`(
IN _IdSorteos int,
in _DescripcionSorteo varchar(45),
IN _Estatus TINYINT
)
BEGIN
UPDATE Sorteos set DescripcionSorteo=_DescripcionSorteo,Estatus=_Estatus where IdSorteos=_IdSorteos;
END