--
-- Database: `demografia_cl`
--


--
-- Creación de Tablas
--

create table ciudades
(
   ciudades_codigo      int not null,
   comuna_codigo        int,
   ciudades_nombre      varchar(30) character set utf8,
   primary key (ciudades_codigo)
);

create table comunas
(
   comuna_codigo        int not null,
   provincias_codigo    int,
   comuna_nombre        varchar(30) character set utf8,
   primary key (comuna_codigo)
);

create table provincias
(
   provincias_codigo    int not null,
   regiones_codigo      int,
   provincias_nombre    varchar(30) character set utf8,
   primary key (provincias_codigo)
);

create table regiones
(
   regiones_codigo      int not null auto_increment,
   regiones_nombre      varchar(100) character set utf8,
   regiones_iso_3166_2  varchar(4),
   primary key (regiones_codigo)
);

--
-- Claves foraneas
--

alter table ciudades add constraint fk_ciu_com_ref foreign key (comuna_codigo)
      references comunas (comuna_codigo) on delete cascade on update cascade;

alter table comunas add constraint fk_com_prov_ref foreign key (provincias_codigo)
      references provincias (provincias_codigo) on delete cascade on update cascade;

alter table provincias add constraint fk_prov_reg_ref foreign key (regiones_codigo)
      references regiones (regiones_codigo) on delete cascade on update cascade;
      
--
-- Datos
--

INSERT INTO regiones VALUES
(1, 'Región de Tarapacá', 'CL_TA'), 
(2, 'Región de Antofagasta', 'CL_AN'), 
(3, 'Región de Atacama', 'CL_AT'), 
(4, 'Región de Coquimbo', 'CL_CO'), 
(5, 'Región de Valparaíso', 'CL_VS'), 
(6, 'Región del Libertador Gral. Bernardo O’Higgins', 'CL_LI'), 
(7, 'Región del Maule', 'CL_ML'), 
(8, 'Región del Biobío', 'CL_BI'), 
(9, 'Región de la Araucanía', 'CL_AR'), 
(10, 'Región de Los Ríos', 'CL_LR'), 
(11, 'Región de Los Lagos', 'CL_LL'), 
(12, 'Región Aisén del Gral. Carlos Ibáñez del Campo', 'CL_AI'), 
(13, 'Región de Magallanes y de la Antártica Chilena', 'CL_MA'), 
(14, 'Región Metropolitana de Santiago', 'CL_RM'), 
(15, 'Región de Arica y Parinacota', 'CL_AP');

INSERT INTO provincias VALUES
(11, 1, 'Iquique'), 
(14, 1, 'Tamarugal'), 
(21, 2, 'Antofagasta'), 
(22, 2, 'El Loa'), 
(23, 2, 'Tocopilla'), 
(31, 3, 'Copiapó'), 
(32, 3, 'Chañaral'), 
(33, 3, 'Huasco'), 
(41, 4, 'Elqui'), 
(42, 4, 'Choapa'), 
(43, 4, 'Limarí'), 
(51, 5, 'Valparaíso'), 
(52, 5, 'Isla de Pascua'), 
(53, 5, 'Los Andes'), 
(54, 5, 'Petorca'), 
(55, 5, 'Quillota'), 
(56, 5, 'San Antonio'), 
(57, 5, 'San Felipe de Aconcagua'), 
(58, 5, 'Marga Marga'), 
(61, 6, 'Cachapoal'), 
(62, 6, 'Cardenal Caro'), 
(63, 6, 'Colchagua'), 
(71, 7, 'Talca'), 
(72, 7, 'Cauquenes'), 
(73, 7, 'Curicó'), 
(74, 7, 'Linares'), 
(81, 8, 'Concepción'), 
(82, 8, 'Arauco'), 
(83, 8, 'Biobío'), 
(84, 8, 'Ñuble'), 
(91, 9, 'Cautín'), 
(92, 9, 'Malleco'), 
(101, 10, 'Llanquihue'), 
(102, 10, 'Chiloé'), 
(103, 10, 'Osorno'), 
(104, 10, 'Palena'), 
(111, 11, 'Coihaique'), 
(112, 11, 'Aisén'), 
(113, 11, 'Capitán Prat'), 
(114, 11, 'General Carrera'), 
(121, 12, 'Magallanes'), 
(122, 12, 'Antártica Chilena'), 
(123, 12, 'Tierra del Fuego'), 
(124, 12, 'Última Esperanza'), 
(131, 13, 'Santiago'), 
(132, 13, 'Cordillera'), 
(133, 13, 'Chacabuco'), 
(134, 13, 'Maipo'), 
(135, 13, 'Melipilla'), 
(136, 13, 'Talagante'), 
(141, 14, 'Valdivia'), 
(142, 14, 'Ranco'), 
(151, 15, 'Arica'), 
(152, 15, 'Parinacota');




