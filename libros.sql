CREATE TABLE IF NOT EXISTS public.libros
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre_del_libro character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nombre_de_la_editorial character varying(50) COLLATE pg_catalog."default" NOT NULL,
    autor character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "ISBN" integer NOT NULL,
    CONSTRAINT libros_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.libros
    OWNER to postgres;