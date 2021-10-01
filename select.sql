SELECT (libros.id, libros.nombre_del_libro) AS libro, COUNT(*) 
AS cantidad FROM prestamos
    INNER JOIN libros ON prestamos.id_libro = libros.id
    GROUP BY prestamos.id_libro, libros.id, libros.nombre_del_libro
    ORDER BY cantidad DESC;



SELECT (lectores.id, lectores.nombre, lectores.apellido) AS lector, COUNT(*) 
AS cantidad FROM prestamos
    INNER JOIN lectores ON prestamos.id_lector = lectores.id
    GROUP BY prestamos.id_lector, lectores.id, lectores.nombre, lectores.apellido
    ORDER BY lectores.id ASC;

--DELETE from prestamos
--where id = 38;


SELECT avg (age(fecha_de_nacimiento))
as promedio_edad_lectores
from lectores

SELECT nombre, apellido, age(fecha_de_nacimiento) as lector_menor
from lectores
order by fecha_de_nacimiento DESC 
LIMIT 1

SELECT nombre, apellido, age(fecha_de_nacimiento) as lector_mayor
from lectores
order by fecha_de_nacimiento ASC 
LIMIT 1