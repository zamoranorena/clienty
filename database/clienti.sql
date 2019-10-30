/*
Navicat MySQL Data Transfer

Source Server         : XAMPP2 LOCAL
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : clienti

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-31 19:31:54
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
INSERT INTO `countries` VALUES ('1', 'AF', 'Afganistán', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('2', 'AL', 'Alemania', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('3', 'AR', 'Argentina', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('4', 'AU', 'Australia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('5', 'BE', 'Bélgica', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('6', 'BO', 'Bolivia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('7', 'BR', 'Brasil', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('8', 'AF', 'Camboya', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('9', 'AF', 'Canadá', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('10', 'AF', 'Chile', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('11', 'AF', 'China', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('12', 'AF', 'Colombia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('13', 'AF', 'Corea', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('14', 'AF', 'Costa Rica', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('15', 'AF', 'Cuba', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('16', 'AF', 'Dinamarca', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('17', 'AF', 'Ecuador', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('18', 'AF', 'Egipto', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('19', 'AF', 'El Salvador', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('20', 'AF', 'España', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('21', 'AF', 'Estados Unidos', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('22', 'AF', 'Estonia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('23', 'AF', 'Etiopia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('24', 'AF', 'Filipinas', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('25', 'AF', 'Finlandia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('26', 'AF', 'Francia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('27', 'AF', 'Gales', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('28', 'AF', 'Grecia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('29', 'AF', 'Guatemala', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('30', 'AF', 'Haití', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('31', 'AF', 'Holanda', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('32', 'AF', 'Honduras', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('33', 'AF', 'Indonesia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('34', 'AF', 'Inglaterra', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('35', 'AF', 'Irlanda', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('36', 'AF', 'Israel', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('37', 'AF', 'Italia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('38', 'AF', 'Japón', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('39', 'AF', 'Jordania', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('40', 'AF', 'Laos', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('41', 'AF', 'Letonia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('42', 'AF', 'Lituania', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('43', 'AF', 'Malasia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('44', 'AF', 'Marrueco', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('45', 'AF', 'México', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('46', 'AF', 'Nicaragua', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('47', 'AF', 'Noruega', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('48', 'AF', 'Nueva Zelanda', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('49', 'AF', 'Panamá', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('50', 'AF', 'Paraguay', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('51', 'AF', 'Perú', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('52', 'AF', 'Polonia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('53', 'AF', 'Portugal', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('54', 'AF', 'Puerto Rico', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('55', 'AF', 'Republic Dominicana', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('56', 'AF', 'Rumania', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('57', 'AF', 'Rusia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('58', 'AF', 'Suecia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('59', 'AF', 'Suiza', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('60', 'AF', 'Tailandia', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('61', 'AF', 'Taiwán', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('62', 'AF', 'Turquía', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('63', 'AF', 'Ucrania', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('64', 'AF', 'Uruguay', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('65', 'AF', 'Venezuela', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');
INSERT INTO `countries` VALUES ('66', 'AF', 'Vietnam', '2017-08-23 00:11:41', '2017-08-23 00:11:41', '2', '2', '1');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `number_document` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_document_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_user_id_foreign` (`user_id`) USING BTREE,
  KEY `customers_created_user_id_foreign` (`created_user_id`) USING BTREE,
  KEY `customers_updated_user_id_foreign` (`updated_user_id`) USING BTREE,
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`created_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`updated_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customers_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1578 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'Jose', 'Martinsky', 'Peruano', 'josemartinsky@gmail.com', '945758698', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('2', 'Jose', 'Rojas', 'Peruano', 'jr_1921@hotmail.com', ' 977519094,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('3', 'Juan', 'Guerrero', 'Peruano', 'notiene@gmail.com', ' 985797853,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('4', 'Haydee', 'Pardo', 'Peruano', 'haydepardo@gmail.com', ' 939444759,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('5', 'Justo', 'Chavez', 'Peruano', 'notiene@gmail.com', ' 960322523,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-28 23:02:34', '1', '1', '1', '19787342', '2');
INSERT INTO `customers` VALUES ('6', 'Marco', 'Gerkes', 'Peruano', 'mgerkes@quimicasuiza.com', ' 993534518,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('7', 'Felipe', 'Sotomayor', 'Peruano', 'felipe.sotomayor@gmail.com', ' 992264334,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('8', 'Siny', 'Soto', 'Peruano', 'sindy_soto@hotmail.com', ' 974057133,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('9', 'Maria Teresa', 'landovere', 'Peruano', 'terelandavere@yahoo.com', ' 998887031,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('10', 'Eliana', 'Arias', 'Peruano', 'nena406_77@hotmail.com', ' 994889502,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('11', 'Johan', 'Ramirez', 'Peruano', 'conejo_brad@hotmail.es', ' 972257770,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('12', 'Juan', 'Martinez', 'Peruano', 'juan.martinez@aristocrat.com', ' 7872411445,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('13', 'Kristi', 'Clayton', 'Peruano', 'gkaylor7@yahoo.com', ' 2532212233,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('14', 'Gaby', 'Guerra', 'Peruano', 'gabyguerra20@hotmail.com', ' 921132691,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('15', 'Yomayra', 'Canavera', 'Peruano', 'ycanaveramandujano@gmail.com', ' 987636496,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('16', 'Roberto ', 'Manrique', 'Peruano', 'robertomanriquem@yahoo.com', ' 998887031,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('17', 'Alejandro', 'Bala', 'Peruano', 'alex54858@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('18', 'Amparo', 'Zevallos', 'Peruano', 'amparitomz@hotmail.com', ' 940297263,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('19', 'Magaly ', 'Arce', 'Peruano', 'maga_7402@hotmail.com', ' 946552259,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('20', 'Elena', 'Huerta', 'Peruano', 'maejol@yahoo.es', null, 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('21', 'Sofia', 'Ccama', 'Peruano', 'sccama@reniec.gob.pe', ' 13154000,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('22', 'Rosita', 'Tello', 'Peruano', 'tatianalove777@gmail.com', ' 999135506,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('23', 'Ursula', 'Castro', 'Peruano', 'ursulitacastro@hotmail.com', ' 933517611,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('24', 'Alfredo', 'Nakame', 'Peruano', 'alnavi11@hotmail.com', ' 997900372,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('25', 'Yomayra', 'Canavera', 'Peruano', 'ycanaveramandujaro@gmail.com', ' 987636496,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('26', 'Nestor', 'Herrera', 'Peruano', 'yacoherrerajc@hotmail.com', ' 978614478,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('27', 'Teofila', 'Zevallos', 'Peruano', 'amparitomz@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('28', 'Rosita', 'Tello', 'Peruano', 'tatianalove777@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('29', 'William', 'Rocas', 'Peruano', 'wroca@maximainternacional.com.pe', ' 943983067,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('30', 'Paola', 'Del risco', 'Peruano', 'paolitagrone18@gmail.com', ' 3375530,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('31', 'Lorenza', 'Martinez', 'Peruano', 'arochanmar@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('32', 'Miguel', 'Quispe', 'Peruano', 'los_desadaptados_17@hotmail.com', ' 949095957,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('33', 'Jessica', 'Varela', 'Peruano', 'dulcetweety21@hotmail.com', ' 1569269963,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('34', 'Dalia', 'Chang', 'Peruano', 'daliachang@gmail.com', ' 986451957,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('35', 'Gustavo', 'Salazar', 'Peruano', 'mgaland@hotmail.com', ' 959078194,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('36', 'Edwin', 'Roda', 'Peruano', 'earodas@gmail.com', ' 997974309,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('37', 'Martha', 'Rojas', 'Peruano', 'martha.irn@hotmail.com', ' 998702610,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('38', 'Cecilia', 'Quinoa', 'Peruano', 'ccilia3@yahoo.es', ' 999587207,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('39', 'Claudia', 'Pon', 'Peruano', 'Klaudia.poon@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('40', 'Carlos', 'Gallardo', 'Peruano', 'cgallardo@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('41', 'Moises', 'Segovia', 'Peruano', 'moisesegovia@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('42', 'Elvis', 'Tuncar', 'Peruano', 'tuncar.lopez@gmail.com', ' 980826831,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('43', 'Caroline', 'Kilgarrif', 'Peruano', 'frednicraith@gmail.com', ' 353868529071,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('44', 'Luz', 'Belen', 'Peruano', 'luzbelenva1979@gmail.com', ' 947510246,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('45', 'Victor', 'Ausejo', 'Peruano', 'notiene@gmail.com', ' 2672384,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('46', 'Natalie', 'Aguilar', 'Peruano', 'nathalie.1410@hotmail.com', ' 949296248,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('47', 'Luz', 'Hernandez', 'Peruano', 'jade_1988_16@hotmail.com', ' 997187805,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('48', 'Lili', 'Valenzuela', 'Peruano', 'lilivalenzuelah1@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('49', 'Llily', 'Ampudio', 'Peruano', 'marley91140@hotmail.com', ' 954587397,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('50', 'Jorge', 'Cornea', 'Peruano', 'corneagael184@gmail.com', ' 933349411,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('51', 'Mario', 'Cabrejos', 'Peruano', 'macatoo1981@gmail.com', ' 934664657,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('52', 'Diego', 'Diaz', 'Peruano', 'diego_dc14@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('53', 'Ivanovich', 'Izquierdo', 'Peruano', 'arthur_left@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('54', 'Jorge', 'Correa', 'Peruano', 'correagael184@gmail.com', ' 933349411,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('55', 'Noemi', 'Peña', 'Peruano', 'noemi_014@hotmail.com', ' 940244563,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('56', 'Vladimir', 'Begazo', 'Peruano', 'begazovladimir84@hotmail.com', ' 954505680,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('57', 'Carlos ', 'Rios', 'Peruano', 'carlos.rios.m10@hotmail.com', ' 993020840,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('58', 'Susana', 'Cayo', 'Peruano', 'notiene@gmail.com', ' 9998000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('59', 'Shella', 'Alvarado', 'Peruano', 'salvarado@cientifica.edu.pe', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('60', 'Emily', 'Cabanillas', 'Peruano', 'escabrejo@hotmail.com', ' 962767470,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('61', 'Rebca', 'rivas', 'Peruano', 'rbk_iris@htomail.com', ' 980701888,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('62', 'Lucy', 'Barrientos', 'Peruano', 'notiene@gmail.com', ' 927374611,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('63', 'Junior', 'Contreras', 'Peruano', 'notiene@gmail.com', ' 975832889,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('64', 'Guis', 'ddd', 'Peruano', 'gar710@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('65', 'Lucia', 'Gonzales', 'Peruano', 'notiene@gmail.com', ' 927374611,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('66', 'Engelbert', 'Lopez', 'Peruano', 'engelbert105@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('67', 'Ruben', 'De la sota', 'Peruano', 'rddaso@hotmail.com', ' 966696329,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('68', 'Martin', 'Bazan', 'Peruano', 'martin.bazan@mundoceleste.pe', ' 946052897,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('69', 'Nathalie', 'Manzano', 'Peruano', 'joannybeth@gmail.com', ' 9120394096,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('70', 'Liliana', 'Hinojosa', 'Peruano', 'lhinojosah@gmail.com', ' 986885406,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('71', 'Teresa', 'Hurtado', 'Peruano', 'teresawupasaro@hotmail.com', ' 4604680,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('72', 'Jorge', 'Junca', 'Peruano', 'juncacanera@hotmail.com', ' 997920776,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('73', 'Sara', 'Noblecilla', 'Peruano', 'sara.noblecilla.merino@gmail.com', ' 2561781,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('74', 'Rafael', 'Pretell', 'Peruano', 'rafa_pretell@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('75', 'Melania', 'Martinez', 'Peruano', 'melania.martinez@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('76', 'Edgar', 'Suarez', 'Peruano', 'ed.suarez19@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('77', 'Marco', 'Tejada', 'Peruano', 'tejadamarco@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('78', 'Maria', 'Romero', 'Peruano', 'limarome@hotmail.com', ' 941888624,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('79', 'Ricardo', 'Quispe', 'Peruano', 'ricardo_rayo23@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('80', 'Tatiana', 'Vasto', 'Peruano', 'notiene@gmail.com', ' 986665456,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('81', 'Lourdes', 's', 'Peruano', 'notiene@gmail.com', ' 987560455,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('82', 'Jackeline', 'Espiritu', 'Peruano', 'jack.spirit@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('83', 'Gustavo', 'Seclen', 'Peruano', 'notiene@gmail.com', ' 97486551,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('84', 'Meghan', 'Loyola', 'Peruano', 'karliz.isla@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('85', 'Alcida', 'Rany', 'Peruano', 'notiene@gmail.com', ' 974566212,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('86', 'David', 'David', 'Peruano', 'david20ro@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('87', 'Marta', 'Paz', 'Peruano', 'mpaz220@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('88', 'Carolina', 'Criado', 'Peruano', 'carotkd_18@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('89', 'Evelyn', 'Acasuzo', 'Peruano', 'eacasuzo@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('90', 'Lesly', 'Carbajal', 'Peruano', 'lcarbajal@yahoo.es', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('91', 'Rafael', 'Cisneros', 'Peruano', 'notiene@gmail.com', ' 981163604,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('92', 'Maria', 'Paz', 'Peruano', 'mpaz@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('93', 'Saul', 'Saul', 'Peruano', 'notiene@gmail.com', '+54006234445', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('94', 'Vilma', 'Francia', 'Peruano', 'Vfrancia47@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('95', 'Ingrid', 'Tejada', 'Peruano', 'ingrid.tej@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('96', 'Alejandra', 'Rivera', 'Peruano', 'notiene@gmail.com', ' 8423961,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('97', 'Rafael', 'Gutierrez', 'Peruano', 'urrutia605@hotmail.com', ' 996252427,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('98', 'Jenny', 'Cueva', 'Peruano', 'notiene@gmail.com', ' 932159623,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('99', 'Vilma', 'Francia', 'Peruano', 'Vfrancia47@gmail.com', null, 'Facebook', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('100', 'Vicky', 'Zegarra', 'Peruano', 'vicky200154@gmail.com', null, 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('101', 'Antonio', 'Ochoa', 'Peruano', 'oantonio2912@gmail.com', null, 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('102', 'Teresa', 'Lara', 'Peruano', 'teresalaragondo@yahoo.com', ' 2743305,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('103', 'Miriam', 'Larrea', 'Peruano', 'maj_diaz@yahoo.com', ' 995688443,0', 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('104', 'Natali', 'Huaman', 'Peruano', 'nattyolos@hotmail.com', ' 999033643,0', 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('105', 'Lina', 'Lipa', 'Peruano', 'notiene@gmail.com', ' 999410262,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('106', 'Nancy', 'Morales', 'Peruano', 'nancy4552@hotmail.com', ' 999123982,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('107', 'Emiliano', 'Castillo', 'Peruano', 'ernesto.castillo@eqpe.com', ' 998151832,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('108', 'stephany', 'vilchez', 'Peruano', 'stephany.vilchez@gmail.com', ' 941300944,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('109', 'Maria Elizabeth', 'Campomantes', 'Peruano', 'elizabeth_campomanes@gmail.com', ' 962253586,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('110', 'Juma', 'Fernandez', 'Peruano', 'notiene@gmail.com', ' 997376685,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('111', 'Raul', 'Mendoza', 'Peruano', 'notiene@gmail.com', ' 988641355,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('112', 'Mariela', 'Bautista', 'Peruano', 'notiene@gmail.com', ' 998517735,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('113', 'Mariela', 'Mejia', 'Peruano', 'mmejiamontero@hotmail.com', ' 992788878,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('114', 'Andrea', 'Burgos', 'Peruano', 'mariandrea.br@gmail.com', ' 975338929,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('115', 'Freddy', 'Yupari', 'Peruano', 'fyupari@gmail.com', null, 'Facebook', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('116', 'Leonardo', 'Polo', 'Peruano', 'vbricenol@gmail.com', ' 964693359,0', 'Recomendación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('117', 'Gian', 'Gutierrez', 'Peruano', 'notiene@gmail.com', ' 998662236,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('118', 'Edith', 'Choque', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('119', 'Veronica', 'Briceño', 'Peruano', 'vbricenol@gmail.com', null, 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('120', 'Rodolfo', 'Cuadros', 'Peruano', 'notiene@gmail.com', ' 999837149,0', 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('121', 'Stephanie', 'Soto', 'Peruano', 'tefycito@gmail.com', ' 992790281,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('122', 'Jesus', 'Alberto', 'Peruano', 'edupalmo@yahoo.es', null, 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('123', 'Eduardo', 'Palacios', 'Peruano', 'edupalmo@yahoo.es', ' 956807394,0', 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('124', 'Rocio', 'Tornero', 'Peruano', 'zasherdanae@hotmail.com', null, 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('125', 'Giovanna', 'Ojeda', 'Peruano', 'halittu@hotmail.com', ' 963350106,0', 'Recomendación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('126', 'Libertad', 'Muñoz', 'Peruano', 'notiene@gmail.com', ' 992068176,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('127', 'Stephanie', 'Soto', 'Peruano', 'tefycito@gmail.com', ' 992790281,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('128', 'Rafael', 'Cisneros', 'Peruano', 'notiene@gmail.com', ' 981163604,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('129', 'Maria Teresa', 'Mora', 'Peruano', 'mariterelima2000@gmail.com', ' 993042572,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('130', 'Alfredo', 'Chuquin', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('131', 'Walter', 'Castro', 'Peruano', 'notiene@gmail.com', ' 945966927,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('132', 'Flor de Maria', 'Fernandez', 'Peruano', 'notiene@gmail.com', ' 935430327,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('133', 'Alejandra', 'Hoyos', 'Peruano', 'aleali95@hotmai.com', ' 987488280,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('134', 'Alejandra', 'Cordona', 'Peruano', 'a.cardonadavila@alum.ep.edu.pe', ' 958906615,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('135', 'Mauricio', 'Cardenas', 'Peruano', 'omarsanbartolome@gmail.com', ' 987768747,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('136', 'Felicia', 'Casafranca', 'Peruano', 'notiene@gmail.com', ' 989099189,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('137', 'Alberto', 'Nazario', 'Peruano', 'omarsanbartolome@gmail.com', ' 987768747,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('138', 'Blanca', 'Castillo', 'Peruano', 'blanca.castillon@gmail.com', ' 945230383,0', 'Web', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('139', 'Luciano ', 'Arata', 'Peruano', 'luciana_aj16@otmail.com', ' 997036547,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('140', 'Giovanni', 'Catacora', 'Peruano', 'notiene@gmail.co', ' 948404116,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('141', 'Fernandez', 'Palomino', 'Peruano', 'notiene@gmail.com', ' 935430327,0', 'Ubicación', '3', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('142', 'Roger', 'Trigueros', 'Peruano', 'shenlong67@hotmail.com', ' 997356223,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('143', 'Andrea', 'Montenegro', 'Peruano', 'andrea.montenegro@pucp.pe', ' 956470367,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('144', 'Omar', 'Nazario', 'Peruano', 'onazario@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('145', 'Luciana', 'Arata', 'Peruano', 'larata@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('146', 'Flor', 'Lopez', 'Peruano', 'lopez.flor@gmail.com', ' 2710452,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('147', 'Mary', 'Alva', 'Peruano', 'mary.alva@fmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('148', 'Emiliano', 'Contreras', 'Peruano', 'emilianocc@yahoo.es', ' 982567934,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('149', 'Monica', 'Zegarra', 'Peruano', 'monicazegm@hotmail.com', ' 982665800,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('150', 'Haydee', 'Cardenas', 'Peruano', 'notiene@gmail.com', ' 12245544,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('151', 'Junior', 'Becerra', 'Peruano', 'notiene@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('152', 'Arturo', 'Vasquez', 'Peruano', 'arturo_felipe10@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('153', 'Oscar', 'Asilo', 'Peruano', 'notiene@gmail.com', ' 970314202,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('154', 'Luis', 'Yllescas', 'Peruano', 'luishmb@hotmail.com', ' 990354750,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('155', 'Susana', 'Soriano', 'Peruano', 'ssoriano@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('156', 'Luli', 'Tamo', 'Peruano', 'jennytapullima.21@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('157', 'Marieta', 'Alvarez', 'Peruano', 'marietta.alvarez@scotiabank.com.pe', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('158', 'Luis', 'Yllescas', 'Peruano', 'luishume@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('159', 'Melisa', 'Urday', 'Peruano', 'meli_hz@hotmail.com', ' 947909530,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('160', 'Adela', 'Rosales', 'Peruano', 'adelarosalesbasaru@gmail.com', ' 992012555,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('161', 'Isabel', 'Matute', 'Peruano', 'notiene@gmail.com', ' 936337441,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('162', 'Rosana', 'Ramirez', 'Peruano', 'rrangeles0806@gmail.com', ' 945113767,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('163', 'Sofia', 'Ho', 'Peruano', 'socrybja@hotmail.com', ' 971439293,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('164', 'Daniela', '*', 'Peruano', 'notiene@gmail.com', ' 964102451,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('165', 'Patricia', 'Reyes', 'Peruano', 'notiene@gmail.com', ' 961443701,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('166', 'Maria', 'Yana', 'Peruano', 'mariayanacampos@gmail.com', ' 998137796,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('167', 'Edson ', 'Avila', 'Peruano', 'notiene@gmail.com', ' 984569848,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('168', 'Carlo', 'Carbajal', 'Peruano', 'notiene@gmail.com', ' 993718918,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('169', 'Ricardo', 'Mendoza', 'Peruano', 'ricardomendoza21@gmail.com', null, 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('170', 'Hernandez', 'Vasquez', 'Peruano', 'notiene@gmail.com', ' 955840653,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('171', 'Vilma', 'Meza', 'Peruano', 'notiene@gmail.com', ' 981997579,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('172', 'Sandro', 'Vivera', 'Peruano', 'notiene@gmail.com', ' 997333522,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('173', 'Jony', 'Garcia', 'Peruano', 'notiene@gmail.com', ' 988703887,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('174', 'Rosario', 'Iparraguirre', 'Peruano', 'rmiparaguirre@gmail.com', ' 990077465,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('175', 'Teresa', 'Flores', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('176', 'Maria', 'Hernandez Miranda', 'Peruano', 'antuca.hernandez@hotmail.com', ' 942730577,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('177', 'Elizabeth', 'Perez', 'Peruano', 'eliperez871@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('178', 'Sergio', 'Fryda', 'Peruano', 'sergio.fryda@sergiofryda.com', ' 995028345,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('179', 'Joan', 'Pinto', 'Peruano', 'joanpinto.666@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('180', 'Sandra', 'Altamirano', 'Peruano', 'paltamirano@dcb.com.pe', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('181', 'Rosario', 'Mori', 'Peruano', 'romi2105@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('182', 'Juan', 'Salas', 'Peruano', 'notiene@gmail.com', ' 995222327,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('183', 'Junior', 'Escalante', 'Peruano', 'notiene@gmail.com', ' 959738314,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('184', 'Justo', 'Chavez', 'Peruano', 'notiene@gmail.com', ' 960322523,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('185', 'Andrea', 'Oncoy', 'Peruano', 'aoncoy@hidrostal.com.pe', ' 966761800,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('186', 'Gloria', 'Kawahara', 'Peruano', 'glo.kawahara@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('187', 'no dijo', 'no dijo', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('188', 'Maya', 'Aramayo', 'Peruano', 'notiene@gmail.com', ' 956150378,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('189', 'Mathew', 'Williams', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('190', 'Antonio', 'Cama', 'Peruano', 'antoniocamajana@yahoo.com', ' 996559348,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('191', 'Silvia', 'Negron', 'Peruano', 'silviahn92@hotmail.com', ' 957575428,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('192', 'Jessica', 'Iparraguirre', 'Peruano', 'jc.ib.93@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('193', 'Janeth', 'Flores', 'Peruano', 'janeth.flores.morales@gmail.com', ' 987876468,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('194', 'Stephanie', 'Barsallo', 'Peruano', 'stefanielmb@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('195', 'Karina', 'Sandoval', 'Peruano', 'vk_sandoval@hotmail.com', ' 985365437,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('196', 'Heber', 'Ocaña', 'Peruano', 'bibliobraje@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('197', 'Walter', 'Ciccia', 'Peruano', 'wjcd2009@hotmail.com', ' 977181541,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('198', 'Yurry', 'Luna', 'Peruano', 'notiene@gmail.com', ' 987517381,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('199', 'Galina', 'Dvigalov', 'Peruano', 'notiene@gmail.com', ' 14400181,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('200', 'Estrella', 'Xing', 'Peruano', 'estrellacccc@hotmail.com', ' 986733301,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('201', 'Maria', 'Romero', 'Peruano', 'limarome@hotmail.com', ' 941888624,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('202', 'Meggie', 'Bardalez', 'Peruano', 'mbardalezarce@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('203', 'Pablo', 'Sol', 'Peruano', 'paulo_sou@outlook.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('204', 'Mario', 'Mario', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('205', 'Olenka', 'Man', 'Peruano', 'notiene@gmail.com', ' 965875070,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('206', 'Victor', 'Notano', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('207', 'Paola', 'Neyra', 'Peruano', 'pao_17119@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('208', 'Jessica', '.', 'Peruano', 'jjzf24@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('209', 'Cristian', 'Chuquizuta', 'Peruano', 'dantecristian1828@hotmail.com', ' 921445800,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('210', 'Viviana', 'no dio', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('211', 'Haydee', 'Berrospi', 'Peruano', 'haydee.berrospi.duenas@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('212', 'Patricia', 'Garcia', 'Peruano', 'pgarciav@gmail.com', ' 996318000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('213', 'Joana', '.', 'Peruano', 'notiene@gmail.com', ' 94670821,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('214', 'Maria', 'Jesus', 'Peruano', 'notiene@gmail.com', ' 998503608,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('215', 'Eddy', 'Paredes', 'Peruano', 'notiene@gmail.com', ' 947959588,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('216', 'Neira', 'Neira', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('217', 'Eddy Romero', null, 'Peruano', null, null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('218', 'Carlos', 'Tovar', 'Peruano', 'karlotovar@gmail.com', ' 980036441,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('219', 'Héctor', 'Montoya', 'Peruano', 'hedamontoya@hotmail.com', ' 940620776,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('220', 'Marco', 'Castillo', 'Peruano', 'gerencia@redesanticaidas.com', ' 994096156,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('221', 'Estrella', 'Cáceres', 'Peruano', 'caceresotrilla@gmail.com', ' 961751163,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('222', 'Judith', 'Gallegos', 'Peruano', 'mallygc1@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('223', 'Gloria', 'Salazar', 'Peruano', 'noitiene@gmail.com', ' 974622371,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('224', 'Esther', 'Vargas', 'Peruano', 'estherv_11@hotmail.com', ' 965452768,0', 'Recomendación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('225', 'Eduardo', 'Chirinos', 'Peruano', 'edchirinos@gmail.com', ' 999660217,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('226', 'Víctor', 'Rodriguez', 'Peruano', 'victor4900@gmail.com', ' 991760421,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('227', 'Julia', 'Palacios', 'Peruano', 'notiene@gmail.com', ' 991868485,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('228', 'María ', 'López', 'Peruano', 'flaquita_201111@hotmail.com', ' 932825529,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('229', 'Luis', 'Málaga', 'Peruano', 'luchobatlle@gmail.com', ' 986341068,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('230', 'Diana', 'Figallo', 'Peruano', 'alejandralafer@gmail.com', '+5491149759296', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('231', 'Elizabeth', 'Almonacid', 'Peruano', 'litalmonacid@yahoo.es', ' 976031575,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('232', 'William ', 'Laura', 'Peruano', 'notiene@gmail.com', ' 955173381,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('233', 'Yanina', 'Córdova', 'Peruano', 'yacordova@hotmail.com', ' 997271833,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('234', 'Liliana', 'Ojeda Salazar', 'Peruano', 'lilianaojeda@gmail.com', null, 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('235', 'Maritza', 'Melgar', 'Peruano', 'maritza_0660@hotmail.com', ' 975748069,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('236', 'Miguel', 'Canales', 'Peruano', 'miguelcanales@outlook.com', ' 990085850,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('237', 'Raúl', 'Moya', 'Peruano', 'jesusvyp@hotmail.com', ' 959200088,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('238', 'Raquel', 'Chaves', 'Peruano', 'rchaves20074@hotmail.com', ' 940432411,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('239', 'Pool', 'Segura', 'Peruano', 'notiene@gmail.com', ' 927138075,0', 'Televisión', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('240', 'Lange', 'Quisuruco', 'Peruano', 'lquisuruco88@gmail.com', ' 966336598,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('241', 'Aurelio', 'Fernández', 'Peruano', 'afernandezmaria1@hotmail.com', ' 989621056,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('242', 'Claudia', 'Baraybar', 'Peruano', 'cluc97@gmail.com', ' 955574297,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('243', 'Fernando', 'Rojas', 'Peruano', 'fernando_rcn@hotmail.com', null, 'Facebook', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('244', 'Albert', 'Quiroz', 'Peruano', 'albert010561@hotmail.com', ' 974213369,0', 'Facebook', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('245', 'Ridel', 'Falconi', 'Peruano', 'ridelcita@gmail.com', null, 'Facebook', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('246', 'Alana', 'Moran', 'Peruano', 'alymor2016@hotmail.com', null, 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('247', 'Nancy', 'Valdeberuto', 'Peruano', 'nanvaa64@gmail.com', null, 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('248', 'Ana', 'Cahuari', 'Peruano', 'anmara2k@hotmail.com', ' 980536164,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('249', 'Rogelio', 'Horna', 'Peruano', 'rogeliohorna@hotmail.com', ' 943646045,0', 'Facebook', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('250', 'Mirella', 'Arellano', 'Peruano', 'mire.arellano@hotmail.com', null, 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('251', 'Lange', 'Quisuruco', 'Peruano', 'lquisuruco88@gmail.com', ' 966336598,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('252', 'Jeams ', 'Cueva', 'Peruano', 'jchcuevacarbajal@gmail.com', ' 959134676,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('253', 'Cynthia', 'Fonseca', 'Peruano', 'cynforui@gmail.com', ' 980477792,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('254', 'César', 'Ventura', 'Peruano', 'cesarventura@gmail.com', ' 949144515,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('255', 'Arturo', 'Quispe', 'Peruano', 'arturo232116@hotmail.com', ' 998900780,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('256', 'Hugo', 'Llerena', 'Peruano', 'plusquimica@hotmail.com', ' 983532061,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('257', 'Carmen ', 'Mariños', 'Peruano', 'marinos.roldan@gmail.com', null, 'Web', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('258', 'Patricia', 'Signorelli', 'Peruano', 'sipnorellipatricia@hotmail.com', ' 4789801,0', 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('259', 'Walter', 'Mogrovejo', 'Peruano', 'notiene@gmail.com', ' 940734520,0', 'Recomendación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('260', 'Cyntia ', 'Fonseca', 'Peruano', 'cynforui@gmail.com', null, 'Ubicación', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('261', 'Rosario ', 'Infantes', 'Peruano', 'rosario.infantes@digammaperu.com', ' 6286300,0', 'Web', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('262', 'Blanca', 'Castillo', 'Peruano', 'blanca.luz.castillo@hotmail.com', ' 995239280,0', 'Web', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('263', 'Eduardo', 'Vergaray', 'Peruano', 'notiene@gmail.com', ' 940187637,0', 'Web', '4', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('264', 'Vanessa', 'vane', 'Peruano', 'vanevane2305@gmail.com', ' 997922906,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('265', 'Marcos', 'Matienzo', 'Peruano', 'marcosmatienzo2011@hotmail.com', ' 990007097,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('266', 'Carmen', 'Mariños', 'Peruano', 'marinos.roldan@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('267', 'Sandra', 'Plata', 'Peruano', 'yusandra20@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('268', 'Leydi', 'Acaro', 'Peruano', 'coriaca04@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('269', 'Sonia', 'Burrel', 'Peruano', 'sburrel14@hotmail.com', ' 952310562,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('270', 'Francisco', 'Espinoza', 'Peruano', 'fespinoza52@hotmail.com', ' 999743736,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('271', 'Paola', 'Huertas', 'Peruano', 'pao_9319@hotmail.com', ' 958214196,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('272', 'Olga', 'Paz', 'Peruano', 'notiene@gmail.com', null, 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('273', 'Blanca', 'Castillo', 'Peruano', 'blanca.luz.castillo@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('274', 'Allison', 'Espino', 'Peruano', 'alisson_3101@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('275', 'Norma', 'Estacio', 'Peruano', 'giovanaestacio@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('276', 'Zarela', 'Gamarra', 'Peruano', 'zarelagamarra@yahoo.com', ' 977173502,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('277', 'Daril', 'Auceda', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('278', 'Ana', 'Calagua', 'Peruano', 'pcalagua@autolandperu.com', ' 968356427,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('279', 'Lilia', 'Palacios', 'Peruano', 'notiene@gmail.com', ' 932641792,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('280', 'Judith Manuela', 'Carranza Garay', 'Peruano', 'notiene@gmail.com', ' 2426420,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('281', 'Marco', 'Dolorier', 'Peruano', 'pauldolorier@hotmail.com', ' 981076450,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('282', 'Miguel', 'Uceda', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('283', 'Ana', 'Cahuari', 'Peruano', 'anmara2k@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('284', 'Juana', 'Estabridis', 'Peruano', 'jrestabridis@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('285', 'Jessica', 'Valverde', 'Peruano', 'jessicavalv@gmail.com', ' 998536070,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('286', 'Yessenia', 'Colonio', 'Peruano', 'yeseniacol@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('287', 'Leoncio', 'Vidal', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('288', 'Yulissa', 'Aguirre', 'Peruano', 'exito_y_alegria@hotmail.com', ' 955755706,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('289', 'Hugu', 'Kcana', 'Peruano', 'notiene@gmail.com', ' 960504947,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('290', 'Gustavo', 'Rodriguez', 'Peruano', 'grs1503@gmail.com', ' 946542394,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('291', 'Juan Carlos ', 'Pasapera Serra ', 'Peruano', 'jcpasapera10@yahoo.es', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('292', 'Zarela', 'Gamarra', 'Peruano', 'zarelagamarra@yahoo.com', ' 977173502,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('293', 'Julián', 'Avendaño', 'Peruano', 'julian_xxii@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('294', 'Wendy', 'Abarca', 'Peruano', 'wendy_a2004@yahoo.com', ' 940293450,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('295', 'Yessenia', 'Humala', 'Peruano', 'yhumala@gmail.com', ' 947739996,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('296', 'Eduardo', 'no brindó', 'Peruano', 'ezezmoon@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('297', 'Alex', 'Lopez', 'Peruano', 'notiene@gmail.com', ' 924316148,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('298', 'Lorena', 'Castillo', 'Peruano', 'lorenacmr@hotmail.com', ' 985777085,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('299', 'Gonzalo', 'Del Castillo', 'Peruano', 'gondcn@gmail.com', ' 955601030,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('300', 'Javier', 'Castillo', 'Peruano', 'notiene@gmail.com', ' 996286559,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('301', 'Jessica', 'Valverde', 'Peruano', 'jessicavalv@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('302', 'Eber', 'Huanca', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('303', 'Wido', 'Rucana', 'Peruano', 'wido.rucana@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('304', 'Mirtha', 'Vizcarra', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('305', 'ZORAYMA', 'HUAYPARAPOMA', 'Peruano', 'zoraima_165@outlook.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('306', 'Rodrigo', 'Pacheco', 'Peruano', 'alejo_27@hotmail.com', '+573213984384', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('307', 'Chica', 'Extraña', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('308', 'Milena', 'Duarte', 'Peruano', 'milenaduarte22@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('309', 'Sara Julia', 'Ramírez Zegarra', 'Peruano', 'notiene@gmail.com', ' 993206268,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('310', 'Mónica', 'Salebbsky', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('311', 'Sara', 'Villdón', 'Peruano', 'linacanoa@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('312', 'Karen', 'n', 'Peruano', 'pao_ugas@hotmail.com', ' 977126035,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('313', 'Chistiam', 'Ulloa', 'Peruano', 'christian.ulloa.q@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('314', 'Sara', 'Ramírez ', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('315', 'Liliana', 'Hinojosa', 'Peruano', 'lhinojosah@gmail.com', ' 986885406,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('316', 'Dante', 'Estrada', 'Peruano', 'notiene@gmail.com', ' 938461459,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('317', 'Marcos', 'Marquez', 'Peruano', 'mcmcesar@yahoo.com.br', ' 945099160,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('318', 'Roberto', 'Bocangel', 'Peruano', 'rbocangel@geograssperu.com', ' 990003951,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('319', 'Walezwka', 'Villegas Ardiles', 'Peruano', 'walezwka@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('320', 'Eleana', 'Turpo', 'Peruano', 'eleanatc@gmail.com', ' 987250776,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('321', 'Luz', 'Montenegro', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('322', 'Tesoro', 'Díaz', 'Peruano', 'tesoro670589@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('323', 'Katia', 'Muñoz', 'Peruano', 'kademufa@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('324', 'Paloma', 'García', 'Peruano', 'justpaloma.94@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('325', 'Karla', 'Rivera', 'Peruano', 'kealita_14@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('326', 'Anita', 'Fernandez', 'Peruano', 'wido.rucana@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('327', 'Carmen ', 'Escalante', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('328', 'Ricardo', 'Corituma', 'Peruano', 'rickymas1102@hotmail.com', ' 971155520,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('329', 'Liliana', 'Hinojosa', 'Peruano', 'lhinojosah@gmail.com', ' 986885406,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('330', 'Norma', 'Huamaní', 'Peruano', 'lospinosfett@hotmail.com', ' 993177882,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('331', 'Katherin', 'Valenzuela', 'Peruano', 'katherin_key10@hotmail.com', ' 940773266,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('332', 'José', 'Arris', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('333', 'Yuri', 'Meléndez', 'Peruano', 'yurimelendezcisneros@gmail.com', ' 966702308,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('334', 'Elvia ', 'Alonzo', 'Peruano', 'ealonzor@usmp.pe', ' 986897156,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('335', 'Evy', 'Padilla', 'Peruano', 'irisevi195@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('336', 'Susan', 'Ruiz', 'Peruano', 'snr2124@columbia.edu', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('337', 'Norma ', 'Huamaní', 'Peruano', 'lospinosfett@hotmail.com', ' 993177882,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('338', 'Elvia', 'Alonzo', 'Peruano', 'ealonzor@usmp.pe', ' 986897156,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('339', 'Mota', 'Bazan', 'Peruano', 'lindabaz1@hotmail.com', ' 951742853,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('340', 'Rosa', 'Abad', 'Peruano', 'abadville.28@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('341', 'Lijia', 'Marquez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('342', 'Silvana', 'Ramírez', 'Peruano', 'silvana_rr@hotmail.com', ' 979533186,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('343', 'Rosario', 'Figueroa', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('344', 'Luz', 'Palomino', 'Peruano', 'pilarnoa@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('345', 'Samuel', 'Rojas', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('346', 'Nancy', 'Gadillo', 'Peruano', 'nancy-30a@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('347', 'Enrique', 'Uribarri', 'Peruano', 'enriqueuribarri1@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('348', 'Liliana', 'Hinojosa', 'Peruano', 'lhinohosah@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('349', 'Yuliza', 'Córdova', 'Peruano', 'ycordova1090@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('350', 'Estrella ', 'Campos', 'Peruano', 'norma3012@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('351', 'Miguel', 'Franco', 'Peruano', 'mfrancopebe@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('352', 'Elizabeth', 'Vilela', 'Peruano', 'evimen21@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('353', 'Janet', 'Medina', 'Peruano', 'jamevel@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('354', 'Priscilla', 'Pajuelo', 'Peruano', 'priscillapajuelo@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('355', 'Silvana', 'Ramírez', 'Peruano', 'silvana_rr@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('356', 'Jessica ', 'Valverde', 'Peruano', 'jessicavalv@gmail.com', null, 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('357', 'Liliana', 'Hinojosa', 'Peruano', 'lhinojosah@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('358', 'Noelia', 'Alva', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('359', 'Julie', 'Nativitas', 'Peruano', 'nativitas_22@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('360', 'Liliana', 'Loayza', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('361', 'Isabel', 'Olgado', 'Peruano', 'isabel2016mn@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('362', 'Ruben', 'Gonzalez', 'Peruano', 'ruben@reisucal.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('363', 'Anthony', 'André', 'Peruano', 'anthonyandre1990@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('364', 'Kevin', 'Espinoza', 'Peruano', 'kevin.espinoza_27@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('365', 'Claudia', 'Torres', 'Peruano', 'clau25.torres@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('366', 'María', 'Díaz', 'Peruano', 'mreynadiaz@hotmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('367', 'Blanca', 'Sánchez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('368', 'Marco', 'Sanchez', 'Peruano', 'psr_msanchez@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('369', 'Fredy', 'Huayra', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('370', 'Jorge', 'Aucapiña', 'Peruano', 'jorge123212@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('371', 'Freddy', 'Chambi', 'Peruano', 'freddylg76@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('372', 'Paola', 'Gutierrez', 'Peruano', 'paola_jgd@yahoo.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('373', 'Erick', 'Ames', 'Peruano', 'erickames@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('374', 'Sebastián ', 'Ojeda', 'Peruano', 'sebastianojedazegarra@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('375', 'Esenzia ', 'Danzas', 'Peruano', 'esenziadanzas@yahoo.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('376', 'Martín', 'Rodríguez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('377', 'Rocsana', 'Dueñas', 'Peruano', 'rocsanadu@yahoo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('378', 'Patrocinia', 'Flores', 'Peruano', 'floresaybar13@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('379', 'Carmen', 'Guanambal', 'Peruano', 'camucha155@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('380', 'Percy', 'Castro', 'Peruano', 'pcastro@conida.gob.pe', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('381', 'Yoya', 'Yoya', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('382', 'Elizabeth', 'Villalobos', 'Peruano', 'eli_vive@hotmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('383', 'Asaf', 'notiene@gmail.com', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('384', 'Vituca', 'Zegarra', 'Peruano', 'vituca@hotmail.com', ' 987748414,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('385', 'Miguel', 'Barrio', 'Peruano', 'notiene@gmail.com', ' 946448607,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('386', 'Moisés ', 'Castillo', 'Peruano', 'mdelcastillo_77@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('387', 'José', 'Aroni', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('388', 'Miguel ', 'Durand', 'Peruano', 'notiene@gmail.com', ' 987382768,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('389', 'Gianfranco', 'Monzón', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('390', 'Alfonso', 'Villacorta', 'Peruano', 'alfonsovillacortapuchoc@gmail.com', ' 993255019,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('391', 'Pablo', 'Olivos', 'Peruano', 'fabricioolivos@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('392', 'Gustavo', 'Rubio', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('393', 'Quentin', 'Cowper', 'Peruano', 'burrencrwler@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('394', 'Isabel', 'Sanchez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('395', 'Lourdes', 'Lourdes', 'Peruano', 'lodicha99@yahoo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('396', 'Elsa', 'Zarater', 'Peruano', 'elsa_zarater@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('397', 'Roger', 'Challco', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('398', 'Alfredo', 'Pomareda', 'Peruano', 'notiene@gmail.com', ' 991143493,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('399', 'José', 'Espinoza', 'Peruano', 'notiene@gmail.com', ' 993874425,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('400', 'Luis ', 'Luna', 'Peruano', 'luis.elchef86@gmail.com', ' 934747191,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('401', 'Brampier', 'Montero', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('402', 'Jhon', 'Ayacuque', 'Peruano', 'notiene@gmail.com', ' 956723599,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('403', 'Carolina ', 'Condorhuanca', 'Peruano', 'carito14015@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('404', 'Bertha ', 'Huayhua Flores	', 'Peruano', 'bhf_desafios@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('405', 'Hilda', 'Hilda', 'Peruano', 'hilda.251191@gmail.com', ' 968466662,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('406', 'Katheleen ', 'Surichaqui', 'Peruano', 'katheleen.surichaqui@hocplc.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('407', 'Ersy ', 'Gomez', 'Peruano', 'ermago23@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('408', 'Marco ', 'Sánchez', 'Peruano', 'psr_msanchez@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('409', 'Moisés ', 'Del Castillo', 'Peruano', 'mnaters@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('410', 'Maritza', 'Vilca', 'Peruano', 'maritzas@gmail.com', ' 959704094,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('411', 'Melissa', 'Carpio', 'Peruano', 'lvalencia@sapia.com.pe', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('412', 'Consuelo', 'Limo', 'Peruano', 'consuelolimo@hotmail.com', ' 959992860,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('413', 'Rosa ', 'Huánuco', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('414', 'Valeria', 'Lazo', 'Peruano', 'vale.laz028@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('415', 'Saidrazzouki', 'aleman', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('416', 'Ricardo', 'Quintana', 'Peruano', 'richi_q18@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('417', 'David', 'Ivanor', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('418', 'Favio', 'Saldarriaga', 'Peruano', 'rosariochaveli@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('419', 'Enrique', 'Aliaga', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('420', 'Paul', 'Soria', 'Peruano', 'paul.rosales1@hotmail.com', ' 975442185,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('421', 'Otto', 'Kdenig', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('422', 'Ericka', 'Zavala', 'Peruano', 'diegho2004_10@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('423', 'Eliana', 'Tuanama', 'Peruano', 'elianatu@hotmail.com', ' 979316573,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('424', 'Enrique', 'Parodi', 'Peruano', 'kikp700@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('425', 'Jairo', 'Huamán', 'Peruano', 'jairo.huaman94@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('426', 'Jorge', 'Chavez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('427', 'Hugo', 'Sandoval', 'Peruano', 'notiene@gmail.com', ' 951414014,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('428', 'Doris', 'Vaca', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('429', 'Rosana', 'Ramirez', 'Peruano', 'rosanaramirezangeles06@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('430', 'Lidia', 'Arias', 'Peruano', 'lidia.arias@scotiabank.com.pe', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('431', 'Fernanda', 'Rivera', 'Peruano', 'fernanda.rivera.r@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('432', 'Evelyn', 'Concha', 'Peruano', 'Grisell50666@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('433', 'Sonia', 'Alvan', 'Peruano', 'smag711@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('434', 'Cyntia', 'Tj', 'Peruano', 'Cyntia_myc@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('435', 'Rosana', 'Ramirez', 'Peruano', 'rosanaramirezangeles06@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('436', 'Jorge ', 'Villagaray', 'Peruano', 'coquito178@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('437', 'Jorge', 'Villagaray', 'Peruano', 'coquito178@yahoo.com', ' 953765766,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('438', 'Leslie', 'Hinojosa', 'Peruano', 'lesliehinojosa@yahoo.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('439', 'Paola', 'Fernandez', 'Peruano', 'pabrufervo@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('440', 'Felipe', 'Ascenzo', 'Peruano', 'felipeascenzop@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('441', 'César', 'Estrada', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('442', 'Silvia', 'Astorga', 'Peruano', 'sachnm65@hotmail.com', ' 949138110,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('443', 'Mónica', 'Naters', 'Peruano', 'mnaters@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('444', 'Francisco', 'De Gea', 'Peruano', 'katiabrun@gmail.com', ' 987700660,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('445', 'Laura', 'Allali', 'Peruano', 'laura.esther.allali@gmail.com', ' 992955733,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('446', 'Alan', 'Marrou', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('447', 'Hilda', 'Lescano', 'Peruano', 'carito-lescano@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('448', 'Maritza', 'Velis', 'Peruano', 'carita-lescano@hotmail.com', ' 980033107,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('449', 'Verónica ', 'AF', 'Peruano', 'veronikhita12@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('450', 'Carlos', 'Macha', 'Peruano', 'carlosmachay@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('451', 'Luis', 'Moran', 'Peruano', 'luism1010@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('452', 'Paola', 'Kp', 'Peruano', 'pao_kpp@hotmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('453', 'Susan', 'Miguel', 'Peruano', 'sussan.miguel@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('454', 'Anaís', 'Torrejón', 'Peruano', 'atcobian@gmail.com', ' 989638108,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('455', 'Kelly', 'Llacqua', 'Peruano', 'notiene@gmail.com', ' 962952242,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('456', 'Maria', 'Landa', 'Peruano', 'notiene@gmail.com', ' 999190004,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('457', 'Luis ', 'Bermudez', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('458', 'Guido', 'Salas', 'Peruano', 'notiene@gmail.com', ' 997786411,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('459', 'Cristian', 'Rangel', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('460', 'Ylenia', 'Salazar Pazo', 'Peruano', 'yle_20@hotmail.com', ' 990775662,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('461', 'Katty Milagros', 'Suárez', 'Peruano', 'milagrossp@hotmail.es', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('462', 'Ninoska', 'Córdova', 'Peruano', 'ninoska.cs@gmail.com', ' 944274500,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('463', 'Analí', 'Huamaní', 'Peruano', 'alex1j@hotmail.com', ' 983441012,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('464', 'Alfonso', 'Floriano', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('465', 'Giancarlo', 'Espinoza', 'Peruano', 'giancarloet2009@gmail.com', ' 960259957,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('466', 'Ana', 'Iparraguirre', 'Peruano', 'karina17@msn.com', ' 957284515,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('467', 'María Del Carmen', 'Tatama', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('468', 'Diana', 'Dávila', 'Peruano', 'anna_cecilia1995@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('469', 'Patricia', 'Dávalos', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('470', 'Jesús', 'Hernández', 'Peruano', 'jmhernandez04@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('471', 'Karen', 'Bustamente', 'Peruano', 'kgbustamante@gmail.com', ' 951490249,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('472', 'Eyal', 'Eyal', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('473', 'Silvia', 'Astudillo', 'Peruano', 'nelly.arbi@hotmail.com', ' 975389936,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('474', 'Inés', 'Castillo', 'Peruano', 'notiene@gmail.com', null, 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('475', 'Carla', 'Ballivian', 'Peruano', 'balliviansofia@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('476', 'Jessica', 'Saldarriaga', 'Peruano', 'jk08_03@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('477', 'Joel Andrade', null, 'Peruano', null, null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('478', 'alejandro', 'perez', 'Peruano', 'aperezlozano@hotmail.com', ' 989196638,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('479', 'patricia', 'pareja', 'Peruano', 'pparej@hotmail.com', ' 999009999,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('480', 'felipe', 'parodi', 'Peruano', 'felipeparodiduarte@gmail.com', ' 998185102,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('481', 'SOLEDAD ', 'CHOJEIA', 'Peruano', 'NOTIENE@GMAIL.COM', ' 2834660,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('482', 'VIOLETA', 'MALPARTIDA', 'Peruano', 'VIODEGILLES@HOTMAIL.COM', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('483', 'BRENDA', 'CACERES', 'Peruano', 'BRNDA.28@HOTMAIL.COM', ' 977919118,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('484', 'CESAR', 'MARTINEZ', 'Peruano', 'ELORIGINAL777@HOTMAIL.COM', ' 996508482,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('485', 'GLADYS', 'MEZA', 'Peruano', 'LUCILALI6M@GMAIL.COM', ' 982700049,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('486', 'MIRIAM', 'GAMARRA', 'Peruano', 'SOL_MIRIAM_17@HOTMAIL.COM', ' 958823186,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('487', 'ROMINA', 'POSTIANA', 'Peruano', 'ROMINA-POSTIANA@HOTMAIL.COM', ' 1554857990,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('488', 'RUBI', 'BASURTO', 'Peruano', 'RUBI.3_28@HOTMAIL.COM', ' 999963990,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('489', 'ANA', 'YARROW', 'Peruano', 'yamesones@hotmail.com', ' 996685162,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('490', 'ADRIANA', 'CANTO', 'Peruano', 'ABCANTO@HOTMAIL.COM', ' 993471922,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('491', 'ROSSANA', 'AMICONE', 'Peruano', 'ROSSANA_AMICONE@YAHOO.COM', ' 94990090,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('492', 'ALFREDO', 'VALDIVIA', 'Peruano', 'EDUARDO_200053@HOTMAIL.COM', ' 991303597,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('493', 'MIRIAM', 'PEÑA', 'Peruano', 'MIRIAM_PIURA@HOTMAIL.COM', ' 989413024,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('494', 'SERGIO ', 'ROMERO', 'Peruano', 'sergioromeroloyola@hotmail.com', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('495', 'LAURA', 'BARRET', 'Peruano', 'LNBV70@YAHOO.COM', ' 969335881,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('496', 'PEDRO', 'VERANO', 'Peruano', 'pveranoc1@hotmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('497', 'ROSSANA ', 'MALDONADO', 'Peruano', 'rossana.sfm@gmail.com', ' 990999434,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('498', 'MARIA JESUS', 'ROJAS', 'Peruano', 'mjrojasq@gmail.com', null, 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('499', 'ADA', 'galindo', 'Peruano', 'aegarique@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('500', 'rosa maria', 'caceres', 'Peruano', 'rosa_caceresj@hotmail.com', ' 991019307,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('501', 'laura', 'barreto', 'Peruano', 'notiene@gmail.com', ' 969335881,0', 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('502', 'luaciana', 'monjaras', 'Peruano', 'lucianaml_96@hotmail.com', ' 958028704,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('503', 'hellen', 'torres', 'Peruano', 'gpyzeu1_@hotmail.com', ' 961978848,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('504', 'Ivonne', 'figueroa', 'Peruano', 'ivonne571@hotmail.com', ' 987808728,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('505', 'TAIR', 'TAL', 'Peruano', 'TAIR777@GMAIL.COM', ' 9000000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('506', 'evelyn', 'valdivia', 'Peruano', 'EVELYNVALDIVIAT@GMAIL.COM', ' 4694756,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('507', 'JESSICA', 'RIVERA', 'Peruano', 'YESSYRIVER@HOTMAIL.COM', ' 964168743,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('508', 'NELLY', 'GARCIA', 'Peruano', 'NG_SMITH10209@HOTMAIL.COM', ' 940144243,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('509', 'marisol', 'vigo', 'Peruano', 'marisol_vigo@hotmail.com', ' 994621818,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('510', 'INES', 'CASTRO', 'Peruano', 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('511', 'LESLIE', 'LA ROSA', 'Peruano', 'NOTIENE@GMAIL.COM', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('512', 'GIL', 'AVITAL', 'Peruano', 'BMXXWO@WALLA.COM', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('513', 'DESSIRE', 'VIVANCO', 'Peruano', 'DESSIRE.VIAVANCO@GMAIL.COM', ' 977806492,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('514', 'RUTH', 'NORABUENA', 'Peruano', 'RUTH_NORABUENA@HOTMAIL.COM', ' 980282849,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('515', 'ingrid', 'sammerfeld', 'Peruano', 'ingridsommerfeldg@hotmail.com', ' 999975843,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('516', 'fernando', 'roca', 'Peruano', 'fermed_frm@hotmail.com', ' 959337246,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('517', 'MIRTHA ', 'HEREDIA ', 'Peruano', 'mirtha_heredia@yahoo.es', ' 900,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('518', 'guillermo ', 'torres', 'Peruano', 'iridio.pe@gmail.com', ' 952303476,0', 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('519', 'miguel', 'sandoval', 'Peruano', 'notieene@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('520', 'luis', 'valera', 'Peruano', 'marli95@hotmail.com', ' 18106117,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('521', 'jose ', 'lozano', 'Peruano', 'jose.lozano@stracongym.com.pe', ' 989024663,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('522', 'mary', 'morok', 'Peruano', 'marymorote2@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('523', 'luis', 'alonso', 'Peruano', 'luis_aznar@yahoo.es', ' 989100552,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('524', 'librado', 'orozco', 'Peruano', 'libradoo@hotmail.com', ' 964106672,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('525', 'ANAXIMANDRO', 'KAORI', 'Peruano', 'ANAXIMANDROK@YAHOO.COM', ' 968416688,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('526', 'VERONICA', 'VASQUEZ', 'Peruano', 'NOTIENE@GMAIL.COM', ' 4379409,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('527', 'MARIA ESTHER', 'TRISTAN', 'Peruano', 'ALEOS_36@HOTMAIL.COM', ' 983560399,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('528', 'JESUS', 'CACERES', 'Peruano', 'VENTASCANSAC@GMAIL.COM', ' 943698869,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('529', 'ZEHAVIT', 'SAPIR', 'Peruano', 'ZEHOUTS57@GMAIL.COM', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('530', 'HAROLD', 'CLAVIJO', 'Peruano', 'ANCH_HAROLD@HOTMAIL.COM', ' 948662354,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('531', 'ALEXANDRO MARTIN', 'MALDONADO CAYCHO ', 'Peruano', 'maldonado.alexandro@hotmail.com', ' 96805369,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('532', 'PERCY ', 'MARTINEZ  FLORES ', 'Peruano', 'josecarlos253@hotmail.com', ' 946381831,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('533', 'RICARDO', 'MARINO LUNA', 'Peruano', 'LUISMARIO@OUTLOOK.COM', null, 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('534', 'ALEXANDRA CORINA ', 'ARLE ORTIZ', 'Peruano', 'alecarito@gmail.com', ' 948972107,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('535', 'MILAGROS ', 'VILLEGAS HUAMANRICO ', 'Peruano', 'milagrosv832@gmail.com', ' 979494044,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('536', 'YAREK', 'CORONEL QUIROS ', 'Peruano', 'YAREK10@GMAIL.COM', ' 975975652,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('537', 'CARLOS ', 'SOVERO', 'Peruano', 'carlos.sovero@gmail.com', ' 996394644,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('538', 'RICARDO', 'CORDON', 'Peruano', 'rcantucin@gmail.com', ' 991272314,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('539', 'MARCOS MARIO ', 'ABAL CUCA', 'Peruano', 'marcos1074@hotmail.com', ' 999596564,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('540', 'ISABEL ', 'HOLGUIN ALVA', 'Peruano', 'NOTIENE@HOTMAIL.COM', ' 998100514,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('541', 'ESTER D', 'DE LA CRUZ LLACUA', 'Peruano', 'NOTIENE@HOTMAIL.COM', ' 910022912,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('542', 'MARIA ISABEL', 'BAMBANIN DE ARGUELLES', 'Peruano', 'NOTIENE@HOTMAIL.COM', ' 941619516,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('543', 'JHONNY ARMANDO', 'PEÑA MUÑOZ', 'Peruano', 'NOTIENE@HOTMAIL.COM', ' 987881710,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('544', 'EDINSON ALBERTO', 'GOIN LOPEZ', 'Peruano', 'edinsongoin@gmail.com', ' 944441441,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('545', 'RENSO', 'RODRIGUEZ FARFAN ', 'Peruano', 'DOTADITO.95@HOTMAIL.COM', null, 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('546', 'JOSE  FROILAN', 'YDROGO MEDINA', 'Peruano', 'rabbyfroy@hotmail.com', ' 948557232,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('547', 'JUAN FRANCISCO ', 'TORRES UGARTE', 'Peruano', 'juannfra@hotmail.com', ' 993198315,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('548', 'HILMER', 'REYES', 'Peruano', 'reyeshh@gmail.com', ' 997788850,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('549', 'JIMENA MARITA ', 'GALLARDAY PINEDO', 'Peruano', 'jimeg87@gmail.com', ' 992136491,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('550', 'carmen', 'barriga', 'Peruano', 'carmenbarriga@hotmail.com', ' 945964587,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('551', 'teresa', 'borja', 'Peruano', 'dio_dea@hotmail.com', ' 942477692,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('552', 'fernando', 'vera', 'Peruano', 'fuera1906@hotmail.com', ' 972290755,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('553', 'wendy', 'trujillo', 'Peruano', 'wendytrujillo1@gmail.com', ' 995525150,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('554', 'aidee', 'vela', 'Peruano', 'notiene@gmail.com', ' 4551874,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('555', 'jose ', 'ydrogo', 'Peruano', 'rabbyfroy@hotmail.com', ' 948557232,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('556', 'esther', 'de la cruz', 'Peruano', 'notiene@gmail.com', ' 910022912,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('557', 'maria isabel ', 'de arguelles', 'Peruano', 'notiene@gmail.com', ' 941619516,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('558', 'jhony', 'peña', 'Peruano', 'noteien@gmail.com', ' 987881710,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('559', 'edinson', 'goin', 'Peruano', 'edinsongoin@gmail.com', ' 944441441,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('560', 'ronco', 'rodriguez', 'Peruano', 'dotadito_95@hotmail.com', ' 56,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('561', 'bomono', 'jean pierre', 'Peruano', 'jeanpierre@yahoo.fr', ' 900,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('562', 'cesar gonzalo', 'llempen', 'Peruano', 'lcllempen@gmail.com', ' 900,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('563', 'coinson', 'reategui', 'Peruano', 'samirreategui@outlook.com', ' 975425183,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('564', 'MIRIAM', 'RIVERA', 'Peruano', 'MIRIAM18011999@GMAIL.COM', ' 977112732,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('565', 'KARINA', 'SOTO', 'Peruano', 'KARINAS781@GMAIL.COM', ' 987389093,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('566', 'CELMITH', 'SORIA', 'Peruano', 'NOTIENE@GMAIL.COM', ' 997711693,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('567', 'GLORIA', 'RODRIGUEZ', 'Peruano', 'NOTIENE@GMAIL.COM', ' 500,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('568', 'andreza', 'salgado', 'Peruano', 'andreza_salgadomeva@gmail.com', ' 34695791929,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('569', 'miguel', 'palacios', 'Peruano', 'mikebestpe@gmail.com', ' 993133846,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('570', 'jose', 'landa', 'Peruano', 'americolanda@hotmail.com', ' 999043203,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('571', 'gino', 'bisso', 'Peruano', 'ginobisso6@gmail.com', ' 946518849,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('572', 'gustavo', 'sanchez', 'Peruano', 'noquisodar@gmail.com', ' 992992615,0', 'Televisión', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('573', 'judith', 'carranza', 'Peruano', 'notiene@gmail.com', ' 4034933,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('574', 'AURELIO', 'LIMA', 'Peruano', 'NOTIENE@GMAIL.COM', ' 967798405,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('575', 'ENMA', 'PEÑA', 'Peruano', 'SPONDYLUS49@GMAIL.COM', ' 5634573,0', 'Web', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('576', 'MILAGROS', 'VALDEZ', 'Peruano', 'MVALDEZ@HOTMAIL.COM', ' 952648084,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('577', 'LUIS', 'REYNOSO', 'Peruano', 'LREYNOSOAVALOS@AOL.COM', ' 952398962,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('578', 'FIORELA', 'AVALOS', 'Peruano', 'FIORE1008.97@GMAIL.COM', ' 965080172,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('579', 'LUDOVICO', 'LEDETTI', 'Peruano', 'NOSEENTIENDE@HOTMAIL.COM', ' 5413884137370,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('580', 'harol', 'motta', 'Peruano', 'harol.motta@gmail.com', ' 942757651,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('581', 'christian', 'diaz', 'Peruano', 'christianarquitec@hotmail.com', ' 994395982,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('582', 'laura', 'marin', 'Peruano', 'melibea834@hotmail.com', ' 944951568,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('583', 'jinshun', 'chen', 'Peruano', 'notiene@gmail.com', ' 9000,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('584', 'Ciro', 'delgado', 'Peruano', 'cirogrande@gmail.com', ' 998286390,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('585', 'carmen lidia', 'solis', 'Peruano', 'notiene@gmail.com', ' 900,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('586', 'adriana ', 'amorin', 'Peruano', 'notiene@gmail.com', ' 932876049,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('587', 'NILDA', 'PASACHE', 'Peruano', 'NOTIENE@GMAIL.COM', ' 980530376,0', 'Ubicación', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('588', 'rita', 'monge', 'Peruano', 'rhmc1611@gmail.com', ' 984620296,0', 'Facebook', '8', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('589', 'CINDY', 'LOPEZ', 'Peruano', 'PYACINDY@GMAIL.COM', ' 500,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('590', 'ana', 'chavez', 'Peruano', 'notiene@gmail.com', ' 2584997,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('591', 'martha', 'moran', 'Peruano', 'martha_poedisa@hotmail.com', ' 993300925,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('592', 'nilda', 'pasache', 'Peruano', 'pasache346@hotmail.com', ' 980530376,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('593', 'maria soledad', 'espejo', 'Peruano', 'maritasol63@gmail.com', ' 969360798,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('594', 'rita', 'monge', 'Peruano', 'rhmc1611@gmail.com', ' 984620296,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('595', 'edith', 'ostos', 'Peruano', 'notiene@hotmail.com', ' 2922143,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('596', 'karen', 'barrenal', 'Peruano', 'junethbarrenall@gmail.com', ' 9000,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('597', 'JUAN', 'EZEQUIEL', 'Peruano', 'EZEQUIELBASUALDOBOX@HOTMAIL.COM', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('598', 'MAGDA', 'UNZUETA', 'Peruano', 'MACIELU25@HOTMAIL.COM', ' 941105121,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('599', 'GRISELDA', 'ACARO', 'Peruano', 'GRIACA04@GMAIL.COM', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('600', 'carlos', 'melara', 'Peruano', 'notiene@gmail.com', ' 17802993735,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('601', 'lourdes', 'flores', 'Peruano', 'lourdesflores30@yahoo.com', ' 950360573,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('602', 'giussepe', 'mayorga', 'Peruano', 'gmayorga@xperimentark.com', ' 95225455,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('603', 'marcia', 'cerf', 'Peruano', 'notiene@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('604', 'enrique', 'ruiz', 'Peruano', 'eruiz@termosistemas.com.pe', ' 993521021,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('605', 'ricardo', 'santa', 'Peruano', 'elizabethcruz2671@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('606', 'francisco', 'maradiegue', 'Peruano', 'ponchomar1965@hotmail.com', ' 970332354,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('607', 'jose', 'acosta', 'Peruano', 'wariaware@hotmail.com', ' 997965479,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('608', 'renzo', 'cordero', 'Peruano', 'renzoedu@hotmail.com', ' 992812896,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('609', 'carlos', 'morante', 'Peruano', 'administracion@cbergruas.com.pe', ' 969634888,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('610', 'lizette', 'lucar', 'Peruano', 'lizi_2812@hotmail.com', ' 987576797,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('611', 'maria ', 'paz yañez', 'Peruano', 'notiene@gmail.com', ' 998412741,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('612', 'maycol', 'beltran', 'Peruano', 'maycol918@hotmail.com', ' 997780611,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('613', 'raul', 'urbina', 'Peruano', 'ra-urbina@hotmail.com', ' 972835520,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('614', 'frida', 'peralta', 'Peruano', 'geova_fry@hotmail.com', ' 943428772,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('615', 'gladys', 'acve', 'Peruano', 'ggacapana@gmail.com', ' 951688394,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('616', 'nelly', 'gonzales', 'Peruano', 'nellygonzales@hotmail.com', ' 9000,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('617', 'evy', 'moreno', 'Peruano', 'chino_29_99@hotmail.com', ' 900,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('618', 'katterin', 'katterin', 'Peruano', 'alvarezk492@gmail.com', ' 952541132,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('619', 'martia del rosario', 'caballero', 'Peruano', 'mariarosario_caballero@hotmail.com', ' 14481148,0', 'Web', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('620', 'MAX', 'cabello', 'Peruano', 'notiene@gmail.com', ' 16024754,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('621', 'maritza', 'muñoz', 'Peruano', 'lichisucrtuar@hotmail.com', ' 996290019,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('622', 'maria del carmen', 'moro', 'Peruano', 'notiene@gmail.com', ' 999958064,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('623', 'MARIA SOLEDAD', 'ROJAS', 'Peruano', 'maritasol63@gmail.com', ' 969360798,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('624', 'jocelyn', 'espejo', 'Peruano', 'jocelyn.xespejo@gmail.com', ' 969360798,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('625', 'rosa', 'salazar', 'Peruano', 'amelia.pita15@gmail.com', ' 996712087,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('626', 'keiny', 'perez', 'Peruano', 'kperez752@hotmail.com', ' 965744895,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('627', 'cesar', 'miranda', 'Peruano', 'cmiranda@gmail.com', ' 945449292,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('628', 'graciela', 'bendezu', 'Peruano', 'gbendezuedceisa@gmail.com', ' 980764155,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('629', 'david', 'duarez', 'Peruano', 'david_alvarez@hotmail.com', ' 942774118,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('630', 'sara', 'zarate', 'Peruano', 'zara_zarate@yahoo.es', ' 984427239,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('631', 'vilma', 'montañez', 'Peruano', 'vmontanez@hotmail.com', ' 996994696,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('632', 'evelyn ', 'valega', 'Peruano', 'evelynvalega@gmail.com', ' 993634403,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('633', 'martin ', 'ARTEAGA', 'Peruano', 'DAVIDARTEGADA79@HOTMAIL.COM', ' 969342799,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('634', 'ROY', 'MENDOZA', 'Peruano', 'NOTIENE@GMAIL.COM', ' 980434134,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('635', 'SOMPETCH', 'BUSTINZA', 'Peruano', 'PIMPUNDEBUS@GMAIL.COM', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('636', 'AMA', 'AN', 'Peruano', '110864330@QQ.COM', ' 932144237,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('637', 'JUAN MANUEL', 'SALAZAR GONZALEZ', 'Peruano', 'JUAN-M.SALAZAR@HOTMAIL.COM', ' 989211232,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('638', 'DOUG', 'GOODDRIFGE', 'Peruano', 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('639', 'NOONETE', 'COODRIDGE', 'Peruano', 'NPOWERGOODRIDGE@YAHOO.COM', ' 18325236040,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('640', 'NILDA', 'PASACHE', 'Peruano', 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('641', 'FRANCISCO', 'MADARIEGUE', 'Peruano', 'FRANCISCOM@GMAIL.COM', ' 970332354,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('642', 'WASHINGTON', 'MONTALVO', 'Peruano', 'montalvo_ingenieros@yahoo.es', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('643', 'LINO', 'VALERO', 'Peruano', 'linovaleromontesinos@yahoo.es', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('644', 'ROSALIA', 'VILLANUEVA', 'Peruano', 'JOHANAVILLANUEVAYAPVEA@GMAIL.COM', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('645', 'NHIKOLE', 'CHAVEZ', 'Peruano', 'ENEACHEKA@GMAIL.COM', ' 986167895,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('646', 'hecto', 'parodi', 'Peruano', 'hector.parodi2@gmail.com', ' 900,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('647', 'leda ', 'de regalado', 'Peruano', 'lerota107@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('648', 'ursula ', 'salazar', 'Peruano', 'ursiandreas@yahoo.com', ' 945500016,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('649', 'mariela', 'ramos leon', 'Peruano', 'mariela_ramos17@hotmail.com', ' 958335652,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('650', 'sared ', 'moras', 'Peruano', 'saredmr@outlook.com', ' 943591771,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('651', 'CLORINDA PATRICIA ', 'PAREJA POCCORI', 'Peruano', 'CPAREJAP@repsol.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('652', 'tito', 'parodi', 'Peruano', 'hector.parodi2@gmail.com', null, 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('653', 'jaison ', 'sovero ', 'Peruano', 'notiene@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('654', 'jorge ', 'molina', 'Peruano', 'jmolina@ethnicperu.com', ' 987944222,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('655', 'fernando ', 'yataco advincula ', 'Peruano', 'fernando_ing18@hotmail.com', ' 997731150,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('656', 'miguel ', 'cruzado morales ', 'Peruano', 'iridio.pe@gmail.com', ' 952303476,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('657', 'francisco', 'centurion', 'Peruano', 'fcenturion@gmail.com', ' 955976214,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('658', 'marcos', 'mendoza', 'Peruano', '0010c@gmail.com', ' 946538971,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('659', 'ines', 'rojas', 'Peruano', 'ines_marcela@hotmail.com', ' 997889661,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('660', 'NICOLAS', 'CASTRO', 'Peruano', 'NICO2015_CJ@HOTMAIL.COM', ' 984112223,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('661', 'ZORCA', 'GARCES', 'Peruano', 'zgarces@pandero.com.pe', ' 6191200,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('662', 'vcarla', 'garcia', 'Peruano', 'cigg1@hotmail.com', ' 956393760,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('663', 'julia', 'torres', 'Peruano', 'bell2048@hotmail.com', ' 998011957,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('664', 'uriel', 'flores', 'Peruano', 'u_florescam@gmail.com', ' 5255400222286,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('665', 'elisa', 'elisa', 'Peruano', 'prgd02oversluijs@hotmail.com', ' 942626330,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('666', 'jenny', 'chavez', 'Peruano', 'jchavezand@hotmail.com', ' 986623389,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('667', 'stephen', 'foley', 'Peruano', 'stephenfoley31@hotmail.com', ' 980667729,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('668', 'magda', 'camacho', 'Peruano', 'magdacct@hotmail.com', ' 999023166,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('669', 'gerald', 'sipira', 'Peruano', 'gerald_179@hotmail.com', ' 992832132,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('670', 'ademir', 'del aguila', 'Peruano', 'ademir26269@gmail.com', ' 984244084,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('671', 'gloria', 'ormeño', 'Peruano', 'gloria29052009@gmail.com', ' 995379519,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('672', 'maria ', 'calderon', 'Peruano', 'marycalderon@hotmail.com', ' 944412320,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('673', 'RAQUEL', 'MOROTE', 'Peruano', 'RACHELMOROTE@HOTMAIL.COM', ' 982162943,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('674', 'ERNESTO', 'CABRERA', 'Peruano', 'ELGABO111@HOTMAIL.COM', ' 987207929,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('675', 'bertha', 'cesa', 'Peruano', 'notiene@gmail.com', ' 931451656,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('676', 'victoria', 'montero', 'Peruano', 'mavimaco13@gmail.com', ' 9100000,0', 'Facebook', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('677', 'neptali', 'ccoyo', 'Peruano', 'mirian.yul9525@gmail.com', ' 9000,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('678', 'jefrey', 'larios', 'Peruano', 'katerinadelana@hotmail.com', ' 90000,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('679', 'RICARDO', 'CUADRADO', 'Peruano', 'NOTIENE@GMAIL.COM', ' 9000,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('680', 'JUAN', 'BOCANEGRA', 'Peruano', 'JUANBOCA09@GMAIL.COM', ' 989677999,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('681', 'ALFREDO', 'BENDEZU', 'Peruano', 'BENDEZU.ALFREDO@OUTLOOK.COM', ' 9000,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('682', 'MARTHA', 'MORAN', 'Peruano', 'MARTHA.MORAN@GMAIL.COM', ' 9000,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('683', 'JULIO', 'MORA', 'Peruano', 'JMORALARREGOLA@GMAIL.COM', ' 990850877,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('684', 'YULY', 'CABRERA', 'Peruano', 'YMARGOTH@GMAIL.COM', ' 995115167,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('685', 'TOMAS DE AQUINO', 'ARMAS ESPIRITU', 'Peruano', 'CORREO@AYOARMAS.COM', ' 981035772,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('686', 'magda', 'avila', 'Peruano', 'magdaaviso22@hotmail.com', ' 997712428,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('687', 'bertha ', 'esquen', 'Peruano', 'bertha.esquen2016@dot.com', ' 993139912,0', 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('688', 'jorge ', 'molina', 'Peruano', 'jmolina@casadelsolhotels.com', null, 'Ubicación', '9', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('689', 'josefina ', 'camargo', 'Peruano', 'gaby2009Z@hotmail.com', ' 9000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('690', 'edgardo', 'gonzales', 'Peruano', 'notiene@gmail.com', ' 989174675,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('691', 'luciana', 'davalos', 'Peruano', 'notiene@gmail.com', ' 940885616,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('692', 'gloria', 'veliz', 'Peruano', 'glob@gmail.com', ' 949700788,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('693', 'ANIBAL', 'BEJAR', 'Peruano', 'ABEJAR@AO.COM', ' 900000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('694', 'rosario', 'rivas', 'Peruano', 'gcomercial@rivcosac.com', ' 954106892,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('695', 'marysabel', 'godoy', 'Peruano', 'mgodoya07@gmail.com', ' 995595989,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('696', 'valentina', 'hurtado', 'Peruano', 'valentina10@gmail.com', ' 90000,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('697', 'dennis ', 'aguirre', 'Peruano', 'daguirre@mepcom.pe', ' 983812151,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('698', 'maya', 'fernandez', 'Peruano', 'marayfe@gmail.com', ' 956150378,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('699', 'maritza', 'bernal', 'Peruano', 'maritzabernalportaro@gmail.com', ' 963738494,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('700', 'guillermoi', 'torres', 'Peruano', 'iridio.pe@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('701', 'leonardo', 'lanzani', 'Peruano', 'noteiene@gmail.com', ' 900001,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('702', 'heliodoro ', 'fernandez', 'Peruano', 'avicolarositasac@gmail.com', ' 9000,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('703', 'fernando', 'ochoa', 'Peruano', 'ochoavela@yahoo.es', ' 900,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('704', 'jorge', 'enrique', 'Peruano', 'notiene@gmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('705', 'cecilia', 'rocca', 'Peruano', 'cecyrocca@hotmail.com', ' 981598782,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('706', 'manuel ', 'vallejos', 'Peruano', 'brunovallejos@hotmail.com', ' 900,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('707', 'lourdes', 'ferre', 'Peruano', 'ferrelourdes@hotmail.com', ' 94629773,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('708', 'jose', 'torres', 'Peruano', 'joseluis041274@hotmail.com', ' 991771326,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('709', 'victor', 'perea', 'Peruano', 'vperea@hotmail.com', ' 996599191,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('710', 'maria', 'estombelo', 'Peruano', 'nomedejo@gmail.com', ' 991708654,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('711', 'pamela', 'tomoro', 'Peruano', 'pame181@hotmail.com', ' 945503395,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('712', 'miguel', 'uceda', 'Peruano', 'miguelucesa95@gmail.com', ' 933084652,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('713', 'ingrid', 'palomino', 'Peruano', 'impa8@hotmail.com', ' 2820032,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('714', 'valentina', 'carazas', 'Peruano', 'notiene@gmail.com', ' 988952802,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('715', 'clara', 'rodrigo', 'Peruano', 'notiene@gmail.com', ' 4450366,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('716', 'mariella', 'gordillo', 'Peruano', 'mgordillo@outlook.com', ' 998550927,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('717', 'jazmin', 'soto', 'Peruano', 'Jazmin.soto@rimac.com.pe', ' 954760412,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('718', 'james', 'rios', 'Peruano', 'riosuni14@gmail.com', ' 900,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('719', 'Rocsana', 'Dueñas', 'Peruano', 'rocsanadu@yahoo.com', ' 9000,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('720', 'melody', 'candela', 'Peruano', 'melodia1903@gmail.com', ' 900,0', 'Facebook', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('721', 'myli', 'quispe', 'Peruano', 'Myliquispe@gmail.com', ' 9000,0', 'Facebook', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('722', 'pilar', 'deza', 'Peruano', 'Pdeza25@gmail.com', ' 9000,0', 'Facebook', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('723', 'Ángelo Martinez', null, 'Peruano', null, null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('724', 'Julio', 'Medina ', 'Peruano', 'nodejo@punto.com', ' 999634565,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('725', 'Laura', 'Arrese ', 'Peruano', 'notiene@notiene.com', ' 2783228,0', 'Recomendación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('726', 'Monica', 'Zegarra', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('727', 'Anette De Pomar', 'De Pomar', 'Peruano', 'nodejo@tikatravel.pe', ' 9961128388,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('728', 'ANTONIO', 'CEREZO', 'Peruano', 'NOTINE@1.COM', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('729', 'JULI', 'MEDINA', 'Peruano', 'JUMPAL66@HOTMAIL.COM', ' 990074709,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('730', 'monica', 'zegarra', 'Peruano', 'notine@1.com', ' 954779805,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('731', 'ISABEL', 'MORALES DE MUÑOZ', 'Peruano', 'ISABELMV8@HOTMAIL.COM', ' 4698039,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('732', 'REYNALDO', 'MENDOZA', 'Peruano', 'NO@TIENE.COM', ' 993437975,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('733', 'AUGUSTO', 'ROSAS', 'Peruano', 'CUTO69@HOTMAIL.COM', ' 991267144,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('734', 'MARTHA', 'DEZA DE QUIÑO', 'Peruano', 'NO@TIENE.COM', ' 992730246,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('735', 'ROSA', 'SEGURA ESPINOZA', 'Peruano', 'ROSASEGURA@HOTMAIL.COM', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('736', 'MIGUEL', 'QUIROZ', 'Peruano', 'NO@TIENE.COM', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('737', 'RICARDO', 'CAMPOS', 'Peruano', 'RZ309@HOTMAIL.COM', ' 997094271,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('738', 'ELIZABETH ', 'SALAZAR', 'Peruano', 'ELIZABETH_SALAZAR2009@HOTMAIL.COM', ' 987126114,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('739', 'MANUEL', 'RIVAS ANGULO', 'Peruano', 'NO@TIENE.COM', ' 996487596,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('740', 'LARA', '-', 'Peruano', 'NO@TIENE.COM', ' 4827640,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('741', 'JONATHAN', 'ROCA', 'Peruano', 'JOHNATAN8105@GMAIL.COM', ' 954659081,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('742', 'Martina', 'Marcacuzco', 'Peruano', 'martinamar1497@gmail.com', ' 982708718,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('743', 'Alejandra', 'Abad', 'Peruano', 'alexdratecnol@gmail.com', ' 965654654,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('744', 'Katty', 'Espinoza', 'Peruano', 'kathy_e22@hotmail.com', ' 94481958,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('745', 'Carlos', 'Arevalo', 'Peruano', 'acarlosignacioarevalo@gmail.com', '+573235110126', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('746', 'Jenny ', 'Aguinaga', 'Peruano', 'jenny_aguimaga.1973@gmail.com', ' 991835515,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('747', 'Jorge', 'Ayala', 'Peruano', 'jlayalamedina@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('748', 'Raul', 'Salcedo', 'Peruano', 'rsalcedo@balance.com.pe', ' 998311715,0', 'Facebook', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('749', 'Gerardo', 'Espinoza', 'Peruano', 'greb1107@gmail.com', ' 986973118,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('750', 'Julbia', 'Villafuerte', 'Peruano', 'notine@punto.om', ' 989503576,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('751', 'Norma ', 'Olano', 'Peruano', 'notien@punto.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('752', 'Pamela ', 'Soto', 'Peruano', 'pandrea55@hotmail.com', null, 'Facebook', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('753', 'Laura ', 'Mesarina', 'Peruano', 'laura.mesarina@gmail.com', null, 'Facebook', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('754', 'kassandra ', 'Coriat', 'Peruano', 'kareb0727@gmail.com', null, 'Facebook', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('755', 'Alejandra', 'Mujica', 'Peruano', 'amujicad15@hotmail.com', null, 'Web', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('756', 'Paul ', 'Portuno', 'Peruano', 'portunoseguros@gmail.com', ' 999462550,0', 'Facebook', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('757', 'Israel ', 'Heitner', 'Peruano', 'mdfch02@hotmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('758', 'Eduardo ', 'Sattui', 'Peruano', 'notiene@ount.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('759', 'Violeta ', 'Saavedra', 'Peruano', 'violeta.saavedra@essalud.gob.pe', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('760', 'Nayvi', 'Pablo Bruno', 'Peruano', 'naydipablobruno@gmail.com', ' 985406649,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('761', 'Nelly ', 'Ortega', 'Peruano', 'nellyortega_paraiso@hotmail.com', ' 943710828,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('762', 'NO DEJO ', 'nodejo', 'Peruano', 'pecopsico@yahoo.es', ' 987459926,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('763', 'Norma', 'Olano', 'Peruano', 'nodejo@nodejo.com', ' 923675152,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('764', 'Jose ', 'Alcantara', 'Peruano', 'joseyeam@hotmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('765', 'Susana', 'Torres', 'Peruano', 'aledany24@yahoo.com.mx', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('766', 'Rommy ', 'Diaz', 'Peruano', 'romdiag@hotmail.com', ' 943526873,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('767', 'Diego', 'Sanes', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('768', 'Maria ', 'Carmona', 'Peruano', 'mary8625@hotmail.com', ' 970466917,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('769', 'Mario', 'Cano', 'Peruano', 'mario19007@hotmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('770', 'Eric ', 'Llanos', 'Peruano', 'ernillaso@gmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('771', 'Cinthya', 'Yaya', 'Peruano', 'charito_1906@hotmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('772', 'Sixto', 'Ruiz', 'Peruano', 'sixman@gmail.com', null, 'Web', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('773', 'Guisela ', 'Haltenhof', 'Peruano', 'ghaltenholf@yahoo.com', ' 986670283,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('774', 'Lorena ', 'Alzamora ', 'Peruano', 'alzamora.lore@gmail.com', null, 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('775', 'JHOLIN', 'LUCAS', 'Peruano', 'jholin.9@gmail.com', ' 928777514,0', 'Ubicación', '7', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('776', 'Marisela ', 'Gutierrez', 'Peruano', 'maricela.gutierez@brokermgp.com', ' 964663416,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('777', 'Marcela ', 'Silva', 'Peruano', 'marcil_13@yahoo.com', ' 993456631,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('778', 'Cecilia', 'Tejada ', 'Peruano', 'ceciliatejada20@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('779', 'Astred', 'Meza', 'Peruano', 'nicamc1561@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('780', 'Elizabeth ', 'Roncagliolo', 'Peruano', 'carlos.jauregui.r@hotmail.com', ' 993929307,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('781', 'Grabriela ', 'Drumond', 'Peruano', 'nidejo@noesdeperu.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('782', 'Jose', 'Fernadez', 'Peruano', 'nodejo@notiene.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('783', 'Gloria', 'Caso', 'Peruano', 'notiene@paxsviveenroma.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('784', 'JORGE', 'GONZALES', 'Peruano', 'carnavalbandashow@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('785', 'ROSA', 'ARCE', 'Peruano', 'tico_box@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('786', 'Claudio', 'Siesquen', 'Peruano', 'claudia.siesquen@pucp.pe', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('787', 'Melisa ', 'Cardenas', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('788', 'ELIZABETH RONCAGLIOLO', 'RONCAGLIOLO', 'Peruano', 'carlos.jauregui.r@hotmail.com', ' 993929307,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('789', 'Paola ', 'Caldas', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('790', 'Jose ', 'Cerron', 'Peruano', 'joseluisdaleu@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('791', 'Alejandra ', 'no dejo', 'Peruano', 'nodejo@masnada.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('792', 'Esteban ', 'Gomez', 'Peruano', 'gomezstv@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('793', 'Jaqueline', 'Flores', 'Peruano', 'jackfloc3@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('794', 'Luis', 'Lengua', 'Peruano', 'lel23@hotmail.com', ' 981178905,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('795', 'Valeria', 'Cardenas', 'Peruano', 'ninaarribas25@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('796', 'Teodoro', 'Moreano', 'Peruano', 'fideliamoreano@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('797', 'Angel', 'Espinoza ', 'Peruano', 'afaleiz@hotmail.com', ' 992959426,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('798', 'Maribel', 'Bustinza', 'Peruano', 'maribj59@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('799', 'Narumi ', 'Hernandez', 'Peruano', 'narumi_ha@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('800', 'Jose ', 'Barrantes', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('801', 'Oscar', 'Mosquera', 'Peruano', 'cinthyamosquera22@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('802', 'Kate', 'Marmolejo', 'Peruano', 'kateticse@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('803', 'Richard', 'Flores', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('804', 'milton ', 'machado ', 'Peruano', 'niltonsiva68.nmds@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('805', 'JUAN ', 'INE  JARAMILLO', 'Peruano', 'juanja_j3@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('806', 'SILVIA', 'ALBARES ', 'Peruano', 'silviaalba@yahoo.com', ' 7198460,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('807', 'BETZABE', 'AZA', 'Peruano', 'betzabeaza@yahoo.es', ' 994708637,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('808', 'BERLY ', 'PEZO RIVAS ', 'Peruano', 'BERLIN_CHARA@HOTMAIL.COM', ' 988465712,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('809', 'ALEXANDRA ', 'ZAPATA ', 'Peruano', 'SIDANDALEX@GMAIL.COM', ' 954779805,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('810', 'ROMULO  EDMUNDO', 'MARTINEZ', 'Peruano', 'margarondinel@yahoo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('811', 'WENDY ', 'PEREZ', 'Peruano', 'wpgrecia@gmail.com', ' 982548710,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('812', 'EDUARDO', 'MOYANO', 'Peruano', 'calanmaqui@hotmail.com', ' 954779105,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('813', 'BLANCA ', 'DARLE', 'Peruano', 'bdarle9@gmail.com', ' 7191460,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('814', 'ROSA', 'GARCIA ', 'Peruano', 'esteralvarado@hotmail.com', ' 954779805,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('815', 'Haide Cerna ', 'Cerna', 'Peruano', 'nodejo@tikatravel.pe', ' 945261204,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('816', 'Jose Miguel', 'Lemus ', 'Peruano', 'jmlemusc@yahoo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('817', 'Beatriz ', 'Shimburkuro', 'Peruano', 'nodio@tikatravel.pe', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('818', 'Eugenia', 'Guevara', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('819', 'Haide', 'Cerna', 'Peruano', 'natalia_vm15@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('820', 'Maria / Alberto', 'Palacios / Vilela', 'Peruano', 'vilela.juan0@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('821', 'Francisca', 'Luque', 'Peruano', 'nodejo@tikatarvel.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('822', 'Lucy', 'Barrientes', 'Peruano', 'notiene@gmail.com', ' 986640908,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('823', 'Martin', 'Rodriguez', 'Peruano', 'martin.rodriguez@outlook.com', ' 986747033,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('824', 'Armando ', 'Castillo', 'Peruano', 'armando2c@yahoo.com.ar', ' 954779805,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('825', 'Alcides', 'Soto', 'Peruano', 'notiene@gmail.com', ' 27351205,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('826', 'Belaunde', 'Flores', 'Peruano', 'notiene@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('827', 'Elena', 'Rodriguez', 'Peruano', 'elena_ropdriguez@gmail.com', ' 954779805,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('828', 'Andrea', 'Garcia', 'Peruano', 'andrea_25992@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('829', 'Rosa', 'Riquelme', 'Peruano', 'rosa.riquelme@hotmail.com', ' 999366588,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('830', 'Graciela', 'Zuñiga', 'Peruano', 'notiene@gmail.com', ' 4832385,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('831', 'Amanda', '.', 'Peruano', 'naco318@aol.com', ' 994423626,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('832', 'Nieves', 'Zavaleta', 'Peruano', 'notiene@gmail.com', ' 4738676,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('833', 'Giancarlo', '.', 'Peruano', 'notiene@gmail.com', ' 954779805,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('834', 'Mercedes', 'Piscano', 'Peruano', 'mercedespiscano@gmail.com', ' 941460995,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('835', 'Sergio', 'Gurgel', 'Peruano', 'notiene@gmail.com', ' 993021055,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('836', 'Betsabet ', 'AZA', 'Peruano', 'betzabetaza@yahoo.es', ' 994708637,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('837', 'Alcides ', 'Soto', 'Peruano', 'notiene@notiene.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('838', 'Armando ', 'Castillo', 'Peruano', 'nodejaron@turistasdepaso.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('839', 'Nathalie', 'Ramirez', 'Peruano', 'nathali.ramirez.tomas@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('840', 'Pamela', 'Chacaltana', 'Peruano', 'kpevas1419@hotmail.com', ' 940037891,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('841', 'Ruth', 'Elias', 'Peruano', 'notiene@gmail.com', ' 934595635,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('842', 'Luz', 'Rey', 'Peruano', 'roma1713@hotmail.com', ' 977177563,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('843', 'Ivan', 'Gomez', 'Peruano', 'ivangomez333@hotmail.com', ' 945560140,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('844', 'Mary', 'Sue', 'Peruano', 'marysuepinzas@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('845', 'Victorie', 'Kloster', 'Peruano', 'viquii.kloster@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('846', 'Maritza', 'Bustamente', 'Peruano', 'maritza_200850@yahoo.com', ' 994715124,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('847', 'Angie', 'Vargas', 'Peruano', 'vargas.angied@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('848', 'Patricia', 'Pandero', 'Peruano', 'notiene@gmail.com', ' 954779807,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('849', 'YENNY', 'HERRERA', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('850', 'Maria Betzabe', 'Aza Castillo', 'Peruano', 'betzabeaza@yahoo.es', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('851', 'Patricia ', 'Lancho ', 'Peruano', 'nodejo@tikatravel.pe', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('852', 'Gloria ', 'Beteta', 'Peruano', 'al_beteta@hotmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('853', 'Christian ', 'Valdebenito', 'Peruano', 'nodejo@estadepaso.pe', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('854', 'Maria', 'Macedo', 'Peruano', '0706kkari@hotmail.com', ' 999995061,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('855', 'Nelly', 'Caceres', 'Peruano', 'notiene@gmail.com', ' 977177563,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('856', 'Richard', 'Flores', 'Peruano', 'notiene@gmail.com', ' 999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('857', 'Isabel', 'Blastecone', 'Peruano', 'nicolbes_96@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('858', 'Leandro', 'Monteiro', 'Peruano', 'defiqueiredo@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('859', 'Patricia', 'Leandro', 'Peruano', 'notiene@gmail.com', ' 954779807,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('860', 'Miguel', 'Salazar', 'Peruano', 'arcangels_17@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('861', 'Gloria ', 'Beteta ', 'Peruano', 'al_beteta@gmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('862', 'Silvia', 'Bequet ', 'Peruano', 'roclifama@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('863', 'Alfredo', 'Altuna', 'Peruano', 'aaltuna@geoinsitu.com.pe', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('864', 'Nelida ', 'De Enrique Maravi', 'Peruano', 'nodejo@nodejo.com', ' 999639403,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('865', 'Gina', 'Gonzales', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('866', 'Cesar ', 'Rossi', 'Peruano', 'cesar73pe@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('867', 'Cesar Rossi ', 'Rossi ', 'Peruano', 'NODEJO@NODEJO.COM', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('868', 'Maria ', 'Galindo', 'Peruano', 'mgalindolazo@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('869', 'Christian ', 'Pezo', 'Peruano', 'pezo.reategui.christian@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('870', 'Saul', 'Perez', 'Peruano', 'turismosurcosurco@hotmail.com', ' 987989491,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('871', 'Luz ', 'Marilanda ', 'Peruano', 'eliastk@gmail.com', ' 3106358889,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('872', 'Yolanda', 'Kiroka', 'Peruano', 'yqnegocios@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('873', 'PATRICIA ', 'LANCHO', 'Peruano', 'epatricialancho@hotmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('874', 'Evelyn ', 'Quiroz', 'Peruano', 'elenaquiroz22@hotmail.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('875', 'Hilda ', 'Campos', 'Peruano', 'hildacampos1905@gmail.com', ' 94079825,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('876', 'Zulma', 'Montalvo', 'Peruano', 'zmontalvo@outlook.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('877', 'sara', 'Giraldo', 'Peruano', 'nodejo@nodejo.com', ' 994200371,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('878', 'Anita del Carmen', 'Mendoza', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('879', 'Bettty', 'Rojas', 'Peruano', 'mbettyrojas@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('880', 'Jennifer', 'Polyanch', 'Peruano', 'jcecilia13@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('881', 'Isabel ', 'Mayo', 'Peruano', 'Isabelmv8@hotmail.com', ' 4698039,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('882', 'Rosa', 'Aguero', 'Peruano', 'xixel@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('883', 'Rosa', 'Bustinza', 'Peruano', 'keirey_1@hotmail.com', ' 987931580,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('884', 'Silvia ', 'Olasabal', 'Peruano', 'silviagp71@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('885', 'Betty ', 'Diaz', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('886', 'Patricia', 'Morales', 'Peruano', 'patric_mora@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('887', 'Kathya', 'Lopez', 'Peruano', 'Katya.lopez.suni@hotmail.com', ' 940150717,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('888', 'Nivardo', 'Banueta', 'Peruano', 'perufertil@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('889', 'Yolanda ', 'Davila', 'Peruano', 'yolandapte@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('890', 'Christina', 'Garcia Altamirano', 'Peruano', 'christina@querubi.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('891', 'Elizabeth', 'Mavila', 'Peruano', 'elimavila@hotmail.com', ' 982091946,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('892', 'Sergio', 'Frida', 'Peruano', 'sergio.frida@sergiofrida.com', ' 995028345,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('893', 'Flor', 'Ticlias', 'Peruano', 'flor@hotmail.com', ' 951713195,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('894', 'Beatriz', 'Saldaña', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('895', 'Cesar ', 'Rossi', 'Peruano', 'cesarrossi@hotmail.com', ' 987291179,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('896', 'Alfredo', 'Antuna', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('897', 'Luis', 'Mesarina', 'Peruano', 'nodejo@nodejo.com', ' 4689388,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('898', 'Ivon', 'Saavedra', 'Peruano', 'Ivonsaavedravitteri@gmail.com', ' 936935744,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('899', 'Luis ', 'Paredes', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('900', 'Gustavo', 'Prieto', 'Peruano', 'guspri_30@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('901', 'Bruno', 'Benavides', 'Peruano', 'nodejo@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('902', 'Anabell', 'Orbegozo', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('903', 'Carmela ', 'Calezas', 'Peruano', 'nodejo@nodejo.com', ' 958427502,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('904', 'Ana', 'wu', 'Peruano', 'asst.1.pe@yidacep.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('905', 'Francisco', 'Sanchez', 'Peruano', 'franciscobuendiasanchez@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('906', 'MARINA', 'PEREZ', 'Peruano', 'marinaolodi2411@yahoo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('907', 'MARTHA', 'ORELLANA', 'Peruano', 'NODEJO@NODEJO.COM', ' 995557461,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('908', 'ZAKARIA', 'TAGLDIN', 'Peruano', 'kmohamed121@gmail.com', ' 963263274,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('909', 'Benavides', 'Leonardo', 'Peruano', 'nodejo@nodejo.com', null, 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('910', 'NATIVIDAD', 'SOSA', 'Peruano', 'NODEJO@NODEJO.COM', ' 5847587,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('911', 'Sulca ', 'Milka', 'Peruano', 'milcasulcaaguilar@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('912', 'Evelyn', 'Castillo', 'Peruano', 'visualfivez@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('913', 'Jose ', 'Cerron', 'Peruano', 'nodejo@nodejo.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('914', 'Jimena ', 'Abanto', 'Peruano', 'jimenaabanto73@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('915', 'Janette', 'Arevalo', 'Peruano', 'nodejo@nodejo.com', ' 962644371,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('916', 'Ivan ', 'Jordan', 'Peruano', 'ivanjordanp10@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('917', 'Carla ', 'Cardenas', 'Peruano', 'carlacardenas23@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('918', 'Silvia ', 'Ihana del Castillo ', 'Peruano', 'silviadelcastillo28@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('919', 'Kimberly', 'Morales ', 'Peruano', 'morales.cabrejos@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('920', 'Rosana', 'Monje ', 'Peruano', 'monge_patty@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('921', 'Liz ', 'Huerta ', 'Peruano', 'lizsolledadhb@gmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('922', 'Segundina ', 'Chipa', 'Peruano', 'nodejo@nodejo.com', ' 5831251,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('923', 'Shakira ', 'Quintanilla', 'Peruano', 'shakira0704@hotmail.com', null, 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('924', 'Jordi Vidal', null, 'Peruano', null, null, 'Facebook', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('925', 'Rosa ', 'Centurion', 'Peruano', 'rosacenturion@hotmail.com', ' 999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('926', 'Kelly ', 'Aliaga ', 'Peruano', 'kelly@hotmail.com', ' 9999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('927', 'JOSE', 'TRUJILLANO', 'Peruano', 'josetrujillano2009@hotmail.com', ' 999999,0', 'Correo', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('928', 'NO ', 'APARECE NOMBRES', 'Peruano', 'mochaescorpio@hotmail.com', ' 999999999,0', 'Correo', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('929', 'INES', 'CASTRO', 'Peruano', 'icastro@cienxcientosur.com', ' 999999999,0', 'Correo', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('930', 'JANETH', 'ALIAGA', 'Peruano', 'Jaliaga@gmail.com', ' 999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('931', 'JUAN CARLOS ', 'UGARELLI', 'Peruano', 'juancarlosugarelli@gmail.com', ' 999999999999999,0', 'Facebook', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('932', 'MORIA', 'LENGUA', 'Peruano', 'lelc23@hotmail.com', ' 993006233,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('933', 'FREDY', 'GOMEZ HONORIO', 'Peruano', 'fredy_rgh@hotmail.com', ' 996972303,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('934', 'ROXANA', 'CHAIHUAQUE', 'Peruano', 'flordearena841@hotmail.com', ' 961048133,0', 'Televisión', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('935', 'JOHANA', 'FRANCIS', 'Peruano', 'nodejo@gmail.com', ' 9999999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('936', 'miriam ', 'AVALOS', 'Peruano', 'mavalos@gmail.com', ' 99999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('937', 'KARINA', 'POLAK', 'Peruano', 'karinapolak@yahoo.es', ' 99999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('938', 'CECILIA', 'ESPINAL', 'Peruano', 'cecyech@hotmail.com', ' 968989816,0', 'Facebook', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('939', 'nanny|', 'MANTURANO', 'Peruano', 'n.manturano@necsia.pe', ' 9999999999999,0', 'Facebook', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('940', 'CLAUDIO ', 'ARCE', 'Peruano', 'carce@gmail.com', ' 99999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('941', 'PEDRO', 'MURILLO', 'Peruano', null, ' 999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('942', 'pablo', 'sol sol', 'Peruano', 'paulo_sou@outlook.com', ' 99999999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('943', 'HAEDY', 'NO DIJO', 'Peruano', 'haedymon@hotmail.com', ' 99999999999,0', 'Web', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('944', 'RENZO ', 'MIRANDA', 'Peruano', 'renzo.miranda080393@gmail.com', ' 99999999,0', 'Recomendación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('945', 'MARCO', 'BELLINI', 'Peruano', 'mbellini@gmail.com', ' 9999999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('946', 'Estefano', 'Reynoso', 'Peruano', 'Nodejomail@gmail.com', ' 9999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('947', 'MARINA', 'CAYO', 'Peruano', 'MCAYO@outlook.es', ' 99999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('948', 'Flucker ', 'Pachauri', 'Peruano', 'fpflucker@icloud.com', ' 99999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('949', 'Claudia ', 'Lazaro', 'Peruano', 'nodejomail@gmail.com', ' 99999999,0', 'Ubicación', '5', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('950', 'Leyla', 'Santos', 'Peruano', 'lali-scn@hotmail.com', ' 99999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('951', 'argentinos', 'mochileros', 'Peruano', 'nodejaron@gmail.com', ' 99999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('952', 'RICARDO', 'CUÑAT', 'Peruano', 'nodejosumail@gmail.com', ' 999999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('953', 'ROSSANA', 'PODESTA', 'Peruano', 'rosabanana@hotmail.com', ' 99999999,0', 'Televisión', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('954', 'CLAUDIA', 'VILLAR', 'Peruano', 'clau.villar07@hotmail.com', ' 99999999,0', 'Correo', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('955', 'ISABEL', 'CHIROQUE', 'Peruano', 'ichiroque@notariatambini.com', ' 999999999,0', 'Recomendación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('956', 'ROCIO ', 'AKAJOSI', 'Peruano', 'rocioakajosi@hotmail.com', ' 9999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('957', 'William ', 'Philip', 'Peruano', 'Nodejomail@gmail.com', ' 2249878,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('958', 'alisson', 'lopez', 'Peruano', 'llopez@gmail.com', ' 999999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('959', 'MARCELA', 'CASTRO', 'Peruano', 'marcelacastro@hotmail.com', ' 99999999999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('960', 'marco', 'galvez', 'Peruano', 'nodjeomail@gmail.com', ' 9999999,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('961', 'nodejo', 'extranjero', 'Peruano', '1@gmail.com', ' 9999999999,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('962', 'Roxana', 'Repetto', 'Peruano', 'roxrepetto@yahoo.com', ' 9999999,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('963', 'EFRAIN ', 'POLAR', 'Peruano', null, '*99999999999', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('964', 'DORA ', 'HURTADO', 'Peruano', 'rocioakajosi@hotmail.com', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('965', 'Ciro', 'Wong', 'Peruano', '-', ' 7190583,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('966', 'ANA MARIA', 'RIOS', 'Peruano', 'nishila_amr@hotmail.com', ' 99999999999,0', 'Web', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('967', 'ROXANA', 'REPETTO', 'Peruano', 'roxrepetto@yahoo.com', ' 999999999,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('968', 'fiorella', 'Canta', 'Peruano', 'fiorellacanta1@gmail.com', ' 99999999999,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('969', 'SEÑORA', 'X', 'Peruano', 'nodejomail@gmail.com', ' 999999999999,0', 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('970', 'GISELLE', 'GARCIA', 'Peruano', 'giselle.garcia@telefonica.com', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('971', 'RAUL', 'MENDOZA', 'Peruano', 'raulmendozall@yahoo.es', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('972', 'CHICOS', 'DE LA FAP', 'Peruano', 'nodejaroncorreo@gmail.com', null, 'Ubicación', '2', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('973', 'BRIGIT ', 'NUNEZ', 'Peruano', 'angelvegasiu@hotmail.com', ' 953721052,0', 'Facebook', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('974', 'LUZMILA', 'MEDINA VIUDA DE CRUZADO', 'Peruano', 'ecruzadom@hotmail.com', ' 994560808,0', 'Ubicación', '1', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('975', 'ROSARIO ', 'CASTRO', 'Peruano', 'nodejo@gmail.com', ' 99999999999999,0', 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('976', 'adolfi', 'NIÑO DE GUZMAN', 'Peruano', 'tandgagio@hotmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('977', 'mochilero', ' 1,0', 'Peruano', 'notdejo@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('978', 'JULIA', 'TAPIA', 'Peruano', 'jtapia@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('979', 'CELIA ', 'CHAMORRO', 'Peruano', 'cchamorro@hotmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('980', 'MILAGROS ', 'VALER', 'Peruano', 'nodejomail@gmail.com', null, 'Correo', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('981', 'SANDRA', 'ELIAS', 'Peruano', 'sandraelias@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('982', 'rosario ', 'castro', 'Peruano', 'NOTIENEMAIL@HOTMAIL.COM', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('983', 'lizeth', 'Sosa', 'Peruano', 'niquizodejar@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('984', 'GIANNINA', 'V', 'Peruano', 'gnianina@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('985', 'DANTE', 'IZAGUIRRE', 'Peruano', 'dnte@msn.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('986', 'MYRNA', 'RODRIGUEZ', 'Peruano', 'myrnarodriguez@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('987', 'janeeth', 'Moscoso', 'Peruano', 'janeethmoscoso@yahoo.com.pe', ' 995017912,0', 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('988', 'JUAN ', 'SALINAS', 'Peruano', 'jusalinas71@hotmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('989', 'ALFREDO', 'BELTRAN', 'Peruano', 'beltranalfredo@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('990', 'JUAN', 'CASTRO', 'Peruano', 'jcastro@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('991', 'LUCIA BETSABE', 'GASTULO LAVADO', 'Peruano', 'lgastulo@yahoo.es', ' 998594147,0', 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('992', 'VICTORIA ', 'CRUZ', 'Peruano', 'vie_cruzbena@yahoo.com', ' 997578160,0', 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('993', 'PAMELA', 'CANO', 'Peruano', 'pamelacano@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('994', 'ARWA', 'A', 'Peruano', 'nodejo@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('995', 'AUGUSTO', 'AGUIRRE LA ROSA', 'Peruano', 'otsugua612@gmail.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('996', 'GERARDO ', 'CACCHA', 'Peruano', 'notienemailtodoporfacebook@gmaill.com', null, 'Ubicación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('997', 'MONICA', 'QUESADA', 'Peruano', 'mlqp556664@yahoo.es', ' 961608637,0', 'Recomendación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('998', 'NANCY', 'X', 'Peruano', 'NANCY1000X@hotmail.com', ' 943520801,0', 'Recomendación', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('999', 'NELLY', 'RIVERA', 'Peruano', 'ericka.albornoz@hotmail.com', ' 999504077,0', 'Web', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('1000', 'JOSE', 'LOPEZ', 'Peruano', 'jose.lopez@cresperu.com', ' 980482096,0', 'Correo', '6', '2017-08-01 00:00:00', '2017-08-03 21:34:02', '1', '1', '1', null, null);
INSERT INTO `customers` VALUES ('1001', 'MIGUEL', 'LOSTANAU', null, 'MILOSFU@HOTMAIL.COM', ' 952392433,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1002', 'EVELYN', ' 1,0', null, 'evee.11@hotmail.com', ' 1,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1003', 'MARIANELA', ' 1,0', null, 'nodejomail@gmail.com', ' 1,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1004', 'MIGUEL', 'LOSTANAU', null, 'milosfu@hotmail.com', ' 952392433,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1005', 'kitty', 'ALATA LINARES', null, 'kittyalata@gmail.com', ' 976111387,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1006', 'MARIELA ', 'ANDIA', null, 'mrelnda@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1007', 'stefany', 'NODEJO', null, 'estef.r20@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1008', 'GIUSEPE', 'SANTINI', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1009', 'ana ', 'ESTRADA', null, 'nodejamail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1010', 'ROSVITA', 'DEL CASTILLO', null, 'rosvitadelc@hotmail.com', ' 983686801,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1011', 'GONZALO ', 'SIU X04', null, 'gonzalosiu@yahoo.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1012', 'MILAGROS', 'X', null, 'nodejmail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1013', 'MARIA ELENA', 'ARCINIEGA', null, 'NODEJOMAIL@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1014', 'betsabe ', 'GARAY', null, 'nodejomail@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1015', 'paulina', 'j', null, 'NODEJOMAIL@GMAIL.COM', ' 99999,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1016', 'narciso', 'Garcia', null, 'narcisogm30@gmail.com', ' 998000191,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1017', 'JOSE', 'NO DEJO ', null, 'jcentty@yahoo.com', ' 4451048,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1018', 'ANDRES', 'HURTADO', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1019', 'LUIS ', 'DE LA CUBA', null, 'luisdelacuba76@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1020', 'PEDRO', 'MIRANDA', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1021', 'PARROQUIA', 'NUESTRA SENORA', null, 'normarti45@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1022', 'ESTEFANY ', 'FAGIASI', null, 'estfagiasi@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1023', 'VANESSA', 'X', null, 'vanessa@hotmail.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1024', 'GIOVANA', 'RODRIGUEZ', null, 'giovannarodriguez@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1025', 'javier', 'NAVARRETE', null, 'jnavarrete@eic.edu.pe', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1026', 'narciso ', 'GARCIA', null, 'NARCISOGM30@GMAIL.COM', ' 998000191,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1027', 'DIANA ', 'RODRIGUEZ', null, 'diana.rodriguez@llaviation.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1028', 'CARLOS', 'CHANG', null, 'nanochang@hotmail.com', ' 965399664,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1029', 'LUIS ', 'LENGUA', null, 'lelc23@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1030', 'JULIA', 'TAQUIRI', null, 'julie_marie351@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1031', 'sandra', 'Casilla', null, 'sandratasilla@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1032', 'orlando', 'Rojas', null, 'NODEJOMAIL@GMAIL.COM', ' 2857791,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1033', 'wilmer', 'MARQUEZ', null, 'wilmer-147@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1034', 'Rossy', 'extranjeros', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1035', 'YANET ', 'VILLAMAR DE LINARES', null, 'NODEJOMAIL@GMAIL.COM', ' 974630612,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1036', 'no le tome ', 'datos', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1037', 'PIERRE ', 'ZAVALA', null, 'nodejomail@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1038', 'flor ', 'fuente ', null, 'roxy_arias31@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1039', 'MERCEDES', 'LANDEO', null, 'landeo@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1040', 'cristina', 'luna', null, 'cluna@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1041', 'MIRELLA ', 'ARELLANO', null, 'macneill26@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1042', 'nodejo', 'no dejo', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1043', 'lourdes', 'maguil', null, 'magllu@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1044', 'nodejo', 'extranjera', null, 'nodejo@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1045', 'PIERRE', 'ZAVALA', null, 'myflyca@hotmail.com', ' 953915050,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1046', 'PIXEL ALEJANDRO', 'BINCES', null, 'ccalderon@pixelmedia.com.pe', ' 960911781,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1047', 'ANGELLO', 'RAMIREZ', null, 'angellorm2013@gmail.com', ' 990881681,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1048', 'SIXTO', 'URBANO', null, 'sixtourbano@yahoo.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1049', 'PORFIRIO', 'BONILLA', null, 'nodejosumail@gmail.com', ' 99999,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1050', 'JOSE ', 'QUIJANDRIA', null, 'Jquijandriacuba@gmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1051', 'katia', 'Chavarri ', null, 'katiach13@hotmail.com', ' 969742557,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1052', 'MILAGROS', 'MUÑOZ ORTIZ', null, 'milagro.oz@hotmail.com', ' 929102708,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1053', 'TERESA', 'PEREIRA', null, 'tessi_pereira@hotmail.com', ' 994277191,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1054', 'Aldo', 'Roman', null, 'aldo.roman@altecproject.com', ' 4377005,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1055', 'EDITA ', 'AGUIRRE', null, 'eaguirre66@hotmail.com', ' 968447296,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1056', 'EDMUNGO', 'GARCIA', null, 'edmundogz@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1057', 'JULIA', 'TAQUIRI', null, 'NODEJO@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1058', 'ROSARIO', 'MAYOR', null, 'teresaelizabeth3@hotmail.com', ' 99,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1059', 'milagros', 'muñoz', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1060', 'FERRAN  ', 'FRONTAL', null, 'semeperdiosutarjetita@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1061', 'OSWALDO', 'JIMENEZ', null, 'oswaldojimenez.mves@gmail.com', ' 997566411,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1062', 'PIERRE', 'ZAVALA', null, 'pierrezavala1988@gmail.com', ' 994213954,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1063', 'MERCEDES', 'DE LA TORRE', null, 'MDZ_25@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1064', 'Edmundo Eleazar', ' Garcia Zavaleta', null, 'edmundogz@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1065', 'GRACIELA ', 'ALFARO', null, 'margothaguilar@hotmail.com', ' 964421920,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1066', 'WILLIAM ', 'ASCONA AGUILAR', null, 'williamascona@gmail.com', ' 990608869,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1067', 'MARY', 'GUTIERREZ', null, 'rofisa56@gmail.com', ' 989020207,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1068', 'ROXANA ', 'MONTAYA', null, 'RMONTOYA18@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1069', 'LUZMILA', 'MORALES', null, 'mi_la27@hotmail.com', ' 951291314,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1070', 'EUGENIA', 'RASTA', null, 'nodejo@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1071', 'españoles', 'viejitos', null, 'notienensonviejitos@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1072', 'MARGOTT ', 'ILLESCA', null, 'marrriott18@hotmail.com', ' 3230404,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1073', 'SERGIO', 'ANDRE', null, 'sergioandres2001@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1074', 'DIEGO', 'URCIA', null, 'diegourcia@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1075', 'KAREN ', 'BUSTAMANTE', null, 'kgbustamante@gmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1076', 'Jose', 'Lopez', null, 'jose.lopez@cresperu.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1077', 'Rosales', 'Rosales', null, 'notiene@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1078', 'chicodesesperado', 'desesperado', null, 'nodejaron@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1079', 'xavier', 'Castillo', null, 'jcast_od@hotmail.com', ' 6106117,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1080', 'Luis', 'Rodríguez', null, 'notiene@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1081', 'Alexandra', 'Melendez', null, 'notiene@gmail.com', ' 952057793,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1082', 'Luis', 'Rodriguez', null, 'notiene@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1083', 'Edmundo', 'García', null, 'edmundog2@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1084', 'Carlos', 'Zuñiga', null, 'fvcharlas@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1085', 'Betzabe', 'Palacios', null, 'betpapi66@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1086', 'chicaextraña', 'extraña', null, 'notiene@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1087', 'MARISOL', 'ARGUEDAS', null, 'marguedas@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1088', 'cynthia', 'maceda', null, 'cynmaceda@hotmail.com', ' 989852216,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1089', 'HELEN', 'REBAZA', null, 'hrebaza@lima-airport.com', ' 993831638,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1090', 'GUILLERMO', 'RXZ', null, 'guillermo_rz32@outlook.com', ' 974935024,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1091', 'carmen YSABEL', 'VILLANUEVA ARANA', null, 'nodejomail@gmail.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1092', 'NATALIE', 'VELASQUEZ', null, 'nalejosv@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1093', 'ALFONSO', 'PARRENO', null, 'maritzamonarmoyoli@hotmail.com', ' 986841188,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1094', 'ANDREA', 'CHANG MORALES', null, 'achang@replica.com.pe', ' 972522970,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1095', 'MARISOL', 'AGUIRRE ', null, 'MAGUIRRE@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1096', 'CINTHYA ', 'GOZALVEZ', null, 'cygozalvez@hotmail.com', ' 990391303,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1097', 'YANELLA', 'HUACAUSE', null, 'yanellita7@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1098', 'nataly', 'ramos', null, 'nathyrr13@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1099', 'señora', 'Colombiana', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1100', 'elena ', 'LOVON', null, 'elenalt25@hotmail.com', '+34631413534', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1101', 'florencia', 'es viejita', null, 'nodebesaberniqueesemail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1102', 'MARIA', 'INES', null, 'mariainp19@gmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1103', 'lourdes ', 'pena flores', null, 'lourdes.flores30@yahoo.com', ' 950360573,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1104', 'Stephanie ', 'jacobs', null, 'stephiejacobs90@gmail.com', ' 994224480,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1105', 'JORDAN', 'CASTILLO ZARATE', null, 'jor.castillo.zarate@gmail.com', ' 979585166,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1106', 'seleny', 'FLORES', null, 'selenyflores@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1107', 'karina', 'Peña', null, 'karina.pena@obst.pe', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1108', 'angelica', 'ASENCIOS', null, 'anasteri@hotmail.com', ' 966976926,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1109', 'KATTY', 'FERNANDEZ', null, 'Blackmen_dng@outlook.com', ' 943430420,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1110', 'carolina', 'Olaya', null, 'caroaa01@gmail.com', ' 996316561,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1111', 'carmen YSABEL', 'VILLANUEVA ARANA ', null, 'nodejomail@gmail.com', ' 99945794,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1112', 'miguel ', 'ALBUJAR', null, 'edupalmo@yahoo.es', ' 73381209,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1113', 'pareja', 'joven', null, 'nodejomail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1114', 'JANNETH ', 'ALIAGA', null, 'notengosumail@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1115', 'CAROLINA', 'ALAYO', null, 'notienemailesviejita@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1116', 'CHRISTIAN', 'FLORES', null, 'christhiansolutions2015@gmail.com', ' 928399776,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1117', 'jose luis', 'soler', null, 'UNAONCE@YAHOO.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1118', 'miguel', 'SAMAMEZ', null, '2056miguel@gmail.com', ' 941071672,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1119', 'CAROLINA', 'ALAYO', null, 'caroaa01@gmail.com', ' 996316561,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1120', 'chico', 'churro ', null, 'nomedejoparamalasuerte@gmail.com', ' 111111111,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1121', 'ANGELICA', 'ASENCIOS', null, 'anasetri@hotmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1122', 'CAROLINA ', 'MENDOZA ', null, 'Carolina.vf.mendoza@gmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1123', 'christian ', 'FLORES', null, 'christiansolutions2015@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1124', 'JUAN ', 'LECAROS ROMERO', null, 'juanlecaros@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1125', 'CAROLINA ', 'CONTRERAS', null, 'crocontreras@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1126', 'rosario', 'ALFARO', null, 'sammyaq@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1127', 'soraya', 'Escalante', null, 'litasoraya@hotmail.com', ' 989929086,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1128', 'CLAUDIA', 'DI LIBERTO ONAGA', null, 'claudiaonaga@gmail.com', ' 949120386,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1129', 'GIULIANA', 'HINOJOZA', null, 'lhinojosah@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1130', 'CLAUDIA', 'ONAGA', null, 'cdaga@britanico.pe', ' 966719954,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1131', 'JOB ELIAS', 'PAJUELO RODRIGUEZ', null, 'jobp75@hotmail.com', ' 936872378,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1132', 'roberto', 'Carlos', null, 'robertocarlos@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1133', 'julio', 'MACHAN', null, 'juliomechan@hotmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1134', 'ROBERTO ', 'BENAVIDES ', null, 'isako_20@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1135', 'KAREN ', 'OBEZO', null, 'karenxd@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1136', 'DAVID ', 'BRIONES', null, 'BRIONES@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1137', 'JESSICA', 'ARROYO', null, 'JSSCA-ARRYO@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1138', 'MARIA ', 'INES NOVOA ', null, 'mariainp19@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1139', 'MARIA', 'CASTRO', null, 'NOTIENE@GMAIL.COM', ' 6391818,0', 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1140', 'PAX DE ', 'SEVA ', null, 'nodijo@gmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1141', 'livia', 'romero', null, 'liviaromero@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1142', 'luis ', 'CHAMOCHUMBI', null, 'NODEJOMAIL@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1143', 'claudia', 'daga', null, 'cdaga@britanico.pe', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1144', 'julio ', 'mechan', null, 'juliomechan@hotmail.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1145', 'yanca ', 'porras', null, 'Yaancarlosporras@hotmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1146', 'extranjero', ' 1,0', null, 'NODEJO@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1147', 'AGUEDA', 'TORRES ', null, 'AGUEDATORRES@GMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1148', 'JHIME', 'DELGADP', null, 'delg.jhm@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1149', 'felipe', 'AJRAZ', null, 'feajraz@hotmail.com', ' 999870401,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1150', 'cristian', 'Luna', null, 'CLuna@huntoil.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1151', 'KATY ', 'MALLQUI', null, 'kmallquic@gmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1152', 'Patty', 'Artica', null, 'pattyartica18@hotmail.com', '981578634', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1153', 'Elvidia', 'Carhuavilca Marcelo', null, 'elvicarma@gmail.com', '992903079', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1154', 'Carmen', 'Coronado', null, 'carmencoronadoa@gmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1155', 'Janette', 'Acuña Quispe', null, 'rosarionet2111@gmail.com', '962958381', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1156', 'Lmavilaq', null, null, 'lmavilaq@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1157', 'Cecilia', 'Banda', null, 'cecibanda04@gmail.com', '997666318', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1158', 'Carlos', 'Congora', null, 'karlos6411@hotmail.com', '987793134', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1159', 'Yajis', 'Tf', null, 'yajairatf1@hotmail.com', '994890649', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1160', 'Maricarmen', 'Chavez Puppi', null, 'mcchavezpuppi@hotmail.com', '998417353', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1161', 'Raul', 'Zarate', null, 'raulzarate@outlook.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1162', 'Mirna Rosa', 'Cajo Posso', null, 'mrcpjmackinder@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1163', 'Rosaluz', 'Apaza', null, 'rlaa_peru@hotmail.com', '983526062', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1164', 'Lily Rojas', 'Cachay', null, 'lilycachay@hotmai.com', '952926464', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1165', 'Tania', 'Briseño', null, 'tanny_rie15@hotmail.com', '943658766', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1166', 'Gabriela', 'Ana', null, 'anagab07@hotmail.com', '943732142', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1167', 'Roxana', 'Alguiar', null, 'rox.alguiar@hotmail.com', '943235961', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1168', 'Milagros', 'Rodriguez Palomino', null, 'milagros.rodriguezp@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1169', 'Violeta', 'Vargas', null, 'vvargasc14@hotmail.com', '952617093', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1170', 'Roman', 'Bastarrachea', null, 'solucionesroman@hotmail.com', '984137442', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1171', 'Gabriela', 'Alfaro', null, 'galfaro@sunat.gob.pe', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1172', 'María Georgina', 'Suárez Alfaro', null, 'mariageorginasa@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1173', 'Leslie Ivanna', 'Pacheco Malaver', null, 'pachecormalaverivanna@gmail.com', '983338741', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1174', 'Margoth', 'Aguilar', null, 'margothaguilar@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1175', 'Alexander', 'Pachas', null, 'alexpt88@hotmail.com', '993727230', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1176', 'VANESA', 'CARLOS', null, 'vanesacar@hotmail.com', '956985359', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1177', 'Raul', 'Zarate', null, 'raulzarate@outlook.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1178', 'Graciela', 'Alfaro', null, 'galfaro@sunat.gob.pe', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1179', 'María Georgina', 'Suárez Alfaro', null, 'mariageorginasa@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1180', 'Leslie Ivanna', 'Pacheco Malaver', null, 'pachecormalaverivanna@gmail.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1181', 'Antonio Jose', 'Pavon Galan', null, 'antoniojosepavongalan@hotmail.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1182', 'Jackelyn Pamela del Rocio', 'Alfaro Quiroz', null, 'pamemn2101@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1183', 'José Enrique', 'Moreno Quijandría', null, 'morenosoccer@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1184', 'Alexander', 'Pachas', null, 'alexpt88@hotmail.com', null, 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1185', 'Vanesa', 'Carlos', null, 'vanesacar@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1186', 'Giannina', null, null, null, null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1187', 'FELICITAS ', 'MARIN BARDALES ', null, 'GLORIA.MB24EME@GMAIL.COM', ' 927872665,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1188', 'JIMMY', 'HIPOLITO  HUARANGA', null, '111111@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1189', 'MARIA DOLLY', 'SANCHEZ ', null, 'MARIADOLLY9@HOTMAIL.COM', ' 986737624,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1190', 'MERCEDES ', 'URIBE ACUÑA', null, 'JMECHEURIBE@YAHOO.COM', ' 995645525,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1191', 'NAZARIO ', 'TICAÑO', null, '221555@HOTMAIL.COM', ' 3762555,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1192', 'ERIKA ', 'BARRETO', null, 'berickab@yahoo.com', null, 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1193', 'JUANA', 'QUISPE', null, 'JUANA_ROMINA@HOTMAIL.COM', ' 940046871,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1194', 'PERCY ', 'CARPIO ', null, 'J.CARPIO@OUTLOOK.ES', ' 993612953,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1195', 'JOSE ', 'ALFARO  CALDERON ', null, 'JOSEALFAROCALDERON@GMAIL.COM', ' 994919104,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1196', 'JOSE ', 'UBILLUS GUTIERREZ', null, '1254@hotmail.com', ' 999309997,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1197', 'NORA ', 'VELA MAYTAHUARI', null, '122553114@HOTMAIL.COM', ' 2915272,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1198', 'GLENDA ', 'RONDAN  MENDOZA ', null, 'SOBERLY_2020@HOTMAIL.COM', ' 971064040,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1199', 'KAREN', 'SANTA CRUZ ', null, 'KSANTACRUZ23@GMAIL.COM', ' 997751041,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1200', 'ALBERTO ', 'AZALDEGUI ', null, 'ALAZACRU@GMAIL.COM', ' 942983190,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1201', 'MARIA ', 'MEDINA LLANOS ', null, 'MARY16SAM@GMAIL.COM', ' 955825380,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1202', 'JOHANA ', 'MANSILLA ', null, 'LISSET_27_4@HOTMAIL.COM', ' 986183377,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1203', 'ROBERTO  TOMAS ', 'SOSA ', null, '12569@HOTMAIL.COM', ' 999969081,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1204', 'KAREN AGUEDITA ', 'SANTA CRUZ ', null, 'KSANTACRUZ23@GMAIL.COM', ' 997751041,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1205', 'ANGEL', 'OLARTE ', null, 'angel.olarte@cinecolor.com.pe', ' 965407058,0', 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1206', 'EDITH ', 'FLORES HERRERA ', null, 'JANFLO2009@HOTMAIL.COM', ' 980420062,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1207', 'VALERIANA ', 'AMAU CONDE ', null, 'VALERIANAAMAU@OUTLOOK.COM', ' 966335321,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1208', 'NAZARIO ', 'TICAÑO ', null, '123456@HOTMAIL.COM', ' 3762555,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1209', 'ALVARO ', 'MEJIA ', null, 'ALVAROMEJIA30S@GMAIL.COM', ' 998820675,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1210', 'ARMANDO MARCELO ', 'HUARCAYA CASTAÑEDA ', null, 'MARCELOHC9@HOTMAIL.COM', ' 947206947,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1211', 'GRACE ', 'MONTES CAHUAZA', null, 'GMONTES@AMANTANI.PE', ' 987207902,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1212', 'KATTY', 'CARDENAS HUAMAN ', null, 'KATTYCH1505@HOTMAIL.COM', ' 953253200,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1213', 'LUIS ENRIQUE ', 'YAPO SANDOVAL ', null, 'LUCHO_2713@HOTMAIL.COM', ' 975582258,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1214', 'PIERRE ', 'BAZIN ', null, 'PL.BAZINGZ@GMAIL.COM', ' 989454366,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1215', 'JESUS ENRIQUE ', 'RÍOS FLORES ', null, 'JESUSRIOSFLORESO@GMAIL.COM', ' 942974882,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1216', 'LECLERE', 'LECLERE', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1217', 'LUZ MARIA ', 'VILLALOBOS  FLORES ', null, 'lmvilla@hotmail.com', ' 979467038,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1218', 'SARINA JACKELINE', 'ARAUCO DE LA CRUZ ', null, 'sarauco2012@outlook.es', ' 979026510,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1219', 'GRACE ', 'GARCIA ', null, 'gracebgc@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1220', 'cristina ', 'villanueva bravo ', null, 'cristinavillanueva42@hotmail.com', ' 9849965656,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1221', 'patricia ', 'gonzales', null, 'patricia.gonzales@belmond.com', ' 4350462,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1222', 'RODOLFO ', 'LEON MAITA ', null, 'elvi_rey_leon31@hotmail.com', ' 938102503,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1223', 'elena', 'vazan ', null, 'nena2003_7@hotmail.com', ' 993339493,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1224', 'LORENA ', 'MACEDO GARCIA', null, 'LM6130619@GMAIL.COM', ' 984920698,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1225', 'EDGAR', 'ALAN', null, 't8tperu@gmail.com', ' 942004953,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1226', 'LUIS ', 'MORAN ', null, 'luismoran@lapste.net', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1227', 'MARCELA ', 'PAREDES MIRANDA', null, 'NOTIENE@HOTMAIL.COM', ' 4461889,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1228', 'GLORIA ESTER ', 'GARCIA MIRANDA', null, 'interprete1968@hotmail.com', ' 951412104,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1229', 'RUBY', 'CARDENAS APONTE ', null, 'rubeola76@hotmail.com', ' 968687905,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1230', 'MARCELA ', 'PAREDES MIRANDA', null, 'NOTIENE@HOTMAIL.COM', ' 4461889,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1231', 'ROGER  MAURICIO ', 'ZAVALA TEJADA', null, 'zmauricio92@outlook.com', ' 952618788,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1232', 'NERY', 'PUMACAYO SANCHEZ ', null, 'NOTINE@HOTMAIL.COM', ' 965106460,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1233', 'TOMER', ' EITUNY', null, 'tomereitani@gmai.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1234', 'LUIS ALBERTO ', 'PEREZ HUAMAN ', null, 'betin_luis@hotmail.com', ' 996160807,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1236', 'ALEJANDRINO ', 'QUISPE VILLEGAS ', null, 'alejandrino55@hotmail.com', ' 952085932,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1237', 'JULIO CESAR ', 'MAYTA CONTRERAS', null, 'NOTIENE@HOTMAIL.COM', ' 943210467,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1238', 'MINERVA ', 'CALDERON ', null, 'mva.calderon@gmail.com', ' 987429405,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1239', 'LARA MARINA', 'LUNDBERG', null, 'lalilundi@gmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1240', 'MARIANA', 'POLLAROLA', null, 'mpollarolo@gmail.com', ' 954160197,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1241', 'ELIA', ' DE LA CRUZ HERNANDEZ', null, 'NOTIENE@HOTMAIL.COM', ' 965825902,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1242', 'MIGUEL', 'PAZ', null, 'mpaz@trome.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1243', 'SONIA', 'RAMAL', null, 'ssorae@gmail.com', ' 964395306,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1244', 'NANCY JACKELINE', 'LEGUIA AMASIFEN ', null, 'NOTIENE@HOTMAIL.COM', ' 9829015483,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1245', 'RAUL MARTIN', 'MOSQUITO AGUIRRE', null, 'rmosquitoaguirre@gmail.com', ' 997606165,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1246', 'RAFAEL ', 'CISNEROS', null, 'NOTIENE@HOTMAIL.COM', ' 981163604,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1247', 'KEVIN ANGELO', 'ESPINOZA', null, 'kevin.espinoza.27@hotmail.com', ' 941541709,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1248', 'ROSA MARIA', 'MUÑOZ PAREDES', null, 'waldirmen@hotmail.com', ' 987033127,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1249', 'MARIA DEL PILAR', 'JANAMPA LOPEZ', null, 'jdaniel250@hotmail.com', ' 4503707,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1250', 'LADISLAO', 'ALLER', null, 'NOTIENE@HOTMAIL.COM', ' 985592550,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1251', 'KELLYN ', 'YERREN SALVADOR', null, 'yerren.kellyn@gmail.com', ' 980831030,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1252', 'Jose ', 'SANCHEZ ', null, 'jasbfarma@gmail.com', ' 972984477,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1253', 'ROCIO', 'GAMBOA', null, 'rocio.pgs@outlook.com', ' 940439618,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1254', 'ALBERTO ', 'BAQUERIZO ', null, 'NOTIENE@HOTMAIL.COM', ' 997794889,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1255', 'RUBEN ', 'LOPEZ  SILVA', null, 'new_flor_2011@hotmail.com', ' 963116512,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1256', 'SANTIAGO', 'GARCIA PALMA', null, 'sgarcia@trentcorredores.com', ' 993632809,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1257', 'OMIR', 'LIBRONA', null, 'noteien@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1258', 'ISABEL', 'CHIROQUE LAZARO', null, 'ichiroque@notariatambini.com', ' 3212000,0', 'Recomendación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1259', 'MARGAREE ANTHOANNE', 'CENTURION SUAREZ', null, 'yoryett_18@outlook.com', ' 986815184,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1260', 'BRUNO ', 'CHAMAN ', null, 'bruno.chamaya8@gmail.com', ' 984704383,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1261', 'JOSE ', 'LOZADA', null, 'lozada.cordova@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1262', 'MARLON', 'RIVERA ', null, 'wym.rivera@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1263', 'FERNANDO ', 'MARAKA', null, 'notiene@hotmail.com', ' 9586071153,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1264', 'DOMA MAGDIEL ', 'IÑOMAN MALCA', null, 'domamagdiel1995@hotmail.com', null, 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1265', 'HYUN AH', 'KIM', null, 'NOTIENE@HOTMAIL.COM', ' 954681284,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1266', 'DAGER ', 'GARCIA RAMOS ', null, 'dagerdi@hotmail.com', ' 990888851,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1267', 'ELSA', 'KOOYIP', null, 'mwsw2p07@hotmail.com', ' 961801770,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1268', 'JANCY AUGUSTO', 'RETAMOZO ACUÑA', null, 'jancy2501@gmail.com', ' 962303816,0', 'Televisión', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1269', 'FREDDY ALEJANDRO', 'CAMARGO FIGUEROA ', null, 'freddycama@outlook.com', ' 999707495,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1270', 'LYDIA', 'NO TIENE APELLIDO', null, 'marshall_33_33@hotmail.com', ' 959798311,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1271', 'JACQUELINE', 'NO TIENE ', null, 'jaqui350@hotmail.com', ' 98662578,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1272', 'JOSE ', 'BLANCO ', null, 'jblanco@yahoo.es', ' 962326132,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1273', 'RAFAEL ', 'BERASTEGUI', null, 'edoardovc@hotmail.com', ' 997231347,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1274', 'TIMOTEA', 'GUZMAN CHOQUE', null, 'NOTIENE@HOTMAIL.COM', ' 948778440,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1275', 'DEBORA', 'MILLA CAPILLO', null, 'debora01@gmail.com', ' 997781116,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1276', 'YULISSA ', 'RIVAS ', null, 'yrvassoto@gmail.com', ' 993915379,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1277', 'BREDY ', 'TARAZONA ', null, 'bredidyangelo@gmail.com', ' 969596111,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1278', 'OMER', 'OZKUL', null, 'KZUZKAPM@OUTLOOK.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1279', 'EMY ', 'ALVARADO GHIPANA', null, 'ALVARADO.FIORELLA@YAHOO.COM', ' 934938248,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1280', 'ALVARO ENRIQUE', 'ROSAS JARA', null, 'ROSASJARA@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1281', 'DAGER ', 'GARCIA RAMOS ', null, 'dagerdi@hotmail.com', ' 990888851,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1282', 'NATHALY', 'TICA DELGADO', null, 'nataly_14_98@hotmail.com', ' 954784708,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1283', 'GUSTAVO ', 'RUIZ ', null, 'NOTIENE@HOTMAIL.COM', ' 4570535,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1284', 'VANIV', 'SHALON', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1285', 'KAREN ', 'NORIEGA', null, 'karenoriega17@gmail.com', ' 947678710,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1286', 'CARLOS ', 'BONATO SANTOS', null, 'cbonattos@hotmail.com', ' 997366552,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1287', 'FERNANDO MARCOS ', 'CUYA FALCON', null, 'fcuyaf@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1288', 'HUGO ALEXANDER', 'RICRA MORALES', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1289', 'EDUARDO ', 'QUISPE CORIMANYA', null, 'NOTIENE@HOTMAIL.COM', ' 980845174,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1290', 'NORMA ', 'CARDENAS ', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1291', 'JOSE ', 'ALVAREZ JAUREZ', null, 'NOTIENE@HOTMAIL.COM', ' 956842365,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1292', 'JIMMY JUAN', 'PORTUGAL ', null, 'jimmyportugal16@hotmail.com', ' 992765451,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1293', 'GERMAN ', 'GARCIA ', null, 'germi_garza@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1294', 'JUAN GUALBERTO', 'QUISPE ORTIZ', null, 'NOTIENE@HOTMAIL.COM', ' 924015122,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1295', 'MARITZA ', 'VEGA CHAPARRO', null, 'NOTIENE@HOTMAIL.COM', ' 982799999,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1296', 'CLARA ', 'METZEER ALVAN', null, 'cmetzger142@hotmail.com', ' 98520466,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1297', 'DIANA ', 'ALVAREZ ZUÑIGA', null, 'dianita189@hotmail.com', ' 937571563,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1298', 'JESSICA ', 'CABRERA', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1299', 'JESUS RICARDO ', 'PIÑA PIÑEO', null, 'sumy12@hotmail.com', ' 927459306,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1300', 'MARY ', 'LAPOUBLE MENA', null, 'LOPOUBLE@DELPILARMIRAFLORES.COM.PE', ' 981063525,0', 'Correo', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1301', 'ALEX', 'QUILLO', null, 'ALEXJR063@HOTMAIL.COM', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1302', 'EVELIN ', 'ALVARADO', null, 'EVELIN.ALVARADO@UPCH.PE', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1303', 'LLECK', 'ATENDIDO DE FACEBOOK', null, 'LLECKTV292@HOTMAIL.COM', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1304', 'MAILY ', 'NACIMENTO ', null, 'MAILY.NACIMENTO@GMAIL.COM', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1305', 'MAYRA ', 'ATENDIDO DE FACEBOOK', null, 'MAYRAC0512@HOTMAIL.COM', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1306', 'ROSA ', 'ANDRADE POLO', null, 'angelandrade.polo@mail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1307', 'FREYCI', 'VARAS LUJAN ', null, 'freisi_elnene_92@hotmail.com', ' 959041992,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1308', 'MARISA ', 'FLORES TICSE', null, 'marisaft4@gmail.com', ' 982401050,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1309', 'MANUEL', 'GUTIERREZ', null, 'balta4rent@gmail.com', ' 942174332,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1310', 'PAMELA ', 'LEVANO VARGAS', null, 'pnvati@hotmail.com', ' 996064816,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1311', 'YENNY', 'CASMO', null, 'yennyfrf@gmail.com', ' 958742218,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1312', 'JOME', 'CHILLCCE', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1313', 'FERNANDA CAROLAY', 'TAVARA RIOS', null, 'fersii.1998@gmail.com', ' 976009129,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1314', 'VIRGINIA', 'SALDINAS', null, 'NOTIENE@HOTMAIL.COM', ' 629066,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1315', 'BLANCA LUZ', 'AJANAMA CAMACHO', null, 'NOTIENE@HOTMAIL.COM', ' 944600304,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1316', 'HECTOR ', 'LEYVA', null, 'herctolm14@hotmail.com', ' 954779750,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1317', 'MIRIAM', 'DE FACEBOOK ', null, 'myenne@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1318', 'VIOLETA ', 'VARGAS ', null, 'vvargasc14@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1319', 'ROCIO ', 'RODRIGUEZ LESAMA', null, 'neiby_rl@hotmail.com', ' 950094126,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1320', 'JORGE ', 'RODRIGUEZ ', null, 'NOTIENE@HOTMAIL.COM', ' 992927987,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1321', 'JORGE', 'NO DEJO', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1322', 'ALEXANDRA ', 'SOTO VALERIANO ', null, 'MAXISOLSOTO1838@GMAIL.COM', ' 967762077,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1323', 'christian israel ', 'prado villeguez', null, 'aries_al17@hotmail.com', ' 997173268,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1324', 'ilda ', 'carrillo', null, 'notiene@hotmail.com', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1325', 'juan ', 'villar ', null, 'juanandres_9@hotmail.com', ' 943691609,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1326', 'edwin francisco', 'puse nieto ', null, 'edwin_pusenieto1415@hotmail.com', ' 923654671,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1327', 'junior john', 'fabian artega ', null, 'jfabian@esan.edu.pe', ' 957450567,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1328', 'leonidas ', 'gonzales mozo ', null, 'notiene@hotmail.com', ' 946879696,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1329', 'pilar catherine', 'san jose galarza ', null, 'delegada.sudamericana@isdaa.es', ' 34622189975,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1330', 'facundo', 'gonzales ', null, 'notiene@hotmail.com', ' 946570413,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1331', 'pierre', 'bravo cahuas ', null, 'pierry_0915@hotmail.com', ' 994755290,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1332', 'david', 'arellano ', null, 'davidu8@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1333', 'selene ', 'mendoza aquino ', null, 'Rsma.1490@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1334', 'evelin ', 'ALVARADO MORA', null, 'evelin.alvarado.m@upch.pe', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1335', 'brayan ', 'sabeedra jorges ', null, 'Brayan_14@hotmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1336', 'CESAR AUGUSTO ', 'CASTILLO CORDOVA ', null, 'tauro120568@gmail.com', ' 977153203,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1337', 'jose javier ', 'luquez meza ', null, 'luquez285@gmail.com', ' 932190956,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1338', 'carmen mercedes ', 'velarde alvarez pinto ', null, 'camuchavap@hotmail.com', ' 990956506,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1339', 'maria ysabel ', 'acuña villalonga ', null, 'nodejo@hotmail.com', ' 934715219,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1340', 'jamireth', 'lancha baneo ', null, 'jamirethlanchabaneo2016@gmail.com', ' 945031536,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1341', 'vanessa ', 'ccahuana hantay ', null, 'damiva_185@hotmail.com', ' 944417839,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1342', 'maria ', 'martines chero ', null, 'ariadnecomplicated22@gmail.com', ' 939266536,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1343', 'mario ', 'rodriguez  velarde ', null, 'segurindo@hotmail.com', ' 944574578,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1344', 'greisy ', 'valverde alvarez', null, 'gyva1609@gmail.com', ' 986607906,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1345', 'fabiola ', 'handal brito ', null, 'Fabyhandal@hotmail.com', ' 996778561,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1346', 'ingrid ', 'quiros ', null, 'notiene@hotmail.com', ' 991487232,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1347', 'angel ', 'perez bueno ', null, 'angel.perez.nuevo@gmail.com', null, 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1348', 'ana carla ', 'soto ', null, 'sotoanaipa@gmail.com', ' 964327989,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1349', 'maria alexandra ', 'hidalgo tallido ', null, 'alexandra.hidalgo@hotmail.com', ' 960845504,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1350', 'marlon ', 'cahique ', null, 'marlon_cachique_27@hotmail.com', ' 990831000,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1351', 'hugo alexander ', 'ricra morales ', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1352', 'monica', 'abad arce', null, 'abadelayne@gmail.com', ' 946637645,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1353', 'carlos omar ', 'valverde saldarriaga ', null, 'jacque364395@hotmail.com', ' 940568955,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1354', 'susan regina ', 'retto fiestas ', null, 'susanrerf@gmail.com', ' 997511208,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1355', 'cinthia ihette', 'cabrejo arana', null, 'cinthiacabrejo@hotmail.com', ' 982641432,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1356', 'hugo alexander', 'ricra moralez', null, 'hugo.ricra@pucp.pe', ' 996755521,0', 'Web', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1357', 'juan ', 'herencia pareja ', null, 'notiene@hotmail.com', ' 940897814,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1358', 'mario', 'ortiz ', null, 'marioortizgil@yahoo.es', ' 989100554,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1359', 'IDELFIA ', 'URIARTE CERDAN ', null, 'NOTIENE@HOTMAIL.COM', ' 990251000,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1360', 'FABIOLA', 'HANDAL', null, 'fabyhandal@hotmail.com', ' 996778561,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1361', 'JUNIOR ', 'FABIAN ARTEAGA ', null, 'NODEJO@HOTMAIL.COM', ' 957450567,0', 'Facebook', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1362', 'rayda ', 'PEREZ PEÑA ', null, 'NOTIENE@HOTMAIL.COM', ' 983524563,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1363', 'WILLY ', 'JUSTO TORRES', null, 'NODEJO@HOTMAIL.COM', ' 944474207,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1364', 'GANSOOK', 'LEE', null, 'CEBIN32885@HOTMAIL.COM', ' 981103278,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1365', 'MARY', 'VILLANUEVA ', null, 'NODEJO@HOTMAIL.COM', ' 982254264,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1366', 'JOSE ', 'SORALUZ CHEONG', null, 'JOSESORALUZ@HOTMAIL.COM', ' 975943274,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1367', 'IRMA MARIA ', 'TAMINEZ GONZALES ', null, 'IRMA_TAMIENEZ@HOTMAIL.COM', ' 934701652,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1368', 'MIRTHA ', 'ORTEGA ', null, 'ORTEGAPERU@GMAIL.COM', ' 976061058,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1369', 'JOSE ROBERT', 'SEVILLA SORIA', null, 'ROBERTSEVILLANO@HOTMAIL.COM', ' 920091426,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1370', 'JOSELYN BELEN ', 'MATIAS BRAÑEZ', null, 'JBELEN09@HOTMAIL.COM', ' 943550123,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1371', 'LUCIA ', 'VARGAS PEÑA ', null, 'LUZCIAVARGASP@HOTMAIL.COM', ' 950134888,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1372', 'TATIANA ', 'NEYRA ', null, 'NODEJO@HOTEMAIL.COM', ' 986798549,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1373', 'JUNIOR ', 'FABIAN ARTEAGA ', null, 'fabyhandal@hotmail.com', ' 996778561,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1374', 'ELENA ', 'VARDALES JIMENEZ', null, 'NOTIENE@HOTMAIL.COM', null, 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1375', 'KAREN IBETH', 'ELIAS VEGA', null, 'NODEJO@HOTMAIL.COM', ' 953843977,0', 'Ubicación', '10', '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1376', 'ORLANDO ', 'MERGA', null, 'NOTIENE@HOTMAIL.COM', ' 956373322,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1377', 'KITTY ', 'ALATA LINARES', null, 'KITTTYALATA@GMAIL.COM', ' 976111387,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1378', 'GUSTAVO ', 'LOZADA ', null, 'GUSTAVO_LOZADA@HOTMAIL.COM', ' 993778497,0', 'Facebook', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1379', 'LUZ ', 'SANCHEZ ', null, 'LUZSANCHEZ2720@GMAIL.COM', ' 996865166,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1380', 'WILDER ALEXANDER ', 'CALIXTO CALIXTO ', null, 'WILDERCALIXTO.PMP@GMAIL.COM', ' 999906907,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1381', 'VICTOR ', 'MIRANDA ', null, 'VICTOR1117@MSN.COM', ' 969734218,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1382', 'ALEX ', 'PERES ', null, 'ALEXPERECH@YAHOO.ES', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1383', 'ISAMAR ', 'MARTINES ', null, 'ISAMARA28@HOTMAIL.COM', ' 982658553,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1384', 'CARMEN ROSA', 'MARTINEZ CORONADO ', null, 'CRMANTINECSO@YAHOO.COM', ' 999777676,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1385', 'DAHIA', 'ESPIZUL', null, 'MUNDOFELIX@TERRA.COM.PE', ' 987240040,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1386', 'GIANINA ', 'PELUCKER', null, 'NODEJO@HOTMAIL.COM', ' 936095409,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1387', 'MARIA ELIANA', 'LOMPARTE ', null, 'ALILOMP@YAHOO.COM', ' 946418804,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1388', 'FRANCISCO ', 'CENTURION ', null, 'FCENTURION@GMAIL.COM', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1389', 'MARCO ', 'BARRUETO', null, 'MBARRUETO@HOTMAIL.COM', ' 949331555,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1390', 'EVELYN', 'YSLA VILLAVICENCIO', null, 'EVELYN_YSLA@HOTMAIL.COM', ' 947342768,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1391', 'PAULA ', 'LUGO VALENCIA', null, 'PEDIATRIACORAZON@YAHOO.ES', ' 996330180,0', 'Televisión', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1392', 'JUAN ', 'SOLANO ', null, 'JUAN.SOLANO@HOTMAIL.COM', ' 984567216,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1393', 'LUIS ', 'MEIRA ', null, 'JKER.WEEW@GMAIL.COM', ' 956487265,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1394', 'ALEJANDRO ', 'VELA ', null, 'NOTIENE@JHOTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1395', 'SERGIO ', 'MUÑOZ RODRIGUEZ', null, 'HORIZONS.BLACK180396@GMAIL.COM', ' 931116719,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1396', 'GIOVANNA', 'COMSOLO', null, 'GIOVANNA.CONSOLO@GMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1397', 'MARTHA CECILIA ', 'HOYOS PAZ', null, 'CECILIAHOYOSPAZ@GMAIL.COM', ' 949221104,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1398', 'RICHARD ', 'PORTILLA TERREROS ', null, 'RIPTER24@HOTMAIL.COM', ' 964877744,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1399', 'ARMIDA ELENA ', 'ARMESTO BARRENECHEA ', null, 'ARMIDAARBA@HOTMAIL.COM', ' 991154373,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1400', 'CLAUDIA ', 'LLOSA', null, 'CLAUDIALLOSABGZ@HOTMAIL.COM', ' 959767730,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1401', 'YUZENI AVI', 'ECHEVARRIA CRUZ ', null, 'YUZENIAVI@GMAIL.COM', ' 997056404,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1402', 'PATRICIA ', 'SIGMOLLE', null, 'SIGMORELLIPATRICIA@HOTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1403', 'VERONICA ', 'HERNAN CENTURION ', null, 'NODEJO@HOTMAIL.COM', ' 981334132,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1404', 'RENAN ', 'LLANO DAVILA ', null, 'ROGLLAMU@GMAIL.COM', ' 957524614,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1405', 'FERNANDA ', 'LLANOS ', null, 'FERLLA_025@HOTMAIL.COM', ' 998756243,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1406', 'PATRICIA ', 'OLIVERO DURAN ', null, 'PATRICIAOD@HOTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1407', 'Francisco Antonio Cordero Rosado', null, null, null, null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1408', 'Yoseline', 'Solis', null, 'yysolislarico@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1409', 'Ana', 'Peña', null, 'anaeveli@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1410', 'Alfonso', 'Chavarry', null, 'aharonperu@yahoo.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1411', 'Malene', '-', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1412', 'Tatyana', 'Navarrete', null, 'tnavarrete@hotmail.com', null, 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1413', 'Janeeth', 'Moscoso Becerra', null, 'janeethmoscoso@yahoo.com.pe', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1414', 'Ingrid', 'Lebano', null, null, null, null, null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1415', 'Liliana Soledad', 'Sanchez', null, 'lilianaalbasoledad@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1416', 'Mario Robert', 'Dura de la Colina', null, 'vonstauffenberg@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1417', 'Orlando', 'Olaechea', null, null, null, null, null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1418', 'Norma', 'Cabrera', null, 'cnorma@hotmail.com', ' 991324351,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1419', 'Elena', 'Becerra Bazan', null, 'nena2003_7@hotmail.com', ' 993339493,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1420', 'Guillermo', 'Torres Cueva', null, 'guille.01@hotmail.com', ' 961421962,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1421', 'Fiorella', 'Castro', null, 'fiore.castro@gmail.com', null, 'Facebook', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1422', 'Fernando', 'Ocola', null, 'fontuag@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1423', 'Reina', 'Perme', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1424', 'Natalia', 'Barbaran Vasquez', null, 'dakotanb@hotmail.com', ' 996368819,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1425', 'Edgar', 'Conde', null, 'edgarmartinconderamirez@gmail.com', ' 968470385,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1426', 'Analiz', 'Kan', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1427', 'Patricia', 'Aranda', null, 'patriciarandazz@yahoo.com', null, 'Facebook', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1428', 'Benigna', 'Villa', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1429', 'Perla', 'Solsol', null, 'perlasolsol@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1430', 'Alvaro', 'Kawata', null, 'alvarokawata@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1431', 'Ylenia', 'Salazar Pazo', null, 'YLE_20@hotmail.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1432', 'Jean Alexander', 'Velasquez', null, 'dj_jenxel@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1433', 'Dolores', 'Chapeyquen Sanchez', null, null, ' 948488511,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1434', 'Jorge', 'Ramos', null, 'ramospichon@hotmail.com', ' 997895710,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1435', 'Jesus', 'Quispe', null, 'asesorfarma@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1436', 'Victor', 'Marrieta', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1437', 'Danit', 'Shira Iluz', null, 'danit2220@walla.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1438', 'Victor Paul', 'Villacorta Elliott', null, 'vpaulve@gmail.com', ' 997853315,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1439', 'Miguel Angel', '-', null, 'ma.ac100@hotmail.com', ' 989889657,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1440', 'Jairo', 'Allasi Sanchez', null, null, ' 986933713,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1441', 'Sebastian', 'Padilla Medina', null, 'js.padilla121@gmail.com', ' 959903485,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1442', 'Siore Lizet', 'Choque Coyla', null, 'lizet.choque@ucsp.edu.pe', ' 987252915,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1443', 'Edwar', 'Acero', null, 'erash_10@hotmail.com', ' 940611767,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1444', 'Marco Antonio', 'Pita Ruiz', null, 'marcopitar@hotmail.com', ' 987417737,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1445', 'Mabel', 'Diaz Tapia', null, 'mabeldiaz_@hotmail.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1446', 'Sara', 'Castillo Zegarra', null, 'sarcor1@hotmail.com', ' 966400048,0', 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1447', 'Hector', 'Ugarte', null, 'hugartea@yahoo.com', ' 4211816,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1448', 'Augusto', 'Sanchez', null, null, ' 4823172,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1449', 'Susana', 'Sanchez', null, 'susanagine1@yahoo.es', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1450', 'Angie', 'Lion', null, 'alion@mrshao.com.pe', ' 4403336,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1451', 'Luis', 'Bouroncle', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1452', 'Maritza', 'Jaque', null, 'mjaque2000@yahoo.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1453', 'Santa Isabel', 'Julcamanyan Huamani', null, 'serviciosmultiplesantacruz@hotmail.com', ' 3515137,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1454', 'Manuel', 'Ganoza', null, 'ganoza1@hotmail.com', ' 991194167,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1455', 'Juana', 'Huarcaya', null, 'Juana.huarcaya@gmail.com', ' 997289606,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1456', 'Jose', 'Heredia', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1457', 'Nora', 'Tarillo', null, 'noratarrillo@hotmail.com', ' 961073469,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1458', 'Javier', 'Galipienzo', null, 'jgalipienzo@globalsic.com', ' 949997704,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1459', 'Mayra', 'Diaz', null, 'mdiaz_311@hotmail.com', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1460', 'Niconte', 'Perez', null, 'triton332@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1461', 'Herberth', 'Herrera', null, 'hercito1612@gmail.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1462', 'Patricia', 'Polanco Zevallos', null, 'menmeisha@yahoo.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1463', 'no name', 'no name', null, null, null, null, null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1464', 'Lidia', 'Mavila Quiroga', null, 'lmavilaq@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1465', 'no name', 'no name', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1466', 'Milagros', 'Sanchez Carillo', null, 'misaca_1985@hotmail.com', ' 986245503,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1467', 'Milagritos', 'Perez Alarcon', null, 'milyperez1@hotmail.com', ' 989745259,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1468', 'Alfonso', 'Chavarry', null, 'aharonperu@yahoo.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1469', 'Nora', 'Tarillo', null, 'noratarrillo@hotmail.com', ' 961073469,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1470', 'Mariella', 'Parodi Sosa', null, 'mayaparodi@hotmail.com', ' 994028174,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1471', 'Yazmin', 'Reategui', null, 'yazminreategui@hotmail.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1472', 'no name', 'no name', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1473', 'Juan', 'Meza', null, 'juan_09meza@hotmail.com', ' 994047169,0', 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1474', 'Rafael', 'Pasco Cosavalente', null, 'gagmarg@outlook.com', ' 969650003,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1475', 'no se entiende', 'no se entiende', null, 'no se entiende', ' 945475884,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1476', 'no name', 'no name', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1477', 'Carlos Alberto', 'Gomez Chavez', null, 'gmezcarlosalberto@yahoo.es', ' 945817374,0', 'Televisión', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1478', 'Elizabeth', 'Reyes Solis', null, 'a20114223@pucp.pe', ' 987923312,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1479', 'Javier', 'De Gea', null, 'javier.degea@renbach.com.pe', ' 987700660,0', null, null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1480', 'Clara', 'Mendoza', null, 'arquimendozacp@yahoo.es', ' 998784055,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1481', 'Claudia', '-', null, 'clau.villar07@hotmail.com', ' 966304255,0', 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1482', 'Jhosman', 'Vidal', null, 'jhosmanservice@gmail.com', ' 955733817,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1483', 'Luis', 'Lara Corrales', null, null, null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1484', 'Carlos', '-', null, null, ' 4221477,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1485', 'Javier', 'Galipienzo', null, 'jgalipienzo@globalsic.com', ' 949997704,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1486', 'Katherine', 'Moya', null, 'k.l.mp@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1487', 'Juan', 'Cavagnaro', null, null, ' 4475184,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1488', 'Kety', 'Barrantes', null, 'ytekb@hotmail.com', ' 943914863,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1489', 'Angela', 'Chong Ochoa', null, 'angela110594@gmail.com', ' 999037117,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1490', 'Lucia', 'Aguilar', null, 'cindy_2131@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1491', 'Veronica', 'Bravo', null, 'bravogonzaloveronica@gmail.com', ' 959075781,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1492', 'Luis', 'Chamochumbi', null, 'chamochumbi_81@hotmail.com', ' 941916399,0', 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1493', 'Juan Carlos', 'Tocon Arenas', null, 'jctocon@gmail.com', ' 998233903,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1494', 'RUDY', '-', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1495', 'ALBERTO', 'ZELADA FERNANDEZ', null, 'ALBERTAPLLE@HOTMAIL.COM', ' 984735694,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1496', 'OMAR', 'CALDAS', null, 'omar.caldas@pucp.pe', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1497', 'Raul', 'Dolmos', null, 'dolmosraul@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1498', 'ELENA', 'RAQUEL', null, 'elenitabombon@hotmail.com', ' 989724706,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1499', 'CIPRIANO', 'ORE PAREDES', null, 'NO@DEJO.COM', ' 996730899,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1500', 'MARINA', 'DIAZ', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1501', 'MIRTHA', '.', null, 'MIRTHAINGA@HOTMAIL.COM', ' 977442055,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1502', 'JUAN PABLO', 'JARAMILLO MARMAU', null, 'JUANPABLOJARAMILLO@GMAIL.COM', ' 986085260,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1503', 'gladys', 'sanchez', null, 'no@dejo.com', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1504', 'talia', 'lastra', null, 'tlmtalialastra@gmail.com', ' 977814934,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1505', 'EDWIN', '.', null, 'NO@DEJO.COM', ' 9,0', 'Facebook', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1506', 'EDSMERALDA', 'CABALLERO ZORIA', null, 'NO@DEJO.COM', ' 988889027,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1507', 'ZULY', 'ALAYO', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1508', 'KARINA', '.', null, 'NO@4DEJO.COM', ' 991271578,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1509', 'MIRTHA ', 'SABEDRA', null, 'NO@DEJO.COM', ' 924021001,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1510', 'CESAR', 'DIAZ', null, 'PERIVIANTIRES@HOTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1511', 'CESAR', 'ZABALA', null, 'CZABALLA@S-RET.COM', ' 989302960,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1512', 'RENZO', '.', null, 'NO6@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1513', 'MARINA', '.', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1514', 'MARILUZ', 'SANCHEZ SALAZAR', null, 'mariluz.fiorela@gmail.com', ' 961800580,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1515', 'PATRICIA POMA', 'CAMARGO', null, 'PATRICIAAPC30@GMAIL.COM', ' 996611912,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1516', 'WALTER', 'CHGAVEZ', null, 'WLATER_NORKA@HOTMAIL.COM', ' 2433044,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1517', 'brheyner', 'sanchez serpa', null, 'brheyner@gmail.com', ' 2995225,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1518', 'LEO', '.', null, 'ILIUEI@CEPYIDA.COM', ' 5114975656,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1519', 'RICARDO', 'HERRERA DIAZ', null, 'SHOTINGER@HOTMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1520', 'ROAMAN', 'GARAGATI', null, 'ROMANOTTI3@HOTMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1521', 'ARGEO', 'CACERES', null, 'ANGELANDRE.CP.18@GMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1522', 'FLORA', 'CAMA BAHAMONDE', null, 'FLORAYCB93@GMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1523', 'RENZO', 'RAFAEL', null, 'RAFART1@HOTMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1524', 'YANMEI', 'SHEN', null, 'YANMEI19811@HOTMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1525', 'MELISA', 'CORDOVA', null, 'MELISSA.CORDOVA@GMAIL.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1526', 'CAMPOS', 'EDUARDO', null, 'ecampos2005@yahoo.com', ' 945925662,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1527', 'MIGUEL', 'QUIROS', null, 'miguelquiros@tikagroup.com.pe', ' 9,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1528', 'juan manuel', 'fernando roca rey', null, 'jcean.rocarey@casatoreos.pe', ' 995448797,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1529', 'DOLLY', 'STUCCHI', null, 'M@C.COM', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1530', 'MAQUILON', 'GUILLERMO', null, 'GUILLERMO.MAQUILON@MAEC.ES', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1531', 'PEDRO', 'PARREÑO', null, 'pedroparreno0807@gmail.com', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1532', 'ESMERALDA', 'CABALLERO ZORIA', null, 'ESMERALDAJUANA11@GMAIL.COM', ' 4600115,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1533', 'GLADYZ', 'NAVARRO', null, 'NO@DEJO.COM', ' 9,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1534', 'PEDRO', 'SALAZAR', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1535', 'ESMERALDA', '.', null, 'NO@TINE.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1536', 'FERNANDO', '.', null, 'NO@NODEJO.COM', ' 938578562,0', 'Facebook', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1537', 'JORGE', 'LEON', null, 'NO@DEJO.COM', ' 2689378,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1538', 'MARILUZ', '.', null, 'NO@DEJNO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1539', 'YONELLY', 'PEREZ', null, 'PEREZYONELLY_1551@HOTMAIL.COM', ' 950727446,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1540', 'MELANI', 'RUBIO', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1541', 'VECELINA', 'TAPIA', null, 'NO@DEJO.COM', ' 4503697,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1542', 'DANIEL', 'IGLECIAS', null, 'NO@TIENE.COM', ' 955207260,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1543', 'LLERNE', '.', null, 'NO@DEJO.COM', ' 6780375,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1544', 'RICHARD', 'WILLIAM', null, 'galerie.center@laposte.net', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1545', 'JOSE', 'LLORET', null, 'S.AVELAR@PLUSULTRA.COM', null, 'Correo', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1546', 'DAVID', '|FERNANDEZ', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1547', 'JULIA', 'DE MUR', null, 'traficovyt@sinectis.com.ar', ' 541149817985,0', 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1548', 'WILIAM', 'MENDON', null, 'WILLMARTIN2022@HOTMAIL.COM', ' 997899727,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1549', 'sara', 'chan', null, 'sehan_2912@hotmail.com', ' 949995022,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1550', 'MARILUZ', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1551', 'DAVID', 'RENSO', null, 'NO@TIENE.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1552', 'HECTOR', 'SANCHES', null, 'HECTORSANCHEZ1157@GMAIL.COM', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1553', 'ROSA', 'VALIENTE', null, 'Roxenell_19_1@hotmail.com', null, 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1554', 'ANA MARIA', 'PARDO CASTAÑEDA', null, 'anampac@gmail.com', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1555', 'JULIA', 'ALATRISTA', null, 'NO@TIENE.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1556', 'ADRIANA', 'HARO', null, 'adrianaharosing@hotmail.com', ' 955145046,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1557', 'Raquel', 'SALAZAR', null, 'kela_sc@hotmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1558', 'YESENIA', 'BOCANEGRA', null, 'engineer_zambrano@hotmail.com', ' 924634905,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1559', 'pedro', 'parreño', null, 'pedroparreno0807@gmail.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1560', 'RUIZ', '.', null, 'NO@NODEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1561', 'CARLOS', '.', null, 'NO@DEJO.COM', ' 9480778057,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1562', 'JUAN MANUEL', 'PEREZ', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1563', 'CARMEN', 'AREVALO', null, 'CAMUARE@HOTMAIL.COM', ' 999980205,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1564', 'LUIS', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1565', 'FERNANDO', 'OCOLA', null, 'FONTUAG@HOTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1566', 'ROSA', '.', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1567', 'MARITA', 'HOYOS', null, 'hoyosalomia@gmail.com', ' 920083788,0', 'Web', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1568', 'JORGE', 'FARRO', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1569', 'ERIKA', 'VERA', null, 'ERICKALEXA2002@HORTMAIL.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1570', 'LIANNE MADELINE', 'GALVEZ LA TORRE', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1571', 'MARIA', 'DE LA LUZ', null, 'no@tiene.com', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1572', 'RAUL', '-', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1573', 'ORIETTA', 'BLAS', null, 'NO@TIONE.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1574', 'CARLA', 'PORTOCARRERO', null, 'NO@DEJO.COM', null, 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1575', 'CARMEN', 'VARGUEZ', null, 'NO@TIENE.COM', ' 949567533,0', 'Ubicación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1576', 'MARITAS', 'BURGA', null, 'marita_bje@hotmail.com', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);
INSERT INTO `customers` VALUES ('1577', 'PEDRO', 'PARREÑO', null, 'pedroparreno0807@gmail.com', null, 'Recomendación', null, '2017-08-01 00:00:00', null, null, null, '1', null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of deposits
-- ----------------------------
INSERT INTO `deposits` VALUES ('1', '1500.00', '1', '2', null, '2017-08-11 20:59:15', '2017-08-11 20:59:15', null, null, '1');
INSERT INTO `deposits` VALUES ('2', '853.00', '1', '2', null, '2017-08-11 21:00:19', '2017-08-11 21:00:19', null, null, '1');
INSERT INTO `deposits` VALUES ('3', '15.29', '1', '2', null, '2017-08-11 21:03:27', '2017-08-11 21:03:27', null, null, '1');
INSERT INTO `deposits` VALUES ('4', '15.45', '2', '1', null, '2017-08-11 23:25:47', '2017-08-11 23:25:47', null, null, '1');
INSERT INTO `deposits` VALUES ('7', '1566.23', '5', '2', null, '2017-08-28 22:13:28', '2017-08-28 22:13:28', '9', null, '1');
INSERT INTO `deposits` VALUES ('8', '666.10', '5', '1', null, '2017-08-28 23:09:07', '2017-08-28 23:09:07', '9', null, '1');
INSERT INTO `deposits` VALUES ('9', '3368.52', '5', '4', null, '2017-08-28 23:26:25', '2017-08-28 23:26:25', '9', null, '1');
INSERT INTO `deposits` VALUES ('18', '0.03', '5', '2', null, '2017-08-29 19:42:09', '2017-08-29 19:42:09', '9', null, '1');
INSERT INTO `deposits` VALUES ('11', '5500.00', '4', '1', null, '2017-08-29 19:34:49', '2017-08-29 19:34:49', '9', null, '1');
INSERT INTO `deposits` VALUES ('12', '54702.98', '3', '3', null, '2017-08-29 19:35:06', '2017-08-29 19:35:06', '9', null, '1');
INSERT INTO `deposits` VALUES ('14', '4731.71', '1', '2', null, '2017-08-29 19:36:31', '2017-08-29 19:36:31', '9', null, '1');
INSERT INTO `deposits` VALUES ('15', '2227.78', '2', '3', null, '2017-08-29 19:36:54', '2017-08-29 19:36:54', '9', null, '1');
INSERT INTO `deposits` VALUES ('16', '49.00', '2', '2', null, '2017-08-29 19:37:06', '2017-08-29 19:37:06', '9', null, '1');
INSERT INTO `deposits` VALUES ('17', '5600.88', '6', '1', null, '2017-08-29 19:38:44', '2017-08-29 19:38:44', '9', null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('1', '1', '2', '4', 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Fiorela Zu\\u00f1iga\",4]}', '2017-08-14 23:43:41', '2017-08-14 23:43:41', null, null);
INSERT INTO `history` VALUES ('2', '2', '2', '3', 'save', 'bg-aqua', 'trans(\"history.backend.roles.updated\") <strong>Recepcionista</strong>', null, '2017-08-14 23:43:57', '2017-08-14 23:43:57', null, null);

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
INSERT INTO `history_types` VALUES ('1', 'User', '2017-08-23 00:11:43', '2017-08-23 00:11:43', null, null);
INSERT INTO `history_types` VALUES ('2', 'Role', '2017-08-23 00:11:43', '2017-08-23 00:11:43', null, null);

-- ----------------------------
-- Table structure for liquidations
-- ----------------------------
DROP TABLE IF EXISTS `liquidations`;
CREATE TABLE `liquidations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_utility` double(8,2) DEFAULT NULL,
  `sale_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `send` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `liquidations_created_user_id_foreign` (`created_user_id`),
  KEY `liquidations_updated_user_id_foreign` (`updated_user_id`),
  KEY `liquidations_sale_id_foreign` (`sale_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of liquidations
-- ----------------------------
INSERT INTO `liquidations` VALUES ('1', 'LQ-005', '10.00', '5', '2017-08-28 23:27:16', '2017-08-28 23:27:16', '3', null, '1', null);
INSERT INTO `liquidations` VALUES ('2', 'LQ-0055', '10.00', '4', '2017-08-29 19:34:49', '2017-08-29 19:34:49', '3', null, '1', null);
INSERT INTO `liquidations` VALUES ('3', 'LQ-00548', '50.56', '1', '2017-09-29 19:36:31', '2017-08-29 19:36:31', '3', null, '1', null);
INSERT INTO `liquidations` VALUES ('4', 'LQ-005112', '545.50', '2', '2017-11-29 19:37:06', '2017-08-29 19:37:06', '3', null, '0', null);
INSERT INTO `liquidations` VALUES ('5', 'LQ-00454', '155.50', '6', '2017-08-29 19:38:44', '2017-08-29 19:38:44', '3', null, '1', null);
INSERT INTO `liquidations` VALUES ('6', 'LQ-00411', '8555.00', '5', '2017-08-29 19:42:09', '2017-08-29 19:42:09', '3', null, '1', null);

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
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `liquidation_service_liquidation_id_foreign` (`liquidation_id`),
  KEY `liquidation_service_service_id_foreign` (`service_id`),
  KEY `liquidation_service_created_user_id_foreign` (`created_user_id`),
  KEY `liquidation_service_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of liquidation_service
-- ----------------------------
INSERT INTO `liquidation_service` VALUES ('1', '6', '1', '1500.00', '1400.00', '1', '1500.00', '2017-08-29 00:00:00', '1', null, '1');

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
INSERT INTO `migrations` VALUES ('5', '2017_03_22_181903_create_proveedores_table', '1');
INSERT INTO `migrations` VALUES ('6', '2017_03_27_214645_create_customers_table', '1');
INSERT INTO `migrations` VALUES ('7', '2017_03_28_232425_create_service_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_03_31_223932_create_visits_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_04_06_154846_create_quotes_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_04_06_163131_create_quotes_service_table', '1');
INSERT INTO `migrations` VALUES ('11', '2017_05_11_211437_create_payments_type_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_05_13_175216_create_sales_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_05_14_233007_create_sales_detail_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_05_25_172747_create_receipt_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_06_13_203951_create_countries_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_06_13_204048_create_nationalities_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_06_16_220509_create_deposit_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_06_21_213557_create_liquidacion_table', '1');
INSERT INTO `migrations` VALUES ('19', '2017_06_21_213617_create_detail_liquidacion_table', '1');
INSERT INTO `migrations` VALUES ('20', '2017_07_30_024606_create_file_table', '1');
INSERT INTO `migrations` VALUES ('21', '2017_08_10_211437_create_type_documents', '2');

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
INSERT INTO `nationalities` VALUES ('1', 'Afgano', '1', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('2', 'Alemán', '2', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('3', 'Árabe', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('4', 'Argentino', '4', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('5', 'Australiano', '5', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('6', 'Belga', '6', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('7', 'Boliviano', '7', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('8', 'Brasilero', '8', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('9', 'Camboyano', '9', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('10', 'Canadiense', '10', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('11', 'Chileno', '11', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('12', 'Chino', '12', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('13', 'Colombiano', '13', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('14', 'Coreano', '14', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('15', 'Costarricense', '15', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('16', 'Cubano', '16', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('17', 'Danés', '17', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('18', 'Ecuatoriano', '18', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('19', 'Egipcio', '19', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('20', 'Salvadoreño', '20', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('21', 'Español', '21', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('22', 'Estadounidense', '22', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('23', 'Estonio', '23', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('24', 'Etiope', '24', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('25', 'Filipino', '25', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('26', 'Finlandés', '26', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('27', 'Francés', '27', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('28', 'Galés', '28', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('29', 'Griego', '29', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('30', 'Guatemalteco', '30', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('31', 'Haitiano', '31', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('32', 'Holandés', '32', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('33', 'Hondureño', '33', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('34', 'Indonés', '34', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('35', 'Inglés', '35', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('36', 'Irlandés', '36', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('37', 'Israelí', '37', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('38', 'Italiano', '38', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('39', 'Japonés', '39', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('40', 'Jordano', '40', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('41', 'Letón', '41', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('42', 'Letonés', '42', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('43', 'Malayo', '43', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('44', 'Marroquí', '44', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('45', 'Mexicano', '45', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('46', 'Nicaragüense', '46', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('47', 'Noruego', '47', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('48', 'Neocelandés', '48', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('49', 'Panameño', '49', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('50', 'Paraguayo', '50', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('51', 'Peruano', '51', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('52', 'Polaco', '52', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('53', 'Portugués', '53', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('54', 'Puertorriqueño', '54', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('55', 'Dominicano', '55', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('56', 'Rumano', '56', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('57', 'Ruso', '57', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('58', 'Sueco', '58', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('59', 'Suizo', '59', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('60', 'Tailandés', '60', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('61', 'Taiwanes', '61', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('62', 'Turco', '62', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('63', 'Ucraniano', '63', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('64', 'Uruguayo', '64', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('65', 'Venezolano', '65', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');
INSERT INTO `nationalities` VALUES ('66', 'Vietnamita', '66', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '2', '2', '1');

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
INSERT INTO `payments_type` VALUES ('1', 'Transferencia Bancaria', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('2', 'Masterd Card', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('3', 'Visa', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '1', '1', '1');
INSERT INTO `payments_type` VALUES ('4', 'Efectivo', '2017-08-23 00:11:42', '2017-08-23 00:11:42', '1', '1', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'view-backend', 'View Backend', '1', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('2', 'manage-users', 'Manage Users', '2', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('3', 'manage-roles', 'Manage Roles', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('4', 'caja', 'Caja', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('5', 'ventas', 'Ventas', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('6', 'liquidaciones', 'Liquidaciones', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('7', 'cotizaciones', 'Cotizaciones', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('8', 'mantenimiento', 'Mantenimiento', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('9', 'visitas', 'Visitas', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('10', 'asignarvisitas', 'Asignarvisitas', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('11', 'agregarpagos', 'Agregarpagos', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('12', 'editarliquidacion', 'Editarliquidacion', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('13', 'generarliquidacion', 'Generarliquidacion', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('14', 'proveedores', 'Proveedores', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `permissions` VALUES ('15', 'servicios', 'Servicios', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);

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
INSERT INTO `permission_role` VALUES ('3', '4', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('4', '1', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('5', '11', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('6', '5', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('7', '6', '4', '2', '2');
INSERT INTO `permission_role` VALUES ('8', '1', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('9', '7', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('10', '6', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('11', '5', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('12', '9', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('13', '15', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('14', '14', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('15', '16', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('16', '17', '2', '2', '2');
INSERT INTO `permission_role` VALUES ('17', '13', '2', '2', '2');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES ('1', 'NUEVO MUNDO', 'info@tours.com', '980777728', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('2', 'COSTAMAR', 'info@costamar.com', '953853545', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('3', 'CARELI', 'info@careli.com', '984476658', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('4', 'GOWAI', 'info@gowai.com', '981474258', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('5', 'LATAM', 'info@latam.com', '981475258', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('6', 'TURASER', 'info@turaser.com', '954758685', 'Perú', 'AV. JOSE PARDO #332 - MIRAFLORES', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `proveedores` VALUES ('7', 'TIKA REPS', null, null, null, null, '2017-08-29 16:01:11', '2017-08-29 16:01:11', null, null, '1');

-- ----------------------------
-- Table structure for quotes
-- ----------------------------
DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double(8,2) unsigned DEFAULT NULL,
  `date_vality` timestamp NULL DEFAULT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `quotes_visit_id_foreign` (`visit_id`),
  KEY `quotes_customer_id_foreign` (`customer_id`),
  KEY `quotes_created_user_id_foreign` (`created_user_id`),
  KEY `quotes_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quotes
-- ----------------------------
INSERT INTO `quotes` VALUES ('1', '9', 'QO-000001', '1', '2017-08-10 22:57:08', '2017-08-10 22:57:08', '7100.59', '2017-08-15 00:00:00', 'Los términos de pago permiten controlar las fechas, descuentos, documentos y cargos que se aplican cuando se liquidan pagos en una cuenta. Por ejemplo, los términos de pago se utilizan para calcular las fechas previstas de pago de cada factura.\r\n\r\nEs posible crear una serie de términos de pago diferentes, cada uno de ellos se identifica con un código de términos de pago.', '2', null, '1');
INSERT INTO `quotes` VALUES ('2', '34', 'QO-000002', '2', '2017-08-11 21:38:47', '2017-08-11 21:38:47', '1700.05', '2017-08-15 00:00:00', null, '2', null, '1');
INSERT INTO `quotes` VALUES ('3', '34', 'QO-000003', '2', '2017-08-11 21:41:04', '2017-08-11 21:41:04', '1900.23', '2017-08-15 00:00:00', null, '2', null, '1');
INSERT INTO `quotes` VALUES ('4', '43', 'QO-000004', '3', '2017-08-11 23:24:43', '2017-08-11 23:24:43', '2292.23', '2017-08-15 00:00:00', 'no existen comentarios adicionales para esta cotización', '2', null, '1');
INSERT INTO `quotes` VALUES ('5', '1264', 'QO-000005', '4', '2017-08-11 23:57:35', '2017-08-11 23:57:35', '1900.20', '2017-08-15 00:00:00', null, '2', null, '1');
INSERT INTO `quotes` VALUES ('6', '2', 'QO-000006', '5', '2017-08-11 23:59:28', '2017-08-11 23:59:28', '1900.50', '2017-08-15 00:00:00', null, '2', null, '1');
INSERT INTO `quotes` VALUES ('7', '109', 'QO-000007', '6', '2017-08-12 00:05:31', '2017-08-14 22:10:57', '57859.20', '2017-08-15 00:00:00', 'Nuestros Servicios son muy diversos, de modo que en ocasiones podrían ser aplicables condiciones adicionales u otros requisitos (incluidos los requisitos de edad). Las condiciones adicionales estarán disponibles junto con los Servicios pertinentes y formarán parte de su contrato con nosotros al utilizar tales Servicios.', '2', '2', '1');
INSERT INTO `quotes` VALUES ('8', '1577', 'QO-000008', '7', '2017-08-12 00:30:47', '2017-08-14 23:37:52', '25000.50', '2017-08-15 00:00:00', null, '2', '2', '1');
INSERT INTO `quotes` VALUES ('9', '5', 'QO-000009', '9', '2017-08-14 14:15:48', '2017-08-15 22:27:31', '26700.30', '2017-08-17 00:00:00', 'comentario principal', '2', '2', '1');
INSERT INTO `quotes` VALUES ('11', '8', 'QO-000011', '10', '2017-08-15 00:11:59', '2017-08-15 00:11:59', '29401.53', '2017-08-15 00:00:00', 'comentarios generales', '1', null, '1');
INSERT INTO `quotes` VALUES ('12', '4', 'QO-000012', '15', '2017-08-24 21:56:37', '2017-08-29 16:01:11', '8290.75', '2017-08-30 00:00:00', null, '3', '3', '1');
INSERT INTO `quotes` VALUES ('13', '5', 'QO-000013', '9', '2017-08-24 23:07:09', '2017-08-24 23:07:09', '5500.00', '2017-08-24 00:00:00', null, '3', null, '1');
INSERT INTO `quotes` VALUES ('14', '5', 'QO-000014', '9', '2017-08-28 20:14:12', '2017-08-28 20:14:12', '5600.88', '2017-08-29 00:00:00', 'comentarios especializados', '3', null, '1');
INSERT INTO `quotes` VALUES ('15', '11', 'QO-000015', '22', '2017-09-01 00:22:41', '2017-09-01 00:22:41', '1900.22', '2017-09-07 00:00:00', null, '3', null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quote_service
-- ----------------------------
INSERT INTO `quote_service` VALUES ('1', '1', '1', '1800.00', '1', '1800.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('2', '3', '1', '2200.00', '1', '2200.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('3', '5', '1', '1900.00', '1', '1900.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('4', '8', '1', '1200.00', '1', '1200.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('5', '2', '3', '1900.00', '1', '1900.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('6', '2', '4', '256.56', '3', '769.68', 'El tour incluye desayuno x9 almuerzos x1 y 5 cenas en restaurants seleccionados', null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('7', '10', '4', '1522.55', '1', '1522.55', 'El servicio no cuenta con trasporte ni traslado a la aerolinea', null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('8', '2', '5', '1900.00', '1', '1900.00', 'h', null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('9', '2', '6', '1900.00', '1', '1900.00', null, null, null, '2', null, '1');
INSERT INTO `quote_service` VALUES ('10', '1', '7', '1561.26', '5', '7806.30', 'No utilice nuestros Servicios de forma indebida. Por ejemplo, no interfiera en nuestros Servicios ni intente acceder a ellos por otro método diferente a la interfaz y las instrucciones que le proporcionamos. Puede utilizar nuestros Servicios solo como se permite por ley, incluidas las leyes y regulaciones correspondientes de control de exportación y reexportación. Podremos suspender o dejar de proveerle nuestros Servicios si usted incumple nuestras condiciones o políticas o si estamos investigando una presunta conducta indebida.', null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('11', '4', '7', '2000.00', '5', '10000.00', 'En relación con su uso de los Servicios, podremos enviarle anuncios del servicio, mensajes administrativos y otra información. Usted podrá rechazar algunas de dichas comunicaciones.', null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('12', '5', '7', '5241.22', '5', '26206.10', 'Para proteger su cuenta de Google, mantenga la confidencialidad de su contraseña. Usted es responsable de la actividad que se desarrolle en su cuenta de Google o a través de ella. Intente no reutilizar la contraseña de su cuenta de Google en aplicaciones de terceros. Si detecta un uso no autorizado de su cuenta de Google o de su contraseña, siga estas instrucciones.', null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('13', '11', '7', '1500.00', '5', '7500.00', 'En algunos casos es necesario crear una cuenta de Google para utilizar algunos de nuestros Servicios. Usted podrá crear su propia cuenta de Google o un administrador, por ejemplo, su empleador o institución educativa, podrá asignarle su cuenta de Google. Si utiliza una cuenta de Google asignada por un administrador, se podrán aplicar condiciones diferentes o adicionales y su administrador podrá acceder o inhabilitar su cuenta.', null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('14', '12', '7', '669.36', '5', '3346.80', 'Para proteger su cuenta de Google, mantenga la confidencialidad de su contraseña. Usted es responsable de la actividad que se desarrolle en su cuenta de Google o a través de ella. Intente no reutilizar la contraseña de su cuenta de Google en aplicaciones de terceros. Si detecta un uso no autorizado de su cuenta de Google o de su contraseña, siga estas instrucciones.', null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('15', '13', '7', '600.00', '5', '3000.00', 'VACACIONAL', null, null, null, '2', '1');
INSERT INTO `quote_service` VALUES ('17', '1', '8', '5000.00', '5', '25000.00', null, null, null, '2', '2', '1');
INSERT INTO `quote_service` VALUES ('36', '3', '10', '1000.37', '15', '15005.49', null, null, null, '1', null, '1');
INSERT INTO `quote_service` VALUES ('29', '1', '9', '500.00', '1', '500.00', 'fdgfdg', null, null, null, '2', '1');
INSERT INTO `quote_service` VALUES ('35', '17', '9', '600.00', '2', '1200.00', 'kl', null, null, null, '2', '1');
INSERT INTO `quote_service` VALUES ('34', '16', '9', '5000.00', '5', '25000.00', 'gfdgfdg', null, null, null, '2', '1');
INSERT INTO `quote_service` VALUES ('38', '3', '11', '1000.37', '15', '15005.49', null, null, null, '1', null, '1');
INSERT INTO `quote_service` VALUES ('39', '4', '11', '1599.56', '9', '14396.04', null, null, null, '1', null, '1');
INSERT INTO `quote_service` VALUES ('49', '1', '12', '1800.50', '2', '3601.00', null, null, null, '3', '3', '1');
INSERT INTO `quote_service` VALUES ('50', '4', '13', '1700.00', '1', '1700.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('51', '2', '13', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('52', '5', '13', '1900.00', '1', '1900.00', null, null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('58', '10', '12', '1563.25', '3', '4689.75', null, null, null, null, null, '1');
INSERT INTO `quote_service` VALUES ('55', '1', '14', '2000.30', '1', '2000.30', 'DETALLE 1', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('56', '4', '14', '1700.36', '1', '1700.36', 'DETALLE 2', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('57', '2', '14', '1900.22', '1', '1900.22', 'DETALLE 3', null, null, '3', null, '1');
INSERT INTO `quote_service` VALUES ('59', '2', '15', '1900.22', '1', '1900.22', null, null, null, '3', null, '1');

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_total` double(8,2) DEFAULT NULL,
  `sale_id` int(10) unsigned DEFAULT NULL,
  `coments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `receipts_sale_id_foreign` (`sale_id`),
  KEY `receipts_created_user_id_foreign` (`created_user_id`),
  KEY `receipts_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of receipts
-- ----------------------------
INSERT INTO `receipts` VALUES ('1', 'RO-000001', '7100.00', '1', '', '2017-08-10 23:40:24', '2017-08-10 23:40:24', '2', null, '1');
INSERT INTO `receipts` VALUES ('2', 'RO-000002', '2292.23', '2', '', '2017-08-11 23:25:19', '2017-08-11 23:25:19', '2', null, '1');
INSERT INTO `receipts` VALUES ('3', 'RO-000003', '54702.98', '3', 'Este recibo ha sido cancelado en cuotas comodas de 1500', '2017-08-14 22:25:46', '2017-08-14 22:25:46', '2', null, '1');
INSERT INTO `receipts` VALUES ('4', 'RO-000004', '5500.00', '4', '', '2017-08-24 23:07:29', '2017-08-24 23:07:30', '3', null, '1');
INSERT INTO `receipts` VALUES ('5', 'RO-000005', '5600.88', '5', 'este recibo fue cancelado en su totalidad', '2017-08-28 22:06:08', '2017-08-28 23:01:46', '3', '9', '1');
INSERT INTO `receipts` VALUES ('6', 'RO-000006', '5600.88', '6', '', '2017-08-29 19:38:22', '2017-08-29 19:38:22', '3', null, '1');
INSERT INTO `receipts` VALUES ('7', 'RO-000007', '8290.75', '7', '', '2017-08-29 20:00:41', '2017-08-29 20:00:41', '3', null, '1');

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
INSERT INTO `roles` VALUES ('1', 'Administrador', '1', '1', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `roles` VALUES ('2', 'Counter', '0', '2', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `roles` VALUES ('3', 'Recepcionista', '0', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);
INSERT INTO `roles` VALUES ('4', 'Contabilidad', '0', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null);

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
  KEY `role_user_created_user_id_foreign` (`created_user_id`) USING BTREE,
  KEY `role_user_updated_user_id_foreign` (`updated_user_id`) USING BTREE,
  KEY `role_user_user_id_foreign` (`user_id`) USING BTREE,
  KEY `role_user_role_id_foreign` (`role_id`) USING BTREE
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `coments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_quote_id_foreign` (`quote_id`),
  KEY `sales_customer_id_foreign` (`customer_id`),
  KEY `sales_user_id_foreign` (`user_id`),
  KEY `sales_created_user_id_foreign` (`created_user_id`),
  KEY `sales_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', '1', '9', '2', 'VO-000001', '7100.00', '2017-08-10 23:40:24', '2017-08-10 23:40:24', '2', null, '1', '');
INSERT INTO `sales` VALUES ('2', '4', '43', '2', 'VO-000002', '2292.23', '2017-08-11 23:25:19', '2017-08-11 23:25:19', '2', null, '1', '');
INSERT INTO `sales` VALUES ('3', '7', '109', '2', 'VO-000003', '57859.20', '2017-08-14 22:25:46', '2017-08-14 22:25:46', '2', null, '1', 'Nuestros Servicios son muy diversos, de modo que en ocasiones podrían ser aplicables condiciones adicionales u otros requisitos (incluidos los requisitos de edad). Las condiciones adicionales estarán disponibles junto con los Servicios pertinentes y forma');
INSERT INTO `sales` VALUES ('4', '13', '5', '3', 'VO-000004', '5500.00', '2017-08-24 23:07:29', '2017-08-24 23:07:29', '3', null, '1', null);
INSERT INTO `sales` VALUES ('5', '14', '5', '3', 'VO-000005', '5600.88', '2017-08-28 22:06:08', '2017-08-28 22:06:08', '3', null, '1', 'comentarios especializados');
INSERT INTO `sales` VALUES ('6', '14', '5', '3', 'VO-000006', '5600.88', '2017-08-29 19:38:21', '2017-08-29 19:38:21', '3', null, '1', 'comentarios especializados');
INSERT INTO `sales` VALUES ('7', '12', '4', '3', 'VO-000007', '8290.75', '2017-08-29 20:00:41', '2017-08-29 20:00:41', '3', null, '1', null);

-- ----------------------------
-- Table structure for sale_service
-- ----------------------------
DROP TABLE IF EXISTS `sale_service`;
CREATE TABLE `sale_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coments_quote` text COLLATE utf8mb4_unicode_ci,
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
  `coments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_service_sale_id_foreign` (`sale_id`),
  KEY `sale_service_service_id_foreign` (`service_id`),
  KEY `sale_service_created_user_id_foreign` (`created_user_id`),
  KEY `sale_service_updated_user_id_foreign` (`updated_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sale_service
-- ----------------------------
INSERT INTO `sale_service` VALUES ('1', 'TOURS A DISNEY X 3 DIAS', 'Los términos de pago permiten controlar las fechas, descuentos, documentos y cargos que se aplican cuando se liquidan pagos en una cuenta. Por ejemplo, los términos de pago se utilizan para calcular las fechas previstas de pago de cada factura.\r\n\r\nEs posible crear una serie de términos de pago diferentes, cada uno de ellos se identifica con un código de términos de pago.', '1800.00', '1', '1800.00', '1', '1', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('2', 'TOURS A COLOMBIA X 2 DIAS', 'Los términos de pago permiten controlar las fechas, descuentos, documentos y cargos que se aplican cuando se liquidan pagos en una cuenta. Por ejemplo, los términos de pago se utilizan para calcular las fechas previstas de pago de cada factura.\r\n\r\nEs posible crear una serie de términos de pago diferentes, cada uno de ellos se identifica con un código de términos de pago.', '2200.00', '1', '2200.00', '1', '3', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('3', 'PROGRAMA EUROPA', 'Los términos de pago permiten controlar las fechas, descuentos, documentos y cargos que se aplican cuando se liquidan pagos en una cuenta. Por ejemplo, los términos de pago se utilizan para calcular las fechas previstas de pago de cada factura.\r\n\r\nEs posible crear una serie de términos de pago diferentes, cada uno de ellos se identifica con un código de términos de pago.', '1900.00', '1', '1900.00', '1', '5', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('4', 'GUIA BILINGUE', 'Los términos de pago permiten controlar las fechas, descuentos, documentos y cargos que se aplican cuando se liquidan pagos en una cuenta. Por ejemplo, los términos de pago se utilizan para calcular las fechas previstas de pago de cada factura.\r\n\r\nEs posible crear una serie de términos de pago diferentes, cada uno de ellos se identifica con un código de términos de pago.', '1200.00', '1', '1200.00', '1', '8', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('5', 'TOURS A EUROPA X 3 DIAS', 'no existen comentarios adicionales para esta cotización', '256.56', '3', '769.68', '2', '2', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('6', 'Boletos generales', 'no existen comentarios adicionales para esta cotización', '1522.55', '1', '1522.55', '2', '10', null, null, '2', null, '1', null);
INSERT INTO `sale_service` VALUES ('7', 'TOURS A DISNEY X 3 DIAS', null, '1561.26', '5', '7806.30', '3', '1', null, null, '2', null, '1', 'No utilice nuestros Servicios de forma indebida. Por ejemplo, no interfiera en nuestros Servicios ni intente acceder a ellos por otro método diferente a la interfaz y las instrucciones que le proporcionamos. Puede utilizar nuestros Servicios solo como se ');
INSERT INTO `sale_service` VALUES ('8', 'TOURS A CHILE X 1 DIA', null, '2000.00', '5', '10000.00', '3', '4', null, null, '2', null, '1', 'En relación con su uso de los Servicios, podremos enviarle anuncios del servicio, mensajes administrativos y otra información. Usted podrá rechazar algunas de dichas comunicaciones.');
INSERT INTO `sale_service` VALUES ('9', 'PROGRAMA EUROPA', null, '5241.22', '5', '26206.10', '3', '5', null, null, '2', null, '1', 'Para proteger su cuenta de Google, mantenga la confidencialidad de su contraseña. Usted es responsable de la actividad que se desarrolle en su cuenta de Google o a través de ella. Intente no reutilizar la contraseña de su cuenta de Google en aplicaciones ');
INSERT INTO `sale_service` VALUES ('10', 'AEREOS', null, '1500.00', '5', '7500.00', '3', '11', null, null, '2', null, '1', 'En algunos casos es necesario crear una cuenta de Google para utilizar algunos de nuestros Servicios. Usted podrá crear su propia cuenta de Google o un administrador, por ejemplo, su empleador o institución educativa, podrá asignarle su cuenta de Google. ');
INSERT INTO `sale_service` VALUES ('11', 'TRASLADOS', null, '669.36', '5', '3346.80', '3', '12', null, null, '2', null, '1', 'Para proteger su cuenta de Google, mantenga la confidencialidad de su contraseña. Usted es responsable de la actividad que se desarrolle en su cuenta de Google o a través de ella. Intente no reutilizar la contraseña de su cuenta de Google en aplicaciones ');
INSERT INTO `sale_service` VALUES ('12', 'ESPECIAL PLAYERO', null, '600.00', '5', '3000.00', '3', '13', null, null, '2', null, '1', 'Para proteger su cuenta de Google, mantenga la confidencialidad de su contraseña. Usted es responsable de la actividad que se desarrolle en su cuenta de Google o a través de ella. Intente no reutilizar la contraseña de su cuenta de Google en aplicaciones');
INSERT INTO `sale_service` VALUES ('13', 'TOURS A CHILE X 1 DIA', null, '1700.00', '1', '1700.00', '4', '4', null, null, '3', null, '1', null);
INSERT INTO `sale_service` VALUES ('14', 'TOURS A EUROPA X 3 DIAS', null, '1900.00', '1', '1900.00', '4', '2', null, null, '3', null, '1', null);
INSERT INTO `sale_service` VALUES ('15', 'PROGRAMA EUROPA', null, '1900.00', '1', '1900.00', '4', '5', null, null, '3', null, '1', null);
INSERT INTO `sale_service` VALUES ('16', 'TOURS A DISNEY X 3 DIAS', null, '2000.30', '1', '2000.30', '5', '1', null, null, '3', null, '1', 'DETALLE 1');
INSERT INTO `sale_service` VALUES ('17', 'TOURS A CHILE X 1 DIA', null, '1700.36', '1', '1700.36', '5', '4', null, null, '3', null, '1', 'DETALLE 2');
INSERT INTO `sale_service` VALUES ('18', 'TOURS A EUROPA X 3 DIAS', null, '1900.22', '1', '1900.22', '5', '2', null, null, '3', null, '1', 'DETALLE 3');
INSERT INTO `sale_service` VALUES ('19', 'TOURS A DISNEY X 3 DIAS', null, '2000.30', '1', '2000.30', '6', '1', null, null, '3', null, '1', 'DETALLE 1');
INSERT INTO `sale_service` VALUES ('20', 'TOURS A CHILE X 1 DIA', null, '1700.36', '1', '1700.36', '6', '4', null, null, '3', null, '1', 'DETALLE 2');
INSERT INTO `sale_service` VALUES ('21', 'TOURS A EUROPA X 3 DIAS', null, '1900.22', '1', '1900.22', '6', '2', null, null, '3', null, '1', 'DETALLE 3');
INSERT INTO `sale_service` VALUES ('22', 'TOURS A DISNEY X 3 DIAS', null, '1800.50', '2', '3601.00', '7', '1', null, null, '3', null, '1', null);
INSERT INTO `sale_service` VALUES ('23', 'Nuevo', null, '1563.25', '3', '4689.75', '7', '10', null, null, '3', null, '1', null);

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) unsigned DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', 'TOURS A DISNEY X 3 DIAS', '1800.50', '1', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('2', 'TOURS A EUROPA X 3 DIAS', '1900.22', '2', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('3', 'TOURS A COLOMBIA X 2 DIAS', '2200.59', '4', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('4', 'TOURS A CHILE X 1 DIA', '1700.36', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('5', 'PROGRAMA EUROPA', '1900.15', '4', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('6', 'TOURS A VENEZUELA X 1 SEMANA', '1600.33', '3', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('7', 'HOTEL 5 ESTRELLAS', '2200.39', '2', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('8', 'GUIA BILINGUE', '1200.48', '1', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('9', 'ESTADIA 5 NOCHES', '850.11', '5', '2017-08-23 00:11:42', '2017-08-23 00:11:42', null, null, '1');
INSERT INTO `services` VALUES ('10', 'Nuevo', '1563.25', '7', '2017-08-29 16:01:11', '2017-08-29 16:01:11', null, null, '1');

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
INSERT INTO `type_documents` VALUES ('1', 'DNI', '2017-08-23 00:11:43', '2017-08-23 00:11:43', '1', '1', '1');
INSERT INTO `type_documents` VALUES ('2', 'Pasapote', '2017-08-23 00:11:43', '2017-08-23 00:11:43', '1', '1', '1');
INSERT INTO `type_documents` VALUES ('3', 'RUC', '2017-08-23 00:11:43', '2017-08-23 00:11:43', '1', '1', '1');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_user_id` int(10) unsigned DEFAULT NULL,
  `updated_user_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  KEY `users_created_user_id_foreign` (`created_user_id`) USING BTREE,
  KEY `users_updated_user_id_foreign` (`updated_user_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`created_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`updated_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Amanda Garay', 'amandagaray@tikatravel.pe', '$2y$10$k425Yad6b6D3csUHcBKNpeE8ryVyssNNkp2DCM80ReZb6F8HOT7xW', '1', '59897046e35d3447cd5dc86922f9ce50', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('2', 'Luis Zamora', 'luiszamora@tikagroup.com.pe', '$2y$10$jeOGZrCm31VhujDh6EVNDeivwOlMdDYcjbfMn4KcPxhc4oH63GsV2', '1', 'f2c86162b155f9081d3d7d89ec0d752a', '1', 'ftFiPm9soupnjFmbmVtIf2n7ae8OYItNLr8abiW3vJPYjWUewJrOr53VlXlv', '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('3', 'Silvana Velasque', 'silvanavelasque@tikatravel.pe', '$2y$10$jeOGZrCm31VhujDh6EVNDeivwOlMdDYcjbfMn4KcPxhc4oH63GsV2', '1', '08b65b90f89a05b4b0c5b222fdc77a4e', '1', '6ypZ7bXcxTwfZQPDj28S0vMLhbLnV2b9RwQLFCgWRGtm5DZwGjvYTwonnBmG', '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('4', 'Fiorela Salas', 'fiorelasalas@tikatravel.pe', '$2y$10$vcElzUZ4VYNBxDaaxzkUDu6Kbi8MXl1WShsvVjoYHP/FsTkdCJXKm', '1', '125d5e6a1a21e80d1b9b5f4dbc582ae9', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('5', 'Laura Florencia', 'lauraflorencia@tikatravel.pe', '$2y$10$hSdoLTUh9h.xVeLGP8QweOKkr3lshF2wVKoIXc6oR/X7fQ9GyW7iu', '1', 'f089f0cfd8fad51a5bc55744cca9ae3e', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('6', 'Fredy Caceres', 'fredycaceres@tikatravel.pe', '$2y$10$.K9JdQPgFfTMrsWXU.ANjOvbr25g2LpuNUYjBCF6yrFNhK8FIuJs2', '1', 'd2391ff8e2fe0784a9b0956831ab0c95', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('7', 'Marlene Pita', 'marlenepita@tikatravel.pe', '$2y$10$Vs3K9Jt4zJCdTx9H4/OVveS7Id0KjKrmcIL2NzSuClHqQOOOi/Hdq', '1', '3eb9d41ed12bdb4902bbd9455f83d450', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('8', 'Carmen Huasasquiche', 'carmenhuasasquiche@tikatravel.pe', '$2y$10$HAC2CdQ9UhQYNVrcXJ8PjOKKcCSNOJX2oNndjWkH2ka2rqTIQ7Y.2', '1', '45521071648783e7b797cb20e62511ed', '1', null, '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('9', 'Gedeon Josco', 'gedeonjosco@tikagroup.com.pe', '$2y$10$6YOfjEJh/IkwOupjK35SmOs4ETxnCbjrhO6XcUyM2mTx21oGvanJi', '1', '902cf3e88a499ba49a0be9f386bed528', '1', '9yrCeJ9NNKL08Qdmc87jSoVobl1BAp8eUSgbJOcpunsgucIjhiVgTbGUeaaT', '2017-08-23 00:11:40', '2017-08-23 00:11:40', null, null, null);
INSERT INTO `users` VALUES ('10', 'Rosa Silvera', 'rosasilvera@tikagroup.com.pe', '$2y$10$Cwr.eq.m0ub0GVJy6YSTGekFA11mIXRBxXyHKJg5gq5FWS9//DJWK', '1', 'aeaf948bd7d7fea755fab0a36a455ef5', '1', null, '2017-08-23 00:11:41', '2017-08-23 00:11:41', null, null, null);
INSERT INTO `users` VALUES ('11', 'German Llop', 'germanllop@tikagroup.com.pe', '$2y$10$HV07fbVF/35p414jCCn5V.qGqrcE6ew1/m5orkixgiEJPANs0Ks1K', '1', 'df1ca7b11f2a38ba2593885d413b37ab', '1', null, '2017-08-23 00:11:41', '2017-08-23 00:11:41', null, null, null);
INSERT INTO `users` VALUES ('12', 'Jose Martinsky', 'josemartinsky@tikagroup.com.pe', '$2y$10$qeBY7gNJkP9/SiXqP0YiZetrlR5wVfO8QfB8D4iKEzLuqSkqRrldS', '1', '0bda04325be11306dbd6395cfedf5213', '1', 'VaVz3N0xemwYs9I51BgxlON3j5Cz9gPPNAWK9u0k1LkCiBJ7MeGipEnqPjF4', '2017-08-23 00:11:41', '2017-08-23 00:11:41', null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('1', '2', '9', '9', '55', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('2', '2', '34', '8', 'compra de paquetes', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('3', '2', '43', '10', 'Kilgarrif', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('4', '2', '1264', '9', 'compra de paquete europa', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('5', '2', '2', '10', 'nnbn', '2017-08-24 21:53:57', '2017-08-11 23:58:21', '2', null, '1');
INSERT INTO `visits` VALUES ('6', '2', '109', '10', 'compra de paquete europa', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('7', '2', '1577', '10', 'Paquete turistico para machupichu, 10 personas', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('8', '2', '1546', '10', 'Compra de boletos', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('9', '2', '5', '3', 'compra de paquete europa', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('10', '2', '8', '7', 'h', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('11', '1', '3', '7', 'desea comprar boletos a un tour disney por 8 días ida y vuelta.', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '1', null, '1');
INSERT INTO `visits` VALUES ('12', '2', '36', '7', 'Viaje a machu pichu', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('13', '2', '546', '9', 'cotizacion', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('14', '4', '43', '3', 'Compra de cusco', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('15', '4', '4', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('16', '4', '5', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('17', '4', '6', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('18', '4', '7', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('19', '4', '8', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('20', '4', '9', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('21', '4', '10', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('22', '4', '11', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('23', '4', '12', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('24', '4', '13', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('25', '4', '14', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('26', '4', '15', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('27', '4', '16', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('28', '4', '17', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('29', '4', '18', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('30', '4', '19', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('31', '4', '20', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('32', '4', '21', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
INSERT INTO `visits` VALUES ('33', '4', '22', '3', 'pasaje a madrid', '2017-08-24 21:53:57', '2017-08-24 21:53:57', '2', null, '1');
