SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/* *** */
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/* *** */
CREATE TABLE IF NOT EXISTS `comunas` (
  `comuna_codigo` int(11) NOT NULL,
  `provincias_codigo` int(11) NOT NULL,
  `comuna_nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`comuna_codigo`),
  KEY `fk_comunas_provincias1_idx` (`provincias_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* *** */
INSERT INTO `comunas` (`comuna_codigo`, `provincias_codigo`, `comuna_nombre`) VALUES
(1101, 11, 'Iquique'),
(1107, 11, 'Alto Hospicio'),
(1401, 14, 'Pozo Almonte'),
(1402, 14, 'Camiña'),
(1403, 14, 'Colchane'),
(1404, 14, 'Huara'),
(1405, 14, 'Pica'),
(2101, 21, 'Antofagasta'),
(2102, 21, 'Mejillones'),
(2103, 21, 'Sierra Gorda'),
(2104, 21, 'Taltal'),
(2201, 22, 'Calama'),
(2202, 22, 'Ollagüe'),
(2203, 22, 'San Pedro de Atacama'),
(2301, 23, 'Tocopilla'),
(2302, 23, 'María Elena'),
(3101, 31, 'Copiapó'),
(3102, 31, 'Caldera'),
(3103, 31, 'Tierra Amarilla'),
(3201, 32, 'Chañaral'),
(3202, 32, 'Diego de Almagro'),
(3301, 33, 'Vallenar'),
(3302, 33, 'Alto del Carmen'),
(3303, 33, 'Freirina'),
(3304, 33, 'Huasco'),
(4101, 41, 'La Serena'),
(4102, 41, 'Coquimbo'),
(4103, 41, 'Andacollo'),
(4104, 41, 'La Higuera'),
(4105, 41, 'Paiguano'),
(4106, 41, 'Vicuña'),
(4201, 42, 'Illapel'),
(4202, 42, 'Canela'),
(4203, 42, 'Los Vilos'),
(4204, 42, 'Salamanca'),
(4301, 43, 'Ovalle'),
(4302, 43, 'Combarbalá'),
(4303, 43, 'Monte Patria'),
(4304, 43, 'Punitaqui'),
(4305, 43, 'Río Hurtado'),
(5101, 51, 'Valparaíso'),
(5102, 51, 'Casablanca'),
(5103, 51, 'Concón'),
(5104, 51, 'Juan Fernández'),
(5105, 51, 'Puchuncaví'),
(5107, 51, 'Quintero'),
(5109, 51, 'Viña del Mar'),
(5201, 52, 'Isla de Pascua'),
(5301, 53, 'Los Andes'),
(5302, 53, 'Calle Larga'),
(5303, 53, 'Rinconada'),
(5304, 53, 'San Esteban'),
(5401, 54, 'La Ligua'),
(5402, 54, 'Cabildo'),
(5403, 54, 'Papudo'),
(5404, 54, 'Petorca'),
(5405, 54, 'Zapallar'),
(5501, 55, 'Quillota'),
(5502, 55, 'Calera'),
(5503, 55, 'Hijuelas'),
(5504, 55, 'La Cruz'),
(5506, 55, 'Nogales'),
(5601, 56, 'San Antonio'),
(5602, 56, 'Algarrobo'),
(5603, 56, 'Cartagena'),
(5604, 56, 'El Quisco'),
(5605, 56, 'El Tabo'),
(5606, 56, 'Santo Domingo'),
(5701, 57, 'San Felipe'),
(5702, 57, 'Catemu'),
(5703, 57, 'Llaillay'),
(5704, 57, 'Panquehue'),
(5705, 57, 'Putaendo'),
(5706, 57, 'Santa María'),
(5801, 58, 'Quilpué'),
(5802, 58, 'Limache'),
(5803, 58, 'Olmué'),
(5804, 58, 'Villa Alemana'),
(6101, 61, 'Rancagua'),
(6102, 61, 'Codegua'),
(6103, 61, 'Coinco'),
(6104, 61, 'Coltauco'),
(6105, 61, 'Doñihue'),
(6106, 61, 'Graneros'),
(6107, 61, 'Las Cabras'),
(6108, 61, 'Machalí'),
(6109, 61, 'Malloa'),
(6110, 61, 'Mostazal'),
(6111, 61, 'Olivar'),
(6112, 61, 'Peumo'),
(6113, 61, 'Pichidegua'),
(6114, 61, 'Quinta de Tilcoco'),
(6115, 61, 'Rengo'),
(6116, 61, 'Requínoa'),
(6117, 61, 'San Vicente'),
(6201, 62, 'Pichilemu'),
(6202, 62, 'La Estrella'),
(6203, 62, 'Litueche'),
(6204, 62, 'Marchihue'),
(6205, 62, 'Navidad'),
(6206, 62, 'Paredones'),
(6301, 63, 'San Fernando'),
(6302, 63, 'Chépica'),
(6303, 63, 'Chimbarongo'),
(6304, 63, 'Lolol'),
(6305, 63, 'Nancagua'),
(6306, 63, 'Palmilla'),
(6307, 63, 'Peralillo'),
(6308, 63, 'Placilla'),
(6309, 63, 'Pumanque'),
(6310, 63, 'Santa Cruz'),
(7101, 71, 'Talca'),
(7102, 71, 'Constitución'),
(7103, 71, 'Curepto'),
(7104, 71, 'Empedrado'),
(7105, 71, 'Maule'),
(7106, 71, 'Pelarco'),
(7107, 71, 'Pencahue'),
(7108, 71, 'Río Claro'),
(7109, 71, 'San Clemente'),
(7110, 71, 'San Rafael'),
(7201, 72, 'Cauquenes'),
(7202, 72, 'Chanco'),
(7203, 72, 'Pelluhue'),
(7301, 73, 'Curicó'),
(7302, 73, 'Hualañé'),
(7303, 73, 'Licantén'),
(7304, 73, 'Molina'),
(7305, 73, 'Rauco'),
(7306, 73, 'Romeral'),
(7307, 73, 'Sagrada Familia'),
(7308, 73, 'Teno'),
(7309, 73, 'Vichuquén'),
(7401, 74, 'Linares'),
(7402, 74, 'Colbún'),
(7403, 74, 'Longaví'),
(7404, 74, 'Parral'),
(7405, 74, 'Retiro'),
(7406, 74, 'San Javier'),
(7407, 74, 'Villa Alegre'),
(7408, 74, 'Yerbas Buenas'),
(8101, 81, 'Concepción'),
(8102, 81, 'Coronel'),
(8103, 81, 'Chiguayante'),
(8104, 81, 'Florida'),
(8105, 81, 'Hualqui'),
(8106, 81, 'Lota'),
(8107, 81, 'Penco'),
(8108, 81, 'San Pedro de la Paz'),
(8109, 81, 'Santa Juana'),
(8110, 81, 'Talcahuano'),
(8111, 81, 'Tomé'),
(8112, 81, 'Hualpén'),
(8201, 82, 'Lebu'),
(8202, 82, 'Arauco'),
(8203, 82, 'Cañete'),
(8204, 82, 'Contulmo'),
(8205, 82, 'Curanilahue'),
(8206, 82, 'Los Álamos'),
(8207, 82, 'Tirúa'),
(8301, 83, 'Los Ángeles'),
(8302, 83, 'Antuco'),
(8303, 83, 'Cabrero'),
(8304, 83, 'Laja'),
(8305, 83, 'Mulchén'),
(8306, 83, 'Nacimiento'),
(8307, 83, 'Negrete'),
(8308, 83, 'Quilaco'),
(8309, 83, 'Quilleco'),
(8310, 83, 'San Rosendo'),
(8311, 83, 'Santa Bárbara'),
(8312, 83, 'Tucapel'),
(8313, 83, 'Yumbel'),
(8314, 83, 'Alto Biobío'),
(9101, 91, 'Temuco'),
(9102, 91, 'Carahue'),
(9103, 91, 'Cunco'),
(9104, 91, 'Curarrehue'),
(9105, 91, 'Freire'),
(9106, 91, 'Galvarino'),
(9107, 91, 'Gorbea'),
(9108, 91, 'Lautaro'),
(9109, 91, 'Loncoche'),
(9110, 91, 'Melipeuco'),
(9111, 91, 'Nueva Imperial'),
(9112, 91, 'Padre las Casas'),
(9113, 91, 'Perquenco'),
(9114, 91, 'Pitrufquén'),
(9115, 91, 'Pucón'),
(9116, 91, 'Saavedra'),
(9117, 91, 'Teodoro Schmidt'),
(9118, 91, 'Toltén'),
(9119, 91, 'Vilcún'),
(9120, 91, 'Villarrica'),
(9121, 91, 'Cholchol'),
(9201, 92, 'Angol'),
(9202, 92, 'Collipulli'),
(9203, 92, 'Curacautín'),
(9204, 92, 'Ercilla'),
(9205, 92, 'Lonquimay'),
(9206, 92, 'Los Sauces'),
(9207, 92, 'Lumaco'),
(9208, 92, 'Purén'),
(9209, 92, 'Renaico'),
(9210, 92, 'Traiguén'),
(9211, 92, 'Victoria'),
(10101, 101, 'Puerto Montt'),
(10102, 101, 'Calbuco'),
(10103, 101, 'Cochamó'),
(10104, 101, 'Fresia'),
(10105, 101, 'Frutillar'),
(10106, 101, 'Los Muermos'),
(10107, 101, 'Llanquihue'),
(10108, 101, 'Maullín'),
(10109, 101, 'Puerto Varas'),
(10201, 102, 'Castro'),
(10202, 102, 'Ancud'),
(10203, 102, 'Chonchi'),
(10204, 102, 'Curaco de Vélez'),
(10205, 102, 'Dalcahue'),
(10206, 102, 'Puqueldón'),
(10207, 102, 'Queilén'),
(10208, 102, 'Quellón'),
(10209, 102, 'Quemchi'),
(10210, 102, 'Quinchao'),
(10301, 103, 'Osorno'),
(10302, 103, 'Puerto Octay'),
(10303, 103, 'Purranque'),
(10304, 103, 'Puyehue'),
(10305, 103, 'Río Negro'),
(10306, 103, 'San Juan de la Costa'),
(10307, 103, 'San Pablo'),
(10401, 104, 'Chaitén'),
(10402, 104, 'Futaleufú'),
(10403, 104, 'Hualaihué'),
(10404, 104, 'Palena'),
(11101, 111, 'Coihaique'),
(11102, 111, 'Lago Verde'),
(11201, 112, 'Aisén'),
(11202, 112, 'Cisnes'),
(11203, 112, 'Guaitecas'),
(11301, 113, 'Cochrane'),
(11302, 113, 'O’Higgins'),
(11303, 113, 'Tortel'),
(11401, 114, 'Chile Chico'),
(11402, 114, 'Río Ibáñez'),
(12101, 121, 'Punta Arenas'),
(12102, 121, 'Laguna Blanca'),
(12103, 121, 'Río Verde'),
(12104, 121, 'San Gregorio'),
(12201, 122, 'Cabo de Hornos (Ex Navarino)'),
(12202, 122, 'Antártica'),
(12301, 123, 'Porvenir'),
(12302, 123, 'Primavera'),
(12303, 123, 'Timaukel'),
(12401, 124, 'Natales'),
(12402, 124, 'Torres del Paine'),
(13101, 131, 'Santiago'),
(13102, 131, 'Cerrillos'),
(13103, 131, 'Cerro Navia'),
(13104, 131, 'Conchalí'),
(13105, 131, 'El Bosque'),
(13106, 131, 'Estación Central'),
(13107, 131, 'Huechuraba'),
(13108, 131, 'Independencia'),
(13109, 131, 'La Cisterna'),
(13110, 131, 'La Florida'),
(13111, 131, 'La Granja'),
(13112, 131, 'La Pintana'),
(13113, 131, 'La Reina'),
(13114, 131, 'Las Condes'),
(13115, 131, 'Lo Barnechea'),
(13116, 131, 'Lo Espejo'),
(13117, 131, 'Lo Prado'),
(13118, 131, 'Macul'),
(13119, 131, 'Maipú'),
(13120, 131, 'Ñuñoa'),
(13121, 131, 'Pedro Aguirre Cerda'),
(13122, 131, 'Peñalolén'),
(13123, 131, 'Providencia'),
(13124, 131, 'Pudahuel'),
(13125, 131, 'Quilicura'),
(13126, 131, 'Quinta Normal'),
(13127, 131, 'Recoleta'),
(13128, 131, 'Renca'),
(13129, 131, 'San Joaquín'),
(13130, 131, 'San Miguel'),
(13131, 131, 'San Ramón'),
(13132, 131, 'Vitacura'),
(13201, 132, 'Puente Alto'),
(13202, 132, 'Pirque'),
(13203, 132, 'San José de Maipo'),
(13301, 133, 'Colina'),
(13302, 133, 'Lampa'),
(13303, 133, 'Tiltil'),
(13401, 134, 'San Bernardo'),
(13402, 134, 'Buin'),
(13403, 134, 'Calera de Tango'),
(13404, 134, 'Paine'),
(13501, 135, 'Melipilla'),
(13502, 135, 'Alhué'),
(13503, 135, 'Curacaví'),
(13504, 135, 'María Pinto'),
(13505, 135, 'San Pedro'),
(13601, 136, 'Talagante'),
(13602, 136, 'El Monte'),
(13603, 136, 'Isla de Maipo'),
(13604, 136, 'Padre Hurtado'),
(13605, 136, 'Peñaflor'),
(14101, 141, 'Valdivia'),
(14102, 141, 'Corral'),
(14103, 141, 'Lanco'),
(14104, 141, 'Los Lagos'),
(14105, 141, 'Máfil'),
(14106, 141, 'Mariquina'),
(14107, 141, 'Paillaco'),
(14108, 141, 'Panguipulli'),
(14201, 142, 'La Unión'),
(14202, 142, 'Futrono'),
(14203, 142, 'Lago Ranco'),
(14204, 142, 'Río Bueno'),
(15101, 151, 'Arica'),
(15102, 151, 'Camarones'),
(15201, 152, 'Putre'),
(15202, 152, 'General Lagos'),
(16101, 161, 'Cobquecura'),
(16102, 161, 'Coelemu'),
(16103, 161, 'Ninhue'),
(16104, 161, 'Portezuelo'),
(16105, 161, 'Quirihue'),
(16106, 161, 'Ránquil'),
(16107, 161, 'Treguaco'),
(16201, 162, 'Bulnes'),
(16202, 162, 'Chillán Viejo'),
(16203, 162, 'Chillán'),
(16204, 162, 'El Carmen'),
(16205, 162, 'Pemuco'),
(16206, 162, 'Pinto'),
(16207, 162, 'Quillón'),
(16208, 162, 'San Ignacio'),
(16209, 162, 'Yungay'),
(16301, 163, 'Coihueco'),
(16302, 163, 'Ñiquen'),
(16303, 163, 'San Carlos'),
(16304, 163, 'San Fabián'),
(16305, 163, 'San Nicolás');
/* *** */
CREATE TABLE IF NOT EXISTS `provincias` (
  `provincias_codigo` int(11) NOT NULL,
  `regiones_codigo` int(11) NOT NULL,
  `provincias_nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`provincias_codigo`),
  KEY `fk_provincias_regiones1_idx` (`regiones_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* *** */
INSERT INTO `provincias` (`provincias_codigo`, `regiones_codigo`, `provincias_nombre`) VALUES
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
(152, 15, 'Parinacota'),
(161, 16, 'Itata'),
(162, 16, 'Diguillin'),
(163, 16, 'Punilla');
/* *** */
CREATE TABLE IF NOT EXISTS `regiones` (
  `regiones_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `regiones_nombre` varchar(100) DEFAULT NULL,
  `regiones_iso_3166_2` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`regiones_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* *** */
INSERT INTO `regiones` (`regiones_codigo`, `regiones_nombre`, `regiones_iso_3166_2`) VALUES
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
(15, 'Región de Arica y Parinacota', 'CL_AP'),
(16, 'Región de Ñuble', NULL);
/* *** */
ALTER TABLE `comunas`
  ADD CONSTRAINT `fk_comunas_provincias1` FOREIGN KEY (`provincias_codigo`) REFERENCES `provincias` (`provincias_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
/* *** */
ALTER TABLE `provincias`
  ADD CONSTRAINT `fk_provincias_regiones1` FOREIGN KEY (`regiones_codigo`) REFERENCES `regiones` (`regiones_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
/* *** */
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* *** */
