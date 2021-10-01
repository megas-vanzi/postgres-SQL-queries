CREATE OR REPLACE VIEW public.libros_prestados
 AS
 SELECT lectores.nombre,
    lectores.apellido,
    libros.nombre_del_libro,
    libros.nombre_de_la_editorial,
    libros."ISBN"
   FROM lectores
     JOIN prestamos ON lectores.id = prestamos.id_lector
     JOIN libros ON prestamos.id_libro = libros.id;

ALTER TABLE public.libros_prestados
    OWNER TO postgres;

--SELECT * FROM libros_prestados
--where nombre = 'Pedro'