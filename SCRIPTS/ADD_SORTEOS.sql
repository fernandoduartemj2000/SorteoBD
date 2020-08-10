create procedure `ADD_SORTEOS`(
out _IdSorteos int,
IN _DescripcionSorteo varchar(45),
IN _Estatus TINYINT
)
BEGIN
Insert into Sorteos(DescripcionSorteo,Estatus)values(_DescripcionSorteo,_Estatus);
set _IdSorteos=last_insert_id();
select*From Sorteos where IdSorteos=_IdSorteos;
END