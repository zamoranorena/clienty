/*
Navicat MySQL Data Transfer

Source Server         : XAMPP2 LOCAL
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : clienty

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-06 21:24:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `countries_created_user_id_foreign` (`created_user_id`),
  KEY `countries_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'AF', 'Afganistán', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('2', 'AL', 'Alemania', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('3', 'AR', 'Argentina', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('4', 'AU', 'Australia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('5', 'BE', 'Bélgica', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('6', 'BO', 'Bolivia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('7', 'BR', 'Brasil', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('8', 'AF', 'Camboya', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('9', 'AF', 'Canadá', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('10', 'AF', 'Chile', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('11', 'AF', 'China', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('12', 'AF', 'Colombia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('13', 'AF', 'Corea', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('14', 'AF', 'Costa Rica', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('15', 'AF', 'Cuba', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('16', 'AF', 'Dinamarca', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('17', 'AF', 'Ecuador', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('18', 'AF', 'Egipto', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('19', 'AF', 'El Salvador', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('20', 'AF', 'España', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('21', 'AF', 'Estados Unidos', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('22', 'AF', 'Estonia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('23', 'AF', 'Etiopia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('24', 'AF', 'Filipinas', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('25', 'AF', 'Finlandia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('26', 'AF', 'Francia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('27', 'AF', 'Gales', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('28', 'AF', 'Grecia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('29', 'AF', 'Guatemala', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('30', 'AF', 'Haití', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('31', 'AF', 'Holanda', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('32', 'AF', 'Honduras', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('33', 'AF', 'Indonesia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('34', 'AF', 'Inglaterra', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('35', 'AF', 'Irlanda', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('36', 'AF', 'Israel', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('37', 'AF', 'Italia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('38', 'AF', 'Japón', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('39', 'AF', 'Jordania', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('40', 'AF', 'Laos', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('41', 'AF', 'Letonia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('42', 'AF', 'Lituania', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('43', 'AF', 'Malasia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('44', 'AF', 'Marrueco', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('45', 'AF', 'México', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('46', 'AF', 'Nicaragua', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('47', 'AF', 'Noruega', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('48', 'AF', 'Nueva Zelanda', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('49', 'AF', 'Panamá', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('50', 'AF', 'Paraguay', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('51', 'AF', 'Perú', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('52', 'AF', 'Polonia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('53', 'AF', 'Portugal', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('54', 'AF', 'Puerto Rico', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('55', 'AF', 'Republic Dominicana', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('56', 'AF', 'Rumania', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('57', 'AF', 'Rusia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('58', 'AF', 'Suecia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('59', 'AF', 'Suiza', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('60', 'AF', 'Tailandia', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('61', 'AF', 'Taiwán', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('62', 'AF', 'Turquía', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('63', 'AF', 'Ucrania', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('64', 'AF', 'Uruguay', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('65', 'AF', 'Venezuela', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `countries` VALUES ('66', 'AF', 'Vietnam', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_document_id` int(10) unsigned DEFAULT NULL,
  `number_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customers_type_document_id_foreign` (`type_document_id`),
  KEY `customers_user_id_foreign` (`user_id`),
  KEY `customers_created_user_id_foreign` (`created_user_id`),
  KEY `customers_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'JOSE', 'MARTINSKY', 'Inglés', null, null, 'Ubicación', null, null, '4', '2017-09-05 16:51:20', '2017-09-05 16:51:20', '4', null, '1');
INSERT INTO `customers` VALUES ('2', 'LUIZ', 'ZAMORA', 'Peruano', 'luiszamora@gmail.com', '5999877557', 'Facebook', null, null, '4', '2017-09-05 21:10:09', '2017-09-05 21:10:09', '4', null, '1');
INSERT INTO `customers` VALUES ('3', 'TIKA', 'SUAREZ', 'Peruano', null, '656659231', 'Web', null, null, '4', '2017-09-05 22:33:12', '2017-09-05 22:33:12', '4', null, '1');
INSERT INTO `customers` VALUES ('4', 'Jose', 'Rojas', null, 'jr_1921@hotmail.com', ' 977519094,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('5', 'Juan', 'Guerrero', null, 'notiene@gmail.com', ' 985797853,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('6', 'Haydee', 'Pardo', null, 'haydepardo@gmail.com', ' 939444759,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('7', 'Justo', 'Chavez', null, 'notiene@gmail.com', ' 960322523,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('8', 'Marco', 'Gerkes', null, 'mgerkes@quimicasuiza.com', ' 993534518,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('9', 'Felipe', 'Sotomayor', null, 'felipe.sotomayor@gmail.com', ' 992264334,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('10', 'Siny', 'Soto', null, 'sindy_soto@hotmail.com', ' 974057133,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('11', 'Maria Teresa', 'landovere', null, 'terelandavere@yahoo.com', ' 998887031,0', 'Ubicación', '2', '17089520', null, '2017-07-05 00:00:00', '2017-08-18 00:28:33', '1', '1', '0');
INSERT INTO `customers` VALUES ('12', 'Eliana', 'Arias', null, 'nena406_77@hotmail.com', ' 994889502,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('13', 'Johan', 'Ramirez', null, 'conejo_brad@hotmail.es', ' 972257770,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('14', 'Juan', 'Martinez', null, 'juan.martinez@aristocrat.com', ' 7872411445,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('15', 'Kristi', 'Clayton', null, 'gkaylor7@yahoo.com', ' 2532212233,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('16', 'Gaby', 'Guerra', null, 'gabyguerra20@hotmail.com', ' 921132691,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('17', 'Yomayra', 'Canavera', null, 'ycanaveramandujano@gmail.com', ' 987636496,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('18', 'Roberto ', 'Manrique', null, 'robertomanriquem@yahoo.com', ' 998887031,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('19', 'Alejandro', 'Bala', null, 'alex54858@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('20', 'Amparo', 'Zevallos', null, 'amparitomz@hotmail.com', ' 940297263,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('21', 'Magaly ', 'Arce', null, 'maga_7402@hotmail.com', ' 946552259,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('22', 'Elena', 'Huerta', null, 'maejol@yahoo.es', null, 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('23', 'Sofia', 'Ccama', null, 'sccama@reniec.gob.pe', ' 13154000,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('24', 'Rosita', 'Tello', null, 'tatianalove777@gmail.com', ' 999135506,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('25', 'Ursula', 'Castro', null, 'ursulitacastro@hotmail.com', ' 933517611,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('26', 'Alfredo', 'Nakame', null, 'alnavi11@hotmail.com', ' 997900372,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('27', 'Yomayra', 'Canavera', null, 'ycanaveramandujaro@gmail.com', ' 987636496,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('28', 'Nestor', 'Herrera', null, 'yacoherrerajc@hotmail.com', ' 978614478,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('29', 'Teofila', 'Zevallos', null, 'amparitomz@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('30', 'Rosita', 'Tello', null, 'tatianalove777@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('31', 'William', 'Rocas', null, 'wroca@maximainternacional.com.pe', ' 943983067,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('32', 'Paola', 'Del risco', null, 'paolitagrone18@gmail.com', ' 3375530,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('33', 'Lorenza', 'Martinez', null, 'arochanmar@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('34', 'Miguel', 'Quispe', null, 'los_desadaptados_17@hotmail.com', ' 949095957,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('35', 'Jessica', 'Varela', null, 'dulcetweety21@hotmail.com', ' 1569269963,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('36', 'Dalia', 'Chang', null, 'daliachang@gmail.com', ' 986451957,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('37', 'Gustavo', 'Salazar', null, 'mgaland@hotmail.com', ' 959078194,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('38', 'Edwin', 'Roda', null, 'earodas@gmail.com', ' 997974309,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('39', 'Martha', 'Rojas', null, 'martha.irn@hotmail.com', ' 998702610,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('40', 'Cecilia', 'Quinoa', null, 'ccilia3@yahoo.es', ' 999587207,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('41', 'Claudia', 'Pon', null, 'Klaudia.poon@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('42', 'Carlos', 'Gallardo', null, 'cgallardo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('43', 'Moises', 'Segovia', null, 'moisesegovia@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('44', 'Elvis', 'Tuncar', null, 'tuncar.lopez@gmail.com', ' 980826831,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('45', 'Caroline', 'Kilgarrif', null, 'frednicraith@gmail.com', ' 353868529071,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('46', 'Luz', 'Belen', null, 'luzbelenva1979@gmail.com', ' 947510246,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('47', 'Victor', 'Ausejo', null, 'notiene@gmail.com', ' 2672384,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('48', 'Natalie', 'Aguilar', null, 'nathalie.1410@hotmail.com', ' 949296248,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('49', 'Luz', 'Hernandez', null, 'jade_1988_16@hotmail.com', ' 997187805,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('50', 'Lili', 'Valenzuela', null, 'lilivalenzuelah1@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('51', 'Llily', 'Ampudio', null, 'marley91140@hotmail.com', ' 954587397,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('52', 'Jorge', 'Cornea', null, 'corneagael184@gmail.com', ' 933349411,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('53', 'Mario', 'Cabrejos', null, 'macatoo1981@gmail.com', ' 934664657,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('54', 'Diego', 'Diaz', null, 'diego_dc14@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('55', 'Ivanovich', 'Izquierdo', null, 'arthur_left@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('56', 'Jorge', 'Correa', null, 'correagael184@gmail.com', ' 933349411,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('57', 'Noemi', 'Peña', null, 'noemi_014@hotmail.com', ' 940244563,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('58', 'Vladimir', 'Begazo', null, 'begazovladimir84@hotmail.com', ' 954505680,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('59', 'Carlos ', 'Rios', null, 'carlos.rios.m10@hotmail.com', ' 993020840,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('60', 'Susana', 'Cayo', null, 'notiene@gmail.com', ' 9998000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('61', 'Shella', 'Alvarado', null, 'salvarado@cientifica.edu.pe', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('62', 'Emily', 'Cabanillas', null, 'escabrejo@hotmail.com', ' 962767470,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('63', 'Rebca', 'rivas', null, 'rbk_iris@htomail.com', ' 980701888,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('64', 'Lucy', 'Barrientos', null, 'notiene@gmail.com', ' 927374611,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('65', 'Junior', 'Contreras', null, 'notiene@gmail.com', ' 975832889,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('66', 'Guis', 'ddd', null, 'gar710@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('67', 'Lucia', 'Gonzales', null, 'notiene@gmail.com', ' 927374611,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('68', 'Engelbert', 'Lopez', null, 'engelbert105@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('69', 'Ruben', 'De la sota', null, 'rddaso@hotmail.com', ' 966696329,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('70', 'Martin', 'Bazan', null, 'martin.bazan@mundoceleste.pe', ' 946052897,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('71', 'Nathalie', 'Manzano', null, 'joannybeth@gmail.com', ' 9120394096,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('72', 'Liliana', 'Hinojosa', null, 'lhinojosah@gmail.com', ' 986885406,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('73', 'Teresa', 'Hurtado', null, 'teresawupasaro@hotmail.com', ' 4604680,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('74', 'Jorge', 'Junca', null, 'juncacanera@hotmail.com', ' 997920776,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('75', 'Sara', 'Noblecilla', null, 'sara.noblecilla.merino@gmail.com', ' 2561781,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('76', 'Rafael', 'Pretell', null, 'rafa_pretell@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('77', 'Melania', 'Martinez', null, 'melania.martinez@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('78', 'Edgar', 'Suarez', null, 'ed.suarez19@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('79', 'Marco', 'Tejada', null, 'tejadamarco@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('80', 'Maria', 'Romero', null, 'limarome@hotmail.com', ' 941888624,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('81', 'Ricardo', 'Quispe', null, 'ricardo_rayo23@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('82', 'Tatiana', 'Vasto', null, 'notiene@gmail.com', ' 986665456,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('83', 'Lourdes', 's', null, 'notiene@gmail.com', ' 987560455,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('84', 'Jackeline', 'Espiritu', null, 'jack.spirit@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('85', 'Gustavo', 'Seclen', null, 'notiene@gmail.com', ' 97486551,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('86', 'Meghan', 'Loyola', null, 'karliz.isla@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('87', 'Alcida', 'Rany', null, 'notiene@gmail.com', ' 974566212,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('88', 'David', 'David', null, 'david20ro@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('89', 'Marta', 'Paz', null, 'mpaz220@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('90', 'Carolina', 'Criado', null, 'carotkd_18@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('91', 'Evelyn', 'Acasuzo', null, 'eacasuzo@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('92', 'Lesly', 'Carbajal', null, 'lcarbajal@yahoo.es', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('93', 'Rafael', 'Cisneros', null, 'notiene@gmail.com', ' 981163604,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('94', 'Maria', 'Paz', null, 'mpaz@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('95', 'Saul', 'Saul', null, 'notiene@gmail.com', '+54006234445', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('96', 'Vilma', 'Francia', null, 'Vfrancia47@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('97', 'Ingrid', 'Tejada', null, 'ingrid.tej@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('98', 'Alejandra', 'Rivera', null, 'notiene@gmail.com', ' 8423961,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('99', 'Rafael', 'Gutierrez', null, 'urrutia605@hotmail.com', ' 996252427,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('100', 'Jenny', 'Cueva', null, 'notiene@gmail.com', ' 932159623,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('101', 'Vilma', 'Francia', null, 'Vfrancia47@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('102', 'Vicky', 'Zegarra', null, 'vicky200154@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('103', 'Antonio', 'Ochoa', null, 'oantonio2912@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('104', 'Teresa', 'Lara', null, 'teresalaragondo@yahoo.com', ' 2743305,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('105', 'Miriam', 'Larrea', null, 'maj_diaz@yahoo.com', ' 995688443,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('106', 'Natali', 'Huaman', null, 'nattyolos@hotmail.com', ' 999033643,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('107', 'Lina', 'Lipa', null, 'notiene@gmail.com', ' 999410262,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('108', 'Nancy', 'Morales', null, 'nancy4552@hotmail.com', ' 999123982,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('109', 'Emiliano', 'Castillo', null, 'ernesto.castillo@eqpe.com', ' 998151832,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('110', 'stephany', 'vilchez', null, 'stephany.vilchez@gmail.com', ' 941300944,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('111', 'Maria Elizabeth', 'Campomantes', null, 'elizabeth_campomanes@gmail.com', ' 962253586,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('112', 'Juma', 'Fernandez', null, 'notiene@gmail.com', ' 997376685,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('113', 'Raul', 'Mendoza', null, 'notiene@gmail.com', ' 988641355,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('114', 'Mariela', 'Bautista', null, 'notiene@gmail.com', ' 998517735,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('115', 'Mariela', 'Mejia', null, 'mmejiamontero@hotmail.com', ' 992788878,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('116', 'Andrea', 'Burgos', null, 'mariandrea.br@gmail.com', ' 975338929,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('117', 'Freddy', 'Yupari', null, 'fyupari@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('118', 'Leonardo', 'Polo', null, 'vbricenol@gmail.com', ' 964693359,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('119', 'Gian', 'Gutierrez', null, 'notiene@gmail.com', ' 998662236,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('120', 'Edith', 'Choque', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('121', 'Veronica', 'Briceño', null, 'vbricenol@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('122', 'Rodolfo', 'Cuadros', null, 'notiene@gmail.com', ' 999837149,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('123', 'Stephanie', 'Soto', null, 'tefycito@gmail.com', ' 992790281,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('124', 'Jesus', 'Alberto', null, 'edupalmo@yahoo.es', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('125', 'Eduardo', 'Palacios', null, 'edupalmo@yahoo.es', ' 956807394,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('126', 'Rocio', 'Tornero', null, 'zasherdanae@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('127', 'Giovanna', 'Ojeda', null, 'halittu@hotmail.com', ' 963350106,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('128', 'Libertad', 'Muñoz', null, 'notiene@gmail.com', ' 992068176,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('129', 'Stephanie', 'Soto', null, 'tefycito@gmail.com', ' 992790281,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('130', 'Rafael', 'Cisneros', null, 'notiene@gmail.com', ' 981163604,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('131', 'Maria Teresa', 'Mora', null, 'mariterelima2000@gmail.com', ' 993042572,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('132', 'Alfredo', 'Chuquin', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('133', 'Walter', 'Castro', null, 'notiene@gmail.com', ' 945966927,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('134', 'Flor de Maria', 'Fernandez', null, 'notiene@gmail.com', ' 935430327,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('135', 'Alejandra', 'Hoyos', null, 'aleali95@hotmai.com', ' 987488280,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('136', 'Alejandra', 'Cordona', null, 'a.cardonadavila@alum.ep.edu.pe', ' 958906615,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('137', 'Mauricio', 'Cardenas', null, 'omarsanbartolome@gmail.com', ' 987768747,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('138', 'Felicia', 'Casafranca', null, 'notiene@gmail.com', ' 989099189,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('139', 'Alberto', 'Nazario', null, 'omarsanbartolome@gmail.com', ' 987768747,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('140', 'Blanca', 'Castillo', null, 'blanca.castillon@gmail.com', ' 945230383,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('141', 'Luciano ', 'Arata', null, 'luciana_aj16@otmail.com', ' 997036547,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('142', 'Giovanni', 'Catacora', null, 'notiene@gmail.co', ' 948404116,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('143', 'Fernandez', 'Palomino', null, 'notiene@gmail.com', ' 935430327,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('144', 'Roger', 'Trigueros', null, 'shenlong67@hotmail.com', ' 997356223,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('145', 'Andrea', 'Montenegro', null, 'andrea.montenegro@pucp.pe', ' 956470367,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('146', 'Omar', 'Nazario', null, 'onazario@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('147', 'Luciana', 'Arata', null, 'larata@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('148', 'Flor', 'Lopez', null, 'lopez.flor@gmail.com', ' 2710452,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('149', 'Mary', 'Alva', null, 'mary.alva@fmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('150', 'Emiliano', 'Contreras', null, 'emilianocc@yahoo.es', ' 982567934,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('151', 'Monica', 'Zegarra', null, 'monicazegm@hotmail.com', ' 982665800,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('152', 'Haydee', 'Cardenas', null, 'notiene@gmail.com', ' 12245544,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('153', 'Junior', 'Becerra', null, 'notiene@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('154', 'Arturo', 'Vasquez', null, 'arturo_felipe10@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('155', 'Oscar', 'Asilo', null, 'notiene@gmail.com', ' 970314202,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('156', 'Luis', 'Yllescas', null, 'luishmb@hotmail.com', ' 990354750,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('157', 'Susana', 'Soriano', null, 'ssoriano@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('158', 'Luli', 'Tamo', null, 'jennytapullima.21@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('159', 'Marieta', 'Alvarez', null, 'marietta.alvarez@scotiabank.com.pe', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('160', 'Luis', 'Yllescas', null, 'luishume@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('161', 'Melisa', 'Urday', null, 'meli_hz@hotmail.com', ' 947909530,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('162', 'Adela', 'Rosales', null, 'adelarosalesbasaru@gmail.com', ' 992012555,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('163', 'Isabel', 'Matute', null, 'notiene@gmail.com', ' 936337441,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('164', 'Rosana', 'Ramirez', null, 'rrangeles0806@gmail.com', ' 945113767,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('165', 'Sofia', 'Ho', null, 'socrybja@hotmail.com', ' 971439293,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('166', 'Daniela', '*', null, 'notiene@gmail.com', ' 964102451,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('167', 'Patricia', 'Reyes', null, 'notiene@gmail.com', ' 961443701,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('168', 'Maria', 'Yana', null, 'mariayanacampos@gmail.com', ' 998137796,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('169', 'Edson ', 'Avila', null, 'notiene@gmail.com', ' 984569848,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('170', 'Carlo', 'Carbajal', null, 'notiene@gmail.com', ' 993718918,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('171', 'Ricardo', 'Mendoza', null, 'ricardomendoza21@gmail.com', null, 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('172', 'Hernandez', 'Vasquez', null, 'notiene@gmail.com', ' 955840653,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('173', 'Vilma', 'Meza', null, 'notiene@gmail.com', ' 981997579,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('174', 'Sandro', 'Vivera', null, 'notiene@gmail.com', ' 997333522,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('175', 'Jony', 'Garcia', null, 'notiene@gmail.com', ' 988703887,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('176', 'Rosario', 'Iparraguirre', null, 'rmiparaguirre@gmail.com', ' 990077465,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('177', 'Teresa', 'Flores', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('178', 'Maria', 'Hernandez Miranda', null, 'antuca.hernandez@hotmail.com', ' 942730577,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('179', 'Elizabeth', 'Perez', null, 'eliperez871@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('180', 'Sergio', 'Fryda', null, 'sergio.fryda@sergiofryda.com', ' 995028345,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('181', 'Joan', 'Pinto', null, 'joanpinto.666@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('182', 'Sandra', 'Altamirano', null, 'paltamirano@dcb.com.pe', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('183', 'Rosario', 'Mori', null, 'romi2105@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('184', 'Juan', 'Salas', null, 'notiene@gmail.com', ' 995222327,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('185', 'Junior', 'Escalante', null, 'notiene@gmail.com', ' 959738314,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('186', 'Justo', 'Chavez', null, 'notiene@gmail.com', ' 960322523,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('187', 'Andrea', 'Oncoy', null, 'aoncoy@hidrostal.com.pe', ' 966761800,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('188', 'Gloria', 'Kawahara', null, 'glo.kawahara@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('189', 'no dijo', 'no dijo', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('190', 'Maya', 'Aramayo', null, 'notiene@gmail.com', ' 956150378,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('191', 'Mathew', 'Williams', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('192', 'Antonio', 'Cama', null, 'antoniocamajana@yahoo.com', ' 996559348,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('193', 'Silvia', 'Negron', null, 'silviahn92@hotmail.com', ' 957575428,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('194', 'Jessica', 'Iparraguirre', null, 'jc.ib.93@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('195', 'Janeth', 'Flores', null, 'janeth.flores.morales@gmail.com', ' 987876468,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('196', 'Stephanie', 'Barsallo', null, 'stefanielmb@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('197', 'Karina', 'Sandoval', null, 'vk_sandoval@hotmail.com', ' 985365437,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('198', 'Heber', 'Ocaña', null, 'bibliobraje@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('199', 'Walter', 'Ciccia', null, 'wjcd2009@hotmail.com', ' 977181541,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('200', 'Yurry', 'Luna', null, 'notiene@gmail.com', ' 987517381,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('201', 'Galina', 'Dvigalov', null, 'notiene@gmail.com', ' 14400181,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('202', 'Estrella', 'Xing', null, 'estrellacccc@hotmail.com', ' 986733301,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('203', 'Maria', 'Romero', null, 'limarome@hotmail.com', ' 941888624,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('204', 'Meggie', 'Bardalez', null, 'mbardalezarce@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('205', 'Pablo', 'Sol', null, 'paulo_sou@outlook.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('206', 'Mario', 'Mario', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('207', 'Olenka', 'Man', null, 'notiene@gmail.com', ' 965875070,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('208', 'Victor', 'Notano', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('209', 'Paola', 'Neyra', null, 'pao_17119@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('210', 'Jessica', '.', null, 'jjzf24@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('211', 'Cristian', 'Chuquizuta', null, 'dantecristian1828@hotmail.com', ' 921445800,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('212', 'Viviana', 'no dio', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('213', 'Haydee', 'Berrospi', null, 'haydee.berrospi.duenas@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('214', 'Patricia', 'Garcia', null, 'pgarciav@gmail.com', ' 996318000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('215', 'Joana', '.', null, 'notiene@gmail.com', ' 94670821,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('216', 'Maria', 'Jesus', null, 'notiene@gmail.com', ' 998503608,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('217', 'Eddy', 'Paredes', null, 'notiene@gmail.com', ' 947959588,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('218', 'Neira', 'Neira', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('219', 'Eddy Romero', null, null, null, null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('220', 'Carlos', 'Tovar', null, 'karlotovar@gmail.com', ' 980036441,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('221', 'Héctor', 'Montoya', null, 'hedamontoya@hotmail.com', ' 940620776,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('222', 'Marco', 'Castillo', null, 'gerencia@redesanticaidas.com', ' 994096156,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('223', 'Estrella', 'Cáceres', null, 'caceresotrilla@gmail.com', ' 961751163,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('224', 'Judith', 'Gallegos', null, 'mallygc1@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('225', 'Gloria', 'Salazar', null, 'noitiene@gmail.com', ' 974622371,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('226', 'Esther', 'Vargas', null, 'estherv_11@hotmail.com', ' 965452768,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('227', 'Eduardo', 'Chirinos', null, 'edchirinos@gmail.com', ' 999660217,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('228', 'Víctor', 'Rodriguez', null, 'victor4900@gmail.com', ' 991760421,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('229', 'Julia', 'Palacios', null, 'notiene@gmail.com', ' 991868485,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('230', 'María ', 'López', null, 'flaquita_201111@hotmail.com', ' 932825529,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('231', 'Luis', 'Málaga', null, 'luchobatlle@gmail.com', ' 986341068,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('232', 'Diana', 'Figallo', null, 'alejandralafer@gmail.com', '+5491149759296', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('233', 'Elizabeth', 'Almonacid', null, 'litalmonacid@yahoo.es', ' 976031575,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('234', 'William ', 'Laura', null, 'notiene@gmail.com', ' 955173381,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('235', 'Yanina', 'Córdova', null, 'yacordova@hotmail.com', ' 997271833,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('236', 'Liliana', 'Ojeda Salazar', null, 'lilianaojeda@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('237', 'Maritza', 'Melgar', null, 'maritza_0660@hotmail.com', ' 975748069,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('238', 'Miguel', 'Canales', null, 'miguelcanales@outlook.com', ' 990085850,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('239', 'Raúl', 'Moya', null, 'jesusvyp@hotmail.com', ' 959200088,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('240', 'Raquel', 'Chaves', null, 'rchaves20074@hotmail.com', ' 940432411,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('241', 'Pool', 'Segura', null, 'notiene@gmail.com', ' 927138075,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('242', 'Lange', 'Quisuruco', null, 'lquisuruco88@gmail.com', ' 966336598,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('243', 'Aurelio', 'Fernández', null, 'afernandezmaria1@hotmail.com', ' 989621056,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('244', 'Claudia', 'Baraybar', null, 'cluc97@gmail.com', ' 955574297,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('245', 'Fernando', 'Rojas', null, 'fernando_rcn@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('246', 'Albert', 'Quiroz', null, 'albert010561@hotmail.com', ' 974213369,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('247', 'Ridel', 'Falconi', null, 'ridelcita@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('248', 'Alana', 'Moran', null, 'alymor2016@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('249', 'Nancy', 'Valdeberuto', null, 'nanvaa64@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('250', 'Ana', 'Cahuari', null, 'anmara2k@hotmail.com', ' 980536164,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('251', 'Rogelio', 'Horna', null, 'rogeliohorna@hotmail.com', ' 943646045,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('252', 'Mirella', 'Arellano', null, 'mire.arellano@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('253', 'Lange', 'Quisuruco', null, 'lquisuruco88@gmail.com', ' 966336598,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('254', 'Jeams ', 'Cueva', null, 'jchcuevacarbajal@gmail.com', ' 959134676,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('255', 'Cynthia', 'Fonseca', null, 'cynforui@gmail.com', ' 980477792,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('256', 'César', 'Ventura', null, 'cesarventura@gmail.com', ' 949144515,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('257', 'Arturo', 'Quispe', null, 'arturo232116@hotmail.com', ' 998900780,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('258', 'Hugo', 'Llerena', null, 'plusquimica@hotmail.com', ' 983532061,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('259', 'Carmen ', 'Mariños', null, 'marinos.roldan@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('260', 'Patricia', 'Signorelli', null, 'sipnorellipatricia@hotmail.com', ' 4789801,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('261', 'Walter', 'Mogrovejo', null, 'notiene@gmail.com', ' 940734520,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('262', 'Cyntia ', 'Fonseca', null, 'cynforui@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('263', 'Rosario ', 'Infantes', null, 'rosario.infantes@digammaperu.com', ' 6286300,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('264', 'Blanca', 'Castillo', null, 'blanca.luz.castillo@hotmail.com', ' 995239280,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('265', 'Eduardo', 'Vergaray', null, 'notiene@gmail.com', ' 940187637,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('266', 'Vanessa', 'vane', null, 'vanevane2305@gmail.com', ' 997922906,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('267', 'Marcos', 'Matienzo', null, 'marcosmatienzo2011@hotmail.com', ' 990007097,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('268', 'Carmen', 'Mariños', null, 'marinos.roldan@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('269', 'Sandra', 'Plata', null, 'yusandra20@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('270', 'Leydi', 'Acaro', null, 'coriaca04@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('271', 'Sonia', 'Burrel', null, 'sburrel14@hotmail.com', ' 952310562,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('272', 'Francisco', 'Espinoza', null, 'fespinoza52@hotmail.com', ' 999743736,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('273', 'Paola', 'Huertas', null, 'pao_9319@hotmail.com', ' 958214196,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('274', 'Olga', 'Paz', null, 'notiene@gmail.com', null, 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('275', 'Blanca', 'Castillo', null, 'blanca.luz.castillo@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('276', 'Allison', 'Espino', null, 'alisson_3101@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('277', 'Norma', 'Estacio', null, 'giovanaestacio@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('278', 'Zarela', 'Gamarra', null, 'zarelagamarra@yahoo.com', ' 977173502,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('279', 'Daril', 'Auceda', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('280', 'Ana', 'Calagua', null, 'pcalagua@autolandperu.com', ' 968356427,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('281', 'Lilia', 'Palacios', null, 'notiene@gmail.com', ' 932641792,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('282', 'Judith Manuela', 'Carranza Garay', null, 'notiene@gmail.com', ' 2426420,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('283', 'Marco', 'Dolorier', null, 'pauldolorier@hotmail.com', ' 981076450,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('284', 'Miguel', 'Uceda', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('285', 'Ana', 'Cahuari', null, 'anmara2k@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('286', 'Juana', 'Estabridis', null, 'jrestabridis@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('287', 'Jessica', 'Valverde', null, 'jessicavalv@gmail.com', ' 998536070,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('288', 'Yessenia', 'Colonio', null, 'yeseniacol@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('289', 'Leoncio', 'Vidal', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('290', 'Yulissa', 'Aguirre', null, 'exito_y_alegria@hotmail.com', ' 955755706,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('291', 'Hugu', 'Kcana', null, 'notiene@gmail.com', ' 960504947,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('292', 'Gustavo', 'Rodriguez', null, 'grs1503@gmail.com', ' 946542394,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('293', 'Juan Carlos ', 'Pasapera Serra ', null, 'jcpasapera10@yahoo.es', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('294', 'Zarela', 'Gamarra', null, 'zarelagamarra@yahoo.com', ' 977173502,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('295', 'Julián', 'Avendaño', null, 'julian_xxii@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('296', 'Wendy', 'Abarca', null, 'wendy_a2004@yahoo.com', ' 940293450,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('297', 'Yessenia', 'Humala', null, 'yhumala@gmail.com', ' 947739996,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('298', 'Eduardo', 'no brindó', null, 'ezezmoon@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('299', 'Alex', 'Lopez', null, 'notiene@gmail.com', ' 924316148,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('300', 'Lorena', 'Castillo', null, 'lorenacmr@hotmail.com', ' 985777085,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('301', 'Gonzalo', 'Del Castillo', null, 'gondcn@gmail.com', ' 955601030,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('302', 'Javier', 'Castillo', null, 'notiene@gmail.com', ' 996286559,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('303', 'Jessica', 'Valverde', null, 'jessicavalv@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('304', 'Eber', 'Huanca', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('305', 'Wido', 'Rucana', null, 'wido.rucana@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('306', 'Mirtha', 'Vizcarra', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('307', 'ZORAYMA', 'HUAYPARAPOMA', null, 'zoraima_165@outlook.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('308', 'Rodrigo', 'Pacheco', null, 'alejo_27@hotmail.com', '+573213984384', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('309', 'Chica', 'Extraña', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('310', 'Milena', 'Duarte', null, 'milenaduarte22@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('311', 'Sara Julia', 'Ramírez Zegarra', null, 'notiene@gmail.com', ' 993206268,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('312', 'Mónica', 'Salebbsky', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('313', 'Sara', 'Villdón', null, 'linacanoa@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('314', 'Karen', 'n', null, 'pao_ugas@hotmail.com', ' 977126035,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('315', 'Chistiam', 'Ulloa', null, 'christian.ulloa.q@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('316', 'Sara', 'Ramírez ', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('317', 'Liliana', 'Hinojosa', null, 'lhinojosah@gmail.com', ' 986885406,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('318', 'Dante', 'Estrada', null, 'notiene@gmail.com', ' 938461459,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('319', 'Marcos', 'Marquez', null, 'mcmcesar@yahoo.com.br', ' 945099160,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('320', 'Roberto', 'Bocangel', null, 'rbocangel@geograssperu.com', ' 990003951,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('321', 'Walezwka', 'Villegas Ardiles', null, 'walezwka@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('322', 'Eleana', 'Turpo', null, 'eleanatc@gmail.com', ' 987250776,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('323', 'Luz', 'Montenegro', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('324', 'Tesoro', 'Díaz', null, 'tesoro670589@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('325', 'Katia', 'Muñoz', null, 'kademufa@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('326', 'Paloma', 'García', null, 'justpaloma.94@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('327', 'Karla', 'Rivera', null, 'kealita_14@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('328', 'Anita', 'Fernandez', null, 'wido.rucana@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('329', 'Carmen ', 'Escalante', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('330', 'Ricardo', 'Corituma', null, 'rickymas1102@hotmail.com', ' 971155520,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('331', 'Liliana', 'Hinojosa', null, 'lhinojosah@gmail.com', ' 986885406,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('332', 'Norma', 'Huamaní', null, 'lospinosfett@hotmail.com', ' 993177882,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('333', 'Katherin', 'Valenzuela', null, 'katherin_key10@hotmail.com', ' 940773266,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('334', 'José', 'Arris', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('335', 'Yuri', 'Meléndez', null, 'yurimelendezcisneros@gmail.com', ' 966702308,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('336', 'Elvia ', 'Alonzo', null, 'ealonzor@usmp.pe', ' 986897156,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('337', 'Evy', 'Padilla', null, 'irisevi195@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('338', 'Susan', 'Ruiz', null, 'snr2124@columbia.edu', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('339', 'Norma ', 'Huamaní', null, 'lospinosfett@hotmail.com', ' 993177882,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('340', 'Elvia', 'Alonzo', null, 'ealonzor@usmp.pe', ' 986897156,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('341', 'Mota', 'Bazan', null, 'lindabaz1@hotmail.com', ' 951742853,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('342', 'Rosa', 'Abad', null, 'abadville.28@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('343', 'Lijia', 'Marquez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('344', 'Silvana', 'Ramírez', null, 'silvana_rr@hotmail.com', ' 979533186,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('345', 'Rosario', 'Figueroa', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('346', 'Luz', 'Palomino', null, 'pilarnoa@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('347', 'Samuel', 'Rojas', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('348', 'Nancy', 'Gadillo', null, 'nancy-30a@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('349', 'Enrique', 'Uribarri', null, 'enriqueuribarri1@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('350', 'Liliana', 'Hinojosa', null, 'lhinohosah@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('351', 'Yuliza', 'Córdova', null, 'ycordova1090@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('352', 'Estrella ', 'Campos', null, 'norma3012@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('353', 'Miguel', 'Franco', null, 'mfrancopebe@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('354', 'Elizabeth', 'Vilela', null, 'evimen21@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('355', 'Janet', 'Medina', null, 'jamevel@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('356', 'Priscilla', 'Pajuelo', null, 'priscillapajuelo@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('357', 'Silvana', 'Ramírez', null, 'silvana_rr@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('358', 'Jessica ', 'Valverde', null, 'jessicavalv@gmail.com', null, 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('359', 'Liliana', 'Hinojosa', null, 'lhinojosah@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('360', 'Noelia', 'Alva', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('361', 'Julie', 'Nativitas', null, 'nativitas_22@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('362', 'Liliana', 'Loayza', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('363', 'Isabel', 'Olgado', null, 'isabel2016mn@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('364', 'Ruben', 'Gonzalez', null, 'ruben@reisucal.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('365', 'Anthony', 'André', null, 'anthonyandre1990@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('366', 'Kevin', 'Espinoza', null, 'kevin.espinoza_27@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('367', 'Claudia', 'Torres', null, 'clau25.torres@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('368', 'María', 'Díaz', null, 'mreynadiaz@hotmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('369', 'Blanca', 'Sánchez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('370', 'Marco', 'Sanchez', null, 'psr_msanchez@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('371', 'Fredy', 'Huayra', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('372', 'Jorge', 'Aucapiña', null, 'jorge123212@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('373', 'Freddy', 'Chambi', null, 'freddylg76@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('374', 'Paola', 'Gutierrez', null, 'paola_jgd@yahoo.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('375', 'Erick', 'Ames', null, 'erickames@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('376', 'Sebastián ', 'Ojeda', null, 'sebastianojedazegarra@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('377', 'Esenzia ', 'Danzas', null, 'esenziadanzas@yahoo.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('378', 'Martín', 'Rodríguez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('379', 'Rocsana', 'Dueñas', null, 'rocsanadu@yahoo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('380', 'Patrocinia', 'Flores', null, 'floresaybar13@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('381', 'Carmen', 'Guanambal', null, 'camucha155@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('382', 'Percy', 'Castro', null, 'pcastro@conida.gob.pe', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('383', 'Yoya', 'Yoya', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('384', 'Elizabeth', 'Villalobos', null, 'eli_vive@hotmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('385', 'Asaf', 'notiene@gmail.com', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('386', 'Vituca', 'Zegarra', null, 'vituca@hotmail.com', ' 987748414,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('387', 'Miguel', 'Barrio', null, 'notiene@gmail.com', ' 946448607,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('388', 'Moisés ', 'Castillo', null, 'mdelcastillo_77@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('389', 'José', 'Aroni', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('390', 'Miguel ', 'Durand', null, 'notiene@gmail.com', ' 987382768,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('391', 'Gianfranco', 'Monzón', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('392', 'Alfonso', 'Villacorta', null, 'alfonsovillacortapuchoc@gmail.com', ' 993255019,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('393', 'Pablo', 'Olivos', null, 'fabricioolivos@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('394', 'Gustavo', 'Rubio', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('395', 'Quentin', 'Cowper', null, 'burrencrwler@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('396', 'Isabel', 'Sanchez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('397', 'Lourdes', 'Lourdes', null, 'lodicha99@yahoo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('398', 'Elsa', 'Zarater', null, 'elsa_zarater@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('399', 'Roger', 'Challco', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('400', 'Alfredo', 'Pomareda', null, 'notiene@gmail.com', ' 991143493,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('401', 'José', 'Espinoza', null, 'notiene@gmail.com', ' 993874425,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('402', 'Luis ', 'Luna', null, 'luis.elchef86@gmail.com', ' 934747191,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('403', 'Brampier', 'Montero', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('404', 'Jhon', 'Ayacuque', null, 'notiene@gmail.com', ' 956723599,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('405', 'Carolina ', 'Condorhuanca', null, 'carito14015@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('406', 'Bertha ', 'Huayhua Flores	', null, 'bhf_desafios@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('407', 'Hilda', 'Hilda', null, 'hilda.251191@gmail.com', ' 968466662,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('408', 'Katheleen ', 'Surichaqui', null, 'katheleen.surichaqui@hocplc.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('409', 'Ersy ', 'Gomez', null, 'ermago23@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('410', 'Marco ', 'Sánchez', null, 'psr_msanchez@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('411', 'Moisés ', 'Del Castillo', null, 'mnaters@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('412', 'Maritza', 'Vilca', null, 'maritzas@gmail.com', ' 959704094,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('413', 'Melissa', 'Carpio', null, 'lvalencia@sapia.com.pe', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('414', 'Consuelo', 'Limo', null, 'consuelolimo@hotmail.com', ' 959992860,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('415', 'Rosa ', 'Huánuco', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('416', 'Valeria', 'Lazo', null, 'vale.laz028@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('417', 'Saidrazzouki', 'aleman', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('418', 'Ricardo', 'Quintana', null, 'richi_q18@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('419', 'David', 'Ivanor', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('420', 'Favio', 'Saldarriaga', null, 'rosariochaveli@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('421', 'Enrique', 'Aliaga', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('422', 'Paul', 'Soria', null, 'paul.rosales1@hotmail.com', ' 975442185,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('423', 'Otto', 'Kdenig', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('424', 'Ericka', 'Zavala', null, 'diegho2004_10@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('425', 'Eliana', 'Tuanama', null, 'elianatu@hotmail.com', ' 979316573,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('426', 'Enrique', 'Parodi', null, 'kikp700@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('427', 'Jairo', 'Huamán', null, 'jairo.huaman94@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('428', 'Jorge', 'Chavez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('429', 'Hugo', 'Sandoval', null, 'notiene@gmail.com', ' 951414014,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('430', 'Doris', 'Vaca', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('431', 'Rosana', 'Ramirez', null, 'rosanaramirezangeles06@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('432', 'Lidia', 'Arias', null, 'lidia.arias@scotiabank.com.pe', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('433', 'Fernanda', 'Rivera', null, 'fernanda.rivera.r@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('434', 'Evelyn', 'Concha', null, 'Grisell50666@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('435', 'Sonia', 'Alvan', null, 'smag711@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('436', 'Cyntia', 'Tj', null, 'Cyntia_myc@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('437', 'Rosana', 'Ramirez', null, 'rosanaramirezangeles06@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('438', 'Jorge ', 'Villagaray', null, 'coquito178@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('439', 'Jorge', 'Villagaray', null, 'coquito178@yahoo.com', ' 953765766,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('440', 'Leslie', 'Hinojosa', null, 'lesliehinojosa@yahoo.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('441', 'Paola', 'Fernandez', null, 'pabrufervo@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('442', 'Felipe', 'Ascenzo', null, 'felipeascenzop@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('443', 'César', 'Estrada', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('444', 'Silvia', 'Astorga', null, 'sachnm65@hotmail.com', ' 949138110,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('445', 'Mónica', 'Naters', null, 'mnaters@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('446', 'Francisco', 'De Gea', null, 'katiabrun@gmail.com', ' 987700660,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('447', 'Laura', 'Allali', null, 'laura.esther.allali@gmail.com', ' 992955733,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('448', 'Alan', 'Marrou', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('449', 'Hilda', 'Lescano', null, 'carito-lescano@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('450', 'Maritza', 'Velis', null, 'carita-lescano@hotmail.com', ' 980033107,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('451', 'Verónica ', 'AF', null, 'veronikhita12@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('452', 'Carlos', 'Macha', null, 'carlosmachay@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('453', 'Luis', 'Moran', null, 'luism1010@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('454', 'Paola', 'Kp', null, 'pao_kpp@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('455', 'Susan', 'Miguel', null, 'sussan.miguel@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('456', 'Anaís', 'Torrejón', null, 'atcobian@gmail.com', ' 989638108,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('457', 'Kelly', 'Llacqua', null, 'notiene@gmail.com', ' 962952242,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('458', 'Maria', 'Landa', null, 'notiene@gmail.com', ' 999190004,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('459', 'Luis ', 'Bermudez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('460', 'Guido', 'Salas', null, 'notiene@gmail.com', ' 997786411,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('461', 'Cristian', 'Rangel', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('462', 'Ylenia', 'Salazar Pazo', null, 'yle_20@hotmail.com', ' 990775662,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('463', 'Katty Milagros', 'Suárez', null, 'milagrossp@hotmail.es', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('464', 'Ninoska', 'Córdova', null, 'ninoska.cs@gmail.com', ' 944274500,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('465', 'Analí', 'Huamaní', null, 'alex1j@hotmail.com', ' 983441012,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('466', 'Alfonso', 'Floriano', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('467', 'Giancarlo', 'Espinoza', null, 'giancarloet2009@gmail.com', ' 960259957,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('468', 'Ana', 'Iparraguirre', null, 'karina17@msn.com', ' 957284515,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('469', 'María Del Carmen', 'Tatama', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('470', 'Diana', 'Dávila', null, 'anna_cecilia1995@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('471', 'Patricia', 'Dávalos', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('472', 'Jesús', 'Hernández', null, 'jmhernandez04@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('473', 'Karen', 'Bustamente', null, 'kgbustamante@gmail.com', ' 951490249,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('474', 'Eyal', 'Eyal', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('475', 'Silvia', 'Astudillo', null, 'nelly.arbi@hotmail.com', ' 975389936,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('476', 'Inés', 'Castillo', null, 'notiene@gmail.com', null, 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('477', 'Carla', 'Ballivian', null, 'balliviansofia@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('478', 'Jessica', 'Saldarriaga', null, 'jk08_03@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('479', 'Joel Andrade', null, null, null, null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('480', 'alejandro', 'perez', null, 'aperezlozano@hotmail.com', ' 989196638,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('481', 'patricia', 'pareja', null, 'pparej@hotmail.com', ' 999009999,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('482', 'felipe', 'parodi', null, 'felipeparodiduarte@gmail.com', ' 998185102,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('483', 'SOLEDAD ', 'CHOJEIA', null, 'NOTIENE@GMAIL.COM', ' 2834660,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('484', 'VIOLETA', 'MALPARTIDA', null, 'VIODEGILLES@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('485', 'BRENDA', 'CACERES', null, 'BRNDA.28@HOTMAIL.COM', ' 977919118,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('486', 'CESAR', 'MARTINEZ', null, 'ELORIGINAL777@HOTMAIL.COM', ' 996508482,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('487', 'GLADYS', 'MEZA', null, 'LUCILALI6M@GMAIL.COM', ' 982700049,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('488', 'MIRIAM', 'GAMARRA', null, 'SOL_MIRIAM_17@HOTMAIL.COM', ' 958823186,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('489', 'ROMINA', 'POSTIANA', null, 'ROMINA-POSTIANA@HOTMAIL.COM', ' 1554857990,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('490', 'RUBI', 'BASURTO', null, 'RUBI.3_28@HOTMAIL.COM', ' 999963990,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('491', 'ANA', 'YARROW', null, 'yamesones@hotmail.com', ' 996685162,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('492', 'ADRIANA', 'CANTO', null, 'ABCANTO@HOTMAIL.COM', ' 993471922,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('493', 'ROSSANA', 'AMICONE', null, 'ROSSANA_AMICONE@YAHOO.COM', ' 94990090,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('494', 'ALFREDO', 'VALDIVIA', null, 'EDUARDO_200053@HOTMAIL.COM', ' 991303597,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('495', 'MIRIAM', 'PEÑA', null, 'MIRIAM_PIURA@HOTMAIL.COM', ' 989413024,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('496', 'SERGIO ', 'ROMERO', null, 'sergioromeroloyola@hotmail.com', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('497', 'LAURA', 'BARRET', null, 'LNBV70@YAHOO.COM', ' 969335881,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('498', 'PEDRO', 'VERANO', null, 'pveranoc1@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('499', 'ROSSANA ', 'MALDONADO', null, 'rossana.sfm@gmail.com', ' 990999434,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('500', 'MARIA JESUS', 'ROJAS', null, 'mjrojasq@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('501', 'ADA', 'galindo', null, 'aegarique@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('502', 'rosa maria', 'caceres', null, 'rosa_caceresj@hotmail.com', ' 991019307,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('503', 'laura', 'barreto', null, 'notiene@gmail.com', ' 969335881,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('504', 'luaciana', 'monjaras', null, 'lucianaml_96@hotmail.com', ' 958028704,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('505', 'hellen', 'torres', null, 'gpyzeu1_@hotmail.com', ' 961978848,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('506', 'Ivonne', 'figueroa', null, 'ivonne571@hotmail.com', ' 987808728,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('507', 'TAIR', 'TAL', null, 'TAIR777@GMAIL.COM', ' 9000000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('508', 'evelyn', 'valdivia', null, 'EVELYNVALDIVIAT@GMAIL.COM', ' 4694756,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('509', 'JESSICA', 'RIVERA', null, 'YESSYRIVER@HOTMAIL.COM', ' 964168743,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('510', 'NELLY', 'GARCIA', null, 'NG_SMITH10209@HOTMAIL.COM', ' 940144243,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('511', 'marisol', 'vigo', null, 'marisol_vigo@hotmail.com', ' 994621818,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('512', 'INES', 'CASTRO', null, 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('513', 'LESLIE', 'LA ROSA', null, 'NOTIENE@GMAIL.COM', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('514', 'GIL', 'AVITAL', null, 'BMXXWO@WALLA.COM', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('515', 'DESSIRE', 'VIVANCO', null, 'DESSIRE.VIAVANCO@GMAIL.COM', ' 977806492,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('516', 'RUTH', 'NORABUENA', null, 'RUTH_NORABUENA@HOTMAIL.COM', ' 980282849,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('517', 'ingrid', 'sammerfeld', null, 'ingridsommerfeldg@hotmail.com', ' 999975843,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('518', 'fernando', 'roca', null, 'fermed_frm@hotmail.com', ' 959337246,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('519', 'MIRTHA ', 'HEREDIA ', null, 'mirtha_heredia@yahoo.es', ' 900,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('520', 'guillermo ', 'torres', null, 'iridio.pe@gmail.com', ' 952303476,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('521', 'miguel', 'sandoval', null, 'notieene@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('522', 'luis', 'valera', null, 'marli95@hotmail.com', ' 18106117,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('523', 'jose ', 'lozano', null, 'jose.lozano@stracongym.com.pe', ' 989024663,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('524', 'mary', 'morok', null, 'marymorote2@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('525', 'luis', 'alonso', null, 'luis_aznar@yahoo.es', ' 989100552,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('526', 'librado', 'orozco', null, 'libradoo@hotmail.com', ' 964106672,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('527', 'ANAXIMANDRO', 'KAORI', null, 'ANAXIMANDROK@YAHOO.COM', ' 968416688,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('528', 'VERONICA', 'VASQUEZ', null, 'NOTIENE@GMAIL.COM', ' 4379409,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('529', 'MARIA ESTHER', 'TRISTAN', null, 'ALEOS_36@HOTMAIL.COM', ' 983560399,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('530', 'JESUS', 'CACERES', null, 'VENTASCANSAC@GMAIL.COM', ' 943698869,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('531', 'ZEHAVIT', 'SAPIR', null, 'ZEHOUTS57@GMAIL.COM', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('532', 'HAROLD', 'CLAVIJO', null, 'ANCH_HAROLD@HOTMAIL.COM', ' 948662354,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('533', 'ALEXANDRO MARTIN', 'MALDONADO CAYCHO ', null, 'maldonado.alexandro@hotmail.com', ' 96805369,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('534', 'PERCY ', 'MARTINEZ  FLORES ', null, 'josecarlos253@hotmail.com', ' 946381831,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('535', 'RICARDO', 'MARINO LUNA', null, 'LUISMARIO@OUTLOOK.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('536', 'ALEXANDRA CORINA ', 'ARLE ORTIZ', null, 'alecarito@gmail.com', ' 948972107,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('537', 'MILAGROS ', 'VILLEGAS HUAMANRICO ', null, 'milagrosv832@gmail.com', ' 979494044,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('538', 'YAREK', 'CORONEL QUIROS ', null, 'YAREK10@GMAIL.COM', ' 975975652,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('539', 'CARLOS ', 'SOVERO', null, 'carlos.sovero@gmail.com', ' 996394644,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('540', 'RICARDO', 'CORDON', null, 'rcantucin@gmail.com', ' 991272314,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('541', 'MARCOS MARIO ', 'ABAL CUCA', null, 'marcos1074@hotmail.com', ' 999596564,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('542', 'ISABEL ', 'HOLGUIN ALVA', null, 'NOTIENE@HOTMAIL.COM', ' 998100514,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('543', 'ESTER D', 'DE LA CRUZ LLACUA', null, 'NOTIENE@HOTMAIL.COM', ' 910022912,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('544', 'MARIA ISABEL', 'BAMBANIN DE ARGUELLES', null, 'NOTIENE@HOTMAIL.COM', ' 941619516,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('545', 'JHONNY ARMANDO', 'PEÑA MUÑOZ', null, 'NOTIENE@HOTMAIL.COM', ' 987881710,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('546', 'EDINSON ALBERTO', 'GOIN LOPEZ', null, 'edinsongoin@gmail.com', ' 944441441,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('547', 'RENSO', 'RODRIGUEZ FARFAN ', null, 'DOTADITO.95@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('548', 'JOSE  FROILAN', 'YDROGO MEDINA', null, 'rabbyfroy@hotmail.com', ' 948557232,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('549', 'JUAN FRANCISCO ', 'TORRES UGARTE', null, 'juannfra@hotmail.com', ' 993198315,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('550', 'HILMER', 'REYES', null, 'reyeshh@gmail.com', ' 997788850,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('551', 'JIMENA MARITA ', 'GALLARDAY PINEDO', null, 'jimeg87@gmail.com', ' 992136491,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('552', 'carmen', 'barriga', null, 'carmenbarriga@hotmail.com', ' 945964587,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('553', 'teresa', 'borja', null, 'dio_dea@hotmail.com', ' 942477692,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('554', 'fernando', 'vera', null, 'fuera1906@hotmail.com', ' 972290755,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('555', 'wendy', 'trujillo', null, 'wendytrujillo1@gmail.com', ' 995525150,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('556', 'aidee', 'vela', null, 'notiene@gmail.com', ' 4551874,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('557', 'jose ', 'ydrogo', null, 'rabbyfroy@hotmail.com', ' 948557232,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('558', 'esther', 'de la cruz', null, 'notiene@gmail.com', ' 910022912,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('559', 'maria isabel ', 'de arguelles', null, 'notiene@gmail.com', ' 941619516,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('560', 'jhony', 'peña', null, 'noteien@gmail.com', ' 987881710,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('561', 'edinson', 'goin', null, 'edinsongoin@gmail.com', ' 944441441,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('562', 'ronco', 'rodriguez', null, 'dotadito_95@hotmail.com', ' 56,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('563', 'bomono', 'jean pierre', null, 'jeanpierre@yahoo.fr', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('564', 'cesar gonzalo', 'llempen', null, 'lcllempen@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('565', 'coinson', 'reategui', null, 'samirreategui@outlook.com', ' 975425183,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('566', 'MIRIAM', 'RIVERA', null, 'MIRIAM18011999@GMAIL.COM', ' 977112732,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('567', 'KARINA', 'SOTO', null, 'KARINAS781@GMAIL.COM', ' 987389093,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('568', 'CELMITH', 'SORIA', null, 'NOTIENE@GMAIL.COM', ' 997711693,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('569', 'GLORIA', 'RODRIGUEZ', null, 'NOTIENE@GMAIL.COM', ' 500,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('570', 'andreza', 'salgado', null, 'andreza_salgadomeva@gmail.com', ' 34695791929,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('571', 'miguel', 'palacios', null, 'mikebestpe@gmail.com', ' 993133846,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('572', 'jose', 'landa', null, 'americolanda@hotmail.com', ' 999043203,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('573', 'gino', 'bisso', null, 'ginobisso6@gmail.com', ' 946518849,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('574', 'gustavo', 'sanchez', null, 'noquisodar@gmail.com', ' 992992615,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('575', 'judith', 'carranza', null, 'notiene@gmail.com', ' 4034933,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('576', 'AURELIO', 'LIMA', null, 'NOTIENE@GMAIL.COM', ' 967798405,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('577', 'ENMA', 'PEÑA', null, 'SPONDYLUS49@GMAIL.COM', ' 5634573,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('578', 'MILAGROS', 'VALDEZ', null, 'MVALDEZ@HOTMAIL.COM', ' 952648084,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('579', 'LUIS', 'REYNOSO', null, 'LREYNOSOAVALOS@AOL.COM', ' 952398962,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('580', 'FIORELA', 'AVALOS', null, 'FIORE1008.97@GMAIL.COM', ' 965080172,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('581', 'LUDOVICO', 'LEDETTI', null, 'NOSEENTIENDE@HOTMAIL.COM', ' 5413884137370,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('582', 'harol', 'motta', null, 'harol.motta@gmail.com', ' 942757651,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('583', 'christian', 'diaz', null, 'christianarquitec@hotmail.com', ' 994395982,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('584', 'laura', 'marin', null, 'melibea834@hotmail.com', ' 944951568,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('585', 'jinshun', 'chen', null, 'notiene@gmail.com', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('586', 'Ciro', 'delgado', null, 'cirogrande@gmail.com', ' 998286390,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('587', 'carmen lidia', 'solis', null, 'notiene@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('588', 'adriana ', 'amorin', null, 'notiene@gmail.com', ' 932876049,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('589', 'NILDA', 'PASACHE', null, 'NOTIENE@GMAIL.COM', ' 980530376,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('590', 'rita', 'monge', null, 'rhmc1611@gmail.com', ' 984620296,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('591', 'CINDY', 'LOPEZ', null, 'PYACINDY@GMAIL.COM', ' 500,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('592', 'ana', 'chavez', null, 'notiene@gmail.com', ' 2584997,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('593', 'martha', 'moran', null, 'martha_poedisa@hotmail.com', ' 993300925,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('594', 'nilda', 'pasache', null, 'pasache346@hotmail.com', ' 980530376,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('595', 'maria soledad', 'espejo', null, 'maritasol63@gmail.com', ' 969360798,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('596', 'rita', 'monge', null, 'rhmc1611@gmail.com', ' 984620296,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('597', 'edith', 'ostos', null, 'notiene@hotmail.com', ' 2922143,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('598', 'karen', 'barrenal', null, 'junethbarrenall@gmail.com', ' 9000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('599', 'JUAN', 'EZEQUIEL', null, 'EZEQUIELBASUALDOBOX@HOTMAIL.COM', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('600', 'MAGDA', 'UNZUETA', null, 'MACIELU25@HOTMAIL.COM', ' 941105121,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('601', 'GRISELDA', 'ACARO', null, 'GRIACA04@GMAIL.COM', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('602', 'carlos', 'melara', null, 'notiene@gmail.com', ' 17802993735,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('603', 'lourdes', 'flores', null, 'lourdesflores30@yahoo.com', ' 950360573,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('604', 'giussepe', 'mayorga', null, 'gmayorga@xperimentark.com', ' 95225455,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('605', 'marcia', 'cerf', null, 'notiene@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('606', 'enrique', 'ruiz', null, 'eruiz@termosistemas.com.pe', ' 993521021,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('607', 'ricardo', 'santa', null, 'elizabethcruz2671@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('608', 'francisco', 'maradiegue', null, 'ponchomar1965@hotmail.com', ' 970332354,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('609', 'jose', 'acosta', null, 'wariaware@hotmail.com', ' 997965479,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('610', 'renzo', 'cordero', null, 'renzoedu@hotmail.com', ' 992812896,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('611', 'carlos', 'morante', null, 'administracion@cbergruas.com.pe', ' 969634888,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('612', 'lizette', 'lucar', null, 'lizi_2812@hotmail.com', ' 987576797,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('613', 'maria ', 'paz yañez', null, 'notiene@gmail.com', ' 998412741,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('614', 'maycol', 'beltran', null, 'maycol918@hotmail.com', ' 997780611,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('615', 'raul', 'urbina', null, 'ra-urbina@hotmail.com', ' 972835520,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('616', 'frida', 'peralta', null, 'geova_fry@hotmail.com', ' 943428772,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('617', 'gladys', 'acve', null, 'ggacapana@gmail.com', ' 951688394,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('618', 'nelly', 'gonzales', null, 'nellygonzales@hotmail.com', ' 9000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('619', 'evy', 'moreno', null, 'chino_29_99@hotmail.com', ' 900,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('620', 'katterin', 'katterin', null, 'alvarezk492@gmail.com', ' 952541132,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('621', 'martia del rosario', 'caballero', null, 'mariarosario_caballero@hotmail.com', ' 14481148,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('622', 'MAX', 'cabello', null, 'notiene@gmail.com', ' 16024754,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('623', 'maritza', 'muñoz', null, 'lichisucrtuar@hotmail.com', ' 996290019,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('624', 'maria del carmen', 'moro', null, 'notiene@gmail.com', ' 999958064,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('625', 'MARIA SOLEDAD', 'ROJAS', null, 'maritasol63@gmail.com', ' 969360798,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('626', 'jocelyn', 'espejo', null, 'jocelyn.xespejo@gmail.com', ' 969360798,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('627', 'rosa', 'salazar', null, 'amelia.pita15@gmail.com', ' 996712087,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('628', 'keiny', 'perez', null, 'kperez752@hotmail.com', ' 965744895,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('629', 'cesar', 'miranda', null, 'cmiranda@gmail.com', ' 945449292,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('630', 'graciela', 'bendezu', null, 'gbendezuedceisa@gmail.com', ' 980764155,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('631', 'david', 'duarez', null, 'david_alvarez@hotmail.com', ' 942774118,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('632', 'sara', 'zarate', null, 'zara_zarate@yahoo.es', ' 984427239,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('633', 'vilma', 'montañez', null, 'vmontanez@hotmail.com', ' 996994696,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('634', 'evelyn ', 'valega', null, 'evelynvalega@gmail.com', ' 993634403,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('635', 'martin ', 'ARTEAGA', null, 'DAVIDARTEGADA79@HOTMAIL.COM', ' 969342799,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('636', 'ROY', 'MENDOZA', null, 'NOTIENE@GMAIL.COM', ' 980434134,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('637', 'SOMPETCH', 'BUSTINZA', null, 'PIMPUNDEBUS@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('638', 'AMA', 'AN', null, '110864330@QQ.COM', ' 932144237,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('639', 'JUAN MANUEL', 'SALAZAR GONZALEZ', null, 'JUAN-M.SALAZAR@HOTMAIL.COM', ' 989211232,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('640', 'DOUG', 'GOODDRIFGE', null, 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('641', 'NOONETE', 'COODRIDGE', null, 'NPOWERGOODRIDGE@YAHOO.COM', ' 18325236040,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('642', 'NILDA', 'PASACHE', null, 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('643', 'FRANCISCO', 'MADARIEGUE', null, 'FRANCISCOM@GMAIL.COM', ' 970332354,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('644', 'WASHINGTON', 'MONTALVO', null, 'montalvo_ingenieros@yahoo.es', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('645', 'LINO', 'VALERO', null, 'linovaleromontesinos@yahoo.es', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('646', 'ROSALIA', 'VILLANUEVA', null, 'JOHANAVILLANUEVAYAPVEA@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('647', 'NHIKOLE', 'CHAVEZ', null, 'ENEACHEKA@GMAIL.COM', ' 986167895,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('648', 'hecto', 'parodi', null, 'hector.parodi2@gmail.com', ' 900,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('649', 'leda ', 'de regalado', null, 'lerota107@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('650', 'ursula ', 'salazar', null, 'ursiandreas@yahoo.com', ' 945500016,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('651', 'mariela', 'ramos leon', null, 'mariela_ramos17@hotmail.com', ' 958335652,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('652', 'sared ', 'moras', null, 'saredmr@outlook.com', ' 943591771,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('653', 'CLORINDA PATRICIA ', 'PAREJA POCCORI', null, 'CPAREJAP@repsol.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('654', 'tito', 'parodi', null, 'hector.parodi2@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('655', 'jaison ', 'sovero ', null, 'notiene@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('656', 'jorge ', 'molina', null, 'jmolina@ethnicperu.com', ' 987944222,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('657', 'fernando ', 'yataco advincula ', null, 'fernando_ing18@hotmail.com', ' 997731150,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('658', 'miguel ', 'cruzado morales ', null, 'iridio.pe@gmail.com', ' 952303476,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('659', 'francisco', 'centurion', null, 'fcenturion@gmail.com', ' 955976214,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('660', 'marcos', 'mendoza', null, '0010c@gmail.com', ' 946538971,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('661', 'ines', 'rojas', null, 'ines_marcela@hotmail.com', ' 997889661,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('662', 'NICOLAS', 'CASTRO', null, 'NICO2015_CJ@HOTMAIL.COM', ' 984112223,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('663', 'ZORCA', 'GARCES', null, 'zgarces@pandero.com.pe', ' 6191200,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('664', 'vcarla', 'garcia', null, 'cigg1@hotmail.com', ' 956393760,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('665', 'julia', 'torres', null, 'bell2048@hotmail.com', ' 998011957,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('666', 'uriel', 'flores', null, 'u_florescam@gmail.com', ' 5255400222286,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('667', 'elisa', 'elisa', null, 'prgd02oversluijs@hotmail.com', ' 942626330,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('668', 'jenny', 'chavez', null, 'jchavezand@hotmail.com', ' 986623389,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('669', 'stephen', 'foley', null, 'stephenfoley31@hotmail.com', ' 980667729,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('670', 'magda', 'camacho', null, 'magdacct@hotmail.com', ' 999023166,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('671', 'gerald', 'sipira', null, 'gerald_179@hotmail.com', ' 992832132,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('672', 'ademir', 'del aguila', null, 'ademir26269@gmail.com', ' 984244084,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('673', 'gloria', 'ormeño', null, 'gloria29052009@gmail.com', ' 995379519,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('674', 'maria ', 'calderon', null, 'marycalderon@hotmail.com', ' 944412320,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('675', 'RAQUEL', 'MOROTE', null, 'RACHELMOROTE@HOTMAIL.COM', ' 982162943,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('676', 'ERNESTO', 'CABRERA', null, 'ELGABO111@HOTMAIL.COM', ' 987207929,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('677', 'bertha', 'cesa', null, 'notiene@gmail.com', ' 931451656,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('678', 'victoria', 'montero', null, 'mavimaco13@gmail.com', ' 9100000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('679', 'neptali', 'ccoyo', null, 'mirian.yul9525@gmail.com', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('680', 'jefrey', 'larios', null, 'katerinadelana@hotmail.com', ' 90000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('681', 'RICARDO', 'CUADRADO', null, 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('682', 'JUAN', 'BOCANEGRA', null, 'JUANBOCA09@GMAIL.COM', ' 989677999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('683', 'ALFREDO', 'BENDEZU', null, 'BENDEZU.ALFREDO@OUTLOOK.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('684', 'MARTHA', 'MORAN', null, 'MARTHA.MORAN@GMAIL.COM', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('685', 'JULIO', 'MORA', null, 'JMORALARREGOLA@GMAIL.COM', ' 990850877,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('686', 'YULY', 'CABRERA', null, 'YMARGOTH@GMAIL.COM', ' 995115167,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('687', 'TOMAS DE AQUINO', 'ARMAS ESPIRITU', null, 'CORREO@AYOARMAS.COM', ' 981035772,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('688', 'magda', 'avila', null, 'magdaaviso22@hotmail.com', ' 997712428,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('689', 'bertha ', 'esquen', null, 'bertha.esquen2016@dot.com', ' 993139912,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('690', 'jorge ', 'molina', null, 'jmolina@casadelsolhotels.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('691', 'josefina ', 'camargo', null, 'gaby2009Z@hotmail.com', ' 9000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('692', 'edgardo', 'gonzales', null, 'notiene@gmail.com', ' 989174675,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('693', 'luciana', 'davalos', null, 'notiene@gmail.com', ' 940885616,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('694', 'gloria', 'veliz', null, 'glob@gmail.com', ' 949700788,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('695', 'ANIBAL', 'BEJAR', null, 'ABEJAR@AO.COM', ' 900000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('696', 'rosario', 'rivas', null, 'gcomercial@rivcosac.com', ' 954106892,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('697', 'marysabel', 'godoy', null, 'mgodoya07@gmail.com', ' 995595989,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('698', 'valentina', 'hurtado', null, 'valentina10@gmail.com', ' 90000,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('699', 'dennis ', 'aguirre', null, 'daguirre@mepcom.pe', ' 983812151,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('700', 'maya', 'fernandez', null, 'marayfe@gmail.com', ' 956150378,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('701', 'maritza', 'bernal', null, 'maritzabernalportaro@gmail.com', ' 963738494,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('702', 'guillermoi', 'torres', null, 'iridio.pe@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('703', 'leonardo', 'lanzani', null, 'noteiene@gmail.com', ' 900001,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('704', 'heliodoro ', 'fernandez', null, 'avicolarositasac@gmail.com', ' 9000,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('705', 'fernando', 'ochoa', null, 'ochoavela@yahoo.es', ' 900,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('706', 'jorge', 'enrique', null, 'notiene@gmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('707', 'cecilia', 'rocca', null, 'cecyrocca@hotmail.com', ' 981598782,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('708', 'manuel ', 'vallejos', null, 'brunovallejos@hotmail.com', ' 900,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('709', 'lourdes', 'ferre', null, 'ferrelourdes@hotmail.com', ' 94629773,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('710', 'jose', 'torres', null, 'joseluis041274@hotmail.com', ' 991771326,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('711', 'victor', 'perea', null, 'vperea@hotmail.com', ' 996599191,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('712', 'maria', 'estombelo', null, 'nomedejo@gmail.com', ' 991708654,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('713', 'pamela', 'tomoro', null, 'pame181@hotmail.com', ' 945503395,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('714', 'miguel', 'uceda', null, 'miguelucesa95@gmail.com', ' 933084652,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('715', 'ingrid', 'palomino', null, 'impa8@hotmail.com', ' 2820032,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('716', 'valentina', 'carazas', null, 'notiene@gmail.com', ' 988952802,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('717', 'clara', 'rodrigo', null, 'notiene@gmail.com', ' 4450366,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('718', 'mariella', 'gordillo', null, 'mgordillo@outlook.com', ' 998550927,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('719', 'jazmin', 'soto', null, 'Jazmin.soto@rimac.com.pe', ' 954760412,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('720', 'james', 'rios', null, 'riosuni14@gmail.com', ' 900,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('721', 'Rocsana', 'Dueñas', null, 'rocsanadu@yahoo.com', ' 9000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('722', 'melody', 'candela', null, 'melodia1903@gmail.com', ' 900,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('723', 'myli', 'quispe', null, 'Myliquispe@gmail.com', ' 9000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('724', 'pilar', 'deza', null, 'Pdeza25@gmail.com', ' 9000,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('725', 'Ángelo Martinez', null, null, null, null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('726', 'Julio', 'Medina ', null, 'nodejo@punto.com', ' 999634565,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('727', 'Laura', 'Arrese ', null, 'notiene@notiene.com', ' 2783228,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('728', 'Monica', 'Zegarra', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('729', 'Anette De Pomar', 'De Pomar', null, 'nodejo@tikatravel.pe', ' 9961128388,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('730', 'ANTONIO', 'CEREZO', null, 'NOTINE@1.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('731', 'JULI', 'MEDINA', null, 'JUMPAL66@HOTMAIL.COM', ' 990074709,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('732', 'monica', 'zegarra', null, 'notine@1.com', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('733', 'ISABEL', 'MORALES DE MUÑOZ', null, 'ISABELMV8@HOTMAIL.COM', ' 4698039,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('734', 'REYNALDO', 'MENDOZA', null, 'NO@TIENE.COM', ' 993437975,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('735', 'AUGUSTO', 'ROSAS', null, 'CUTO69@HOTMAIL.COM', ' 991267144,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('736', 'MARTHA', 'DEZA DE QUIÑO', null, 'NO@TIENE.COM', ' 992730246,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('737', 'ROSA', 'SEGURA ESPINOZA', null, 'ROSASEGURA@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('738', 'MIGUEL', 'QUIROZ', null, 'NO@TIENE.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('739', 'RICARDO', 'CAMPOS', null, 'RZ309@HOTMAIL.COM', ' 997094271,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('740', 'ELIZABETH ', 'SALAZAR', null, 'ELIZABETH_SALAZAR2009@HOTMAIL.COM', ' 987126114,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('741', 'MANUEL', 'RIVAS ANGULO', null, 'NO@TIENE.COM', ' 996487596,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('742', 'LARA', '-', null, 'NO@TIENE.COM', ' 4827640,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('743', 'JONATHAN', 'ROCA', null, 'JOHNATAN8105@GMAIL.COM', ' 954659081,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('744', 'Martina', 'Marcacuzco', null, 'martinamar1497@gmail.com', ' 982708718,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('745', 'Alejandra', 'Abad', null, 'alexdratecnol@gmail.com', ' 965654654,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('746', 'Katty', 'Espinoza', null, 'kathy_e22@hotmail.com', ' 94481958,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('747', 'Carlos', 'Arevalo', null, 'acarlosignacioarevalo@gmail.com', '+573235110126', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('748', 'Jenny ', 'Aguinaga', null, 'jenny_aguimaga.1973@gmail.com', ' 991835515,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('749', 'Jorge', 'Ayala', null, 'jlayalamedina@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('750', 'Raul', 'Salcedo', null, 'rsalcedo@balance.com.pe', ' 998311715,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('751', 'Gerardo', 'Espinoza', null, 'greb1107@gmail.com', ' 986973118,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('752', 'Julbia', 'Villafuerte', null, 'notine@punto.om', ' 989503576,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('753', 'Norma ', 'Olano', null, 'notien@punto.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('754', 'Pamela ', 'Soto', null, 'pandrea55@hotmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('755', 'Laura ', 'Mesarina', null, 'laura.mesarina@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('756', 'kassandra ', 'Coriat', null, 'kareb0727@gmail.com', null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('757', 'Alejandra', 'Mujica', null, 'amujicad15@hotmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('758', 'Paul ', 'Portuno', null, 'portunoseguros@gmail.com', ' 999462550,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('759', 'Israel ', 'Heitner', null, 'mdfch02@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('760', 'Eduardo ', 'Sattui', null, 'notiene@ount.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('761', 'Violeta ', 'Saavedra', null, 'violeta.saavedra@essalud.gob.pe', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('762', 'Nayvi', 'Pablo Bruno', null, 'naydipablobruno@gmail.com', ' 985406649,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('763', 'Nelly ', 'Ortega', null, 'nellyortega_paraiso@hotmail.com', ' 943710828,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('764', 'NO DEJO ', 'nodejo', null, 'pecopsico@yahoo.es', ' 987459926,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('765', 'Norma', 'Olano', null, 'nodejo@nodejo.com', ' 923675152,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('766', 'Jose ', 'Alcantara', null, 'joseyeam@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('767', 'Susana', 'Torres', null, 'aledany24@yahoo.com.mx', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('768', 'Rommy ', 'Diaz', null, 'romdiag@hotmail.com', ' 943526873,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('769', 'Diego', 'Sanes', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('770', 'Maria ', 'Carmona', null, 'mary8625@hotmail.com', ' 970466917,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('771', 'Mario', 'Cano', null, 'mario19007@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('772', 'Eric ', 'Llanos', null, 'ernillaso@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('773', 'Cinthya', 'Yaya', null, 'charito_1906@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('774', 'Sixto', 'Ruiz', null, 'sixman@gmail.com', null, 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('775', 'Guisela ', 'Haltenhof', null, 'ghaltenholf@yahoo.com', ' 986670283,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('776', 'Lorena ', 'Alzamora ', null, 'alzamora.lore@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('777', 'JHOLIN', 'LUCAS', null, 'jholin.9@gmail.com', ' 928777514,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('778', 'Marisela ', 'Gutierrez', null, 'maricela.gutierez@brokermgp.com', ' 964663416,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('779', 'Marcela ', 'Silva', null, 'marcil_13@yahoo.com', ' 993456631,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('780', 'Cecilia', 'Tejada ', null, 'ceciliatejada20@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('781', 'Astred', 'Meza', null, 'nicamc1561@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('782', 'Elizabeth ', 'Roncagliolo', null, 'carlos.jauregui.r@hotmail.com', ' 993929307,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('783', 'Grabriela ', 'Drumond', null, 'nidejo@noesdeperu.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('784', 'Jose', 'Fernadez', null, 'nodejo@notiene.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('785', 'Gloria', 'Caso', null, 'notiene@paxsviveenroma.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('786', 'JORGE', 'GONZALES', null, 'carnavalbandashow@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('787', 'ROSA', 'ARCE', null, 'tico_box@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('788', 'Claudio', 'Siesquen', null, 'claudia.siesquen@pucp.pe', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('789', 'Melisa ', 'Cardenas', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('790', 'ELIZABETH RONCAGLIOLO', 'RONCAGLIOLO', null, 'carlos.jauregui.r@hotmail.com', ' 993929307,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('791', 'Paola ', 'Caldas', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('792', 'Jose ', 'Cerron', null, 'joseluisdaleu@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('793', 'Alejandra ', 'no dejo', null, 'nodejo@masnada.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('794', 'Esteban ', 'Gomez', null, 'gomezstv@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('795', 'Jaqueline', 'Flores', null, 'jackfloc3@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('796', 'Luis', 'Lengua', null, 'lel23@hotmail.com', ' 981178905,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('797', 'Valeria', 'Cardenas', null, 'ninaarribas25@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('798', 'Teodoro', 'Moreano', null, 'fideliamoreano@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('799', 'Angel', 'Espinoza ', null, 'afaleiz@hotmail.com', ' 992959426,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('800', 'Maribel', 'Bustinza', null, 'maribj59@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('801', 'Narumi ', 'Hernandez', null, 'narumi_ha@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('802', 'Jose ', 'Barrantes', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('803', 'Oscar', 'Mosquera', null, 'cinthyamosquera22@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('804', 'Kate', 'Marmolejo', null, 'kateticse@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('805', 'Richard', 'Flores', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('806', 'milton ', 'machado ', null, 'niltonsiva68.nmds@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('807', 'JUAN ', 'INE  JARAMILLO', null, 'juanja_j3@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('808', 'SILVIA', 'ALBARES ', null, 'silviaalba@yahoo.com', ' 7198460,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('809', 'BETZABE', 'AZA', null, 'betzabeaza@yahoo.es', ' 994708637,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('810', 'BERLY ', 'PEZO RIVAS ', null, 'BERLIN_CHARA@HOTMAIL.COM', ' 988465712,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('811', 'ALEXANDRA ', 'ZAPATA ', null, 'SIDANDALEX@GMAIL.COM', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('812', 'ROMULO  EDMUNDO', 'MARTINEZ', null, 'margarondinel@yahoo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('813', 'WENDY ', 'PEREZ', null, 'wpgrecia@gmail.com', ' 982548710,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('814', 'EDUARDO', 'MOYANO', null, 'calanmaqui@hotmail.com', ' 954779105,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('815', 'BLANCA ', 'DARLE', null, 'bdarle9@gmail.com', ' 7191460,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('816', 'ROSA', 'GARCIA ', null, 'esteralvarado@hotmail.com', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('817', 'Haide Cerna ', 'Cerna', null, 'nodejo@tikatravel.pe', ' 945261204,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('818', 'Jose Miguel', 'Lemus ', null, 'jmlemusc@yahoo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('819', 'Beatriz ', 'Shimburkuro', null, 'nodio@tikatravel.pe', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('820', 'Eugenia', 'Guevara', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('821', 'Haide', 'Cerna', null, 'natalia_vm15@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('822', 'Maria / Alberto', 'Palacios / Vilela', null, 'vilela.juan0@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('823', 'Francisca', 'Luque', null, 'nodejo@tikatarvel.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('824', 'Lucy', 'Barrientes', null, 'notiene@gmail.com', ' 986640908,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('825', 'Martin', 'Rodriguez', null, 'martin.rodriguez@outlook.com', ' 986747033,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('826', 'Armando ', 'Castillo', null, 'armando2c@yahoo.com.ar', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('827', 'Alcides', 'Soto', null, 'notiene@gmail.com', ' 27351205,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('828', 'Belaunde', 'Flores', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('829', 'Elena', 'Rodriguez', null, 'elena_ropdriguez@gmail.com', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('830', 'Andrea', 'Garcia', null, 'andrea_25992@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('831', 'Rosa', 'Riquelme', null, 'rosa.riquelme@hotmail.com', ' 999366588,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('832', 'Graciela', 'Zuñiga', null, 'notiene@gmail.com', ' 4832385,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('833', 'Amanda', '.', null, 'naco318@aol.com', ' 994423626,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('834', 'Nieves', 'Zavaleta', null, 'notiene@gmail.com', ' 4738676,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('835', 'Giancarlo', '.', null, 'notiene@gmail.com', ' 954779805,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('836', 'Mercedes', 'Piscano', null, 'mercedespiscano@gmail.com', ' 941460995,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('837', 'Sergio', 'Gurgel', null, 'notiene@gmail.com', ' 993021055,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('838', 'Betsabet ', 'AZA', null, 'betzabetaza@yahoo.es', ' 994708637,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('839', 'Alcides ', 'Soto', null, 'notiene@notiene.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('840', 'Armando ', 'Castillo', null, 'nodejaron@turistasdepaso.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('841', 'Nathalie', 'Ramirez', null, 'nathali.ramirez.tomas@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('842', 'Pamela', 'Chacaltana', null, 'kpevas1419@hotmail.com', ' 940037891,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('843', 'Ruth', 'Elias', null, 'notiene@gmail.com', ' 934595635,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('844', 'Luz', 'Rey', null, 'roma1713@hotmail.com', ' 977177563,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('845', 'Ivan', 'Gomez', null, 'ivangomez333@hotmail.com', ' 945560140,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('846', 'Mary', 'Sue', null, 'marysuepinzas@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('847', 'Victorie', 'Kloster', null, 'viquii.kloster@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('848', 'Maritza', 'Bustamente', null, 'maritza_200850@yahoo.com', ' 994715124,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('849', 'Angie', 'Vargas', null, 'vargas.angied@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('850', 'Patricia', 'Pandero', null, 'notiene@gmail.com', ' 954779807,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('851', 'YENNY', 'HERRERA', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('852', 'Maria Betzabe', 'Aza Castillo', null, 'betzabeaza@yahoo.es', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('853', 'Patricia ', 'Lancho ', null, 'nodejo@tikatravel.pe', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('854', 'Gloria ', 'Beteta', null, 'al_beteta@hotmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('855', 'Christian ', 'Valdebenito', null, 'nodejo@estadepaso.pe', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('856', 'Maria', 'Macedo', null, '0706kkari@hotmail.com', ' 999995061,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('857', 'Nelly', 'Caceres', null, 'notiene@gmail.com', ' 977177563,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('858', 'Richard', 'Flores', null, 'notiene@gmail.com', ' 999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('859', 'Isabel', 'Blastecone', null, 'nicolbes_96@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('860', 'Leandro', 'Monteiro', null, 'defiqueiredo@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('861', 'Patricia', 'Leandro', null, 'notiene@gmail.com', ' 954779807,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('862', 'Miguel', 'Salazar', null, 'arcangels_17@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('863', 'Gloria ', 'Beteta ', null, 'al_beteta@gmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('864', 'Silvia', 'Bequet ', null, 'roclifama@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('865', 'Alfredo', 'Altuna', null, 'aaltuna@geoinsitu.com.pe', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('866', 'Nelida ', 'De Enrique Maravi', null, 'nodejo@nodejo.com', ' 999639403,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('867', 'Gina', 'Gonzales', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('868', 'Cesar ', 'Rossi', null, 'cesar73pe@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('869', 'Cesar Rossi ', 'Rossi ', null, 'NODEJO@NODEJO.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('870', 'Maria ', 'Galindo', null, 'mgalindolazo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('871', 'Christian ', 'Pezo', null, 'pezo.reategui.christian@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('872', 'Saul', 'Perez', null, 'turismosurcosurco@hotmail.com', ' 987989491,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('873', 'Luz ', 'Marilanda ', null, 'eliastk@gmail.com', ' 3106358889,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('874', 'Yolanda', 'Kiroka', null, 'yqnegocios@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('875', 'PATRICIA ', 'LANCHO', null, 'epatricialancho@hotmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('876', 'Evelyn ', 'Quiroz', null, 'elenaquiroz22@hotmail.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('877', 'Hilda ', 'Campos', null, 'hildacampos1905@gmail.com', ' 94079825,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('878', 'Zulma', 'Montalvo', null, 'zmontalvo@outlook.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('879', 'sara', 'Giraldo', null, 'nodejo@nodejo.com', ' 994200371,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('880', 'Anita del Carmen', 'Mendoza', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('881', 'Bettty', 'Rojas', null, 'mbettyrojas@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('882', 'Jennifer', 'Polyanch', null, 'jcecilia13@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('883', 'Isabel ', 'Mayo', null, 'Isabelmv8@hotmail.com', ' 4698039,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('884', 'Rosa', 'Aguero', null, 'xixel@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('885', 'Rosa', 'Bustinza', null, 'keirey_1@hotmail.com', ' 987931580,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('886', 'Silvia ', 'Olasabal', null, 'silviagp71@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('887', 'Betty ', 'Diaz', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('888', 'Patricia', 'Morales', null, 'patric_mora@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('889', 'Kathya', 'Lopez', null, 'Katya.lopez.suni@hotmail.com', ' 940150717,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('890', 'Nivardo', 'Banueta', null, 'perufertil@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('891', 'Yolanda ', 'Davila', null, 'yolandapte@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('892', 'Christina', 'Garcia Altamirano', null, 'christina@querubi.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('893', 'Elizabeth', 'Mavila', null, 'elimavila@hotmail.com', ' 982091946,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('894', 'Sergio', 'Frida', null, 'sergio.frida@sergiofrida.com', ' 995028345,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('895', 'Flor', 'Ticlias', null, 'flor@hotmail.com', ' 951713195,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('896', 'Beatriz', 'Saldaña', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('897', 'Cesar ', 'Rossi', null, 'cesarrossi@hotmail.com', ' 987291179,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('898', 'Alfredo', 'Antuna', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('899', 'Luis', 'Mesarina', null, 'nodejo@nodejo.com', ' 4689388,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('900', 'Ivon', 'Saavedra', null, 'Ivonsaavedravitteri@gmail.com', ' 936935744,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('901', 'Luis ', 'Paredes', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('902', 'Gustavo', 'Prieto', null, 'guspri_30@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('903', 'Bruno', 'Benavides', null, 'nodejo@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('904', 'Anabell', 'Orbegozo', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('905', 'Carmela ', 'Calezas', null, 'nodejo@nodejo.com', ' 958427502,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('906', 'Ana', 'wu', null, 'asst.1.pe@yidacep.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('907', 'Francisco', 'Sanchez', null, 'franciscobuendiasanchez@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('908', 'MARINA', 'PEREZ', null, 'marinaolodi2411@yahoo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('909', 'MARTHA', 'ORELLANA', null, 'NODEJO@NODEJO.COM', ' 995557461,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('910', 'ZAKARIA', 'TAGLDIN', null, 'kmohamed121@gmail.com', ' 963263274,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('911', 'Benavides', 'Leonardo', null, 'nodejo@nodejo.com', null, 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('912', 'NATIVIDAD', 'SOSA', null, 'NODEJO@NODEJO.COM', ' 5847587,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('913', 'Sulca ', 'Milka', null, 'milcasulcaaguilar@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('914', 'Evelyn', 'Castillo', null, 'visualfivez@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('915', 'Jose ', 'Cerron', null, 'nodejo@nodejo.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('916', 'Jimena ', 'Abanto', null, 'jimenaabanto73@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('917', 'Janette', 'Arevalo', null, 'nodejo@nodejo.com', ' 962644371,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('918', 'Ivan ', 'Jordan', null, 'ivanjordanp10@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('919', 'Carla ', 'Cardenas', null, 'carlacardenas23@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('920', 'Silvia ', 'Ihana del Castillo ', null, 'silviadelcastillo28@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('921', 'Kimberly', 'Morales ', null, 'morales.cabrejos@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('922', 'Rosana', 'Monje ', null, 'monge_patty@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('923', 'Liz ', 'Huerta ', null, 'lizsolledadhb@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('924', 'Segundina ', 'Chipa', null, 'nodejo@nodejo.com', ' 5831251,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('925', 'Shakira ', 'Quintanilla', null, 'shakira0704@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('926', 'Jordi Vidal', null, null, null, null, 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('927', 'Rosa ', 'Centurion', null, 'rosacenturion@hotmail.com', ' 999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('928', 'Kelly ', 'Aliaga ', null, 'kelly@hotmail.com', ' 9999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('929', 'JOSE', 'TRUJILLANO', null, 'josetrujillano2009@hotmail.com', ' 999999,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('930', 'NO ', 'APARECE NOMBRES', null, 'mochaescorpio@hotmail.com', ' 999999999,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('931', 'INES', 'CASTRO', null, 'icastro@cienxcientosur.com', ' 999999999,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('932', 'JANETH', 'ALIAGA', null, 'Jaliaga@gmail.com', ' 999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('933', 'JUAN CARLOS ', 'UGARELLI', null, 'juancarlosugarelli@gmail.com', ' 999999999999999,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('934', 'MORIA', 'LENGUA', null, 'lelc23@hotmail.com', ' 993006233,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('935', 'FREDY', 'GOMEZ HONORIO', null, 'fredy_rgh@hotmail.com', ' 996972303,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('936', 'ROXANA', 'CHAIHUAQUE', null, 'flordearena841@hotmail.com', ' 961048133,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('937', 'JOHANA', 'FRANCIS', null, 'nodejo@gmail.com', ' 9999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('938', 'miriam ', 'AVALOS', null, 'mavalos@gmail.com', ' 99999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('939', 'KARINA', 'POLAK', null, 'karinapolak@yahoo.es', ' 99999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('940', 'CECILIA', 'ESPINAL', null, 'cecyech@hotmail.com', ' 968989816,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('941', 'nanny|', 'MANTURANO', null, 'n.manturano@necsia.pe', ' 9999999999999,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('942', 'CLAUDIO ', 'ARCE', null, 'carce@gmail.com', ' 99999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('943', 'PEDRO', 'MURILLO', null, null, ' 999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('944', 'pablo', 'sol sol', null, 'paulo_sou@outlook.com', ' 99999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('945', 'HAEDY', 'NO DIJO', null, 'haedymon@hotmail.com', ' 99999999999,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('946', 'RENZO ', 'MIRANDA', null, 'renzo.miranda080393@gmail.com', ' 99999999,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('947', 'MARCO', 'BELLINI', null, 'mbellini@gmail.com', ' 9999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('948', 'Estefano', 'Reynoso', null, 'Nodejomail@gmail.com', ' 9999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('949', 'MARINA', 'CAYO', null, 'MCAYO@outlook.es', ' 99999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('950', 'Flucker ', 'Pachauri', null, 'fpflucker@icloud.com', ' 99999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('951', 'Claudia ', 'Lazaro', null, 'nodejomail@gmail.com', ' 99999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('952', 'Leyla', 'Santos', null, 'lali-scn@hotmail.com', ' 99999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('953', 'argentinos', 'mochileros', null, 'nodejaron@gmail.com', ' 99999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('954', 'RICARDO', 'CUÑAT', null, 'nodejosumail@gmail.com', ' 999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('955', 'ROSSANA', 'PODESTA', null, 'rosabanana@hotmail.com', ' 99999999,0', 'Televisión', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('956', 'CLAUDIA', 'VILLAR', null, 'clau.villar07@hotmail.com', ' 99999999,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('957', 'ISABEL', 'CHIROQUE', null, 'ichiroque@notariatambini.com', ' 999999999,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('958', 'ROCIO ', 'AKAJOSI', null, 'rocioakajosi@hotmail.com', ' 9999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('959', 'William ', 'Philip', null, 'Nodejomail@gmail.com', ' 2249878,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('960', 'alisson', 'lopez', null, 'llopez@gmail.com', ' 999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('961', 'MARCELA', 'CASTRO', null, 'marcelacastro@hotmail.com', ' 99999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('962', 'marco', 'galvez', null, 'nodjeomail@gmail.com', ' 9999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('963', 'nodejo', 'extranjero', null, '1@gmail.com', ' 9999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('964', 'Roxana', 'Repetto', null, 'roxrepetto@yahoo.com', ' 9999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('965', 'EFRAIN ', 'POLAR', null, null, '*99999999999', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('966', 'DORA ', 'HURTADO', null, 'rocioakajosi@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('967', 'Ciro', 'Wong', null, '-', ' 7190583,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('968', 'ANA MARIA', 'RIOS', null, 'nishila_amr@hotmail.com', ' 99999999999,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('969', 'ROXANA', 'REPETTO', null, 'roxrepetto@yahoo.com', ' 999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('970', 'fiorella', 'Canta', null, 'fiorellacanta1@gmail.com', ' 99999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('971', 'SEÑORA', 'X', null, 'nodejomail@gmail.com', ' 999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('972', 'GISELLE', 'GARCIA', null, 'giselle.garcia@telefonica.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('973', 'RAUL', 'MENDOZA', null, 'raulmendozall@yahoo.es', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('974', 'CHICOS', 'DE LA FAP', null, 'nodejaroncorreo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('975', 'BRIGIT ', 'NUNEZ', null, 'angelvegasiu@hotmail.com', ' 953721052,0', 'Facebook', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('976', 'LUZMILA', 'MEDINA VIUDA DE CRUZADO', null, 'ecruzadom@hotmail.com', ' 994560808,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('977', 'ROSARIO ', 'CASTRO', null, 'nodejo@gmail.com', ' 99999999999999,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('978', 'adolfi', 'NIÑO DE GUZMAN', null, 'tandgagio@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('979', 'mochilero', ' 1,0', null, 'notdejo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('980', 'JULIA', 'TAPIA', null, 'jtapia@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('981', 'CELIA ', 'CHAMORRO', null, 'cchamorro@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('982', 'MILAGROS ', 'VALER', null, 'nodejomail@gmail.com', null, 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('983', 'SANDRA', 'ELIAS', null, 'sandraelias@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('984', 'rosario ', 'castro', null, 'NOTIENEMAIL@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('985', 'lizeth', 'Sosa', null, 'niquizodejar@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('986', 'GIANNINA', 'V', null, 'gnianina@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('987', 'DANTE', 'IZAGUIRRE', null, 'dnte@msn.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('988', 'MYRNA', 'RODRIGUEZ', null, 'myrnarodriguez@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('989', 'janeeth', 'Moscoso', null, 'janeethmoscoso@yahoo.com.pe', ' 995017912,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('990', 'JUAN ', 'SALINAS', null, 'jusalinas71@hotmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('991', 'ALFREDO', 'BELTRAN', null, 'beltranalfredo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('992', 'JUAN', 'CASTRO', null, 'jcastro@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('993', 'LUCIA BETSABE', 'GASTULO LAVADO', null, 'lgastulo@yahoo.es', ' 998594147,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('994', 'VICTORIA ', 'CRUZ', null, 'vie_cruzbena@yahoo.com', ' 997578160,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('995', 'PAMELA', 'CANO', null, 'pamelacano@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('996', 'ARWA', 'A', null, 'nodejo@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('997', 'AUGUSTO', 'AGUIRRE LA ROSA', null, 'otsugua612@gmail.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('998', 'GERARDO ', 'CACCHA', null, 'notienemailtodoporfacebook@gmaill.com', null, 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('999', 'MONICA', 'QUESADA', null, 'mlqp556664@yahoo.es', ' 961608637,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('1000', 'NANCY', 'X', null, 'NANCY1000X@hotmail.com', ' 943520801,0', 'Recomendación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('1001', 'NELLY', 'RIVERA', null, 'ericka.albornoz@hotmail.com', ' 999504077,0', 'Web', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('1002', 'JOSE', 'LOPEZ', null, 'jose.lopez@cresperu.com', ' 980482096,0', 'Correo', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('1003', 'MIGUEL', 'LOSTANAU', null, 'MILOSFU@HOTMAIL.COM', ' 952392433,0', 'Ubicación', null, null, null, '2017-07-05 00:00:00', '2017-05-01 00:00:00', '1', '1', '0');
INSERT INTO `customers` VALUES ('1004', 'EVELYN', ' 1,0', null, 'evee.11@hotmail.com', ' 1,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1005', 'MARIANELA', ' 1,0', null, 'nodejomail@gmail.com', ' 1,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1006', 'MIGUEL', 'LOSTANAU', null, 'milosfu@hotmail.com', ' 952392433,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1007', 'kitty', 'ALATA LINARES', null, 'kittyalata@gmail.com', ' 976111387,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1008', 'MARIELA ', 'ANDIA', null, 'mrelnda@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1009', 'stefany', 'NODEJO', null, 'estef.r20@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1010', 'GIUSEPE', 'SANTINI', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1011', 'ana ', 'ESTRADA', null, 'nodejamail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1012', 'ROSVITA', 'DEL CASTILLO', null, 'rosvitadelc@hotmail.com', ' 983686801,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1013', 'GONZALO ', 'SIU X04', null, 'gonzalosiu@yahoo.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1014', 'MILAGROS', 'X', null, 'nodejmail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1015', 'MARIA ELENA', 'ARCINIEGA', null, 'NODEJOMAIL@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1016', 'betsabe ', 'GARAY', null, 'nodejomail@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1017', 'paulina', 'j', null, 'NODEJOMAIL@GMAIL.COM', ' 99999,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1018', 'narciso', 'Garcia', null, 'narcisogm30@gmail.com', ' 998000191,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1019', 'JOSE', 'NO DEJO ', null, 'jcentty@yahoo.com', ' 4451048,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1020', 'ANDRES', 'HURTADO', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1021', 'LUIS ', 'DE LA CUBA', null, 'luisdelacuba76@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1022', 'PEDRO', 'MIRANDA', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1023', 'PARROQUIA', 'NUESTRA SENORA', null, 'normarti45@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1024', 'ESTEFANY ', 'FAGIASI', null, 'estfagiasi@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1025', 'VANESSA', 'X', null, 'vanessa@hotmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1026', 'GIOVANA', 'RODRIGUEZ', null, 'giovannarodriguez@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1027', 'javier', 'NAVARRETE', null, 'jnavarrete@eic.edu.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1028', 'narciso ', 'GARCIA', null, 'NARCISOGM30@GMAIL.COM', ' 998000191,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1029', 'DIANA ', 'RODRIGUEZ', null, 'diana.rodriguez@llaviation.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1030', 'CARLOS', 'CHANG', null, 'nanochang@hotmail.com', ' 965399664,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1031', 'LUIS ', 'LENGUA', null, 'lelc23@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1032', 'JULIA', 'TAQUIRI', null, 'julie_marie351@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1033', 'sandra', 'Casilla', null, 'sandratasilla@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1034', 'orlando', 'Rojas', null, 'NODEJOMAIL@GMAIL.COM', ' 2857791,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1035', 'wilmer', 'MARQUEZ', null, 'wilmer-147@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1036', 'Rossy', 'extranjeros', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1037', 'YANET ', 'VILLAMAR DE LINARES', null, 'NODEJOMAIL@GMAIL.COM', ' 974630612,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1038', 'no le tome ', 'datos', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1039', 'PIERRE ', 'ZAVALA', null, 'nodejomail@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1040', 'flor ', 'fuente ', null, 'roxy_arias31@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1041', 'MERCEDES', 'LANDEO', null, 'landeo@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1042', 'cristina', 'luna', null, 'cluna@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1043', 'MIRELLA ', 'ARELLANO', null, 'macneill26@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1044', 'nodejo', 'no dejo', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1045', 'lourdes', 'maguil', null, 'magllu@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1046', 'nodejo', 'extranjera', null, 'nodejo@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1047', 'PIERRE', 'ZAVALA', null, 'myflyca@hotmail.com', ' 953915050,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1048', 'PIXEL ALEJANDRO', 'BINCES', null, 'ccalderon@pixelmedia.com.pe', ' 960911781,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1049', 'ANGELLO', 'RAMIREZ', null, 'angellorm2013@gmail.com', ' 990881681,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1050', 'SIXTO', 'URBANO', null, 'sixtourbano@yahoo.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1051', 'PORFIRIO', 'BONILLA', null, 'nodejosumail@gmail.com', ' 99999,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1052', 'JOSE ', 'QUIJANDRIA', null, 'Jquijandriacuba@gmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1053', 'katia', 'Chavarri ', null, 'katiach13@hotmail.com', ' 969742557,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1054', 'MILAGROS', 'MUÑOZ ORTIZ', null, 'milagro.oz@hotmail.com', ' 929102708,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1055', 'TERESA', 'PEREIRA', null, 'tessi_pereira@hotmail.com', ' 994277191,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1056', 'Aldo', 'Roman', null, 'aldo.roman@altecproject.com', ' 4377005,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1057', 'EDITA ', 'AGUIRRE', null, 'eaguirre66@hotmail.com', ' 968447296,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1058', 'EDMUNGO', 'GARCIA', null, 'edmundogz@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1059', 'JULIA', 'TAQUIRI', null, 'NODEJO@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1060', 'ROSARIO', 'MAYOR', null, 'teresaelizabeth3@hotmail.com', ' 99,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1061', 'milagros', 'muñoz', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1062', 'FERRAN  ', 'FRONTAL', null, 'semeperdiosutarjetita@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1063', 'OSWALDO', 'JIMENEZ', null, 'oswaldojimenez.mves@gmail.com', ' 997566411,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1064', 'PIERRE', 'ZAVALA', null, 'pierrezavala1988@gmail.com', ' 994213954,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1065', 'MERCEDES', 'DE LA TORRE', null, 'MDZ_25@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1066', 'Edmundo Eleazar', ' Garcia Zavaleta', null, 'edmundogz@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1067', 'GRACIELA ', 'ALFARO', null, 'margothaguilar@hotmail.com', ' 964421920,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1068', 'WILLIAM ', 'ASCONA AGUILAR', null, 'williamascona@gmail.com', ' 990608869,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1069', 'MARY', 'GUTIERREZ', null, 'rofisa56@gmail.com', ' 989020207,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1070', 'ROXANA ', 'MONTAYA', null, 'RMONTOYA18@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1071', 'LUZMILA', 'MORALES', null, 'mi_la27@hotmail.com', ' 951291314,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1072', 'EUGENIA', 'RASTA', null, 'nodejo@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1073', 'españoles', 'viejitos', null, 'notienensonviejitos@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1074', 'MARGOTT ', 'ILLESCA', null, 'marrriott18@hotmail.com', ' 3230404,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1075', 'SERGIO', 'ANDRE', null, 'sergioandres2001@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1076', 'DIEGO', 'URCIA', null, 'diegourcia@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1077', 'KAREN ', 'BUSTAMANTE', null, 'kgbustamante@gmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1078', 'Jose', 'Lopez', null, 'jose.lopez@cresperu.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1079', 'Rosales', 'Rosales', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1080', 'chicodesesperado', 'desesperado', null, 'nodejaron@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1081', 'xavier', 'Castillo', null, 'jcast_od@hotmail.com', ' 6106117,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1082', 'Luis', 'Rodríguez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1083', 'Alexandra', 'Melendez', null, 'notiene@gmail.com', ' 952057793,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1084', 'Luis', 'Rodriguez', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1085', 'Edmundo', 'García', null, 'edmundog2@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1086', 'Carlos', 'Zuñiga', null, 'fvcharlas@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1087', 'Betzabe', 'Palacios', null, 'betpapi66@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1088', 'chicaextraña', 'extraña', null, 'notiene@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1089', 'MARISOL', 'ARGUEDAS', null, 'marguedas@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1090', 'cynthia', 'maceda', null, 'cynmaceda@hotmail.com', ' 989852216,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1091', 'HELEN', 'REBAZA', null, 'hrebaza@lima-airport.com', ' 993831638,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1092', 'GUILLERMO', 'RXZ', null, 'guillermo_rz32@outlook.com', ' 974935024,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1093', 'carmen YSABEL', 'VILLANUEVA ARANA', null, 'nodejomail@gmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1094', 'NATALIE', 'VELASQUEZ', null, 'nalejosv@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1095', 'ALFONSO', 'PARRENO', null, 'maritzamonarmoyoli@hotmail.com', ' 986841188,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1096', 'ANDREA', 'CHANG MORALES', null, 'achang@replica.com.pe', ' 972522970,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1097', 'MARISOL', 'AGUIRRE ', null, 'MAGUIRRE@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1098', 'CINTHYA ', 'GOZALVEZ', null, 'cygozalvez@hotmail.com', ' 990391303,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1099', 'YANELLA', 'HUACAUSE', null, 'yanellita7@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1100', 'nataly', 'ramos', null, 'nathyrr13@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1101', 'señora', 'Colombiana', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1102', 'elena ', 'LOVON', null, 'elenalt25@hotmail.com', '+34631413534', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1103', 'florencia', 'es viejita', null, 'nodebesaberniqueesemail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1104', 'MARIA', 'INES', null, 'mariainp19@gmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1105', 'lourdes ', 'pena flores', null, 'lourdes.flores30@yahoo.com', ' 950360573,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1106', 'Stephanie ', 'jacobs', null, 'stephiejacobs90@gmail.com', ' 994224480,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1107', 'JORDAN', 'CASTILLO ZARATE', null, 'jor.castillo.zarate@gmail.com', ' 979585166,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1108', 'seleny', 'FLORES', null, 'selenyflores@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1109', 'karina', 'Peña', null, 'karina.pena@obst.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1110', 'angelica', 'ASENCIOS', null, 'anasteri@hotmail.com', ' 966976926,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1111', 'KATTY', 'FERNANDEZ', null, 'Blackmen_dng@outlook.com', ' 943430420,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1112', 'carolina', 'Olaya', null, 'caroaa01@gmail.com', ' 996316561,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1113', 'carmen YSABEL', 'VILLANUEVA ARANA ', null, 'nodejomail@gmail.com', ' 99945794,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1114', 'miguel ', 'ALBUJAR', null, 'edupalmo@yahoo.es', ' 73381209,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1115', 'pareja', 'joven', null, 'nodejomail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1116', 'JANNETH ', 'ALIAGA', null, 'notengosumail@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1117', 'CAROLINA', 'ALAYO', null, 'notienemailesviejita@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1118', 'CHRISTIAN', 'FLORES', null, 'christhiansolutions2015@gmail.com', ' 928399776,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1119', 'jose luis', 'soler', null, 'UNAONCE@YAHOO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1120', 'miguel', 'SAMAMEZ', null, '2056miguel@gmail.com', ' 941071672,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1121', 'CAROLINA', 'ALAYO', null, 'caroaa01@gmail.com', ' 996316561,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1122', 'chico', 'churro ', null, 'nomedejoparamalasuerte@gmail.com', ' 111111111,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1123', 'ANGELICA', 'ASENCIOS', null, 'anasetri@hotmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1124', 'CAROLINA ', 'MENDOZA ', null, 'Carolina.vf.mendoza@gmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1125', 'christian ', 'FLORES', null, 'christiansolutions2015@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1126', 'JUAN ', 'LECAROS ROMERO', null, 'juanlecaros@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1127', 'CAROLINA ', 'CONTRERAS', null, 'crocontreras@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1128', 'rosario', 'ALFARO', null, 'sammyaq@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1129', 'soraya', 'Escalante', null, 'litasoraya@hotmail.com', ' 989929086,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1130', 'CLAUDIA', 'DI LIBERTO ONAGA', null, 'claudiaonaga@gmail.com', ' 949120386,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1131', 'GIULIANA', 'HINOJOZA', null, 'lhinojosah@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1132', 'CLAUDIA', 'ONAGA', null, 'cdaga@britanico.pe', ' 966719954,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1133', 'JOB ELIAS', 'PAJUELO RODRIGUEZ', null, 'jobp75@hotmail.com', ' 936872378,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1134', 'roberto', 'Carlos', null, 'robertocarlos@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1135', 'julio', 'MACHAN', null, 'juliomechan@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1136', 'ROBERTO ', 'BENAVIDES ', null, 'isako_20@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1137', 'KAREN ', 'OBEZO', null, 'karenxd@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1138', 'DAVID ', 'BRIONES', null, 'BRIONES@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1139', 'JESSICA', 'ARROYO', null, 'JSSCA-ARRYO@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1140', 'MARIA ', 'INES NOVOA ', null, 'mariainp19@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1141', 'MARIA', 'CASTRO', null, 'NOTIENE@GMAIL.COM', ' 6391818,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1142', 'PAX DE ', 'SEVA ', null, 'nodijo@gmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1143', 'livia', 'romero', null, 'liviaromero@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1144', 'luis ', 'CHAMOCHUMBI', null, 'NODEJOMAIL@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1145', 'claudia', 'daga', null, 'cdaga@britanico.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1146', 'julio ', 'mechan', null, 'juliomechan@hotmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1147', 'yanca ', 'porras', null, 'Yaancarlosporras@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1148', 'extranjero', ' 1,0', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1149', 'AGUEDA', 'TORRES ', null, 'AGUEDATORRES@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1150', 'JHIME', 'DELGADP', null, 'delg.jhm@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1151', 'felipe', 'AJRAZ', null, 'feajraz@hotmail.com', ' 999870401,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1152', 'cristian', 'Luna', null, 'CLuna@huntoil.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1153', 'KATY ', 'MALLQUI', null, 'kmallquic@gmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1154', 'Patty', 'Artica', null, 'pattyartica18@hotmail.com', '981578634', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1155', 'Elvidia', 'Carhuavilca Marcelo', null, 'elvicarma@gmail.com', '992903079', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1156', 'Carmen', 'Coronado', null, 'carmencoronadoa@gmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1157', 'Janette', 'Acuña Quispe', null, 'rosarionet2111@gmail.com', '962958381', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1158', 'Lmavilaq', null, null, 'lmavilaq@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1159', 'Cecilia', 'Banda', null, 'cecibanda04@gmail.com', '997666318', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1160', 'Carlos', 'Congora', null, 'karlos6411@hotmail.com', '987793134', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1161', 'Yajis', 'Tf', null, 'yajairatf1@hotmail.com', '994890649', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1162', 'Maricarmen', 'Chavez Puppi', null, 'mcchavezpuppi@hotmail.com', '998417353', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1163', 'Raul', 'Zarate', null, 'raulzarate@outlook.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1164', 'Mirna Rosa', 'Cajo Posso', null, 'mrcpjmackinder@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1165', 'Rosaluz', 'Apaza', null, 'rlaa_peru@hotmail.com', '983526062', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1166', 'Lily Rojas', 'Cachay', null, 'lilycachay@hotmai.com', '952926464', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1167', 'Tania', 'Briseño', null, 'tanny_rie15@hotmail.com', '943658766', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1168', 'Gabriela', 'Ana', null, 'anagab07@hotmail.com', '943732142', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1169', 'Roxana', 'Alguiar', null, 'rox.alguiar@hotmail.com', '943235961', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1170', 'Milagros', 'Rodriguez Palomino', null, 'milagros.rodriguezp@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1171', 'Violeta', 'Vargas', null, 'vvargasc14@hotmail.com', '952617093', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1172', 'Roman', 'Bastarrachea', null, 'solucionesroman@hotmail.com', '984137442', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1173', 'Gabriela', 'Alfaro', null, 'galfaro@sunat.gob.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1174', 'María Georgina', 'Suárez Alfaro', null, 'mariageorginasa@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1175', 'Leslie Ivanna', 'Pacheco Malaver', null, 'pachecormalaverivanna@gmail.com', '983338741', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1176', 'Margoth', 'Aguilar', null, 'margothaguilar@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1177', 'Alexander', 'Pachas', null, 'alexpt88@hotmail.com', '993727230', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1178', 'VANESA', 'CARLOS', null, 'vanesacar@hotmail.com', '956985359', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1179', 'Raul', 'Zarate', null, 'raulzarate@outlook.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1180', 'Graciela', 'Alfaro', null, 'galfaro@sunat.gob.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1181', 'María Georgina', 'Suárez Alfaro', null, 'mariageorginasa@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1182', 'Leslie Ivanna', 'Pacheco Malaver', null, 'pachecormalaverivanna@gmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1183', 'Antonio Jose', 'Pavon Galan', null, 'antoniojosepavongalan@hotmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1184', 'Jackelyn Pamela del Rocio', 'Alfaro Quiroz', null, 'pamemn2101@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1185', 'José Enrique', 'Moreno Quijandría', null, 'morenosoccer@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1186', 'Alexander', 'Pachas', null, 'alexpt88@hotmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1187', 'Vanesa', 'Carlos', null, 'vanesacar@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1188', 'Giannina', null, null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1189', 'FELICITAS ', 'MARIN BARDALES ', null, 'GLORIA.MB24EME@GMAIL.COM', ' 927872665,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1190', 'JIMMY', 'HIPOLITO  HUARANGA', null, '111111@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1191', 'MARIA DOLLY', 'SANCHEZ ', null, 'MARIADOLLY9@HOTMAIL.COM', ' 986737624,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1192', 'MERCEDES ', 'URIBE ACUÑA', null, 'JMECHEURIBE@YAHOO.COM', ' 995645525,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1193', 'NAZARIO ', 'TICAÑO', null, '221555@HOTMAIL.COM', ' 3762555,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1194', 'ERIKA ', 'BARRETO', null, 'berickab@yahoo.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1195', 'JUANA', 'QUISPE', null, 'JUANA_ROMINA@HOTMAIL.COM', ' 940046871,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1196', 'PERCY ', 'CARPIO ', null, 'J.CARPIO@OUTLOOK.ES', ' 993612953,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1197', 'JOSE ', 'ALFARO  CALDERON ', null, 'JOSEALFAROCALDERON@GMAIL.COM', ' 994919104,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1198', 'JOSE ', 'UBILLUS GUTIERREZ', null, '1254@hotmail.com', ' 999309997,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1199', 'NORA ', 'VELA MAYTAHUARI', null, '122553114@HOTMAIL.COM', ' 2915272,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1200', 'GLENDA ', 'RONDAN  MENDOZA ', null, 'SOBERLY_2020@HOTMAIL.COM', ' 971064040,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1201', 'KAREN', 'SANTA CRUZ ', null, 'KSANTACRUZ23@GMAIL.COM', ' 997751041,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1202', 'ALBERTO ', 'AZALDEGUI ', null, 'ALAZACRU@GMAIL.COM', ' 942983190,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1203', 'MARIA ', 'MEDINA LLANOS ', null, 'MARY16SAM@GMAIL.COM', ' 955825380,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1204', 'JOHANA ', 'MANSILLA ', null, 'LISSET_27_4@HOTMAIL.COM', ' 986183377,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1205', 'ROBERTO  TOMAS ', 'SOSA ', null, '12569@HOTMAIL.COM', ' 999969081,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1206', 'KAREN AGUEDITA ', 'SANTA CRUZ ', null, 'KSANTACRUZ23@GMAIL.COM', ' 997751041,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1207', 'ANGEL', 'OLARTE ', null, 'angel.olarte@cinecolor.com.pe', ' 965407058,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1208', 'EDITH ', 'FLORES HERRERA ', null, 'JANFLO2009@HOTMAIL.COM', ' 980420062,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1209', 'VALERIANA ', 'AMAU CONDE ', null, 'VALERIANAAMAU@OUTLOOK.COM', ' 966335321,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1210', 'NAZARIO ', 'TICAÑO ', null, '123456@HOTMAIL.COM', ' 3762555,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1211', 'ALVARO ', 'MEJIA ', null, 'ALVAROMEJIA30S@GMAIL.COM', ' 998820675,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1212', 'ARMANDO MARCELO ', 'HUARCAYA CASTAÑEDA ', null, 'MARCELOHC9@HOTMAIL.COM', ' 947206947,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1213', 'GRACE ', 'MONTES CAHUAZA', null, 'GMONTES@AMANTANI.PE', ' 987207902,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1214', 'KATTY', 'CARDENAS HUAMAN ', null, 'KATTYCH1505@HOTMAIL.COM', ' 953253200,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1215', 'LUIS ENRIQUE ', 'YAPO SANDOVAL ', null, 'LUCHO_2713@HOTMAIL.COM', ' 975582258,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1216', 'PIERRE ', 'BAZIN ', null, 'PL.BAZINGZ@GMAIL.COM', ' 989454366,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1217', 'JESUS ENRIQUE ', 'RÍOS FLORES ', null, 'JESUSRIOSFLORESO@GMAIL.COM', ' 942974882,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1218', 'LECLERE', 'LECLERE', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1219', 'LUZ MARIA ', 'VILLALOBOS  FLORES ', null, 'lmvilla@hotmail.com', ' 979467038,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1220', 'SARINA JACKELINE', 'ARAUCO DE LA CRUZ ', null, 'sarauco2012@outlook.es', ' 979026510,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1221', 'GRACE ', 'GARCIA ', null, 'gracebgc@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1222', 'cristina ', 'villanueva bravo ', null, 'cristinavillanueva42@hotmail.com', ' 9849965656,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1223', 'patricia ', 'gonzales', null, 'patricia.gonzales@belmond.com', ' 4350462,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1224', 'RODOLFO ', 'LEON MAITA ', null, 'elvi_rey_leon31@hotmail.com', ' 938102503,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1225', 'elena', 'vazan ', null, 'nena2003_7@hotmail.com', ' 993339493,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1226', 'LORENA ', 'MACEDO GARCIA', null, 'LM6130619@GMAIL.COM', ' 984920698,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1227', 'EDGAR', 'ALAN', null, 't8tperu@gmail.com', ' 942004953,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1228', 'LUIS ', 'MORAN ', null, 'luismoran@lapste.net', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1229', 'MARCELA ', 'PAREDES MIRANDA', null, 'NOTIENE@HOTMAIL.COM', ' 4461889,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1230', 'GLORIA ESTER ', 'GARCIA MIRANDA', null, 'interprete1968@hotmail.com', ' 951412104,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1231', 'RUBY', 'CARDENAS APONTE ', null, 'rubeola76@hotmail.com', ' 968687905,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1232', 'MARCELA ', 'PAREDES MIRANDA', null, 'NOTIENE@HOTMAIL.COM', ' 4461889,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1233', 'ROGER  MAURICIO ', 'ZAVALA TEJADA', null, 'zmauricio92@outlook.com', ' 952618788,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1234', 'NERY', 'PUMACAYO SANCHEZ ', null, 'NOTINE@HOTMAIL.COM', ' 965106460,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1235', 'TOMER', ' EITUNY', null, 'tomereitani@gmai.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1236', 'LUIS ALBERTO ', 'PEREZ HUAMAN ', null, 'betin_luis@hotmail.com', ' 996160807,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1237', 'AITOR', 'DE GEA PELEGRIN', null, 'katiburun@gmail.com', ' 971439193,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1238', 'ALEJANDRINO ', 'QUISPE VILLEGAS ', null, 'alejandrino55@hotmail.com', ' 952085932,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1239', 'JULIO CESAR ', 'MAYTA CONTRERAS', null, 'NOTIENE@HOTMAIL.COM', ' 943210467,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1240', 'MINERVA ', 'CALDERON ', null, 'mva.calderon@gmail.com', ' 987429405,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1241', 'LARA MARINA', 'LUNDBERG', null, 'lalilundi@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1242', 'MARIANA', 'POLLAROLA', null, 'mpollarolo@gmail.com', ' 954160197,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1243', 'ELIA', ' DE LA CRUZ HERNANDEZ', null, 'NOTIENE@HOTMAIL.COM', ' 965825902,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1244', 'MIGUEL', 'PAZ', null, 'mpaz@trome.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1245', 'SONIA', 'RAMAL', null, 'ssorae@gmail.com', ' 964395306,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1246', 'NANCY JACKELINE', 'LEGUIA AMASIFEN ', null, 'NOTIENE@HOTMAIL.COM', ' 9829015483,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1247', 'RAUL MARTIN', 'MOSQUITO AGUIRRE', null, 'rmosquitoaguirre@gmail.com', ' 997606165,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1248', 'RAFAEL ', 'CISNEROS', null, 'NOTIENE@HOTMAIL.COM', ' 981163604,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1249', 'KEVIN ANGELO', 'ESPINOZA', null, 'kevin.espinoza.27@hotmail.com', ' 941541709,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1250', 'ROSA MARIA', 'MUÑOZ PAREDES', null, 'waldirmen@hotmail.com', ' 987033127,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1251', 'MARIA DEL PILAR', 'JANAMPA LOPEZ', null, 'jdaniel250@hotmail.com', ' 4503707,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1252', 'LADISLAO', 'ALLER', null, 'NOTIENE@HOTMAIL.COM', ' 985592550,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1253', 'KELLYN ', 'YERREN SALVADOR', null, 'yerren.kellyn@gmail.com', ' 980831030,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1254', 'Jose ', 'SANCHEZ ', null, 'jasbfarma@gmail.com', ' 972984477,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1255', 'ROCIO', 'GAMBOA', null, 'rocio.pgs@outlook.com', ' 940439618,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1256', 'ALBERTO ', 'BAQUERIZO ', null, 'NOTIENE@HOTMAIL.COM', ' 997794889,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1257', 'RUBEN ', 'LOPEZ  SILVA', null, 'new_flor_2011@hotmail.com', ' 963116512,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1258', 'SANTIAGO', 'GARCIA PALMA', null, 'sgarcia@trentcorredores.com', ' 993632809,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1259', 'OMIR', 'LIBRONA', null, 'noteien@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1260', 'ISABEL', 'CHIROQUE LAZARO', null, 'ichiroque@notariatambini.com', ' 3212000,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1261', 'MARGAREE ANTHOANNE', 'CENTURION SUAREZ', null, 'yoryett_18@outlook.com', ' 986815184,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1262', 'BRUNO ', 'CHAMAN ', null, 'bruno.chamaya8@gmail.com', ' 984704383,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1263', 'JOSE ', 'LOZADA', null, 'lozada.cordova@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1264', 'MARLON', 'RIVERA ', null, 'wym.rivera@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1265', 'FERNANDO ', 'MARAKA', null, 'notiene@hotmail.com', ' 9586071153,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1266', 'DOMA MAGDIEL ', 'IÑOMAN MALCA', null, 'domamagdiel1995@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1267', 'HYUN AH', 'KIM', null, 'NOTIENE@HOTMAIL.COM', ' 954681284,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1268', 'DAGER ', 'GARCIA RAMOS ', null, 'dagerdi@hotmail.com', ' 990888851,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1269', 'ELSA', 'KOOYIP', null, 'mwsw2p07@hotmail.com', ' 961801770,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1270', 'JANCY AUGUSTO', 'RETAMOZO ACUÑA', null, 'jancy2501@gmail.com', ' 962303816,0', 'Televisión', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1271', 'FREDDY ALEJANDRO', 'CAMARGO FIGUEROA ', null, 'freddycama@outlook.com', ' 999707495,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1272', 'LYDIA', 'NO TIENE APELLIDO', null, 'marshall_33_33@hotmail.com', ' 959798311,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1273', 'JACQUELINE', 'NO TIENE ', null, 'jaqui350@hotmail.com', ' 98662578,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1274', 'JOSE ', 'BLANCO ', null, 'jblanco@yahoo.es', ' 962326132,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1275', 'RAFAEL ', 'BERASTEGUI', null, 'edoardovc@hotmail.com', ' 997231347,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1276', 'TIMOTEA', 'GUZMAN CHOQUE', null, 'NOTIENE@HOTMAIL.COM', ' 948778440,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1277', 'DEBORA', 'MILLA CAPILLO', null, 'debora01@gmail.com', ' 997781116,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1278', 'YULISSA ', 'RIVAS ', null, 'yrvassoto@gmail.com', ' 993915379,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1279', 'BREDY ', 'TARAZONA ', null, 'bredidyangelo@gmail.com', ' 969596111,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1280', 'OMER', 'OZKUL', null, 'KZUZKAPM@OUTLOOK.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1281', 'EMY ', 'ALVARADO GHIPANA', null, 'ALVARADO.FIORELLA@YAHOO.COM', ' 934938248,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1282', 'ALVARO ENRIQUE', 'ROSAS JARA', null, 'ROSASJARA@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1283', 'DAGER ', 'GARCIA RAMOS ', null, 'dagerdi@hotmail.com', ' 990888851,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1284', 'NATHALY', 'TICA DELGADO', null, 'nataly_14_98@hotmail.com', ' 954784708,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1285', 'GUSTAVO ', 'RUIZ ', null, 'NOTIENE@HOTMAIL.COM', ' 4570535,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1286', 'VANIV', 'SHALON', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1287', 'KAREN ', 'NORIEGA', null, 'karenoriega17@gmail.com', ' 947678710,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1288', 'CARLOS ', 'BONATO SANTOS', null, 'cbonattos@hotmail.com', ' 997366552,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1289', 'FERNANDO MARCOS ', 'CUYA FALCON', null, 'fcuyaf@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1290', 'HUGO ALEXANDER', 'RICRA MORALES', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1291', 'EDUARDO ', 'QUISPE CORIMANYA', null, 'NOTIENE@HOTMAIL.COM', ' 980845174,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1292', 'NORMA ', 'CARDENAS ', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1293', 'JOSE ', 'ALVAREZ JAUREZ', null, 'NOTIENE@HOTMAIL.COM', ' 956842365,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1294', 'JIMMY JUAN', 'PORTUGAL ', null, 'jimmyportugal16@hotmail.com', ' 992765451,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1295', 'GERMAN ', 'GARCIA ', null, 'germi_garza@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1296', 'JUAN GUALBERTO', 'QUISPE ORTIZ', null, 'NOTIENE@HOTMAIL.COM', ' 924015122,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1297', 'MARITZA ', 'VEGA CHAPARRO', null, 'NOTIENE@HOTMAIL.COM', ' 982799999,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1298', 'CLARA ', 'METZEER ALVAN', null, 'cmetzger142@hotmail.com', ' 98520466,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1299', 'DIANA ', 'ALVAREZ ZUÑIGA', null, 'dianita189@hotmail.com', ' 937571563,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1300', 'JESSICA ', 'CABRERA', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1301', 'JESUS RICARDO ', 'PIÑA PIÑEO', null, 'sumy12@hotmail.com', ' 927459306,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1302', 'MARY ', 'LAPOUBLE MENA', null, 'LOPOUBLE@DELPILARMIRAFLORES.COM.PE', ' 981063525,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1303', 'ALEX', 'QUILLO', null, 'ALEXJR063@HOTMAIL.COM', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1304', 'EVELIN ', 'ALVARADO', null, 'EVELIN.ALVARADO@UPCH.PE', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1305', 'LLECK', 'ATENDIDO DE FACEBOOK', null, 'LLECKTV292@HOTMAIL.COM', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1306', 'MAILY ', 'NACIMENTO ', null, 'MAILY.NACIMENTO@GMAIL.COM', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1307', 'MAYRA ', 'ATENDIDO DE FACEBOOK', null, 'MAYRAC0512@HOTMAIL.COM', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1308', 'ROSA ', 'ANDRADE POLO', null, 'angelandrade.polo@mail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1309', 'FREYCI', 'VARAS LUJAN ', null, 'freisi_elnene_92@hotmail.com', ' 959041992,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1310', 'MARISA ', 'FLORES TICSE', null, 'marisaft4@gmail.com', ' 982401050,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1311', 'MANUEL', 'GUTIERREZ', null, 'balta4rent@gmail.com', ' 942174332,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1312', 'PAMELA ', 'LEVANO VARGAS', null, 'pnvati@hotmail.com', ' 996064816,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1313', 'YENNY', 'CASMO', null, 'yennyfrf@gmail.com', ' 958742218,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1314', 'JOME', 'CHILLCCE', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1315', 'FERNANDA CAROLAY', 'TAVARA RIOS', null, 'fersii.1998@gmail.com', ' 976009129,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1316', 'VIRGINIA', 'SALDINAS', null, 'NOTIENE@HOTMAIL.COM', ' 629066,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1317', 'BLANCA LUZ', 'AJANAMA CAMACHO', null, 'NOTIENE@HOTMAIL.COM', ' 944600304,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1318', 'HECTOR ', 'LEYVA', null, 'herctolm14@hotmail.com', ' 954779750,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1319', 'MIRIAM', 'DE FACEBOOK ', null, 'myenne@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1320', 'VIOLETA ', 'VARGAS ', null, 'vvargasc14@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1321', 'ROCIO ', 'RODRIGUEZ LESAMA', null, 'neiby_rl@hotmail.com', ' 950094126,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1322', 'JORGE ', 'RODRIGUEZ ', null, 'NOTIENE@HOTMAIL.COM', ' 992927987,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1323', 'JORGE', 'NO DEJO', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1324', 'ALEXANDRA ', 'SOTO VALERIANO ', null, 'MAXISOLSOTO1838@GMAIL.COM', ' 967762077,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1325', 'christian israel ', 'prado villeguez', null, 'aries_al17@hotmail.com', ' 997173268,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1326', 'ilda ', 'carrillo', null, 'notiene@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1327', 'juan ', 'villar ', null, 'juanandres_9@hotmail.com', ' 943691609,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1328', 'edwin francisco', 'puse nieto ', null, 'edwin_pusenieto1415@hotmail.com', ' 923654671,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1329', 'junior john', 'fabian artega ', null, 'jfabian@esan.edu.pe', ' 957450567,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1330', 'leonidas ', 'gonzales mozo ', null, 'notiene@hotmail.com', ' 946879696,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1331', 'pilar catherine', 'san jose galarza ', null, 'delegada.sudamericana@isdaa.es', ' 34622189975,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1332', 'facundo', 'gonzales ', null, 'notiene@hotmail.com', ' 946570413,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1333', 'pierre', 'bravo cahuas ', null, 'pierry_0915@hotmail.com', ' 994755290,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1334', 'david', 'arellano ', null, 'davidu8@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1335', 'selene ', 'mendoza aquino ', null, 'Rsma.1490@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1336', 'evelin ', 'ALVARADO MORA', null, 'evelin.alvarado.m@upch.pe', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1337', 'brayan ', 'sabeedra jorges ', null, 'Brayan_14@hotmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1338', 'CESAR AUGUSTO ', 'CASTILLO CORDOVA ', null, 'tauro120568@gmail.com', ' 977153203,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1339', 'jose javier ', 'luquez meza ', null, 'luquez285@gmail.com', ' 932190956,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1340', 'carmen mercedes ', 'velarde alvarez pinto ', null, 'camuchavap@hotmail.com', ' 990956506,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1341', 'maria ysabel ', 'acuña villalonga ', null, 'nodejo@hotmail.com', ' 934715219,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1342', 'jamireth', 'lancha baneo ', null, 'jamirethlanchabaneo2016@gmail.com', ' 945031536,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1343', 'vanessa ', 'ccahuana hantay ', null, 'damiva_185@hotmail.com', ' 944417839,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1344', 'maria ', 'martines chero ', null, 'ariadnecomplicated22@gmail.com', ' 939266536,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1345', 'mario ', 'rodriguez  velarde ', null, 'segurindo@hotmail.com', ' 944574578,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1346', 'greisy ', 'valverde alvarez', null, 'gyva1609@gmail.com', ' 986607906,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1347', 'fabiola ', 'handal brito ', null, 'Fabyhandal@hotmail.com', ' 996778561,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1348', 'ingrid ', 'quiros ', null, 'notiene@hotmail.com', ' 991487232,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1349', 'angel ', 'perez bueno ', null, 'angel.perez.nuevo@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1350', 'ana carla ', 'soto ', null, 'sotoanaipa@gmail.com', ' 964327989,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1351', 'maria alexandra ', 'hidalgo tallido ', null, 'alexandra.hidalgo@hotmail.com', ' 960845504,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1352', 'marlon ', 'cahique ', null, 'marlon_cachique_27@hotmail.com', ' 990831000,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1353', 'hugo alexander ', 'ricra morales ', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1354', 'monica', 'abad arce', null, 'abadelayne@gmail.com', ' 946637645,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1355', 'carlos omar ', 'valverde saldarriaga ', null, 'jacque364395@hotmail.com', ' 940568955,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1356', 'susan regina ', 'retto fiestas ', null, 'susanrerf@gmail.com', ' 997511208,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1357', 'cinthia ihette', 'cabrejo arana', null, 'cinthiacabrejo@hotmail.com', ' 982641432,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1358', 'hugo alexander', 'ricra moralez', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1359', 'juan ', 'herencia pareja ', null, 'notiene@hotmail.com', ' 940897814,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1360', 'mario', 'ortiz ', null, 'marioortizgil@yahoo.es', ' 989100554,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1361', 'IDELFIA ', 'URIARTE CERDAN ', null, 'NOTIENE@HOTMAIL.COM', ' 990251000,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1362', 'FABIOLA', 'HANDAL', null, 'fabyhandal@hotmail.com', ' 996778561,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1363', 'JUNIOR ', 'FABIAN ARTEAGA ', null, 'NODEJO@HOTMAIL.COM', ' 957450567,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1364', 'rayda ', 'PEREZ PEÑA ', null, 'NOTIENE@HOTMAIL.COM', ' 983524563,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1365', 'WILLY ', 'JUSTO TORRES', null, 'NODEJO@HOTMAIL.COM', ' 944474207,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1366', 'GANSOOK', 'LEE', null, 'CEBIN32885@HOTMAIL.COM', ' 981103278,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1367', 'MARY', 'VILLANUEVA ', null, 'NODEJO@HOTMAIL.COM', ' 982254264,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1368', 'JOSE ', 'SORALUZ CHEONG', null, 'JOSESORALUZ@HOTMAIL.COM', ' 975943274,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1369', 'IRMA MARIA ', 'TAMINEZ GONZALES ', null, 'IRMA_TAMIENEZ@HOTMAIL.COM', ' 934701652,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1370', 'MIRTHA ', 'ORTEGA ', null, 'ORTEGAPERU@GMAIL.COM', ' 976061058,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1371', 'JOSE ROBERT', 'SEVILLA SORIA', null, 'ROBERTSEVILLANO@HOTMAIL.COM', ' 920091426,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1372', 'JOSELYN BELEN ', 'MATIAS BRAÑEZ', null, 'JBELEN09@HOTMAIL.COM', ' 943550123,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1373', 'LUCIA ', 'VARGAS PEÑA ', null, 'LUZCIAVARGASP@HOTMAIL.COM', ' 950134888,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1374', 'TATIANA ', 'NEYRA ', null, 'NODEJO@HOTEMAIL.COM', ' 986798549,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1375', 'JUNIOR ', 'FABIAN ARTEAGA ', null, 'fabyhandal@hotmail.com', ' 996778561,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1376', 'ELENA ', 'VARDALES JIMENEZ', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1377', 'KAREN IBETH', 'ELIAS VEGA', null, 'NODEJO@HOTMAIL.COM', ' 953843977,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1378', 'ORLANDO ', 'MERGA', null, 'NOTIENE@HOTMAIL.COM', ' 956373322,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1379', 'KITTY ', 'ALATA LINARES', null, 'KITTTYALATA@GMAIL.COM', ' 976111387,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1380', 'GUSTAVO ', 'LOZADA ', null, 'GUSTAVO_LOZADA@HOTMAIL.COM', ' 993778497,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1381', 'LUZ ', 'SANCHEZ ', null, 'LUZSANCHEZ2720@GMAIL.COM', ' 996865166,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1382', 'WILDER ALEXANDER ', 'CALIXTO CALIXTO ', null, 'WILDERCALIXTO.PMP@GMAIL.COM', ' 999906907,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1383', 'VICTOR ', 'MIRANDA ', null, 'VICTOR1117@MSN.COM', ' 969734218,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1384', 'ALEX ', 'PERES ', null, 'ALEXPERECH@YAHOO.ES', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1385', 'ISAMAR ', 'MARTINES ', null, 'ISAMARA28@HOTMAIL.COM', ' 982658553,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1386', 'CARMEN ROSA', 'MARTINEZ CORONADO ', null, 'CRMANTINECSO@YAHOO.COM', ' 999777676,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1387', 'DAHIA', 'ESPIZUL', null, 'MUNDOFELIX@TERRA.COM.PE', ' 987240040,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1388', 'GIANINA ', 'PELUCKER', null, 'NODEJO@HOTMAIL.COM', ' 936095409,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1389', 'MARIA ELIANA', 'LOMPARTE ', null, 'ALILOMP@YAHOO.COM', ' 946418804,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1390', 'FRANCISCO ', 'CENTURION ', null, 'FCENTURION@GMAIL.COM', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1391', 'MARCO ', 'BARRUETO', null, 'MBARRUETO@HOTMAIL.COM', ' 949331555,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1392', 'EVELYN', 'YSLA VILLAVICENCIO', null, 'EVELYN_YSLA@HOTMAIL.COM', ' 947342768,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1393', 'PAULA ', 'LUGO VALENCIA', null, 'PEDIATRIACORAZON@YAHOO.ES', ' 996330180,0', 'Televisión', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1394', 'JUAN ', 'SOLANO ', null, 'JUAN.SOLANO@HOTMAIL.COM', ' 984567216,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1395', 'LUIS ', 'MEIRA ', null, 'JKER.WEEW@GMAIL.COM', ' 956487265,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1396', 'ALEJANDRO ', 'VELA ', null, 'NOTIENE@JHOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1397', 'SERGIO ', 'MUÑOZ RODRIGUEZ', null, 'HORIZONS.BLACK180396@GMAIL.COM', ' 931116719,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1398', 'GIOVANNA', 'COMSOLO', null, 'GIOVANNA.CONSOLO@GMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1399', 'MARTHA CECILIA ', 'HOYOS PAZ', null, 'CECILIAHOYOSPAZ@GMAIL.COM', ' 949221104,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1400', 'RICHARD ', 'PORTILLA TERREROS ', null, 'RIPTER24@HOTMAIL.COM', ' 964877744,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1401', 'ARMIDA ELENA ', 'ARMESTO BARRENECHEA ', null, 'ARMIDAARBA@HOTMAIL.COM', ' 991154373,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1402', 'CLAUDIA ', 'LLOSA', null, 'CLAUDIALLOSABGZ@HOTMAIL.COM', ' 959767730,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1403', 'YUZENI AVI', 'ECHEVARRIA CRUZ ', null, 'YUZENIAVI@GMAIL.COM', ' 997056404,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1404', 'PATRICIA ', 'SIGMOLLE', null, 'SIGMORELLIPATRICIA@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1405', 'VERONICA ', 'HERNAN CENTURION ', null, 'NODEJO@HOTMAIL.COM', ' 981334132,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1406', 'RENAN ', 'LLANO DAVILA ', null, 'ROGLLAMU@GMAIL.COM', ' 957524614,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1407', 'FERNANDA ', 'LLANOS ', null, 'FERLLA_025@HOTMAIL.COM', ' 998756243,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1408', 'PATRICIA ', 'OLIVERO DURAN ', null, 'PATRICIAOD@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1409', 'Francisco Antonio Cordero Rosado', null, null, null, null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1410', 'Yoseline', 'Solis', null, 'yysolislarico@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1411', 'Ana', 'Peña', null, 'anaeveli@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1412', 'Alfonso', 'Chavarry', null, 'aharonperu@yahoo.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1413', 'Malene', '-', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1414', 'Tatyana', 'Navarrete', null, 'tnavarrete@hotmail.com', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1415', 'Janeeth', 'Moscoso Becerra', null, 'janeethmoscoso@yahoo.com.pe', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1416', 'Ingrid', 'Lebano', null, null, null, null, null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1417', 'Liliana Soledad', 'Sanchez', null, 'lilianaalbasoledad@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1418', 'Mario Robert', 'Dura de la Colina', null, 'vonstauffenberg@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1419', 'Orlando', 'Olaechea', null, null, null, null, null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1420', 'Norma', 'Cabrera', null, 'cnorma@hotmail.com', ' 991324351,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1421', 'Elena', 'Becerra Bazan', null, 'nena2003_7@hotmail.com', ' 993339493,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1422', 'Guillermo', 'Torres Cueva', null, 'guille.01@hotmail.com', ' 961421962,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1423', 'Fiorella', 'Castro', null, 'fiore.castro@gmail.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1424', 'Fernando', 'Ocola', null, 'fontuag@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1425', 'Reina', 'Perme', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1426', 'Natalia', 'Barbaran Vasquez', null, 'dakotanb@hotmail.com', ' 996368819,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1427', 'Edgar', 'Conde', null, 'edgarmartinconderamirez@gmail.com', ' 968470385,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1428', 'Analiz', 'Kan', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1429', 'Patricia', 'Aranda', null, 'patriciarandazz@yahoo.com', null, 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1430', 'Benigna', 'Villa', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1431', 'Perla', 'Solsol', null, 'perlasolsol@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1432', 'Alvaro', 'Kawata', null, 'alvarokawata@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1433', 'Ylenia', 'Salazar Pazo', null, 'YLE_20@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1434', 'Jean Alexander', 'Velasquez', null, 'dj_jenxel@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1435', 'Dolores', 'Chapeyquen Sanchez', null, null, ' 948488511,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1436', 'Jorge', 'Ramos', null, 'ramospichon@hotmail.com', ' 997895710,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1437', 'Jesus', 'Quispe', null, 'asesorfarma@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1438', 'Victor', 'Marrieta', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1439', 'Danit', 'Shira Iluz', null, 'danit2220@walla.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1440', 'Victor Paul', 'Villacorta Elliott', null, 'vpaulve@gmail.com', ' 997853315,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1441', 'Miguel Angel', '-', null, 'ma.ac100@hotmail.com', ' 989889657,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1442', 'Jairo', 'Allasi Sanchez', null, null, ' 986933713,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1443', 'Sebastian', 'Padilla Medina', null, 'js.padilla121@gmail.com', ' 959903485,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1444', 'Siore Lizet', 'Choque Coyla', null, 'lizet.choque@ucsp.edu.pe', ' 987252915,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1445', 'Edwar', 'Acero', null, 'erash_10@hotmail.com', ' 940611767,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1446', 'Marco Antonio', 'Pita Ruiz', null, 'marcopitar@hotmail.com', ' 987417737,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1447', 'Mabel', 'Diaz Tapia', null, 'mabeldiaz_@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1448', 'Sara', 'Castillo Zegarra', null, 'sarcor1@hotmail.com', ' 966400048,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1449', 'Hector', 'Ugarte', null, 'hugartea@yahoo.com', ' 4211816,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1450', 'Augusto', 'Sanchez', null, null, ' 4823172,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1451', 'Susana', 'Sanchez', null, 'susanagine1@yahoo.es', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1452', 'Angie', 'Lion', null, 'alion@mrshao.com.pe', ' 4403336,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1453', 'Luis', 'Bouroncle', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1454', 'Maritza', 'Jaque', null, 'mjaque2000@yahoo.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1455', 'Santa Isabel', 'Julcamanyan Huamani', null, 'serviciosmultiplesantacruz@hotmail.com', ' 3515137,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1456', 'Manuel', 'Ganoza', null, 'ganoza1@hotmail.com', ' 991194167,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1457', 'Juana', 'Huarcaya', null, 'Juana.huarcaya@gmail.com', ' 997289606,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1458', 'Jose', 'Heredia', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1459', 'Nora', 'Tarillo', null, 'noratarrillo@hotmail.com', ' 961073469,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1460', 'Javier', 'Galipienzo', null, 'jgalipienzo@globalsic.com', ' 949997704,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1461', 'Mayra', 'Diaz', null, 'mdiaz_311@hotmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1462', 'Niconte', 'Perez', null, 'triton332@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1463', 'Herberth', 'Herrera', null, 'hercito1612@gmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1464', 'Patricia', 'Polanco Zevallos', null, 'menmeisha@yahoo.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1465', 'no name', 'no name', null, null, null, null, null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1466', 'Lidia', 'Mavila Quiroga', null, 'lmavilaq@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1467', 'no name', 'no name', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1468', 'Milagros', 'Sanchez Carillo', null, 'misaca_1985@hotmail.com', ' 986245503,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1469', 'Milagritos', 'Perez Alarcon', null, 'milyperez1@hotmail.com', ' 989745259,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1470', 'Alfonso', 'Chavarry', null, 'aharonperu@yahoo.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1471', 'Nora', 'Tarillo', null, 'noratarrillo@hotmail.com', ' 961073469,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1472', 'Mariella', 'Parodi Sosa', null, 'mayaparodi@hotmail.com', ' 994028174,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1473', 'Yazmin', 'Reategui', null, 'yazminreategui@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1474', 'no name', 'no name', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1475', 'Juan', 'Meza', null, 'juan_09meza@hotmail.com', ' 994047169,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1476', 'Rafael', 'Pasco Cosavalente', null, 'gagmarg@outlook.com', ' 969650003,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1477', 'no se entiende', 'no se entiende', null, 'no se entiende', ' 945475884,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1478', 'no name', 'no name', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1479', 'Carlos Alberto', 'Gomez Chavez', null, 'gmezcarlosalberto@yahoo.es', ' 945817374,0', 'Televisión', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1480', 'Elizabeth', 'Reyes Solis', null, 'a20114223@pucp.pe', ' 987923312,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1481', 'Javier', 'De Gea', null, 'javier.degea@renbach.com.pe', ' 987700660,0', null, null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1482', 'Clara', 'Mendoza', null, 'arquimendozacp@yahoo.es', ' 998784055,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1483', 'Claudia', '-', null, 'clau.villar07@hotmail.com', ' 966304255,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1484', 'Jhosman', 'Vidal', null, 'jhosmanservice@gmail.com', ' 955733817,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1485', 'Luis', 'Lara Corrales', null, null, null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1486', 'Carlos', '-', null, null, ' 4221477,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1487', 'Javier', 'Galipienzo', null, 'jgalipienzo@globalsic.com', ' 949997704,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1488', 'Katherine', 'Moya', null, 'k.l.mp@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1489', 'Juan', 'Cavagnaro', null, null, ' 4475184,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1490', 'Kety', 'Barrantes', null, 'ytekb@hotmail.com', ' 943914863,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1491', 'Angela', 'Chong Ochoa', null, 'angela110594@gmail.com', ' 999037117,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1492', 'Lucia', 'Aguilar', null, 'cindy_2131@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1493', 'Veronica', 'Bravo', null, 'bravogonzaloveronica@gmail.com', ' 959075781,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1494', 'Luis', 'Chamochumbi', null, 'chamochumbi_81@hotmail.com', ' 941916399,0', 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1495', 'Juan Carlos', 'Tocon Arenas', null, 'jctocon@gmail.com', ' 998233903,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1496', 'RUDY', '-', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1497', 'ALBERTO', 'ZELADA FERNANDEZ', null, 'ALBERTAPLLE@HOTMAIL.COM', ' 984735694,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1498', 'OMAR', 'CALDAS', null, 'omar.caldas@pucp.pe', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1499', 'Raul', 'Dolmos', null, 'dolmosraul@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1500', 'ELENA', 'RAQUEL', null, 'elenitabombon@hotmail.com', ' 989724706,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1501', 'CIPRIANO', 'ORE PAREDES', null, 'NO@DEJO.COM', ' 996730899,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1502', 'MARINA', 'DIAZ', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1503', 'MIRTHA', '.', null, 'MIRTHAINGA@HOTMAIL.COM', ' 977442055,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1504', 'JUAN PABLO', 'JARAMILLO MARMAU', null, 'JUANPABLOJARAMILLO@GMAIL.COM', ' 986085260,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1505', 'gladys', 'sanchez', null, 'no@dejo.com', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1506', 'talia', 'lastra', null, 'tlmtalialastra@gmail.com', ' 977814934,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1507', 'EDWIN', '.', null, 'NO@DEJO.COM', ' 9,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1508', 'EDSMERALDA', 'CABALLERO ZORIA', null, 'NO@DEJO.COM', ' 988889027,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1509', 'ZULY', 'ALAYO', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1510', 'KARINA', '.', null, 'NO@4DEJO.COM', ' 991271578,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1511', 'MIRTHA ', 'SABEDRA', null, 'NO@DEJO.COM', ' 924021001,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1512', 'CESAR', 'DIAZ', null, 'PERIVIANTIRES@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1513', 'CESAR', 'ZABALA', null, 'CZABALLA@S-RET.COM', ' 989302960,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1514', 'RENZO', '.', null, 'NO6@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1515', 'MARINA', '.', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1516', 'MARILUZ', 'SANCHEZ SALAZAR', null, 'mariluz.fiorela@gmail.com', ' 961800580,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1517', 'PATRICIA POMA', 'CAMARGO', null, 'PATRICIAAPC30@GMAIL.COM', ' 996611912,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1518', 'WALTER', 'CHGAVEZ', null, 'WLATER_NORKA@HOTMAIL.COM', ' 2433044,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1519', 'brheyner', 'sanchez serpa', null, 'brheyner@gmail.com', ' 2995225,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1520', 'LEO', '.', null, 'ILIUEI@CEPYIDA.COM', ' 5114975656,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1521', 'RICARDO', 'HERRERA DIAZ', null, 'SHOTINGER@HOTMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1522', 'ROAMAN', 'GARAGATI', null, 'ROMANOTTI3@HOTMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1523', 'ARGEO', 'CACERES', null, 'ANGELANDRE.CP.18@GMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1524', 'FLORA', 'CAMA BAHAMONDE', null, 'FLORAYCB93@GMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1525', 'RENZO', 'RAFAEL', null, 'RAFART1@HOTMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1526', 'YANMEI', 'SHEN', null, 'YANMEI19811@HOTMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1527', 'MELISA', 'CORDOVA', null, 'MELISSA.CORDOVA@GMAIL.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1528', 'CAMPOS', 'EDUARDO', null, 'ecampos2005@yahoo.com', ' 945925662,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1529', 'MIGUEL', 'QUIROS', null, 'miguelquiros@tikagroup.com.pe', ' 9,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1530', 'juan manuel', 'fernando roca rey', null, 'jcean.rocarey@casatoreos.pe', ' 995448797,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1531', 'DOLLY', 'STUCCHI', null, 'M@C.COM', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1532', 'MAQUILON', 'GUILLERMO', null, 'GUILLERMO.MAQUILON@MAEC.ES', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1533', 'PEDRO', 'PARREÑO', null, 'pedroparreno0807@gmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1534', 'ESMERALDA', 'CABALLERO ZORIA', null, 'ESMERALDAJUANA11@GMAIL.COM', ' 4600115,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1535', 'GLADYZ', 'NAVARRO', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1536', 'PEDRO', 'SALAZAR', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1537', 'ESMERALDA', '.', null, 'NO@TINE.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1538', 'FERNANDO', '.', null, 'NO@NODEJO.COM', ' 938578562,0', 'Facebook', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1539', 'JORGE', 'LEON', null, 'NO@DEJO.COM', ' 2689378,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1540', 'MARILUZ', '.', null, 'NO@DEJNO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1541', 'YONELLY', 'PEREZ', null, 'PEREZYONELLY_1551@HOTMAIL.COM', ' 950727446,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1542', 'MELANI', 'RUBIO', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1543', 'VECELINA', 'TAPIA', null, 'NO@DEJO.COM', ' 4503697,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1544', 'DANIEL', 'IGLECIAS', null, 'NO@TIENE.COM', ' 955207260,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1545', 'LLERNE', '.', null, 'NO@DEJO.COM', ' 6780375,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1546', 'RICHARD', 'WILLIAM', null, 'galerie.center@laposte.net', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1547', 'JOSE', 'LLORET', null, 'S.AVELAR@PLUSULTRA.COM', null, 'Correo', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1548', 'DAVID', '|FERNANDEZ', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1549', 'JULIA', 'DE MUR', null, 'traficovyt@sinectis.com.ar', ' 541149817985,0', 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1550', 'WILIAM', 'MENDON', null, 'WILLMARTIN2022@HOTMAIL.COM', ' 997899727,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1551', 'sara', 'chan', null, 'sehan_2912@hotmail.com', ' 949995022,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1552', 'MARILUZ', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1553', 'DAVID', 'RENSO', null, 'NO@TIENE.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1554', 'HECTOR', 'SANCHES', null, 'HECTORSANCHEZ1157@GMAIL.COM', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1555', 'ROSA', 'VALIENTE', null, 'Roxenell_19_1@hotmail.com', null, 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1556', 'ANA MARIA', 'PARDO CASTAÑEDA', null, 'anampac@gmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1557', 'JULIA', 'ALATRISTA', null, 'NO@TIENE.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1558', 'ADRIANA', 'HARO', null, 'adrianaharosing@hotmail.com', ' 955145046,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1559', 'Raquel', 'SALAZAR', null, 'kela_sc@hotmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1560', 'YESENIA', 'BOCANEGRA', null, 'engineer_zambrano@hotmail.com', ' 924634905,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1561', 'pedro', 'parreño', null, 'pedroparreno0807@gmail.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1562', 'RUIZ', '.', null, 'NO@NODEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1563', 'CARLOS', '.', null, 'NO@DEJO.COM', ' 9480778057,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1564', 'JUAN MANUEL', 'PEREZ', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1565', 'CARMEN', 'AREVALO', null, 'CAMUARE@HOTMAIL.COM', ' 999980205,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1566', 'LUIS', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1567', 'FERNANDO', 'OCOLA', null, 'FONTUAG@HOTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1568', 'ROSA', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1569', 'MARITA', 'HOYOS', null, 'hoyosalomia@gmail.com', ' 920083788,0', 'Web', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1570', 'JORGE', 'FARRO', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1571', 'ERIKA', 'VERA', null, 'ERICKALEXA2002@HORTMAIL.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1572', 'LIANNE MADELINE', 'GALVEZ LA TORRE', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1573', 'MARIA', 'DE LA LUZ', null, 'no@tiene.com', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1574', 'RAUL', '-', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1575', 'ORIETTA', 'BLAS', null, 'NO@TIONE.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1576', 'CARLA', 'PORTOCARRERO', null, 'NO@DEJO.COM', null, 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1577', 'CARMEN', 'VARGUEZ', null, 'NO@TIENE.COM', ' 949567533,0', 'Ubicación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1578', 'MARITAS', 'BURGA', null, 'marita_bje@hotmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');
INSERT INTO `customers` VALUES ('1579', 'PEDRO', 'PARREÑO', null, 'pedroparreno0807@gmail.com', null, 'Recomendación', null, null, null, '2017-04-01 00:00:00', null, '1', '1', '0');

-- ----------------------------
-- Table structure for deposits
-- ----------------------------
DROP TABLE IF EXISTS `deposits`;
CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(8,2) DEFAULT NULL,
  `receipt_id` int(10) unsigned DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `deposits_receipt_id_foreign` (`receipt_id`),
  KEY `deposits_payment_id_foreign` (`payment_id`),
  KEY `deposits_user_id_foreign` (`user_id`),
  KEY `deposits_created_user_id_foreign` (`created_user_id`),
  KEY `deposits_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of deposits
-- ----------------------------
INSERT INTO `deposits` VALUES ('1', '1800.00', '1', '1', null, '2017-09-05 16:59:57', '2017-09-05 16:59:57', '9', null, '1');
INSERT INTO `deposits` VALUES ('2', '2500.00', '2', '1', null, '2017-09-05 17:31:40', '2017-09-05 17:31:40', '9', null, '1');
INSERT INTO `deposits` VALUES ('3', '27750.25', '3', '1', null, '2017-09-05 22:47:39', '2017-09-05 22:47:39', '9', null, '1');
INSERT INTO `deposits` VALUES ('4', '15000.00', '4', '2', null, '2017-09-06 15:39:21', '2017-09-06 15:39:21', '9', null, '1');
INSERT INTO `deposits` VALUES ('5', '1707.93', '4', '4', null, '2017-09-06 15:40:21', '2017-09-06 15:40:21', '9', null, '1');
INSERT INTO `deposits` VALUES ('6', '5900.00', '6', '2', null, '2017-09-06 22:44:01', '2017-09-06 22:44:01', '9', null, '1');
INSERT INTO `deposits` VALUES ('7', '1806.00', '5', '2', null, '2017-09-07 00:17:30', '2017-09-07 00:17:30', '9', null, '1');
INSERT INTO `deposits` VALUES ('8', '27750.25', '8', '2', null, '2017-09-07 00:22:24', '2017-09-07 00:22:24', '9', null, '1');
INSERT INTO `deposits` VALUES ('9', '9900.00', '7', '1', null, '2017-09-07 00:22:32', '2017-09-07 00:22:32', '9', null, '1');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liquidation_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `files_liquidation_id_foreign` (`liquidation_id`),
  KEY `files_created_user_id_foreign` (`created_user_id`),
  KEY `files_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `history_created_user_id_foreign` (`created_user_id`),
  KEY `history_updated_user_id_foreign` (`updated_user_id`),
  KEY `history_type_id_foreign` (`type_id`),
  KEY `history_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for history_types
-- ----------------------------
DROP TABLE IF EXISTS `history_types`;
CREATE TABLE `history_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `history_types_created_user_id_foreign` (`created_user_id`),
  KEY `history_types_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of history_types
-- ----------------------------
INSERT INTO `history_types` VALUES ('1', 'User', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `history_types` VALUES ('2', 'Role', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);

-- ----------------------------
-- Table structure for liquidations
-- ----------------------------
DROP TABLE IF EXISTS `liquidations`;
CREATE TABLE `liquidations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_utility` double(8,2) DEFAULT NULL,
  `p_venta_total` double(8,2) NOT NULL,
  `costo_total` double(8,2) NOT NULL,
  `sale_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `send` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `liquidations_created_user_id_foreign` (`created_user_id`),
  KEY `liquidations_customer_id_foreign` (`customer_id`),
  KEY `liquidations_updated_user_id_foreign` (`updated_user_id`),
  KEY `liquidations_sale_id_foreign` (`sale_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of liquidations
-- ----------------------------
INSERT INTO `liquidations` VALUES ('6', 'LO-000006', null, '1806.00', '0.00', '5', '2017-09-07 00:17:30', '2017-09-07 00:17:39', '3', '3', null, '1', null);
INSERT INTO `liquidations` VALUES ('7', 'LO-000007', '250.00', '27750.25', '7450.00', '7', '2017-09-07 00:22:24', '2017-09-07 02:20:03', '3', '1029', null, '0', '1');
INSERT INTO `liquidations` VALUES ('8', 'LO-000008', null, '7700.00', '0.00', '7', '2017-09-07 00:22:32', '2017-09-07 00:23:10', '3', '1029', null, '1', null);
INSERT INTO `liquidations` VALUES ('4', 'LO-000004', '3207.93', '16707.93', '13500.00', '4', '2017-09-06 15:40:21', '2017-09-07 00:09:50', '3', '1', null, '1', '1');

-- ----------------------------
-- Table structure for liquidation_service
-- ----------------------------
DROP TABLE IF EXISTS `liquidation_service`;
CREATE TABLE `liquidation_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liquidation_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  `precio_t` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `costo` double(8,2) DEFAULT NULL,
  `fecha_pago` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `liquidation_service_liquidation_id_foreign` (`liquidation_id`),
  KEY `liquidation_service_service_id_foreign` (`service_id`),
  KEY `liquidation_service_created_user_id_foreign` (`created_user_id`),
  KEY `liquidation_service_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of liquidation_service
-- ----------------------------
INSERT INTO `liquidation_service` VALUES ('15', '4', '1', '16707.93', '5569.31', '3', '11700.00', '2017-09-06 00:00:00', null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('21', '6', '1', '1800.00', '1800.00', '1', null, null, null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('22', '6', '20', '6.00', '3.00', '2', null, null, null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('23', '8', '3', '2200.00', '2200.00', '1', null, null, null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('19', '4', '21', null, null, '1', '900.00', '2017-09-14 00:00:00', '15', '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('20', '4', '22', null, null, '3', '1000.00', '2017-09-16 00:00:00', '15', '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('24', '8', '5', '1900.00', '1900.00', '1', null, null, null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('25', '8', '1', '3600.00', '1800.00', '2', null, null, null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('26', '7', '2', '25550.25', '25550.25', '1', '25000.00', '2017-09-07 00:00:00', null, '3', null, '1');
INSERT INTO `liquidation_service` VALUES ('27', '7', '3', '2200.00', '2200.00', '1', '2100.00', '2017-09-07 00:00:00', null, '3', null, '1');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2015_12_29_015055_setup_access_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2016_07_03_062439_create_history_tables', '1');
INSERT INTO `migrations` VALUES ('5', '2017_02_10_211437_create_type_documents', '1');
INSERT INTO `migrations` VALUES ('6', '2017_03_22_181903_create_proveedores_table', '1');
INSERT INTO `migrations` VALUES ('7', '2017_03_27_214645_create_customers_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_03_28_232425_create_service_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_03_31_223932_create_visits_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_04_06_154846_create_quotes_table', '1');
INSERT INTO `migrations` VALUES ('11', '2017_04_06_163131_create_quotes_service_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_05_11_211437_create_payments_type_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_05_13_175216_create_sales_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_05_14_233007_create_sales_detail_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_05_25_172747_create_receipt_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_06_13_203951_create_countries_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_06_13_204048_create_nationalities_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_06_16_220509_create_deposit_table', '1');
INSERT INTO `migrations` VALUES ('19', '2017_06_21_213557_create_liquidacion_table', '1');
INSERT INTO `migrations` VALUES ('20', '2017_06_21_213617_create_detail_liquidacion_table', '1');
INSERT INTO `migrations` VALUES ('21', '2017_07_30_024606_create_file_table', '1');

-- ----------------------------
-- Table structure for nationalities
-- ----------------------------
DROP TABLE IF EXISTS `nationalities`;
CREATE TABLE `nationalities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countrie_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `nationalities_countrie_id_foreign` (`countrie_id`),
  KEY `nationalities_created_user_id_foreign` (`created_user_id`),
  KEY `nationalities_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nationalities
-- ----------------------------
INSERT INTO `nationalities` VALUES ('1', 'Afgano', '1', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('2', 'Alemán', '2', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('3', 'Árabe', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('4', 'Argentino', '4', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('5', 'Australiano', '5', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('6', 'Belga', '6', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('7', 'Boliviano', '7', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('8', 'Brasilero', '8', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('9', 'Camboyano', '9', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('10', 'Canadiense', '10', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('11', 'Chileno', '11', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('12', 'Chino', '12', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('13', 'Colombiano', '13', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('14', 'Coreano', '14', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('15', 'Costarricense', '15', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('16', 'Cubano', '16', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('17', 'Danés', '17', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('18', 'Ecuatoriano', '18', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('19', 'Egipcio', '19', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('20', 'Salvadoreño', '20', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('21', 'Español', '21', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('22', 'Estadounidense', '22', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('23', 'Estonio', '23', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('24', 'Etiope', '24', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('25', 'Filipino', '25', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('26', 'Finlandés', '26', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('27', 'Francés', '27', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('28', 'Galés', '28', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('29', 'Griego', '29', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('30', 'Guatemalteco', '30', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('31', 'Haitiano', '31', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('32', 'Holandés', '32', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('33', 'Hondureño', '33', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('34', 'Indonés', '34', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('35', 'Inglés', '35', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('36', 'Irlandés', '36', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('37', 'Israelí', '37', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('38', 'Italiano', '38', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('39', 'Japonés', '39', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('40', 'Jordano', '40', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('41', 'Letón', '41', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('42', 'Letonés', '42', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('43', 'Malayo', '43', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('44', 'Marroquí', '44', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('45', 'Mexicano', '45', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('46', 'Nicaragüense', '46', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('47', 'Noruego', '47', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('48', 'Neocelandés', '48', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('49', 'Panameño', '49', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('50', 'Paraguayo', '50', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('51', 'Peruano', '51', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('52', 'Polaco', '52', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('53', 'Portugués', '53', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('54', 'Puertorriqueño', '54', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('55', 'Dominicano', '55', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('56', 'Rumano', '56', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('57', 'Ruso', '57', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('58', 'Sueco', '58', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('59', 'Suizo', '59', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('60', 'Tailandés', '60', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('61', 'Taiwanes', '61', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('62', 'Turco', '62', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('63', 'Ucraniano', '63', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('64', 'Uruguayo', '64', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('65', 'Venezolano', '65', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('66', 'Vietnamita', '66', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '2', '2', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  KEY `password_resets_created_user_id_foreign` (`created_user_id`),
  KEY `password_resets_updated_user_id_foreign` (`updated_user_id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payments_type
-- ----------------------------
DROP TABLE IF EXISTS `payments_type`;
CREATE TABLE `payments_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `payments_type_created_user_id_foreign` (`created_user_id`),
  KEY `payments_type_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payments_type
-- ----------------------------
INSERT INTO `payments_type` VALUES ('1', 'Transferencia Bancaria', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('2', 'Masterd Card', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('3', 'Visa', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('4', 'Efectivo', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_created_user_id_foreign` (`created_user_id`),
  KEY `permissions_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'view-backend', 'View Backend', '1', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('2', 'manage-users', 'Manage Users', '2', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('3', 'manage-roles', 'Manage Roles', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('4', 'caja', 'Caja', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('5', 'ventas', 'Ventas', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('6', 'liquidaciones', 'Liquidaciones', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('7', 'cotizaciones', 'Cotizaciones', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('8', 'mantenimiento', 'Mantenimiento', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('9', 'visitas', 'Visitas', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('10', 'asignarvisitas', 'Asignarvisitas', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('11', 'agregarpagos', 'Agregarpagos', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('12', 'editarliquidacion', 'Editarliquidacion', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('13', 'generarliquidacion', 'Generarliquidacion', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('14', 'proveedores', 'Proveedores', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `permissions` VALUES ('15', 'servicios', 'Servicios', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_created_user_id_foreign` (`created_user_id`),
  KEY `permission_role_updated_user_id_foreign` (`updated_user_id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1', '3', '2', '2');
INSERT INTO `permission_role` VALUES ('2', '10', '3', '2', '2');
INSERT INTO `permission_role` VALUES ('3', '8', '3', '2', '2');
INSERT INTO `permission_role` VALUES ('4', '4', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('5', '1', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('6', '11', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('7', '5', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('8', '6', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('9', '1', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('10', '7', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('11', '6', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('12', '5', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('13', '9', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('14', '15', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('15', '14', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('16', '16', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('17', '17', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('18', '13', '2', '2', '2');

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `proveedores_created_user_id_foreign` (`created_user_id`),
  KEY `proveedores_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES ('1', 'NUEVO MUNDO', 'info@tours.com', '980777728', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('2', 'COSTAMAR', 'info@costamar.com', '953853545', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('3', 'CARELI', 'info@careli.com', '984476658', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('4', 'GOWAI', 'info@gowai.com', '981474258', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('5', 'LATAM', 'info@latam.com', '981475258', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('6', 'TURASER', 'info@turaser.com', '954758685', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `proveedores` VALUES ('7', 'TIKA TRAVEL', null, null, null, null, '2017-09-05 17:01:54', '2017-09-05 17:01:54', null, null, '1');
INSERT INTO `proveedores` VALUES ('8', 'DISNEY TRANS', null, null, null, null, '2017-09-05 17:01:54', '2017-09-05 17:01:54', null, null, '1');
INSERT INTO `proveedores` VALUES ('9', 'TIKA TRAVEL', null, null, null, null, '2017-09-05 17:01:55', '2017-09-05 17:01:55', null, null, '1');
INSERT INTO `proveedores` VALUES ('10', 'DISNEY TRANS', null, null, null, null, '2017-09-05 17:01:55', '2017-09-05 17:01:55', null, null, '1');
INSERT INTO `proveedores` VALUES ('11', 'TIKA', null, null, null, null, '2017-09-05 17:33:14', '2017-09-05 17:33:14', null, null, '1');
INSERT INTO `proveedores` VALUES ('12', 'TIKA', null, null, null, null, '2017-09-05 17:33:14', '2017-09-05 17:33:14', null, null, '1');
INSERT INTO `proveedores` VALUES ('13', 'TIKA', null, null, null, null, '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `proveedores` VALUES ('14', 'TIKA', null, null, null, null, '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `proveedores` VALUES ('15', 'RECEP', null, null, null, null, '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `proveedores` VALUES ('16', 'TOURS TIKA', null, null, null, null, '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `proveedores` VALUES ('17', 'TIKA', null, null, null, null, '2017-09-06 20:49:53', '2017-09-06 20:49:53', '3', null, '1');
INSERT INTO `proveedores` VALUES ('18', 'REPS', null, null, null, null, '2017-09-07 00:09:50', '2017-09-07 00:09:50', null, null, '1');
INSERT INTO `proveedores` VALUES ('19', 'CASA', null, null, null, null, '2017-09-07 00:09:50', '2017-09-07 00:09:50', null, null, '1');

-- ----------------------------
-- Table structure for quotes
-- ----------------------------
DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_id` int(10) unsigned DEFAULT NULL,
  `date_vality` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double(8,2) unsigned DEFAULT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `quotes_visit_id_foreign` (`visit_id`),
  KEY `quotes_customer_id_foreign` (`customer_id`),
  KEY `quotes_created_user_id_foreign` (`created_user_id`),
  KEY `quotes_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quotes
-- ----------------------------
INSERT INTO `quotes` VALUES ('1', '1', 'QO-000001', '1', '2017-09-05', '2017-09-05 16:58:12', '2017-09-05 16:58:12', '1800.00', 'la cotización sera valida solo para la fecha actual.', '3', null, '1');
INSERT INTO `quotes` VALUES ('2', '1', 'QO-000002', '1', '2017-09-05', '2017-09-05 17:29:10', '2017-09-05 17:29:10', '2500.00', 's', '3', null, '1');
INSERT INTO `quotes` VALUES ('3', '3', 'QO-000003', '3', '2017-09-05', '2017-09-05 22:47:07', '2017-09-05 22:47:07', '27750.25', null, '3', null, '1');
INSERT INTO `quotes` VALUES ('4', '1', 'QO-000004', '2', '2017-09-06', '2017-09-06 15:38:34', '2017-09-06 15:38:34', '16707.93', 'Sin comentarios', '3', null, '1');
INSERT INTO `quotes` VALUES ('5', '3', 'QO-000005', '4', '2017-09-06', '2017-09-06 20:49:53', '2017-09-06 20:49:53', '1806.00', 'Esta cotizacion no posee comentarios', '3', null, '1');
INSERT INTO `quotes` VALUES ('6', '1029', 'QO-000006', '35', '2017-09-06', '2017-09-06 22:26:49', '2017-09-06 22:26:49', '9900.00', null, '3', null, '1');
INSERT INTO `quotes` VALUES ('7', '1052', 'QO-000007', '40', '2017-09-20', '2017-09-06 22:27:57', '2017-09-06 22:27:57', '5900.00', null, '3', null, '1');
INSERT INTO `quotes` VALUES ('8', '1051', 'QO-000008', '39', '2017-09-06', '2017-09-06 22:37:34', '2017-09-06 22:37:34', '6000.00', null, '3', null, '1');
INSERT INTO `quotes` VALUES ('9', '1053', 'QO-000009', '41', '2017-09-07', '2017-09-07 01:22:25', '2017-09-07 01:22:25', '6300.00', null, '3', null, '1');

-- ----------------------------
-- Table structure for quote_service
-- ----------------------------
DROP TABLE IF EXISTS `quote_service`;
CREATE TABLE `quote_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned DEFAULT NULL,
  `quote_id` int(10) unsigned DEFAULT NULL,
  `price` double(8,2) unsigned DEFAULT NULL,
  `cantidad` int(10) unsigned DEFAULT NULL,
  `total_price` double(8,2) NOT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `quote_service_service_id_foreign` (`service_id`),
  KEY `quote_service_quote_id_foreign` (`quote_id`),
  KEY `quote_service_created_user_id_foreign` (`created_user_id`),
  KEY `quote_service_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quote_service
-- ----------------------------
INSERT INTO `quote_service` VALUES ('1', '1', '1', '1800.00', '1', '1800.00', 'Todos los servicios están  incluidos en el tour.', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('2', '4', '2', '2500.00', '1', '2500.00', 'd', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('3', '2', '3', '25550.25', '1', '25550.25', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('4', '3', '3', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('5', '1', '4', '5569.31', '3', '16707.93', 'ewewq', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('6', '1', '5', '1800.00', '1', '1800.00', 'Incluye todos los servicios', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('7', '20', '5', '3.00', '2', '6.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('8', '3', '6', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('9', '5', '6', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('10', '3', '6', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('11', '1', '6', '1800.00', '2', '3600.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('12', '1', '7', '1800.00', '1', '1800.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('13', '3', '7', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('14', '5', '7', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('15', '2', '8', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('16', '5', '8', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('17', '3', '8', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('18', '3', '9', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('19', '3', '9', '2200.00', '1', '2200.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('20', '5', '9', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_total` double(8,2) DEFAULT NULL,
  `sale_id` int(10) unsigned DEFAULT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `receipts_sale_id_foreign` (`sale_id`),
  KEY `receipts_created_user_id_foreign` (`created_user_id`),
  KEY `receipts_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of receipts
-- ----------------------------
INSERT INTO `receipts` VALUES ('1', 'RO-000001', '1800.00', '1', null, '2017-09-05 16:58:25', '2017-09-05 16:58:25', '3', null, '1');
INSERT INTO `receipts` VALUES ('2', 'RO-000002', '2500.00', '2', null, '2017-09-05 17:29:15', '2017-09-05 17:29:15', '3', null, '1');
INSERT INTO `receipts` VALUES ('3', 'RO-000003', '27750.25', '3', null, '2017-09-05 22:47:14', '2017-09-05 22:47:14', '3', null, '1');
INSERT INTO `receipts` VALUES ('4', 'RO-000004', '16707.93', '4', null, '2017-09-06 15:38:49', '2017-09-06 15:38:49', '3', null, '1');
INSERT INTO `receipts` VALUES ('5', 'RO-000005', '1806.00', '5', null, '2017-09-06 22:28:18', '2017-09-06 22:28:18', '3', null, '1');
INSERT INTO `receipts` VALUES ('6', 'RO-000006', '5900.00', '6', null, '2017-09-06 22:29:01', '2017-09-06 22:29:01', '3', null, '1');
INSERT INTO `receipts` VALUES ('7', 'RO-000007', '9900.00', '7', null, '2017-09-07 00:21:39', '2017-09-07 00:21:39', '3', null, '1');
INSERT INTO `receipts` VALUES ('8', 'RO-000008', '27750.25', '8', null, '2017-09-07 00:21:53', '2017-09-07 00:21:53', '3', null, '1');
INSERT INTO `receipts` VALUES ('9', 'RO-000009', '6300.00', '9', null, '2017-09-07 01:25:36', '2017-09-07 01:25:36', '3', null, '1');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_created_user_id_foreign` (`created_user_id`),
  KEY `roles_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrador', '1', '1', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `roles` VALUES ('2', 'Counter', '0', '2', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `roles` VALUES ('3', 'Recepcionista', '0', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);
INSERT INTO `roles` VALUES ('4', 'Contabilidad', '0', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null);

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_created_user_id_foreign` (`created_user_id`),
  KEY `role_user_updated_user_id_foreign` (`updated_user_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '2', '1', null, null);
INSERT INTO `role_user` VALUES ('2', '7', '2', null, null);
INSERT INTO `role_user` VALUES ('3', '1', '2', null, null);
INSERT INTO `role_user` VALUES ('4', '8', '2', null, null);
INSERT INTO `role_user` VALUES ('5', '3', '2', null, null);
INSERT INTO `role_user` VALUES ('6', '4', '3', null, null);
INSERT INTO `role_user` VALUES ('7', '5', '4', null, null);
INSERT INTO `role_user` VALUES ('8', '6', '2', null, null);
INSERT INTO `role_user` VALUES ('9', '9', '4', null, null);
INSERT INTO `role_user` VALUES ('10', '10', '4', null, null);
INSERT INTO `role_user` VALUES ('11', '11', '1', null, null);
INSERT INTO `role_user` VALUES ('12', '12', '1', null, null);

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_quote_id_foreign` (`quote_id`),
  KEY `sales_customer_id_foreign` (`customer_id`),
  KEY `sales_user_id_foreign` (`user_id`),
  KEY `sales_created_user_id_foreign` (`created_user_id`),
  KEY `sales_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('7', '6', '1029', '3', 'VO-000007', '9900.00', null, '2017-09-07 00:21:39', '2017-09-07 00:21:39', '3', null, '1');
INSERT INTO `sales` VALUES ('8', '3', '3', '3', 'VO-000008', '27750.25', null, '2017-09-07 00:21:53', '2017-09-07 00:21:53', '3', null, '1');
INSERT INTO `sales` VALUES ('9', '9', '1053', '3', 'VO-000009', '6300.00', null, '2017-09-07 01:25:36', '2017-09-07 01:25:36', '3', null, '1');
INSERT INTO `sales` VALUES ('4', '4', '1', '3', 'VO-000004', '16707.93', 'Sin comentarios', '2017-09-06 15:38:49', '2017-09-06 15:38:49', '3', null, '1');
INSERT INTO `sales` VALUES ('5', '5', '3', '3', 'VO-000005', '1806.00', 'Esta cotizacion no posee comentarios', '2017-09-06 22:28:18', '2017-09-06 22:28:18', '3', null, '1');
INSERT INTO `sales` VALUES ('6', '7', '1052', '3', 'VO-000006', '5900.00', 'xcxc', '2017-09-06 22:29:01', '2017-09-06 22:29:01', '3', null, '1');

-- ----------------------------
-- Table structure for sale_service
-- ----------------------------
DROP TABLE IF EXISTS `sale_service`;
CREATE TABLE `sale_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total_price` double(8,2) NOT NULL,
  `sale_id` int(10) unsigned DEFAULT NULL,
  `service_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sale_service_sale_id_foreign` (`sale_id`),
  KEY `sale_service_service_id_foreign` (`service_id`),
  KEY `sale_service_created_user_id_foreign` (`created_user_id`),
  KEY `sale_service_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sale_service
-- ----------------------------
INSERT INTO `sale_service` VALUES ('1', 'TOURS A DISNEY X 3 DIAS', 'Todos los servicios están  incluidos en el tour.', '1800.00', '1', '1800.00', '1', '1', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('2', 'TOURS A CHILE X 1 DIA', 'd', '2500.00', '1', '2500.00', '2', '4', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('3', 'TOURS A EUROPA X 3 DIAS', null, '25550.25', '1', '25550.25', '3', '2', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('4', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '3', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('5', 'TOURS A DISNEY X 3 DIAS', 'ewewq', '5569.31', '3', '16707.93', '4', '1', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('6', 'TOURS A DISNEY X 3 DIAS', 'Incluye todos los servicios', '1800.00', '1', '1800.00', '5', '1', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('7', 'PRUEBA SERVICIO NUEVO', null, '3.00', '2', '6.00', '5', '20', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('8', 'TOURS A DISNEY X 3 DIAS', null, '1800.00', '1', '1800.00', '6', '1', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('9', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '6', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('10', 'PROGRAMA EUROPA', null, '1900.00', '1', '1900.00', '6', '5', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('11', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '7', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('12', 'PROGRAMA EUROPA', null, '1900.00', '1', '1900.00', '7', '5', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('13', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '7', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('14', 'TOURS A DISNEY X 3 DIAS', null, '1800.00', '2', '3600.00', '7', '1', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('15', 'TOURS A EUROPA X 3 DIAS', null, '25550.25', '1', '25550.25', '8', '2', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('16', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '8', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('17', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '9', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('18', 'TOURS A COLOMBIA X 2 DIAS', null, '2200.00', '1', '2200.00', '9', '3', null, null, '3', null, '1');
INSERT INTO `sale_service` VALUES ('19', 'PROGRAMA EUROPA', null, '1900.00', '1', '1900.00', '9', '5', null, null, '3', null, '1');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `provider_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `services_provider_id_foreign` (`provider_id`),
  KEY `services_created_user_id_foreign` (`created_user_id`),
  KEY `services_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', 'TOURS A DISNEY X 3 DIAS', '1800.00', '1', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('2', 'TOURS A EUROPA X 3 DIAS', '1900.00', '2', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('3', 'TOURS A COLOMBIA X 2 DIAS', '2200.00', '4', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('4', 'TOURS A CHILE X 1 DIA', '1700.00', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('5', 'PROGRAMA EUROPA', '1900.00', '4', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('6', 'TOURS A VENEZUELA X 1 SEMANA', '1600.00', '3', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('7', 'HOTEL 5 ESTRELLAS', '2200.00', '2', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('8', 'GUIA BILINGUE', '1200.00', '1', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('9', 'ESTADIA 5 NOCHES', '850.00', '5', '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, '1');
INSERT INTO `services` VALUES ('10', 'HOTEL', '500.00', '7', '2017-09-05 17:01:54', '2017-09-05 17:01:54', null, null, '1');
INSERT INTO `services` VALUES ('11', 'TRASLADO', '600.00', '8', '2017-09-05 17:01:54', '2017-09-05 17:01:54', null, null, '1');
INSERT INTO `services` VALUES ('12', 'HOTEL', '500.00', '9', '2017-09-05 17:01:55', '2017-09-05 17:01:55', null, null, '1');
INSERT INTO `services` VALUES ('13', 'TRASLADO', '600.00', '10', '2017-09-05 17:01:55', '2017-09-05 17:01:55', null, null, '1');
INSERT INTO `services` VALUES ('14', 'TIKA 2', null, '11', '2017-09-05 17:33:14', '2017-09-05 17:33:14', null, null, '1');
INSERT INTO `services` VALUES ('15', 'TIKA MOTEL', null, '12', '2017-09-05 17:33:14', '2017-09-05 17:33:14', null, null, '1');
INSERT INTO `services` VALUES ('16', 'HOTEL', null, '13', '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `services` VALUES ('17', 'TRANSPORTE', null, '14', '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `services` VALUES ('18', 'OTRA', null, '15', '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `services` VALUES ('19', 'CASA', null, '16', '2017-09-05 22:49:10', '2017-09-05 22:49:10', null, null, '1');
INSERT INTO `services` VALUES ('20', 'PRUEBA SERVICIO NUEVO', '3.00', '17', '2017-09-06 20:49:53', '2017-09-06 20:49:53', '3', null, '1');
INSERT INTO `services` VALUES ('21', 'TKA SAD', '900.00', '18', '2017-09-07 00:09:50', '2017-09-07 00:09:50', null, null, '1');
INSERT INTO `services` VALUES ('22', 'HOTEL', '1000.00', '19', '2017-09-07 00:09:50', '2017-09-07 00:09:50', null, null, '1');

-- ----------------------------
-- Table structure for type_documents
-- ----------------------------
DROP TABLE IF EXISTS `type_documents`;
CREATE TABLE `type_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_documents_created_user_id_foreign` (`created_user_id`),
  KEY `type_documents_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of type_documents
-- ----------------------------
INSERT INTO `type_documents` VALUES ('1', 'DNI', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');
INSERT INTO `type_documents` VALUES ('2', 'Pasapote', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');
INSERT INTO `type_documents` VALUES ('3', 'RUC', '2017-09-05 16:49:40', '2017-09-05 16:49:40', '1', '1', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_user_id_foreign` (`created_user_id`),
  KEY `users_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Amanda Garay', 'amandagaray@tikatravel.pe', '$2y$10$okCcXxGzow3R3RoARCbP3uduruFimF0wg9JngaXyjCvpsQzVrZ7/C', '1', '115a880715763ff1774b188f7ef3f454', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('2', 'Luis Zamora', 'luiszamora@tikagroup.com.pe', '$2y$10$RmqHCwk2j46jdW2hITPO.Oc3UZGHmy3RIwSUu9ic.tGi5tH8MwSWK', '1', '154bdda927f478d3d257126d82b684a5', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('3', 'Silvana Velasque', 'silvanavelasque@tikatravel.pe', '$2y$10$Ut/0JiAuZ9jUoWJ6kIVkgucXkxA5J5x9HXqdl4NmGXVT/YDs1cIbq', '1', '402cb38be350c0f7eed15d4ad2f690eb', '1', '9859562653', 'WHAvl2mvGs5bpv6D4Eks0vlblNnE8gyjXkGjsMGALPx7F0aqcBUpHqQKSXYF', '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('4', 'Fiorela Salas', 'fiorelasalas@tikatravel.pe', '$2y$10$PVU8PIcYafs5oWoEjys/o.WSLbXGN3O5qnGUYifW2KzwVPWpnJDDC', '1', 'b1e4e87744bd850dc27d36a9c488af73', '1', '9859562653', 'NiRoetfOyftn8lScKkqoXelk3IU6ZRMBrsimkABNfb19q4j20yFLa2dVt9Fh', '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('5', 'Laura Florencia', 'lauraflorencia@tikatravel.pe', '$2y$10$XlmbaKkZOkG1ReX/RqQeKOmAqvbtmK1IWTZJ2ArqmVvT4D4NAeCg2', '1', '33960dcb1ec8eaefa492dcd4ef3edd91', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('6', 'Fredy Caceres', 'fredycaceres@tikatravel.pe', '$2y$10$moLz1XuWeQdwxsUJ.hIwIuWu4XVqaLqg9cDTb3lyVLTAaJ6ykveWe', '1', '8d1551fa6d283b72545bb5411e9b5c56', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('7', 'Marlene Pita', 'marlenepita@tikatravel.pe', '$2y$10$KlvrCelhiQ46oje/wehCDOBK5SWnLZ67mB3KXpw8Fnx4RE2fvR7.C', '1', 'e4322276b03720e488b7fbd94b3ffb30', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('8', 'Carmen Huasasquiche', 'carmenhuasasquiche@tikatravel.pe', '$2y$10$LP4eSeaseBjh/vI4QWVamOLPAXenMN71OafQmYec1/ULQ5HSlDR6O', '1', 'a0fb434bc371aa4e2dfa7462ac729f89', '1', '9859562653', null, '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('9', 'Gedeon Josco', 'gedeonjosco@tikagroup.com.pe', '$2y$10$NJienLN1.32knSOq9JXjlujYoLM0OASty3.pPjX4MGASR4omzWs/q', '1', '14807810625fd384871289c1548e83e6', '1', '9859562653', 'HA1g2Tai5pKTEyTespGLWzjll2gCpWrsb4PiAnBXqvQXmTZ0umWGyAyw90Zd', '2017-09-05 16:49:39', '2017-09-05 16:49:39', null, null, null);
INSERT INTO `users` VALUES ('10', 'Rosa Silvera', 'rosasilvera@tikagroup.com.pe', '$2y$10$aX/mvc.Tof6G4VHoKMLZJepG11FN2uLKsmZkGNT8i6SL0Q4ZHeJm6', '1', 'bfdcea7bc76a7ba9aba814003608f11e', '1', '9859562653', null, '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, null);
INSERT INTO `users` VALUES ('11', 'German Llop', 'germanllop@tikagroup.com.pe', '$2y$10$1DHHdtISKXk97vMTU2jgteLtOIAAqBJtzXlYr1c4Z7mDnqYY/3sjO', '1', 'fc2d00e2eb8ba30e607acda2e14af1db', '1', '9859562653', null, '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, null);
INSERT INTO `users` VALUES ('12', 'Jose Martinsky', 'josemartinsky@tikagroup.com.pe', '$2y$10$T1pLE9eU3WHBZ/SndbDRGehk5uSWseA18Ey2WzwPQoSMWCthtDU1u', '1', 'f201f7a295720fba9bdb3f398ba8aacc', '1', '9859562653', null, '2017-09-05 16:49:40', '2017-09-05 16:49:40', null, null, null);

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `counter_id` int(10) unsigned NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `visits_user_id_foreign` (`user_id`),
  KEY `visits_customer_id_foreign` (`customer_id`),
  KEY `visits_counter_id_foreign` (`counter_id`),
  KEY `visits_created_user_id_foreign` (`created_user_id`),
  KEY `visits_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('1', '4', '1', '3', 'TOUR DISNEY', '2017-09-05 16:51:47', '2017-09-05 16:51:47', '4', null, '1');
INSERT INTO `visits` VALUES ('2', '4', '1', '3', 'd', '2017-09-05 17:28:46', '2017-09-05 17:28:46', '4', null, '1');
INSERT INTO `visits` VALUES ('3', '4', '3', '3', 'Compra de cusco', '2017-09-05 22:46:36', '2017-09-05 22:46:36', '4', null, '1');
INSERT INTO `visits` VALUES ('4', '4', '3', '3', '1', '2017-09-06 20:33:29', '2017-09-06 20:33:29', '4', null, '1');
INSERT INTO `visits` VALUES ('5', '4', '1', '3', '2', '2017-09-06 20:33:37', '2017-09-06 20:33:37', '4', null, '1');
INSERT INTO `visits` VALUES ('6', '4', '2', '7', 'COMPRA DE PAQUETE A EUROPA', '2017-09-06 20:33:53', '2017-09-06 20:33:53', '4', null, '1');
INSERT INTO `visits` VALUES ('7', '4', '1001', '3', '1001', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('8', '4', '1002', '3', '1002', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('9', '4', '1003', '3', '1003', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('10', '4', '1004', '3', '1004', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('11', '4', '1005', '3', '1005', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('12', '4', '1006', '3', '1006', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('13', '4', '1007', '3', '1007', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('14', '4', '1008', '3', '1008', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('15', '4', '1009', '3', '1009', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('16', '4', '1010', '3', '1010', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('17', '4', '1011', '3', '1011', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('18', '4', '1012', '3', '1012', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('19', '4', '1013', '3', '1013', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('20', '4', '1014', '3', '1014', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('21', '4', '1015', '3', '1015', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('22', '4', '1016', '3', '1016', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('23', '4', '1017', '3', '1017', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('24', '4', '1018', '3', '1018', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('25', '4', '1019', '3', '1019', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('26', '4', '1020', '3', '1020', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('27', '4', '1021', '3', '1021', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('28', '4', '1022', '3', '1022', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('29', '4', '1023', '3', '1023', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('30', '4', '1024', '3', '1024', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('31', '4', '1025', '3', '1025', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('32', '4', '1026', '3', '1026', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('33', '4', '1027', '3', '1027', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('34', '4', '1028', '3', '1028', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('35', '4', '1029', '3', '1029', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('36', '4', '1030', '3', '1030', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('37', '4', '1049', '3', '1049', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('38', '4', '1050', '3', '1050', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('39', '4', '1051', '3', '1051', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('40', '4', '1052', '3', '1052', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
INSERT INTO `visits` VALUES ('41', '4', '1053', '3', '1053', '2017-09-06 22:16:16', '2017-09-06 22:16:16', '4', null, '1');
