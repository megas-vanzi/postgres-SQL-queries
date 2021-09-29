CREATE TABLE IF NOT EXISTS public.lectores
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    apellido character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "e-mail" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fecha_de_nacimiento date NOT NULL,
    CONSTRAINT lectores_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.lectores
    OWNER to postgres;