--
-- Database: `demografia_cl`
--
create table ciudades
(
   ciudades_codigo      int not null,
   comuna_codigo        int,
   ciudades_nombre      varchar(30),
   primary key (ciudades_codigo)
);

create table comunas
(
   comuna_codigo        int not null,
   provincias_codigo    int,
   comuna_nombre        varchar(30),
   primary key (comuna_codigo)
);

create table provincias
(
   provincias_codigo    int not null,
   regiones_codigo      int,
   provincias_nombre    varchar(30),
   primary key (provincias_codigo)
);

create table regiones
(
   regiones_codigo      int not null auto_increment,
   regiones_nombre      varchar(100),
   regiones_iso_3166_2  varchar(4),
   primary key (regiones_codigo)
);

alter table ciudades add constraint fk_ciu_com_ref foreign key (comuna_codigo)
      references comunas (comuna_codigo) on delete cascade on update cascade;

alter table comunas add constraint fk_com_prov_ref foreign key (provincias_codigo)
      references provincias (provincias_codigo) on delete cascade on update cascade;

alter table provincias add constraint fk_prov_reg_ref foreign key (regiones_codigo)
      references regiones (regiones_codigo) on delete cascade on update cascade;
