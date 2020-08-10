create procedure`DELETE_SORTEOS`(
IN _IdSorteos int)
BEGIN
Delete from Sorteos where IdSorteos=_IdSorteos;
END