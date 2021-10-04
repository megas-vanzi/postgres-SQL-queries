create function devolucion (integer) returns void
as
$$
	delete from prestamos where id = $1
$$
language sql;

select devolucion (37)	