create function funcion_triggerdev() returns trigger
as
$$

begin
insert into logs values(old.id_lector, old.id_libro, now());
return old;
end;

$$
language plpgsql;




create trigger triggerdev before delete on prestamos for each row execute procedure funcion_triggerdev()


select devolucion (42);	
select devolucion (45);	
select devolucion (49);	

select * from logs

select * from prestamos