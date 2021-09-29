CREATE TABLE IF NOT EXISTS public.prestamos
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    id_lector integer NOT NULL,
    id_libro integer NOT NULL,
    CONSTRAINT prestamos_pkey PRIMARY KEY (id_lector, id_libro),
    CONSTRAINT prestamo_id_lector FOREIGN KEY (id_lector)
        REFERENCES public.lectores (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prestamo_id_libro FOREIGN KEY (id_libro)
        REFERENCES public.libros (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.prestamos
    OWNER to postgres;