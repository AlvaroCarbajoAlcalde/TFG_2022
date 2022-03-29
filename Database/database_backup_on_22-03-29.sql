

CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admins (id, name, password, created_at, updated_at) VALUES ('1','d033e22ae348aeb5660fc2140aec35850c4da997','d033e22ae348aeb5660fc2140aec35850c4da997','2022-03-13 15:13:02','2022-03-13 15:13:02');


CREATE TABLE `flights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `takeoff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('32','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 19:11:29','2022-03-27 19:11:29');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('33','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:23:10','2022-03-27 20:23:10');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('34','undefined','2022-03-27','Peñacerrada','2022-03-27 20:29:51','2022-03-27 20:29:51');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('35','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:30:25','2022-03-27 20:30:25');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('36','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:35:34','2022-03-27 20:35:34');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('37','undefined','2022-03-27','Bugedo','2022-03-27 20:37:47','2022-03-27 20:37:47');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('38','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:39:58','2022-03-27 20:39:58');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('39','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:45:37','2022-03-27 20:45:37');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('40','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:46:24','2022-03-27 20:46:24');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('41','undefined','2022-03-27','Instalaciones de Globos Arcoiris','2022-03-27 20:46:45','2022-03-27 20:46:45');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('42','test','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 14:35:19','2022-03-29 14:35:19');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('43','undefined','2022-03-29','Hermita de la Esclavitud, Cihuri.','2022-03-29 14:41:25','2022-03-29 14:41:25');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('44','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 14:42:54','2022-03-29 14:42:54');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('45','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 14:47:03','2022-03-29 14:47:03');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('46','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 14:52:49','2022-03-29 14:52:49');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('47','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 14:55:49','2022-03-29 14:55:49');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('48','undefined','2022-03-29','Carretera Anguciana','2022-03-29 14:57:14','2022-03-29 14:57:14');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('49','undefined','2022-03-29','Bugedo','2022-03-29 14:58:48','2022-03-29 14:58:48');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('50','undefined','2022-03-29','Miranda de Ebro','2022-03-29 15:00:56','2022-03-29 15:00:56');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('51','undefined','2022-03-29','Parking Poligono Industrial Miranda.','2022-03-29 15:02:52','2022-03-29 15:02:52');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('52','undefined','2022-03-29','Ocio','2022-03-29 15:04:02','2022-03-29 15:04:02');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('53','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 15:04:30','2022-03-29 15:04:30');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('54','undefined','2022-03-29','Ocio','2022-03-29 15:05:07','2022-03-29 15:05:07');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('55','undefined','2022-03-29','Santo Domingo Oeste','2022-03-29 15:08:08','2022-03-29 15:08:08');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('56','undefined','2022-03-29','Santo Domingo Este','2022-03-29 15:09:26','2022-03-29 15:09:26');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('57','undefined','2022-03-29','Ezcaray','2022-03-29 15:10:25','2022-03-29 15:10:25');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('58','undefined','2022-03-29','Badarán','2022-03-29 15:11:43','2022-03-29 15:11:43');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('59','undefined','2022-03-29','Instalaciones de Globos Arcoiris','2022-03-29 15:14:19','2022-03-29 15:14:19');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('60','undefined','2022-03-29','Badarán','2022-03-29 15:14:28','2022-03-29 15:14:28');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('61','undefined','2022-03-29','Campo de Golf de Cirueña.','2022-03-29 15:15:44','2022-03-29 15:15:44');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('62','undefined','2022-03-29','Cidamón','2022-03-29 15:17:18','2022-03-29 15:17:18');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('63','undefined','2022-03-29','Haro, Barrio de las bodegas','2022-03-29 15:18:35','2022-03-29 15:18:35');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('64','undefined','2022-03-29','Haro, el Mazo','2022-03-29 15:19:58','2022-03-29 15:19:58');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('65','undefined','2022-03-29','Hermita de la Esclavitud, Cihuri.','2022-03-29 15:21:32','2022-03-29 15:21:32');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('66','undefined','2022-03-29','Pancorbo','2022-03-29 15:22:53','2022-03-29 15:22:53');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('67','undefined','2022-03-29','Parquing restaurante, Santa María Ribarredonda','2022-03-29 15:24:07','2022-03-29 15:24:07');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('68','undefined','2022-03-29','Leiva','2022-03-29 15:25:20','2022-03-29 15:25:20');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('69','undefined','2022-03-29','Cerezo de Río Tirón','2022-03-29 15:26:43','2022-03-29 15:26:43');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('70','undefined','2022-03-29','Cerezo de Río Tirón','2022-03-29 15:27:29','2022-03-29 15:27:29');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('71','undefined','2022-03-29','Campo de Fútbol de Fresno','2022-03-29 15:28:35','2022-03-29 15:28:35');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('72','undefined','2022-03-29','Peñacerrada','2022-03-29 15:29:41','2022-03-29 15:29:41');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('73','undefined','2022-03-29','Zambrana','2022-03-29 15:31:00','2022-03-29 15:31:00');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('74','undefined','2022-03-29','Montes Obarenes - San Felices','2022-03-29 15:32:05','2022-03-29 15:32:05');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('75','undefined','2022-03-29','Treviana','2022-03-29 15:33:52','2022-03-29 15:33:52');


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('1','2019_12_14_000001_create_personal_access_tokens_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('7','2022_02_28__create_takeoff_points_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('8','2022_02_28_1_create_takeoff_points_table','3');

INSERT INTO migrations (id, migration, batch) VALUES ('9','2022_03_11_140512_create_users_table','4');

INSERT INTO migrations (id, migration, batch) VALUES ('10','2022_03_13_143435_create_admins_table','5');

INSERT INTO migrations (id, migration, batch) VALUES ('11','2022_03_14_143435_create_admins_table','6');

INSERT INTO migrations (id, migration, batch) VALUES ('12','2022_03_20_170944_create_flights_table','7');

INSERT INTO migrations (id, migration, batch) VALUES ('13','2022_03_21_170944_create_flights_table','8');

INSERT INTO migrations (id, migration, batch) VALUES ('14','2022_03_22_170944_create_flights_table','9');

INSERT INTO migrations (id, migration, batch) VALUES ('15','2022_03_23_170944_create_flights_table','10');

INSERT INTO migrations (id, migration, batch) VALUES ('16','2022_03_24_170944_create_flights_table','11');

INSERT INTO migrations (id, migration, batch) VALUES ('17','2022_03_25_170944_create_flights_table','12');

INSERT INTO migrations (id, migration, batch) VALUES ('18','2022_03_26_170944_create_flights_table','13');

INSERT INTO migrations (id, migration, batch) VALUES ('19','2022_03_20_193423_create_routes_table','14');


CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `routes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flight` int(11) NOT NULL,
  `seconds` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `altitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2508 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1192','32','0','42.55703','-2.97282','101','2022-03-27 19:11:29','2022-03-27 19:11:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1193','32','0','42.55703','-2.97282','1721','2022-03-27 19:12:02','2022-03-27 19:12:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1194','32','3','42.55703','-2.97282','1721','2022-03-27 19:12:05','2022-03-27 19:12:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1195','32','6','42.55703','-2.97282','1721','2022-03-27 19:12:08','2022-03-27 19:12:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1196','32','9','42.57345','-2.97282','1721','2022-03-27 19:12:11','2022-03-27 19:12:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1197','32','12','42.67074','-2.7507','1721','2022-03-27 19:12:14','2022-03-27 19:12:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1198','32','15','42.62209','-2.7507','1721','2022-03-27 19:12:17','2022-03-27 19:12:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1199','32','18','42.64641','-2.79183','1721','2022-03-27 19:12:20','2022-03-27 19:12:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1200','32','21','42.65249','-2.77826','1721','2022-03-27 19:12:23','2022-03-27 19:12:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1201','32','24','42.65249','-2.74083','1721','2022-03-27 19:12:26','2022-03-27 19:12:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1202','32','27','42.65249','-2.73095','1721','2022-03-27 19:12:29','2022-03-27 19:12:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1203','32','30','42.6601','-2.72602','1721','2022-03-27 19:12:32','2022-03-27 19:12:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1204','32','33','42.6604','-2.72643','1721','2022-03-27 19:12:35','2022-03-27 19:12:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1205','32','36','42.64611','-2.72602','1721','2022-03-27 19:12:38','2022-03-27 19:12:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1206','32','39','42.64611','-2.71491','1721','2022-03-27 19:12:41','2022-03-27 19:12:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1207','32','42','42.64611','-2.71491','1721','2022-03-27 19:12:44','2022-03-27 19:12:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1208','32','45','42.64611','-2.71491','1721','2022-03-27 19:12:47','2022-03-27 19:12:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1209','32','48','42.64611','-2.71491','1721','2022-03-27 19:12:50','2022-03-27 19:12:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1210','32','51','42.64611','-2.71491','1721','2022-03-27 19:12:53','2022-03-27 19:12:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1211','32','54','42.64611','-2.71491','1721','2022-03-27 19:12:56','2022-03-27 19:12:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1212','32','57','42.64854','-2.71491','1721','2022-03-27 19:12:59','2022-03-27 19:12:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1213','32','60','42.64459','-2.72108','1721','2022-03-27 19:13:02','2022-03-27 19:13:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1214','32','63','42.64459','-2.72149','1721','2022-03-27 19:13:05','2022-03-27 19:13:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1215','32','66','42.64459','-2.72149','1721','2022-03-27 19:13:08','2022-03-27 19:13:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1216','32','69','42.64459','-2.72149','1721','2022-03-27 19:13:11','2022-03-27 19:13:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1217','32','72','42.64368','-2.72108','1721','2022-03-27 19:13:14','2022-03-27 19:13:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1218','32','75','42.64337','-2.7219','1721','2022-03-27 19:13:17','2022-03-27 19:13:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1219','32','78','42.64337','-2.7219','1721','2022-03-27 19:13:20','2022-03-27 19:13:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1220','32','81','42.64337','-2.7219','1721','2022-03-27 19:13:23','2022-03-27 19:13:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1221','32','84','42.64337','-2.7219','1721','2022-03-27 19:13:26','2022-03-27 19:13:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1222','32','87','42.64337','-2.7219','1721','2022-03-27 19:13:29','2022-03-27 19:13:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1223','32','90','42.64337','-2.7219','1721','2022-03-27 19:13:32','2022-03-27 19:13:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1224','32','93','42.64337','-2.7219','1721','2022-03-27 19:13:35','2022-03-27 19:13:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1225','32','96','42.64337','-2.7219','1721','2022-03-27 19:13:38','2022-03-27 19:13:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1226','32','99','42.64337','-2.7219','1721','2022-03-27 19:13:41','2022-03-27 19:13:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1227','32','102','42.64337','-2.7219','1721','2022-03-27 19:13:44','2022-03-27 19:13:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1228','32','105','42.64337','-2.7219','1721','2022-03-27 19:13:47','2022-03-27 19:13:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1229','32','108','42.64337','-2.7219','1721','2022-03-27 19:13:50','2022-03-27 19:13:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1230','32','111','42.64337','-2.7219','1721','2022-03-27 19:13:53','2022-03-27 19:13:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1231','32','114','42.64337','-2.7219','1721','2022-03-27 19:13:56','2022-03-27 19:13:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1232','32','117','42.64337','-2.7219','1721','2022-03-27 19:13:59','2022-03-27 19:13:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1233','32','120','42.64337','-2.7219','1721','2022-03-27 19:14:02','2022-03-27 19:14:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1234','32','123','42.64337','-2.7219','1721','2022-03-27 19:14:05','2022-03-27 19:14:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1235','32','126','42.64337','-2.7219','1721','2022-03-27 19:14:08','2022-03-27 19:14:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1236','32','129','42.64337','-2.7219','1721','2022-03-27 19:14:11','2022-03-27 19:14:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1237','32','132','42.64337','-2.7219','1721','2022-03-27 19:14:14','2022-03-27 19:14:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1238','32','135','42.64337','-2.7219','1721','2022-03-27 19:14:17','2022-03-27 19:14:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1239','32','138','42.64337','-2.7219','1721','2022-03-27 19:14:20','2022-03-27 19:14:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1240','32','141','42.64337','-2.7219','1721','2022-03-27 19:14:23','2022-03-27 19:14:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1241','32','144','42.64337','-2.7219','1721','2022-03-27 19:14:26','2022-03-27 19:14:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1242','32','147','42.64337','-2.7219','1721','2022-03-27 19:14:29','2022-03-27 19:14:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1243','32','150','42.64337','-2.7219','1721','2022-03-27 19:14:32','2022-03-27 19:14:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1244','32','153','42.64337','-2.7219','1721','2022-03-27 19:14:35','2022-03-27 19:14:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1245','32','156','42.64337','-2.7219','1721','2022-03-27 19:14:38','2022-03-27 19:14:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1246','32','159','42.64337','-2.7219','1721','2022-03-27 19:14:41','2022-03-27 19:14:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1247','32','162','42.64337','-2.7219','1721','2022-03-27 19:14:44','2022-03-27 19:14:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1248','32','165','42.64337','-2.7219','1721','2022-03-27 19:14:47','2022-03-27 19:14:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1249','32','168','42.64337','-2.7219','1721','2022-03-27 19:14:50','2022-03-27 19:14:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1250','32','171','42.64337','-2.7219','1721','2022-03-27 19:14:53','2022-03-27 19:14:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1251','32','174','42.64337','-2.7219','1721','2022-03-27 19:14:56','2022-03-27 19:14:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1252','32','177','42.64337','-2.7219','1721','2022-03-27 19:14:59','2022-03-27 19:14:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1253','32','180','42.64337','-2.7219','1721','2022-03-27 19:15:02','2022-03-27 19:15:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1254','32','183','42.64337','-2.7219','1721','2022-03-27 19:15:05','2022-03-27 19:15:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1255','32','186','42.64337','-2.7219','1721','2022-03-27 19:15:08','2022-03-27 19:15:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1256','32','189','42.64337','-2.7219','1721','2022-03-27 19:15:11','2022-03-27 19:15:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1257','32','192','42.64337','-2.7219','1721','2022-03-27 19:15:14','2022-03-27 19:15:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1258','32','195','42.64337','-2.7219','1721','2022-03-27 19:15:17','2022-03-27 19:15:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1259','32','198','42.64337','-2.72149','1721','2022-03-27 19:15:20','2022-03-27 19:15:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1260','32','201','42.64337','-2.7507','1721','2022-03-27 19:15:23','2022-03-27 19:15:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1261','32','204','42.64337','-2.83296','1721','2022-03-27 19:15:26','2022-03-27 19:15:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1262','32','207','42.63729','-2.86587','1721','2022-03-27 19:15:29','2022-03-27 19:15:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1263','32','210','42.66162','-2.88232','1721','2022-03-27 19:15:32','2022-03-27 19:15:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1264','32','213','42.66162','-2.89055','1721','2022-03-27 19:15:35','2022-03-27 19:15:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1265','32','216','42.66162','-2.88767','1721','2022-03-27 19:15:38','2022-03-27 19:15:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1266','32','219','42.65645','-2.88808','1721','2022-03-27 19:15:41','2022-03-27 19:15:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1267','32','222','42.65462','-2.87369','1721','2022-03-27 19:15:44','2022-03-27 19:15:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1268','32','225','42.65432','-2.87369','1721','2022-03-27 19:15:47','2022-03-27 19:15:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1269','32','228','42.65462','-2.8741','1721','2022-03-27 19:15:50','2022-03-27 19:15:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1270','32','231','42.65614','-2.87533','1721','2022-03-27 19:15:53','2022-03-27 19:15:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1271','32','234','42.65614','-2.87533','1721','2022-03-27 19:15:56','2022-03-27 19:15:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1272','32','237','42.65614','-2.87533','1721','2022-03-27 19:15:59','2022-03-27 19:15:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1273','32','240','42.65614','-2.87533','1721','2022-03-27 19:16:02','2022-03-27 19:16:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1274','32','243','42.65614','-2.87533','1721','2022-03-27 19:16:05','2022-03-27 19:16:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1275','32','246','42.65614','-2.87533','1721','2022-03-27 19:16:08','2022-03-27 19:16:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1276','32','249','42.65614','-2.87533','1721','2022-03-27 19:16:11','2022-03-27 19:16:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1277','32','252','42.65614','-2.87533','1721','2022-03-27 19:16:14','2022-03-27 19:16:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1278','32','255','42.65614','-2.87533','1721','2022-03-27 19:16:17','2022-03-27 19:16:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1279','32','258','42.65614','-2.87533','1721','2022-03-27 19:16:20','2022-03-27 19:16:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1280','32','261','42.65614','-2.87533','1721','2022-03-27 19:16:23','2022-03-27 19:16:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1281','32','264','42.65614','-2.87533','1721','2022-03-27 19:16:26','2022-03-27 19:16:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1282','32','267','42.65614','-2.87533','1721','2022-03-27 19:16:29','2022-03-27 19:16:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1283','32','270','42.65614','-2.87533','1721','2022-03-27 19:16:32','2022-03-27 19:16:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1284','32','273','42.65614','-2.87533','1721','2022-03-27 19:16:35','2022-03-27 19:16:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1285','32','276','42.65614','-2.87533','1721','2022-03-27 19:16:38','2022-03-27 19:16:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1286','32','279','42.65614','-2.87533','1721','2022-03-27 19:16:41','2022-03-27 19:16:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1287','32','282','42.65614','-2.87533','1721','2022-03-27 19:16:44','2022-03-27 19:16:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1288','32','285','42.65614','-2.87533','1721','2022-03-27 19:16:47','2022-03-27 19:16:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1289','32','288','42.65614','-2.87533','1721','2022-03-27 19:16:50','2022-03-27 19:16:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1290','32','291','42.65614','-2.87533','1721','2022-03-27 19:16:53','2022-03-27 19:16:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1291','32','294','42.65614','-2.87533','1721','2022-03-27 19:16:56','2022-03-27 19:16:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1292','32','297','42.65614','-2.87533','1721','2022-03-27 19:16:59','2022-03-27 19:16:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1293','32','300','42.65614','-2.87533','1721','2022-03-27 19:17:02','2022-03-27 19:17:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1294','32','303','42.65614','-2.87533','1721','2022-03-27 19:17:05','2022-03-27 19:17:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1295','32','306','42.64094','-2.87492','1721','2022-03-27 19:17:08','2022-03-27 19:17:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1296','32','309','42.64094','-2.86587','1721','2022-03-27 19:17:11','2022-03-27 19:17:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1297','32','312','42.64125','-2.86011','1721','2022-03-27 19:17:14','2022-03-27 19:17:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1298','32','315','42.64064','-2.86052','1721','2022-03-27 19:17:17','2022-03-27 19:17:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1299','32','318','42.64125','-2.86135','1721','2022-03-27 19:17:20','2022-03-27 19:17:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1300','32','321','42.64125','-2.86135','1721','2022-03-27 19:17:23','2022-03-27 19:17:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1301','32','324','42.64125','-2.86135','1721','2022-03-27 19:17:26','2022-03-27 19:17:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1302','32','327','42.64125','-2.86135','1721','2022-03-27 19:17:29','2022-03-27 19:17:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1303','32','330','42.64125','-2.86135','1721','2022-03-27 19:17:32','2022-03-27 19:17:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1304','32','333','42.64125','-2.86135','1721','2022-03-27 19:17:35','2022-03-27 19:17:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1305','32','336','42.64125','-2.86135','1721','2022-03-27 19:17:38','2022-03-27 19:17:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1306','32','339','42.64125','-2.86135','1721','2022-03-27 19:17:41','2022-03-27 19:17:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1307','32','342','42.64125','-2.86135','1721','2022-03-27 19:17:44','2022-03-27 19:17:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1308','32','345','42.64125','-2.86135','1721','2022-03-27 19:17:47','2022-03-27 19:17:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1309','32','348','42.64125','-2.86135','1721','2022-03-27 19:17:50','2022-03-27 19:17:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1310','32','351','42.64125','-2.86135','1721','2022-03-27 19:17:53','2022-03-27 19:17:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1311','32','354','42.64125','-2.86135','1721','2022-03-27 19:17:56','2022-03-27 19:17:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1312','32','357','42.64125','-2.86135','1721','2022-03-27 19:17:59','2022-03-27 19:17:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1313','32','360','42.64125','-2.86135','1721','2022-03-27 19:18:02','2022-03-27 19:18:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1314','32','363','42.64125','-2.86135','1721','2022-03-27 19:18:05','2022-03-27 19:18:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1315','32','366','42.64125','-2.86135','1721','2022-03-27 19:18:08','2022-03-27 19:18:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1316','32','369','42.64125','-2.86135','1721','2022-03-27 19:18:11','2022-03-27 19:18:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1317','32','372','42.64125','-2.86135','1721','2022-03-27 19:18:14','2022-03-27 19:18:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1318','32','375','42.64125','-2.86135','1721','2022-03-27 19:18:17','2022-03-27 19:18:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1319','32','378','42.64125','-2.86135','1721','2022-03-27 19:18:20','2022-03-27 19:18:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1320','32','381','42.64125','-2.86135','1721','2022-03-27 19:18:23','2022-03-27 19:18:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1321','32','384','42.64125','-2.86135','1721','2022-03-27 19:18:26','2022-03-27 19:18:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1322','32','387','42.64125','-2.86135','1721','2022-03-27 19:18:29','2022-03-27 19:18:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1323','32','390','42.64125','-2.86135','1721','2022-03-27 19:18:32','2022-03-27 19:18:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1324','32','393','42.64125','-2.86135','1721','2022-03-27 19:18:35','2022-03-27 19:18:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1325','32','396','42.64125','-2.86135','1721','2022-03-27 19:18:38','2022-03-27 19:18:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1326','32','399','42.64125','-2.86135','1721','2022-03-27 19:18:41','2022-03-27 19:18:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1327','32','402','42.64125','-2.86135','1721','2022-03-27 19:18:44','2022-03-27 19:18:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1328','32','405','42.64125','-2.86135','1721','2022-03-27 19:18:47','2022-03-27 19:18:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1329','32','408','42.64125','-2.86135','1721','2022-03-27 19:18:50','2022-03-27 19:18:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1330','32','411','42.64125','-2.86135','1721','2022-03-27 19:18:53','2022-03-27 19:18:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1331','32','414','42.64125','-2.86135','1721','2022-03-27 19:18:56','2022-03-27 19:18:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1332','32','417','42.64125','-2.86135','1721','2022-03-27 19:18:59','2022-03-27 19:18:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1333','32','420','42.64125','-2.86135','1721','2022-03-27 19:19:02','2022-03-27 19:19:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1334','32','423','42.64125','-2.86135','1721','2022-03-27 19:19:05','2022-03-27 19:19:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1335','32','426','42.64125','-2.86135','1721','2022-03-27 19:19:08','2022-03-27 19:19:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1336','32','429','42.64125','-2.86135','1721','2022-03-27 19:19:11','2022-03-27 19:19:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1337','32','432','42.64125','-2.86135','1721','2022-03-27 19:19:14','2022-03-27 19:19:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1338','32','435','42.64125','-2.86135','1721','2022-03-27 19:19:17','2022-03-27 19:19:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1339','32','438','42.64125','-2.86135','1721','2022-03-27 19:19:20','2022-03-27 19:19:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1340','32','441','42.64125','-2.86135','1721','2022-03-27 19:19:23','2022-03-27 19:19:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1341','32','444','42.64125','-2.86135','1721','2022-03-27 19:19:26','2022-03-27 19:19:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1342','32','447','42.64125','-2.86135','1721','2022-03-27 19:19:29','2022-03-27 19:19:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1343','32','450','42.64125','-2.86135','1721','2022-03-27 19:19:32','2022-03-27 19:19:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1344','32','453','42.64125','-2.86135','1721','2022-03-27 19:19:35','2022-03-27 19:19:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1345','32','456','42.64125','-2.86135','1721','2022-03-27 19:19:38','2022-03-27 19:19:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1346','32','459','42.64125','-2.86135','1721','2022-03-27 19:19:41','2022-03-27 19:19:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1347','32','462','42.64125','-2.86135','1721','2022-03-27 19:19:44','2022-03-27 19:19:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1348','32','465','42.64125','-2.86135','1721','2022-03-27 19:19:47','2022-03-27 19:19:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1349','32','468','42.64125','-2.86135','1721','2022-03-27 19:19:50','2022-03-27 19:19:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1350','32','471','42.64125','-2.86135','1721','2022-03-27 19:19:53','2022-03-27 19:19:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1351','32','474','42.64125','-2.86135','1721','2022-03-27 19:19:56','2022-03-27 19:19:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1352','32','477','42.64125','-2.86135','1721','2022-03-27 19:19:59','2022-03-27 19:19:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1353','32','480','42.64125','-2.86135','1721','2022-03-27 19:20:02','2022-03-27 19:20:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1354','32','483','42.64125','-2.86135','1721','2022-03-27 19:20:05','2022-03-27 19:20:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1355','32','486','42.64125','-2.86135','1721','2022-03-27 19:20:08','2022-03-27 19:20:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1356','32','489','42.64125','-2.86135','1721','2022-03-27 19:20:11','2022-03-27 19:20:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1357','32','492','42.64125','-2.86135','1721','2022-03-27 19:20:14','2022-03-27 19:20:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1358','33','0','42.55703','-2.97282','101','2022-03-27 20:23:11','2022-03-27 20:23:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1359','33','0','42.55703','-2.97282','1721','2022-03-27 20:23:31','2022-03-27 20:23:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1360','33','3','42.55703','-2.97282','1721','2022-03-27 20:23:34','2022-03-27 20:23:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1361','33','6','42.55703','-2.97282','1721','2022-03-27 20:23:37','2022-03-27 20:23:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1362','33','9','42.55703','-2.97282','1721','2022-03-27 20:23:40','2022-03-27 20:23:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1363','33','12','42.55703','-2.97282','1721','2022-03-27 20:23:43','2022-03-27 20:23:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1364','33','15','42.55703','-2.97282','1721','2022-03-27 20:23:46','2022-03-27 20:23:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1365','33','18','42.55703','-2.97282','1721','2022-03-27 20:23:49','2022-03-27 20:23:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1366','33','21','42.55703','-2.97282','1721','2022-03-27 20:23:52','2022-03-27 20:23:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1367','33','24','42.55703','-2.97282','1721','2022-03-27 20:23:55','2022-03-27 20:23:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1368','33','27','42.55703','-2.97282','1721','2022-03-27 20:23:58','2022-03-27 20:23:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1369','33','30','42.55703','-2.97282','1721','2022-03-27 20:24:01','2022-03-27 20:24:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1370','33','33','42.55703','-2.97282','1721','2022-03-27 20:24:04','2022-03-27 20:24:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1371','33','36','42.55703','-2.97282','1721','2022-03-27 20:24:07','2022-03-27 20:24:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1372','33','39','42.55703','-2.97282','1721','2022-03-27 20:24:10','2022-03-27 20:24:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1373','33','42','42.55703','-2.97282','1721','2022-03-27 20:24:13','2022-03-27 20:24:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1374','33','45','42.55703','-2.97282','1721','2022-03-27 20:24:16','2022-03-27 20:24:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1375','33','48','42.55703','-2.97282','1721','2022-03-27 20:24:19','2022-03-27 20:24:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1376','33','51','42.55703','-2.97282','1721','2022-03-27 20:24:22','2022-03-27 20:24:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1377','33','54','42.55703','-2.97282','1721','2022-03-27 20:24:25','2022-03-27 20:24:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1378','33','57','42.55703','-2.97282','1721','2022-03-27 20:24:28','2022-03-27 20:24:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1379','33','60','42.55703','-2.97282','1721','2022-03-27 20:24:31','2022-03-27 20:24:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1380','33','63','42.55703','-2.97282','1721','2022-03-27 20:24:34','2022-03-27 20:24:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1381','33','66','42.55703','-2.97282','1721','2022-03-27 20:24:37','2022-03-27 20:24:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1382','33','69','42.55703','-2.97282','1721','2022-03-27 20:24:40','2022-03-27 20:24:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1383','33','72','42.55703','-2.97282','1721','2022-03-27 20:24:43','2022-03-27 20:24:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1384','33','75','42.55703','-2.97282','1721','2022-03-27 20:24:46','2022-03-27 20:24:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1385','33','78','42.55703','-2.97282','1721','2022-03-27 20:24:49','2022-03-27 20:24:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1386','33','81','42.55703','-2.97282','1721','2022-03-27 20:24:52','2022-03-27 20:24:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1387','33','84','42.55703','-2.97282','1721','2022-03-27 20:24:55','2022-03-27 20:24:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1388','33','87','42.55703','-2.97282','1721','2022-03-27 20:24:58','2022-03-27 20:24:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1389','33','90','42.55703','-2.97282','1721','2022-03-27 20:25:01','2022-03-27 20:25:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1390','33','93','42.55703','-2.97282','1721','2022-03-27 20:25:04','2022-03-27 20:25:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1391','33','96','42.55703','-2.97282','1721','2022-03-27 20:25:07','2022-03-27 20:25:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1392','33','99','42.55703','-2.97282','1721','2022-03-27 20:25:10','2022-03-27 20:25:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1393','33','102','42.55703','-2.97282','1721','2022-03-27 20:25:13','2022-03-27 20:25:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1394','33','105','42.55703','-2.97282','1721','2022-03-27 20:25:16','2022-03-27 20:25:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1395','33','108','42.55703','-2.97282','1721','2022-03-27 20:25:19','2022-03-27 20:25:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1396','33','111','42.55703','-2.97282','1721','2022-03-27 20:25:22','2022-03-27 20:25:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1397','33','114','42.55703','-2.97282','1721','2022-03-27 20:25:25','2022-03-27 20:25:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1398','33','117','42.55703','-2.97282','1721','2022-03-27 20:25:28','2022-03-27 20:25:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1399','33','120','42.55703','-2.97282','1721','2022-03-27 20:25:31','2022-03-27 20:25:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1400','33','123','42.55703','-2.97282','1721','2022-03-27 20:25:34','2022-03-27 20:25:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1401','33','126','42.55703','-2.97282','1721','2022-03-27 20:25:37','2022-03-27 20:25:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1402','33','129','42.55703','-2.97282','1721','2022-03-27 20:25:40','2022-03-27 20:25:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1403','33','132','42.55703','-2.97282','1721','2022-03-27 20:25:43','2022-03-27 20:25:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1404','33','135','42.55703','-2.97282','1721','2022-03-27 20:25:46','2022-03-27 20:25:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1405','33','138','42.55703','-2.97282','1721','2022-03-27 20:25:49','2022-03-27 20:25:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1406','34','0','42.64337','-2.7219','205','2022-03-27 20:29:51','2022-03-27 20:29:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1407','34','0','42.64337','-2.7219','2389','2022-03-27 20:30:12','2022-03-27 20:30:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1408','34','3','42.64337','-2.7219','2389','2022-03-27 20:30:15','2022-03-27 20:30:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1409','34','6','42.64337','-2.7219','2389','2022-03-27 20:30:18','2022-03-27 20:30:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1410','34','9','42.64337','-2.7219','2389','2022-03-27 20:30:21','2022-03-27 20:30:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1411','35','0','42.55703','-2.97282','101','2022-03-27 20:30:25','2022-03-27 20:30:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1412','35','0','42.55703','-2.97282','1721','2022-03-27 20:30:46','2022-03-27 20:30:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1413','35','3','42.55703','-2.97282','1721','2022-03-27 20:30:49','2022-03-27 20:30:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1414','35','6','42.55734','-2.97282','1721','2022-03-27 20:30:52','2022-03-27 20:30:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1415','35','9','42.63425','-3.13735','1721','2022-03-27 20:30:55','2022-03-27 20:30:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1416','35','12','42.68898','-3.16203','1721','2022-03-27 20:30:58','2022-03-27 20:30:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1417','35','15','42.69871','-3.17067','1721','2022-03-27 20:31:01','2022-03-27 20:31:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1418','35','18','42.70691','-3.17067','1721','2022-03-27 20:31:04','2022-03-27 20:31:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1419','35','21','42.70691','-3.17067','1721','2022-03-27 20:31:07','2022-03-27 20:31:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1420','35','24','42.70783','-3.17067','1721','2022-03-27 20:31:10','2022-03-27 20:31:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1421','35','27','42.71573','-3.17108','1721','2022-03-27 20:31:13','2022-03-27 20:31:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1422','35','30','42.71573','-3.17108','1721','2022-03-27 20:31:16','2022-03-27 20:31:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1423','35','33','42.71573','-3.17108','1721','2022-03-27 20:31:19','2022-03-27 20:31:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1424','35','36','42.71573','-3.16286','1721','2022-03-27 20:31:22','2022-03-27 20:31:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1425','35','39','42.71573','-2.73507','1721','2022-03-27 20:31:25','2022-03-27 20:31:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1426','35','42','42.66709','-2.74329','1721','2022-03-27 20:31:28','2022-03-27 20:31:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1427','35','45','42.65493','-2.72684','1721','2022-03-27 20:31:31','2022-03-27 20:31:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1428','35','48','42.65493','-2.72684','1721','2022-03-27 20:31:34','2022-03-27 20:31:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1429','35','51','42.65493','-2.72684','1721','2022-03-27 20:31:37','2022-03-27 20:31:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1430','35','54','42.65493','-2.72684','1721','2022-03-27 20:31:40','2022-03-27 20:31:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1431','35','57','42.65493','-2.72684','1721','2022-03-27 20:31:43','2022-03-27 20:31:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1432','35','60','42.65493','-2.72725','1721','2022-03-27 20:31:46','2022-03-27 20:31:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1433','35','63','42.65067','-2.72108','1721','2022-03-27 20:31:49','2022-03-27 20:31:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1434','35','66','42.65067','-2.72231','1721','2022-03-27 20:31:52','2022-03-27 20:31:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1435','35','69','42.65067','-2.72231','1721','2022-03-27 20:31:55','2022-03-27 20:31:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1436','35','72','42.65067','-2.72231','1721','2022-03-27 20:31:58','2022-03-27 20:31:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1437','35','75','42.65067','-2.72231','1721','2022-03-27 20:32:01','2022-03-27 20:32:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1438','35','78','42.65067','-2.72231','1721','2022-03-27 20:32:04','2022-03-27 20:32:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1439','35','81','42.65067','-2.72231','1721','2022-03-27 20:32:07','2022-03-27 20:32:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1440','35','84','42.65067','-2.72231','1721','2022-03-27 20:32:10','2022-03-27 20:32:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1441','35','87','42.65067','-2.72231','1721','2022-03-27 20:32:13','2022-03-27 20:32:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1442','35','90','42.65067','-2.72231','1721','2022-03-27 20:32:16','2022-03-27 20:32:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1443','35','93','42.65067','-2.72231','1721','2022-03-27 20:32:19','2022-03-27 20:32:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1444','35','96','42.65067','-2.72231','1721','2022-03-27 20:32:22','2022-03-27 20:32:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1445','35','99','42.65067','-2.72231','1721','2022-03-27 20:32:25','2022-03-27 20:32:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1446','35','102','42.65067','-2.72231','1721','2022-03-27 20:32:28','2022-03-27 20:32:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1447','35','105','42.65067','-2.72231','1721','2022-03-27 20:32:31','2022-03-27 20:32:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1448','35','108','42.65067','-2.72231','1721','2022-03-27 20:32:34','2022-03-27 20:32:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1449','35','111','42.65067','-2.72231','1721','2022-03-27 20:32:37','2022-03-27 20:32:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1450','35','114','42.65067','-2.72231','1721','2022-03-27 20:32:40','2022-03-27 20:32:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1451','35','117','42.65067','-2.72231','1721','2022-03-27 20:32:43','2022-03-27 20:32:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1452','35','120','42.65067','-2.72231','1721','2022-03-27 20:32:46','2022-03-27 20:32:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1453','35','123','42.65067','-2.72231','1721','2022-03-27 20:32:49','2022-03-27 20:32:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1454','35','126','42.65067','-2.72231','1721','2022-03-27 20:32:52','2022-03-27 20:32:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1455','35','129','42.65067','-2.72231','1721','2022-03-27 20:32:55','2022-03-27 20:32:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1456','35','132','42.65067','-2.72231','1721','2022-03-27 20:32:58','2022-03-27 20:32:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1457','35','135','42.65067','-2.72231','1721','2022-03-27 20:33:01','2022-03-27 20:33:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1458','35','138','42.65067','-2.72231','1721','2022-03-27 20:33:04','2022-03-27 20:33:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1459','35','141','42.65067','-2.72231','1721','2022-03-27 20:33:07','2022-03-27 20:33:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1460','35','144','42.65067','-2.72231','1721','2022-03-27 20:33:10','2022-03-27 20:33:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1461','35','147','42.65067','-2.72231','1721','2022-03-27 20:33:13','2022-03-27 20:33:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1462','35','150','42.65067','-2.72231','1721','2022-03-27 20:33:16','2022-03-27 20:33:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1463','35','153','42.65067','-2.72231','1721','2022-03-27 20:33:19','2022-03-27 20:33:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1464','35','156','42.65067','-2.72231','1721','2022-03-27 20:33:22','2022-03-27 20:33:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1465','35','159','42.65067','-2.72231','1721','2022-03-27 20:33:25','2022-03-27 20:33:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1466','35','162','42.65067','-2.72231','1721','2022-03-27 20:33:28','2022-03-27 20:33:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1467','35','165','42.65067','-2.72231','1721','2022-03-27 20:33:31','2022-03-27 20:33:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1468','35','168','42.65037','-2.72273','1721','2022-03-27 20:33:34','2022-03-27 20:33:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1469','35','171','42.64763','-2.7219','1721','2022-03-27 20:33:37','2022-03-27 20:33:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1470','35','174','42.65401','-2.7108','1721','2022-03-27 20:33:40','2022-03-27 20:33:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1471','35','177','42.65401','-2.7108','1721','2022-03-27 20:33:43','2022-03-27 20:33:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1472','35','180','42.65401','-2.7108','1721','2022-03-27 20:33:46','2022-03-27 20:33:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1473','35','183','42.65401','-2.7108','1721','2022-03-27 20:33:49','2022-03-27 20:33:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1474','35','186','42.65401','-2.7108','1721','2022-03-27 20:33:52','2022-03-27 20:33:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1475','35','189','42.65401','-2.7108','1721','2022-03-27 20:33:55','2022-03-27 20:33:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1476','35','192','42.65401','-2.7108','1721','2022-03-27 20:33:58','2022-03-27 20:33:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1477','35','195','42.65401','-2.7108','1721','2022-03-27 20:34:01','2022-03-27 20:34:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1478','35','198','42.65401','-2.7108','1721','2022-03-27 20:34:04','2022-03-27 20:34:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1479','35','201','42.65401','-2.7108','1721','2022-03-27 20:34:07','2022-03-27 20:34:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1480','35','204','42.65401','-2.7108','1721','2022-03-27 20:34:10','2022-03-27 20:34:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1481','35','207','42.65401','-2.7108','1721','2022-03-27 20:34:13','2022-03-27 20:34:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1482','35','210','42.65401','-2.7108','1721','2022-03-27 20:34:16','2022-03-27 20:34:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1483','35','213','42.65401','-2.7108','1721','2022-03-27 20:34:19','2022-03-27 20:34:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1484','35','216','42.65401','-2.7108','1721','2022-03-27 20:34:22','2022-03-27 20:34:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1485','35','219','42.65401','-2.7108','1721','2022-03-27 20:34:25','2022-03-27 20:34:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1486','35','222','42.65401','-2.7108','1721','2022-03-27 20:34:28','2022-03-27 20:34:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1487','35','225','42.65401','-2.7108','1721','2022-03-27 20:34:31','2022-03-27 20:34:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1488','35','228','42.65401','-2.7108','1721','2022-03-27 20:34:34','2022-03-27 20:34:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1489','35','231','42.65401','-2.7108','1721','2022-03-27 20:34:37','2022-03-27 20:34:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1490','35','234','42.65401','-2.7108','1721','2022-03-27 20:34:40','2022-03-27 20:34:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1491','35','237','42.65401','-2.7108','1721','2022-03-27 20:34:43','2022-03-27 20:34:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1492','35','240','42.65401','-2.7108','1721','2022-03-27 20:34:46','2022-03-27 20:34:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1493','35','243','42.65401','-2.7108','1721','2022-03-27 20:34:49','2022-03-27 20:34:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1494','35','246','42.65401','-2.7108','1721','2022-03-27 20:34:52','2022-03-27 20:34:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1495','35','249','42.65401','-2.7108','1721','2022-03-27 20:34:55','2022-03-27 20:34:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1496','35','252','42.65401','-2.7108','1721','2022-03-27 20:34:58','2022-03-27 20:34:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1497','35','255','42.65401','-2.7108','1721','2022-03-27 20:35:01','2022-03-27 20:35:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1498','35','258','42.65401','-2.7108','1721','2022-03-27 20:35:04','2022-03-27 20:35:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1499','35','261','42.65401','-2.7108','1721','2022-03-27 20:35:07','2022-03-27 20:35:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1500','35','264','42.65401','-2.7108','1721','2022-03-27 20:35:10','2022-03-27 20:35:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1501','35','267','42.65401','-2.7108','1721','2022-03-27 20:35:13','2022-03-27 20:35:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1502','35','270','42.65401','-2.7108','1721','2022-03-27 20:35:16','2022-03-27 20:35:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1503','35','273','42.65401','-2.7108','1721','2022-03-27 20:35:19','2022-03-27 20:35:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1504','35','276','42.65401','-2.7108','1721','2022-03-27 20:35:22','2022-03-27 20:35:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1505','35','279','42.65401','-2.7108','1721','2022-03-27 20:35:25','2022-03-27 20:35:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1506','35','282','42.65401','-2.7108','1721','2022-03-27 20:35:28','2022-03-27 20:35:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1507','35','285','42.65401','-2.7108','1721','2022-03-27 20:35:31','2022-03-27 20:35:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1508','36','0','42.55703','-2.97282','101','2022-03-27 20:35:35','2022-03-27 20:35:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1509','37','0','42.64976','-3.02136','108','2022-03-27 20:37:48','2022-03-27 20:37:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1510','37','0','42.64976','-3.02136','1767','2022-03-27 20:38:17','2022-03-27 20:38:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1511','37','3','42.64976','-3.02136','1767','2022-03-27 20:38:20','2022-03-27 20:38:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1512','37','6','42.64976','-3.02136','1767','2022-03-27 20:38:23','2022-03-27 20:38:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1513','37','9','42.64976','-3.02136','1767','2022-03-27 20:38:26','2022-03-27 20:38:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1514','37','12','42.64976','-3.02136','1767','2022-03-27 20:38:29','2022-03-27 20:38:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1515','37','15','42.64976','-3.02136','1767','2022-03-27 20:38:32','2022-03-27 20:38:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1516','37','18','42.64976','-3.02136','1767','2022-03-27 20:38:35','2022-03-27 20:38:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1517','37','21','42.64976','-3.02136','1767','2022-03-27 20:38:38','2022-03-27 20:38:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1518','37','24','42.64976','-3.02136','1767','2022-03-27 20:38:41','2022-03-27 20:38:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1519','37','27','42.64976','-3.02136','1767','2022-03-27 20:38:44','2022-03-27 20:38:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1520','37','30','42.64976','-3.02136','1767','2022-03-27 20:38:47','2022-03-27 20:38:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1521','37','33','42.64976','-3.02136','1767','2022-03-27 20:38:50','2022-03-27 20:38:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1522','37','36','42.64976','-3.02136','1767','2022-03-27 20:38:53','2022-03-27 20:38:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1523','37','39','42.64976','-3.02136','1767','2022-03-27 20:38:56','2022-03-27 20:38:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1524','37','42','42.64976','-3.02136','1767','2022-03-27 20:38:59','2022-03-27 20:38:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1525','37','45','42.64976','-3.02136','1767','2022-03-27 20:39:02','2022-03-27 20:39:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1526','37','48','42.64976','-3.02136','1767','2022-03-27 20:39:05','2022-03-27 20:39:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1527','37','51','42.64976','-3.02136','1767','2022-03-27 20:39:08','2022-03-27 20:39:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1528','37','54','42.64976','-3.02136','1767','2022-03-27 20:39:11','2022-03-27 20:39:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1529','37','57','42.64976','-3.02136','1767','2022-03-27 20:39:14','2022-03-27 20:39:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1530','37','60','42.64976','-3.02136','1767','2022-03-27 20:39:17','2022-03-27 20:39:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1531','37','63','42.64976','-3.02136','1767','2022-03-27 20:39:20','2022-03-27 20:39:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1532','37','66','42.64976','-3.02136','1767','2022-03-27 20:39:23','2022-03-27 20:39:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1533','37','69','42.64976','-3.02136','1767','2022-03-27 20:39:26','2022-03-27 20:39:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1534','37','72','42.64976','-3.02136','1767','2022-03-27 20:39:29','2022-03-27 20:39:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1535','37','75','42.64976','-3.02136','1767','2022-03-27 20:39:32','2022-03-27 20:39:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1536','37','78','42.64976','-3.02136','1767','2022-03-27 20:39:35','2022-03-27 20:39:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1537','37','81','42.64976','-3.02136','1767','2022-03-27 20:39:38','2022-03-27 20:39:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1538','37','84','42.64976','-3.02136','1767','2022-03-27 20:39:41','2022-03-27 20:39:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1539','37','87','42.64976','-3.02136','1767','2022-03-27 20:39:44','2022-03-27 20:39:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1540','37','90','42.64976','-3.02136','1767','2022-03-27 20:39:47','2022-03-27 20:39:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1541','37','93','42.64976','-3.02136','1767','2022-03-27 20:39:50','2022-03-27 20:39:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1542','37','96','42.64976','-3.02136','1767','2022-03-27 20:39:53','2022-03-27 20:39:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1543','37','99','42.64976','-3.02136','1767','2022-03-27 20:39:56','2022-03-27 20:39:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1544','38','0','42.55703','-2.97282','101','2022-03-27 20:39:59','2022-03-27 20:39:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1545','38','0','42.55703','-2.97282','1721','2022-03-27 20:40:31','2022-03-27 20:40:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1546','38','3','42.55703','-2.97282','1721','2022-03-27 20:40:34','2022-03-27 20:40:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1547','38','6','42.55703','-2.97282','1721','2022-03-27 20:40:37','2022-03-27 20:40:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1548','38','9','42.55703','-2.97282','1721','2022-03-27 20:40:40','2022-03-27 20:40:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1549','38','12','42.55703','-2.97282','1721','2022-03-27 20:40:43','2022-03-27 20:40:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1550','38','15','42.55703','-2.97282','1721','2022-03-27 20:40:46','2022-03-27 20:40:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1551','38','18','42.55703','-2.97282','1721','2022-03-27 20:40:49','2022-03-27 20:40:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1552','38','21','42.55703','-2.97282','1721','2022-03-27 20:40:52','2022-03-27 20:40:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1553','38','24','42.55703','-2.97282','1721','2022-03-27 20:40:55','2022-03-27 20:40:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1554','38','27','42.55703','-2.97282','1721','2022-03-27 20:40:58','2022-03-27 20:40:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1555','38','30','42.55703','-2.97282','1721','2022-03-27 20:41:01','2022-03-27 20:41:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1556','38','33','42.55703','-2.97282','1721','2022-03-27 20:41:04','2022-03-27 20:41:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1557','38','36','42.55703','-2.97282','1721','2022-03-27 20:41:07','2022-03-27 20:41:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1558','38','39','42.55703','-2.97282','1721','2022-03-27 20:41:10','2022-03-27 20:41:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1559','38','42','42.55703','-2.97282','1721','2022-03-27 20:41:13','2022-03-27 20:41:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1560','38','45','42.55703','-2.97282','1721','2022-03-27 20:41:16','2022-03-27 20:41:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1561','38','48','42.55703','-2.97282','1721','2022-03-27 20:41:19','2022-03-27 20:41:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1562','38','51','42.55703','-2.97282','1721','2022-03-27 20:41:22','2022-03-27 20:41:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1563','38','54','42.55703','-2.97282','1721','2022-03-27 20:41:25','2022-03-27 20:41:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1564','38','57','42.55703','-2.97282','1721','2022-03-27 20:41:28','2022-03-27 20:41:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1565','38','60','42.55703','-2.97282','1721','2022-03-27 20:41:31','2022-03-27 20:41:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1566','38','63','42.55703','-2.97282','1721','2022-03-27 20:41:34','2022-03-27 20:41:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1567','38','66','42.55703','-2.97282','1721','2022-03-27 20:41:37','2022-03-27 20:41:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1568','38','69','42.55703','-2.97282','1721','2022-03-27 20:41:40','2022-03-27 20:41:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1569','38','72','42.55703','-2.97282','1721','2022-03-27 20:41:43','2022-03-27 20:41:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1570','38','75','42.55703','-2.97282','1721','2022-03-27 20:41:46','2022-03-27 20:41:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1571','38','78','42.55703','-2.97282','1721','2022-03-27 20:41:49','2022-03-27 20:41:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1572','38','81','42.55703','-2.97282','1721','2022-03-27 20:41:52','2022-03-27 20:41:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1573','38','84','42.55703','-2.97282','1721','2022-03-27 20:41:55','2022-03-27 20:41:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1574','38','87','42.55703','-2.97282','1721','2022-03-27 20:41:58','2022-03-27 20:41:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1575','38','90','42.55703','-2.97282','1721','2022-03-27 20:42:01','2022-03-27 20:42:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1576','38','93','42.55703','-2.97282','1721','2022-03-27 20:42:04','2022-03-27 20:42:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1577','38','96','42.55703','-2.97282','1721','2022-03-27 20:42:07','2022-03-27 20:42:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1578','38','99','42.55703','-2.97282','1721','2022-03-27 20:42:10','2022-03-27 20:42:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1579','38','102','42.55703','-2.97282','1721','2022-03-27 20:42:13','2022-03-27 20:42:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1580','38','105','42.55703','-2.97282','1721','2022-03-27 20:42:16','2022-03-27 20:42:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1581','38','108','42.55703','-2.97282','1721','2022-03-27 20:42:19','2022-03-27 20:42:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1582','38','111','42.55703','-2.97282','1721','2022-03-27 20:42:22','2022-03-27 20:42:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1583','38','114','42.55703','-2.97282','1721','2022-03-27 20:42:25','2022-03-27 20:42:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1584','38','117','42.55703','-2.97282','1721','2022-03-27 20:42:28','2022-03-27 20:42:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1585','38','120','42.55703','-2.97282','1721','2022-03-27 20:42:31','2022-03-27 20:42:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1586','38','123','42.55703','-2.97282','1721','2022-03-27 20:42:34','2022-03-27 20:42:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1587','38','126','42.55703','-2.97282','1721','2022-03-27 20:42:37','2022-03-27 20:42:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1588','38','129','42.55703','-2.97282','1721','2022-03-27 20:42:40','2022-03-27 20:42:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1589','38','132','42.55703','-2.97282','1721','2022-03-27 20:42:43','2022-03-27 20:42:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1590','38','135','42.55703','-2.97282','1721','2022-03-27 20:42:46','2022-03-27 20:42:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1591','38','138','42.55703','-2.97282','1721','2022-03-27 20:42:49','2022-03-27 20:42:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1592','38','141','42.55703','-2.97282','1721','2022-03-27 20:42:52','2022-03-27 20:42:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1593','38','144','42.55703','-2.97282','1721','2022-03-27 20:42:55','2022-03-27 20:42:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1594','38','147','42.55703','-2.97282','1721','2022-03-27 20:42:58','2022-03-27 20:42:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1595','38','150','42.55703','-2.97282','1721','2022-03-27 20:43:01','2022-03-27 20:43:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1596','38','153','42.55703','-2.97282','1721','2022-03-27 20:43:04','2022-03-27 20:43:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1597','38','156','42.55703','-2.97282','1721','2022-03-27 20:43:07','2022-03-27 20:43:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1598','38','159','42.55703','-2.97282','1721','2022-03-27 20:43:10','2022-03-27 20:43:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1599','38','162','42.55703','-2.97282','1721','2022-03-27 20:43:13','2022-03-27 20:43:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1600','38','165','42.55703','-2.97282','1721','2022-03-27 20:43:16','2022-03-27 20:43:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1601','38','168','42.55703','-2.97282','1721','2022-03-27 20:43:19','2022-03-27 20:43:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1602','38','171','42.55703','-2.97282','1721','2022-03-27 20:43:22','2022-03-27 20:43:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1603','38','174','42.55703','-2.97282','1721','2022-03-27 20:43:25','2022-03-27 20:43:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1604','38','177','42.55703','-2.97282','1721','2022-03-27 20:43:28','2022-03-27 20:43:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1605','38','180','42.55703','-2.97282','1721','2022-03-27 20:43:31','2022-03-27 20:43:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1606','38','183','42.55703','-2.97282','1721','2022-03-27 20:43:34','2022-03-27 20:43:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1607','38','186','42.55703','-2.97282','1721','2022-03-27 20:43:37','2022-03-27 20:43:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1608','38','189','42.55703','-2.97282','1721','2022-03-27 20:43:40','2022-03-27 20:43:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1609','38','192','42.55703','-2.97282','1721','2022-03-27 20:43:43','2022-03-27 20:43:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1610','38','195','42.55703','-2.97282','1721','2022-03-27 20:43:46','2022-03-27 20:43:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1611','38','198','42.55703','-2.97282','1721','2022-03-27 20:43:49','2022-03-27 20:43:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1612','38','201','42.55703','-2.97282','1721','2022-03-27 20:43:52','2022-03-27 20:43:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1613','38','204','42.55703','-2.97282','1721','2022-03-27 20:43:55','2022-03-27 20:43:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1614','38','207','42.55703','-2.97282','1721','2022-03-27 20:43:58','2022-03-27 20:43:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1615','38','210','42.55703','-2.97282','1721','2022-03-27 20:44:01','2022-03-27 20:44:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1616','38','213','42.55703','-2.97282','1721','2022-03-27 20:44:04','2022-03-27 20:44:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1617','38','216','42.55703','-2.97282','1721','2022-03-27 20:44:07','2022-03-27 20:44:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1618','38','219','42.55703','-2.97282','1721','2022-03-27 20:44:10','2022-03-27 20:44:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1619','38','222','42.55703','-2.97282','1721','2022-03-27 20:44:13','2022-03-27 20:44:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1620','38','225','42.55703','-2.97282','1721','2022-03-27 20:44:16','2022-03-27 20:44:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1621','38','228','42.55703','-2.97282','1721','2022-03-27 20:44:19','2022-03-27 20:44:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1622','38','231','42.55703','-2.97282','1721','2022-03-27 20:44:22','2022-03-27 20:44:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1623','38','234','42.55703','-2.97282','1721','2022-03-27 20:44:25','2022-03-27 20:44:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1624','38','237','42.55703','-2.97282','1721','2022-03-27 20:44:28','2022-03-27 20:44:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1625','38','240','42.55703','-2.97282','1721','2022-03-27 20:44:31','2022-03-27 20:44:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1626','38','243','42.55703','-2.97282','1721','2022-03-27 20:44:34','2022-03-27 20:44:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1627','38','246','42.55703','-2.97282','1721','2022-03-27 20:44:37','2022-03-27 20:44:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1628','38','249','42.55703','-2.97282','1721','2022-03-27 20:44:40','2022-03-27 20:44:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1629','38','252','42.55703','-2.97282','1721','2022-03-27 20:44:43','2022-03-27 20:44:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1630','38','255','42.55703','-2.97282','1721','2022-03-27 20:44:46','2022-03-27 20:44:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1631','38','258','42.55703','-2.97282','1721','2022-03-27 20:44:49','2022-03-27 20:44:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1632','38','261','42.55703','-2.97282','1721','2022-03-27 20:44:52','2022-03-27 20:44:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1633','38','264','42.55703','-2.97282','1721','2022-03-27 20:44:55','2022-03-27 20:44:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1634','38','267','42.55703','-2.97282','1721','2022-03-27 20:44:58','2022-03-27 20:44:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1635','38','270','42.55703','-2.97282','1721','2022-03-27 20:45:01','2022-03-27 20:45:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1636','38','273','42.55703','-2.97282','1721','2022-03-27 20:45:04','2022-03-27 20:45:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1637','38','276','42.55703','-2.97282','1721','2022-03-27 20:45:07','2022-03-27 20:45:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1638','38','279','42.55703','-2.97282','1721','2022-03-27 20:45:10','2022-03-27 20:45:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1639','38','282','42.55703','-2.97282','1721','2022-03-27 20:45:13','2022-03-27 20:45:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1640','38','285','42.55703','-2.97282','1721','2022-03-27 20:45:16','2022-03-27 20:45:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1641','38','288','42.55703','-2.97282','1721','2022-03-27 20:45:19','2022-03-27 20:45:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1642','38','291','42.55703','-2.97282','1721','2022-03-27 20:45:22','2022-03-27 20:45:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1643','38','294','42.55703','-2.97282','1721','2022-03-27 20:45:25','2022-03-27 20:45:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1644','38','297','42.55703','-2.97282','1721','2022-03-27 20:45:28','2022-03-27 20:45:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1645','38','300','42.55703','-2.97282','1721','2022-03-27 20:45:31','2022-03-27 20:45:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1646','38','303','42.55703','-2.97282','1721','2022-03-27 20:45:34','2022-03-27 20:45:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1647','39','0','42.55703','-2.97282','101','2022-03-27 20:45:37','2022-03-27 20:45:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1648','39','0','42.55703','-2.97282','1721','2022-03-27 20:46:16','2022-03-27 20:46:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1649','39','3','42.55703','-2.97282','1721','2022-03-27 20:46:19','2022-03-27 20:46:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1650','39','6','42.55703','-2.97282','1721','2022-03-27 20:46:22','2022-03-27 20:46:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1651','40','0','42.55703','-2.97282','101','2022-03-27 20:46:24','2022-03-27 20:46:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1652','42','0','42.55703','-2.97282','101','2022-03-29 14:35:19','2022-03-29 14:35:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1653','42','0','42.55703','-2.97282','1721','2022-03-29 14:35:40','2022-03-29 14:35:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1654','42','3','42.55703','-2.97282','1721','2022-03-29 14:35:43','2022-03-29 14:35:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1655','42','6','42.55703','-2.97282','1721','2022-03-29 14:35:46','2022-03-29 14:35:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1656','42','9','42.55703','-2.97282','1721','2022-03-29 14:35:49','2022-03-29 14:35:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1657','42','12','42.55703','-2.97282','1721','2022-03-29 14:35:52','2022-03-29 14:35:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1658','42','15','42.55703','-2.97282','1721','2022-03-29 14:35:55','2022-03-29 14:35:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1659','42','18','42.55703','-2.97282','1721','2022-03-29 14:35:58','2022-03-29 14:35:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1660','42','21','42.55703','-2.97282','1721','2022-03-29 14:36:01','2022-03-29 14:36:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1661','42','24','42.55703','-2.97323','1721','2022-03-29 14:36:04','2022-03-29 14:36:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1662','42','27','42.56038','-2.97323','1721','2022-03-29 14:36:07','2022-03-29 14:36:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1663','42','30','42.56463','-2.97323','1721','2022-03-29 14:36:10','2022-03-29 14:36:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1664','42','33','42.56372','-2.97323','1721','2022-03-29 14:36:13','2022-03-29 14:36:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1665','42','36','42.56403','-2.97611','1721','2022-03-29 14:36:16','2022-03-29 14:36:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1666','42','39','42.56403','-3.01025','1721','2022-03-29 14:36:19','2022-03-29 14:36:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1667','42','42','42.56403','-3.01642','1721','2022-03-29 14:36:22','2022-03-29 14:36:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1668','42','45','42.56403','-3.03493','1721','2022-03-29 14:36:25','2022-03-29 14:36:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1669','42','48','42.56403','-3.03493','1721','2022-03-29 14:36:28','2022-03-29 14:36:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1670','42','51','42.56403','-3.03493','1721','2022-03-29 14:36:31','2022-03-29 14:36:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1671','42','54','42.56403','-3.03493','1721','2022-03-29 14:36:34','2022-03-29 14:36:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1672','42','57','42.56403','-3.03493','1721','2022-03-29 14:36:37','2022-03-29 14:36:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1673','42','60','42.56403','-3.03493','1721','2022-03-29 14:36:40','2022-03-29 14:36:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1674','42','63','42.56403','-3.03493','1721','2022-03-29 14:36:43','2022-03-29 14:36:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1675','42','66','42.56433','-3.03493','1721','2022-03-29 14:36:46','2022-03-29 14:36:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1676','42','69','42.56585','-3.03493','1721','2022-03-29 14:36:49','2022-03-29 14:36:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1677','42','72','42.56555','-3.03493','1721','2022-03-29 14:36:52','2022-03-29 14:36:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1678','42','75','42.56524','-3.03534','1721','2022-03-29 14:36:55','2022-03-29 14:36:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1679','42','78','42.56463','-3.03658','1721','2022-03-29 14:36:58','2022-03-29 14:36:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1680','42','81','42.56463','-3.03658','1721','2022-03-29 14:37:01','2022-03-29 14:37:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1681','42','84','42.56463','-3.03658','1721','2022-03-29 14:37:04','2022-03-29 14:37:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1682','42','87','42.56463','-3.03658','1721','2022-03-29 14:37:07','2022-03-29 14:37:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1683','42','90','42.56463','-3.03658','1721','2022-03-29 14:37:10','2022-03-29 14:37:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1684','42','93','42.56463','-3.03658','1721','2022-03-29 14:37:13','2022-03-29 14:37:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1685','42','96','42.56463','-3.03658','1721','2022-03-29 14:37:16','2022-03-29 14:37:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1686','42','99','42.56463','-3.03658','1721','2022-03-29 14:37:19','2022-03-29 14:37:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1687','42','102','42.56433','-3.0374','1721','2022-03-29 14:37:22','2022-03-29 14:37:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1688','42','105','42.56342','-3.03904','1721','2022-03-29 14:37:25','2022-03-29 14:37:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1689','42','108','42.56372','-3.03904','1721','2022-03-29 14:37:28','2022-03-29 14:37:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1690','42','111','42.56372','-3.03863','1721','2022-03-29 14:37:31','2022-03-29 14:37:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1691','42','114','42.56372','-3.03863','1721','2022-03-29 14:37:34','2022-03-29 14:37:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1692','42','117','42.56372','-3.03863','1721','2022-03-29 14:37:37','2022-03-29 14:37:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1693','42','120','42.56372','-3.03863','1721','2022-03-29 14:37:40','2022-03-29 14:37:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1694','42','123','42.56372','-3.03863','1721','2022-03-29 14:37:43','2022-03-29 14:37:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1695','42','126','42.56372','-3.03863','1721','2022-03-29 14:37:46','2022-03-29 14:37:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1696','42','129','42.56372','-3.03863','1721','2022-03-29 14:37:49','2022-03-29 14:37:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1697','42','132','42.56372','-3.03863','1721','2022-03-29 14:37:52','2022-03-29 14:37:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1698','42','135','42.56372','-3.03863','1721','2022-03-29 14:37:55','2022-03-29 14:37:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1699','42','138','42.56372','-3.03863','1721','2022-03-29 14:37:58','2022-03-29 14:37:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1700','42','141','42.56372','-3.03863','1721','2022-03-29 14:38:01','2022-03-29 14:38:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1701','42','144','42.56372','-3.03863','1721','2022-03-29 14:38:04','2022-03-29 14:38:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1702','42','147','42.56372','-3.03863','1721','2022-03-29 14:38:07','2022-03-29 14:38:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1703','42','150','42.56372','-3.03863','1721','2022-03-29 14:38:10','2022-03-29 14:38:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1704','42','153','42.56372','-3.03863','1721','2022-03-29 14:38:13','2022-03-29 14:38:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1705','42','156','42.56372','-3.03863','1721','2022-03-29 14:38:16','2022-03-29 14:38:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1706','42','159','42.56372','-3.03863','1721','2022-03-29 14:38:19','2022-03-29 14:38:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1707','42','162','42.56372','-3.03863','1721','2022-03-29 14:38:22','2022-03-29 14:38:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1708','42','165','42.56372','-3.03863','1721','2022-03-29 14:38:25','2022-03-29 14:38:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1709','42','168','42.56372','-3.03863','1721','2022-03-29 14:38:28','2022-03-29 14:38:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1710','42','171','42.56372','-3.03863','1721','2022-03-29 14:38:31','2022-03-29 14:38:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1711','42','174','42.56372','-3.03863','1721','2022-03-29 14:38:34','2022-03-29 14:38:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1712','42','177','42.56372','-3.03863','1721','2022-03-29 14:38:37','2022-03-29 14:38:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1713','42','180','42.56372','-3.03863','1721','2022-03-29 14:38:40','2022-03-29 14:38:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1714','42','183','42.56372','-3.03863','1721','2022-03-29 14:38:43','2022-03-29 14:38:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1715','42','186','42.56372','-3.03863','1721','2022-03-29 14:38:46','2022-03-29 14:38:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1716','43','0','42.59321','-2.91934','100','2022-03-29 14:41:25','2022-03-29 14:41:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1717','43','0','42.56372','-3.03863','1721','2022-03-29 14:41:28','2022-03-29 14:41:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1718','43','3','42.56372','-3.03863','1721','2022-03-29 14:41:31','2022-03-29 14:41:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1719','43','6','42.56372','-3.03863','1721','2022-03-29 14:41:34','2022-03-29 14:41:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1720','43','9','42.56372','-3.03863','1721','2022-03-29 14:41:37','2022-03-29 14:41:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1721','43','12','42.56372','-3.03863','1721','2022-03-29 14:41:40','2022-03-29 14:41:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1722','43','15','42.56372','-3.03863','1721','2022-03-29 14:41:43','2022-03-29 14:41:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1723','43','18','42.59321','-2.91934','1718','2022-03-29 14:41:46','2022-03-29 14:41:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1724','43','21','42.59321','-2.91934','1718','2022-03-29 14:41:49','2022-03-29 14:41:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1725','43','24','42.59321','-2.91934','1718','2022-03-29 14:41:52','2022-03-29 14:41:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1726','43','27','42.59321','-2.91934','1718','2022-03-29 14:41:55','2022-03-29 14:41:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1727','43','30','42.59321','-2.91934','1718','2022-03-29 14:41:58','2022-03-29 14:41:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1728','43','33','42.59321','-2.91934','1718','2022-03-29 14:42:01','2022-03-29 14:42:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1729','43','36','42.61115','-2.91934','1718','2022-03-29 14:42:04','2022-03-29 14:42:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1730','43','39','42.60264','-2.91934','1718','2022-03-29 14:42:07','2022-03-29 14:42:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1731','43','42','42.59595','-2.91934','1718','2022-03-29 14:42:10','2022-03-29 14:42:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1732','43','45','42.58987','-2.91934','1718','2022-03-29 14:42:13','2022-03-29 14:42:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1733','43','48','42.59625','-2.91934','1718','2022-03-29 14:42:16','2022-03-29 14:42:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1734','43','51','42.59625','-2.91893','1718','2022-03-29 14:42:19','2022-03-29 14:42:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1735','43','54','42.59625','-2.88438','1718','2022-03-29 14:42:22','2022-03-29 14:42:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1736','43','57','42.59625','-2.84695','1718','2022-03-29 14:42:25','2022-03-29 14:42:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1737','43','60','42.585','-2.83667','1718','2022-03-29 14:42:28','2022-03-29 14:42:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1738','43','63','42.57801','-2.84407','1718','2022-03-29 14:42:31','2022-03-29 14:42:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1739','43','66','42.5771','-2.85024','1718','2022-03-29 14:42:34','2022-03-29 14:42:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1740','43','69','42.5771','-2.85024','1718','2022-03-29 14:42:37','2022-03-29 14:42:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1741','43','72','42.5771','-2.85024','1718','2022-03-29 14:42:40','2022-03-29 14:42:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1742','43','75','42.5771','-2.85024','1718','2022-03-29 14:42:43','2022-03-29 14:42:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1743','43','78','42.5771','-2.85024','1718','2022-03-29 14:42:47','2022-03-29 14:42:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1744','43','81','42.5771','-2.85024','1718','2022-03-29 14:42:50','2022-03-29 14:42:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1745','43','84','42.5771','-2.85024','1718','2022-03-29 14:42:52','2022-03-29 14:42:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1746','44','0','42.55703','-2.97282','101','2022-03-29 14:42:54','2022-03-29 14:42:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1747','44','0','42.55703','-2.97282','1721','2022-03-29 14:43:15','2022-03-29 14:43:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1748','44','3','42.55703','-2.97282','1721','2022-03-29 14:43:18','2022-03-29 14:43:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1749','44','6','42.55703','-2.97282','1721','2022-03-29 14:43:21','2022-03-29 14:43:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1750','44','9','42.55703','-2.97282','1721','2022-03-29 14:43:24','2022-03-29 14:43:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1751','44','12','42.57223','-2.97282','1721','2022-03-29 14:43:27','2022-03-29 14:43:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1752','44','15','42.5999','-2.97282','1721','2022-03-29 14:43:30','2022-03-29 14:43:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1753','44','18','42.62726','-2.97282','1721','2022-03-29 14:43:33','2022-03-29 14:43:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1754','44','21','42.63213','-2.95678','1721','2022-03-29 14:43:36','2022-03-29 14:43:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1755','44','24','42.63213','-2.92963','1721','2022-03-29 14:43:39','2022-03-29 14:43:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1756','44','27','42.63213','-2.8922','1721','2022-03-29 14:43:42','2022-03-29 14:43:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1757','44','30','42.63213','-2.85477','1721','2022-03-29 14:43:45','2022-03-29 14:43:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1758','44','33','42.62209','-2.85147','1721','2022-03-29 14:43:48','2022-03-29 14:43:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1759','44','36','42.59443','-2.85147','1721','2022-03-29 14:43:51','2022-03-29 14:43:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1760','44','39','42.5926','-2.85147','1721','2022-03-29 14:43:54','2022-03-29 14:43:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1761','44','42','42.5926','-2.85147','1721','2022-03-29 14:43:57','2022-03-29 14:43:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1762','44','45','42.5926','-2.83996','1721','2022-03-29 14:44:00','2022-03-29 14:44:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1763','44','48','42.5926','-2.83996','1721','2022-03-29 14:44:03','2022-03-29 14:44:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1764','44','51','42.5926','-2.83996','1721','2022-03-29 14:44:06','2022-03-29 14:44:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1765','44','54','42.5926','-2.82721','1721','2022-03-29 14:44:09','2022-03-29 14:44:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1766','44','57','42.5926','-2.79019','1721','2022-03-29 14:44:12','2022-03-29 14:44:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1767','44','60','42.6148','-2.79019','1721','2022-03-29 14:44:15','2022-03-29 14:44:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1768','44','63','42.6151','-2.78525','1721','2022-03-29 14:44:18','2022-03-29 14:44:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1769','44','66','42.62027','-2.78525','1721','2022-03-29 14:44:21','2022-03-29 14:44:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1770','44','69','42.64368','-2.78525','1721','2022-03-29 14:44:24','2022-03-29 14:44:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1771','44','72','42.65736','-2.78525','1721','2022-03-29 14:44:27','2022-03-29 14:44:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1772','44','75','42.66739','-2.78525','1721','2022-03-29 14:44:30','2022-03-29 14:44:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1773','44','78','42.68016','-2.78525','1721','2022-03-29 14:44:33','2022-03-29 14:44:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1774','44','81','42.70357','-2.78525','1721','2022-03-29 14:44:36','2022-03-29 14:44:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1775','44','84','42.68138','-2.78525','1721','2022-03-29 14:44:39','2022-03-29 14:44:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1776','44','87','42.61449','-2.85929','1721','2022-03-29 14:44:42','2022-03-29 14:44:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1777','44','90','42.63881','-2.83461','1721','2022-03-29 14:44:45','2022-03-29 14:44:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1778','44','93','42.63881','-2.83461','1721','2022-03-29 14:44:48','2022-03-29 14:44:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1779','44','96','42.63881','-2.83461','1721','2022-03-29 14:44:51','2022-03-29 14:44:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1780','44','99','42.6376','-2.83461','1721','2022-03-29 14:44:54','2022-03-29 14:44:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1781','44','102','42.61692','-2.83461','1721','2022-03-29 14:44:57','2022-03-29 14:44:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1782','44','105','42.62909','-2.83461','1721','2022-03-29 14:45:00','2022-03-29 14:45:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1783','44','108','42.6227','-2.83461','1721','2022-03-29 14:45:03','2022-03-29 14:45:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1784','44','111','42.61054','-2.83461','1721','2022-03-29 14:45:06','2022-03-29 14:45:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1785','44','114','42.58287','-2.83461','1721','2022-03-29 14:45:09','2022-03-29 14:45:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1786','44','117','42.5622','-2.83461','1721','2022-03-29 14:45:12','2022-03-29 14:45:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1787','44','120','42.53484','-2.83461','1721','2022-03-29 14:45:15','2022-03-29 14:45:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1788','44','123','42.50717','-2.83461','1721','2022-03-29 14:45:18','2022-03-29 14:45:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1789','44','126','42.47951','-2.83461','1721','2022-03-29 14:45:21','2022-03-29 14:45:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1790','44','129','42.45184','-2.83461','1721','2022-03-29 14:45:24','2022-03-29 14:45:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1791','44','132','42.43117','-2.83461','1721','2022-03-29 14:45:27','2022-03-29 14:45:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1792','44','135','42.4035','-2.83461','1721','2022-03-29 14:45:30','2022-03-29 14:45:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1793','44','138','42.38921','-2.83461','1721','2022-03-29 14:45:33','2022-03-29 14:45:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1794','44','141','42.38253','-2.84284','1721','2022-03-29 14:45:36','2022-03-29 14:45:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1795','44','144','42.3278','-2.96706','1721','2022-03-29 14:45:39','2022-03-29 14:45:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1796','44','147','42.3278','-2.99339','1721','2022-03-29 14:45:42','2022-03-29 14:45:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1797','44','150','42.3278','-3.00984','1721','2022-03-29 14:45:45','2022-03-29 14:45:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1798','44','153','42.3278','-3.00984','1721','2022-03-29 14:45:48','2022-03-29 14:45:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1799','44','156','42.3278','-3.00984','1721','2022-03-29 14:45:51','2022-03-29 14:45:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1800','44','159','42.3278','-3.00984','1721','2022-03-29 14:45:54','2022-03-29 14:45:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1801','44','162','42.3278','-3.00984','1721','2022-03-29 14:45:57','2022-03-29 14:45:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1802','44','165','42.3278','-3.00984','1721','2022-03-29 14:46:00','2022-03-29 14:46:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1803','44','168','42.3278','-3.00984','1721','2022-03-29 14:46:03','2022-03-29 14:46:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1804','44','171','42.3278','-3.00984','1721','2022-03-29 14:46:06','2022-03-29 14:46:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1805','44','174','42.3278','-3.00984','1721','2022-03-29 14:46:09','2022-03-29 14:46:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1806','44','177','42.32841','-3.00984','1721','2022-03-29 14:46:12','2022-03-29 14:46:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1807','44','180','42.35577','-3.00984','1721','2022-03-29 14:46:15','2022-03-29 14:46:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1808','44','183','42.38344','-3.00984','1721','2022-03-29 14:46:18','2022-03-29 14:46:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1809','44','186','42.4111','-3.00984','1721','2022-03-29 14:46:21','2022-03-29 14:46:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1810','44','189','42.43877','-3.00984','1721','2022-03-29 14:46:24','2022-03-29 14:46:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1811','44','192','42.38526','-3.00984','1721','2022-03-29 14:46:27','2022-03-29 14:46:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1812','44','195','42.62848','-2.89466','1721','2022-03-29 14:46:30','2022-03-29 14:46:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1813','44','198','42.62848','-2.85312','1721','2022-03-29 14:46:33','2022-03-29 14:46:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1814','44','201','42.63942','-2.85271','1721','2022-03-29 14:46:36','2022-03-29 14:46:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1815','44','204','42.63942','-2.8342','1721','2022-03-29 14:46:39','2022-03-29 14:46:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1816','44','207','42.63061','-2.8342','1721','2022-03-29 14:46:42','2022-03-29 14:46:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1817','44','210','42.63061','-2.8342','1721','2022-03-29 14:46:45','2022-03-29 14:46:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1818','44','213','42.62392','-2.8342','1721','2022-03-29 14:46:48','2022-03-29 14:46:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1819','44','216','42.62392','-2.8342','1721','2022-03-29 14:46:51','2022-03-29 14:46:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1820','44','219','42.62635','-2.8342','1721','2022-03-29 14:46:54','2022-03-29 14:46:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1821','44','222','42.62635','-2.8342','1721','2022-03-29 14:46:57','2022-03-29 14:46:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1822','44','225','42.62635','-2.8342','1721','2022-03-29 14:47:00','2022-03-29 14:47:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1823','45','0','42.55703','-2.97282','101','2022-03-29 14:47:04','2022-03-29 14:47:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1824','45','0','42.55703','-2.97282','1721','2022-03-29 14:47:27','2022-03-29 14:47:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1825','45','3','42.55703','-2.97282','1721','2022-03-29 14:47:30','2022-03-29 14:47:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1826','45','6','42.55703','-2.97282','1721','2022-03-29 14:47:33','2022-03-29 14:47:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1827','45','9','42.57011','-2.97282','1721','2022-03-29 14:47:36','2022-03-29 14:47:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1828','45','12','42.59777','-2.97282','1721','2022-03-29 14:47:39','2022-03-29 14:47:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1829','45','15','42.61936','-2.97282','1721','2022-03-29 14:47:42','2022-03-29 14:47:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1830','45','18','42.62696','-2.95924','1721','2022-03-29 14:47:45','2022-03-29 14:47:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1831','45','21','42.62696','-2.92181','1721','2022-03-29 14:47:48','2022-03-29 14:47:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1832','45','24','42.62696','-2.88479','1721','2022-03-29 14:47:51','2022-03-29 14:47:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1833','45','27','42.62696','-2.84695','1721','2022-03-29 14:47:54','2022-03-29 14:47:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1834','45','30','42.62696','-2.84325','1721','2022-03-29 14:47:57','2022-03-29 14:47:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1835','45','33','42.62696','-2.84325','1721','2022-03-29 14:48:00','2022-03-29 14:48:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1836','45','36','42.62696','-2.84366','1721','2022-03-29 14:48:03','2022-03-29 14:48:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1837','45','39','42.62696','-2.83008','1721','2022-03-29 14:48:06','2022-03-29 14:48:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1838','45','42','42.62696','-2.83008','1721','2022-03-29 14:48:09','2022-03-29 14:48:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1839','45','45','42.62696','-2.82556','1721','2022-03-29 14:48:12','2022-03-29 14:48:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1840','45','48','42.62665','-2.80787','1721','2022-03-29 14:48:15','2022-03-29 14:48:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1841','45','51','42.64003','-2.80787','1721','2022-03-29 14:48:18','2022-03-29 14:48:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1842','45','54','42.64185','-2.80088','1721','2022-03-29 14:48:21','2022-03-29 14:48:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1843','45','57','42.64185','-2.76345','1721','2022-03-29 14:48:24','2022-03-29 14:48:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1844','45','60','42.64185','-2.73548','1721','2022-03-29 14:48:27','2022-03-29 14:48:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1845','45','63','42.64185','-2.76674','1721','2022-03-29 14:48:30','2022-03-29 14:48:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1846','45','66','42.64185','-2.80417','1721','2022-03-29 14:48:33','2022-03-29 14:48:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1847','45','69','42.62939','-2.80746','1721','2022-03-29 14:48:36','2022-03-29 14:48:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1848','45','72','42.60507','-2.83214','1721','2022-03-29 14:48:39','2022-03-29 14:48:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1849','45','75','42.57467','-2.81569','1721','2022-03-29 14:48:42','2022-03-29 14:48:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1850','45','78','42.55642','-2.82391','1721','2022-03-29 14:48:45','2022-03-29 14:48:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1851','45','81','42.55642','-2.82391','1721','2022-03-29 14:48:48','2022-03-29 14:48:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1852','45','84','42.55642','-2.82391','1721','2022-03-29 14:48:51','2022-03-29 14:48:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1853','45','87','42.55642','-2.82391','1721','2022-03-29 14:48:54','2022-03-29 14:48:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1854','45','90','42.55278','-2.82926','1721','2022-03-29 14:48:57','2022-03-29 14:48:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1855','45','93','42.55278','-2.86423','1721','2022-03-29 14:49:00','2022-03-29 14:49:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1856','45','96','42.55217','-2.86793','1721','2022-03-29 14:49:03','2022-03-29 14:49:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1857','45','99','42.57102','-2.87245','1721','2022-03-29 14:49:06','2022-03-29 14:49:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1858','45','102','42.57102','-2.84119','1721','2022-03-29 14:49:09','2022-03-29 14:49:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1859','45','105','42.57102','-2.84037','1721','2022-03-29 14:49:12','2022-03-29 14:49:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1860','45','108','42.56919','-2.84037','1721','2022-03-29 14:49:15','2022-03-29 14:49:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1861','45','111','42.56403','-2.81569','1721','2022-03-29 14:49:18','2022-03-29 14:49:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1862','45','114','42.56403','-2.81528','1721','2022-03-29 14:49:21','2022-03-29 14:49:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1863','45','117','42.56403','-2.81528','1721','2022-03-29 14:49:24','2022-03-29 14:49:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1864','45','120','42.56403','-2.81528','1721','2022-03-29 14:49:27','2022-03-29 14:49:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1865','45','123','42.56372','-2.83667','1721','2022-03-29 14:49:30','2022-03-29 14:49:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1866','45','126','42.56372','-2.86464','1721','2022-03-29 14:49:33','2022-03-29 14:49:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1867','45','129','42.56828','-2.86875','1721','2022-03-29 14:49:36','2022-03-29 14:49:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1868','45','132','42.57436','-2.86875','1721','2022-03-29 14:49:39','2022-03-29 14:49:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1869','45','135','42.58257','-2.85764','1721','2022-03-29 14:49:42','2022-03-29 14:49:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1870','45','138','42.58287','-2.84777','1721','2022-03-29 14:49:45','2022-03-29 14:49:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1871','45','141','42.60872','-2.84777','1721','2022-03-29 14:49:48','2022-03-29 14:49:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1872','45','144','42.63','-2.84777','1721','2022-03-29 14:49:51','2022-03-29 14:49:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1873','45','147','42.60355','-2.84777','1721','2022-03-29 14:49:54','2022-03-29 14:49:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1874','45','150','42.57619','-2.84777','1721','2022-03-29 14:49:57','2022-03-29 14:49:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1875','45','153','42.54852','-2.84777','1721','2022-03-29 14:50:00','2022-03-29 14:50:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1876','45','156','42.53089','-2.84777','1721','2022-03-29 14:50:03','2022-03-29 14:50:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1877','45','159','42.53089','-2.84777','1721','2022-03-29 14:50:06','2022-03-29 14:50:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1878','45','162','42.53089','-2.8634','1721','2022-03-29 14:50:09','2022-03-29 14:50:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1879','45','165','42.53089','-2.90083','1721','2022-03-29 14:50:12','2022-03-29 14:50:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1880','45','168','42.53089','-2.93827','1721','2022-03-29 14:50:15','2022-03-29 14:50:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1881','45','171','42.53089','-2.9757','1721','2022-03-29 14:50:18','2022-03-29 14:50:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1882','45','174','42.53089','-3.01272','1721','2022-03-29 14:50:21','2022-03-29 14:50:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1883','45','177','42.53089','-3.01395','1721','2022-03-29 14:50:24','2022-03-29 14:50:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1884','45','180','42.53089','-3.01436','1721','2022-03-29 14:50:27','2022-03-29 14:50:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1885','45','183','42.53119','-3.0411','1721','2022-03-29 14:50:30','2022-03-29 14:50:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1886','45','186','42.54183','-3.04933','1721','2022-03-29 14:50:33','2022-03-29 14:50:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1887','45','189','42.547','-3.05591','1721','2022-03-29 14:50:36','2022-03-29 14:50:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1888','45','192','42.547','-3.05591','1721','2022-03-29 14:50:39','2022-03-29 14:50:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1889','45','195','42.55642','-3.05591','1721','2022-03-29 14:50:42','2022-03-29 14:50:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1890','45','198','42.56919','-3.05591','1721','2022-03-29 14:50:45','2022-03-29 14:50:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1891','45','201','42.56919','-3.05591','1721','2022-03-29 14:50:48','2022-03-29 14:50:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1892','45','204','42.56919','-3.05591','1721','2022-03-29 14:50:51','2022-03-29 14:50:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1893','45','207','42.56919','-3.05591','1721','2022-03-29 14:50:54','2022-03-29 14:50:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1894','45','210','42.56919','-3.05591','1721','2022-03-29 14:50:57','2022-03-29 14:50:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1895','45','213','42.56919','-3.05591','1721','2022-03-29 14:51:00','2022-03-29 14:51:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1896','45','216','42.56919','-3.05591','1721','2022-03-29 14:51:03','2022-03-29 14:51:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1897','45','219','42.56919','-3.05591','1721','2022-03-29 14:51:06','2022-03-29 14:51:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1898','45','222','42.56919','-3.05591','1721','2022-03-29 14:51:09','2022-03-29 14:51:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1899','45','225','42.56919','-3.05591','1721','2022-03-29 14:51:12','2022-03-29 14:51:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1900','45','228','42.56919','-3.05591','1721','2022-03-29 14:51:15','2022-03-29 14:51:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1901','45','231','42.56919','-3.05591','1721','2022-03-29 14:51:18','2022-03-29 14:51:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1902','45','234','42.56919','-3.05591','1721','2022-03-29 14:51:21','2022-03-29 14:51:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1903','45','237','42.56919','-3.05591','1721','2022-03-29 14:51:24','2022-03-29 14:51:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1904','45','240','42.56919','-3.05591','1721','2022-03-29 14:51:27','2022-03-29 14:51:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1905','45','243','42.56919','-3.05591','1721','2022-03-29 14:51:30','2022-03-29 14:51:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1906','45','246','42.56919','-3.05591','1721','2022-03-29 14:51:33','2022-03-29 14:51:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1907','45','249','42.56919','-3.05591','1721','2022-03-29 14:51:36','2022-03-29 14:51:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1908','45','252','42.56919','-3.05591','1721','2022-03-29 14:51:39','2022-03-29 14:51:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1909','45','255','42.56919','-3.05591','1721','2022-03-29 14:51:42','2022-03-29 14:51:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1910','45','258','42.56919','-3.05591','1721','2022-03-29 14:51:45','2022-03-29 14:51:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1911','45','261','42.56919','-3.05591','1721','2022-03-29 14:51:48','2022-03-29 14:51:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1912','45','264','42.56919','-3.05591','1721','2022-03-29 14:51:51','2022-03-29 14:51:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1913','45','267','42.56919','-3.05591','1721','2022-03-29 14:51:54','2022-03-29 14:51:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1914','45','270','42.56919','-3.05591','1721','2022-03-29 14:51:57','2022-03-29 14:51:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1915','45','273','42.56919','-3.05591','1721','2022-03-29 14:52:00','2022-03-29 14:52:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1916','45','276','42.56919','-3.05591','1721','2022-03-29 14:52:03','2022-03-29 14:52:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1917','45','279','42.56919','-3.05591','1721','2022-03-29 14:52:06','2022-03-29 14:52:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1918','45','282','42.56919','-3.05591','1721','2022-03-29 14:52:09','2022-03-29 14:52:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1919','45','285','42.56919','-3.05591','1721','2022-03-29 14:52:12','2022-03-29 14:52:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1920','45','288','42.56919','-3.05591','1721','2022-03-29 14:52:15','2022-03-29 14:52:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1921','45','291','42.56919','-3.05591','1721','2022-03-29 14:52:18','2022-03-29 14:52:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1922','45','294','42.56919','-3.05591','1721','2022-03-29 14:52:21','2022-03-29 14:52:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1923','45','297','42.56919','-3.05591','1721','2022-03-29 14:52:24','2022-03-29 14:52:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1924','45','300','42.56919','-3.05591','1721','2022-03-29 14:52:27','2022-03-29 14:52:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1925','45','303','42.56919','-3.05591','1721','2022-03-29 14:52:30','2022-03-29 14:52:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1926','45','306','42.56919','-3.05591','1721','2022-03-29 14:52:33','2022-03-29 14:52:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1927','45','309','42.56919','-3.05591','1721','2022-03-29 14:52:36','2022-03-29 14:52:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1928','45','312','42.56919','-3.05591','1721','2022-03-29 14:52:39','2022-03-29 14:52:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1929','45','315','42.56919','-3.05591','1721','2022-03-29 14:52:42','2022-03-29 14:52:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1930','45','318','42.56919','-3.05591','1721','2022-03-29 14:52:45','2022-03-29 14:52:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1931','46','0','42.55703','-2.97282','101','2022-03-29 14:52:50','2022-03-29 14:52:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1932','46','0','42.55703','-2.97282','1721','2022-03-29 14:53:22','2022-03-29 14:53:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1933','46','3','42.55703','-2.97282','1721','2022-03-29 14:53:25','2022-03-29 14:53:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1934','46','6','42.55703','-2.97282','1721','2022-03-29 14:53:28','2022-03-29 14:53:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1935','46','9','42.55703','-2.97282','1721','2022-03-29 14:53:31','2022-03-29 14:53:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1936','46','12','42.55703','-2.97282','1721','2022-03-29 14:53:34','2022-03-29 14:53:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1937','46','15','42.55703','-2.97282','1721','2022-03-29 14:53:37','2022-03-29 14:53:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1938','46','18','42.55703','-2.97282','1721','2022-03-29 14:53:40','2022-03-29 14:53:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1939','46','21','42.55703','-2.97282','1721','2022-03-29 14:53:43','2022-03-29 14:53:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1940','46','24','42.57862','-2.95636','1721','2022-03-29 14:53:46','2022-03-29 14:53:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1941','46','27','42.6151','-2.85764','1721','2022-03-29 14:53:49','2022-03-29 14:53:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1942','46','30','42.64003','-2.80705','1721','2022-03-29 14:53:52','2022-03-29 14:53:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1943','46','33','42.63091','-2.80705','1721','2022-03-29 14:53:55','2022-03-29 14:53:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1944','46','36','42.62969','-2.83461','1721','2022-03-29 14:53:58','2022-03-29 14:53:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1945','46','39','42.63213','-2.84448','1721','2022-03-29 14:54:01','2022-03-29 14:54:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1946','46','42','42.64672','-2.84489','1721','2022-03-29 14:54:04','2022-03-29 14:54:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1947','46','45','42.64641','-2.8523','1721','2022-03-29 14:54:07','2022-03-29 14:54:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1948','46','48','42.62878','-2.8523','1721','2022-03-29 14:54:10','2022-03-29 14:54:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1949','46','51','42.62878','-2.8523','1721','2022-03-29 14:54:13','2022-03-29 14:54:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1950','46','54','42.62878','-2.8523','1721','2022-03-29 14:54:16','2022-03-29 14:54:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1951','46','57','42.61358','-2.8523','1721','2022-03-29 14:54:19','2022-03-29 14:54:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1952','46','60','42.58591','-2.8523','1721','2022-03-29 14:54:22','2022-03-29 14:54:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1953','46','63','42.5619','-2.85271','1721','2022-03-29 14:54:25','2022-03-29 14:54:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1954','46','66','42.5619','-2.88808','1721','2022-03-29 14:54:28','2022-03-29 14:54:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1955','46','69','42.57071','-2.89919','1721','2022-03-29 14:54:31','2022-03-29 14:54:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1956','46','72','42.59838','-2.89919','1721','2022-03-29 14:54:34','2022-03-29 14:54:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1957','46','75','42.62605','-2.89919','1721','2022-03-29 14:54:37','2022-03-29 14:54:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1958','46','78','42.62787','-2.89919','1721','2022-03-29 14:54:40','2022-03-29 14:54:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1959','46','81','42.62757','-2.90947','1721','2022-03-29 14:54:43','2022-03-29 14:54:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1960','46','84','42.62726','-2.94073','1721','2022-03-29 14:54:46','2022-03-29 14:54:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1961','46','87','42.60233','-2.94073','1721','2022-03-29 14:54:49','2022-03-29 14:54:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1962','46','90','42.57467','-2.94073','1721','2022-03-29 14:54:52','2022-03-29 14:54:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1963','46','93','42.54852','-2.94115','1721','2022-03-29 14:54:55','2022-03-29 14:54:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1964','46','96','42.56555','-2.94402','1721','2022-03-29 14:54:58','2022-03-29 14:54:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1965','46','99','42.56859','-2.91688','1721','2022-03-29 14:55:01','2022-03-29 14:55:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1966','46','102','42.56859','-2.87945','1721','2022-03-29 14:55:04','2022-03-29 14:55:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1967','46','105','42.56859','-2.84777','1721','2022-03-29 14:55:07','2022-03-29 14:55:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1968','46','108','42.58348','-2.84777','1721','2022-03-29 14:55:10','2022-03-29 14:55:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1969','46','111','42.58379','-2.84037','1721','2022-03-29 14:55:13','2022-03-29 14:55:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1970','46','114','42.58379','-2.84736','1721','2022-03-29 14:55:16','2022-03-29 14:55:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1971','46','117','42.58379','-2.84736','1721','2022-03-29 14:55:19','2022-03-29 14:55:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1972','46','120','42.58379','-2.84736','1721','2022-03-29 14:55:22','2022-03-29 14:55:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1973','46','123','42.58379','-2.84736','1721','2022-03-29 14:55:25','2022-03-29 14:55:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1974','46','126','42.58379','-2.84736','1721','2022-03-29 14:55:28','2022-03-29 14:55:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1975','46','129','42.58379','-2.84736','1721','2022-03-29 14:55:31','2022-03-29 14:55:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1976','46','132','42.58379','-2.84736','1721','2022-03-29 14:55:34','2022-03-29 14:55:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1977','46','135','42.58379','-2.84736','1721','2022-03-29 14:55:37','2022-03-29 14:55:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1978','47','0','42.556537','-2.97265','101','2022-03-29 14:55:49','2022-03-29 14:55:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1979','47','0','42.58379','-2.84736','1721','2022-03-29 14:55:52','2022-03-29 14:55:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1980','47','3','42.58379','-2.84736','1721','2022-03-29 14:55:55','2022-03-29 14:55:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1981','47','6','42.58379','-2.84736','1721','2022-03-29 14:55:58','2022-03-29 14:55:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1982','47','9','42.58379','-2.84736','1721','2022-03-29 14:56:01','2022-03-29 14:56:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1983','47','12','42.58379','-2.84736','1721','2022-03-29 14:56:04','2022-03-29 14:56:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1984','47','15','42.58379','-2.84736','1721','2022-03-29 14:56:07','2022-03-29 14:56:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1985','47','18','42.58379','-2.84736','1721','2022-03-29 14:56:10','2022-03-29 14:56:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1986','47','21','42.58379','-2.84736','1721','2022-03-29 14:56:13','2022-03-29 14:56:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1987','47','24','42.58379','-2.84736','1721','2022-03-29 14:56:16','2022-03-29 14:56:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1988','47','27','42.55703','-2.97282','1721','2022-03-29 14:56:19','2022-03-29 14:56:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1989','47','30','42.55703','-2.97282','1721','2022-03-29 14:56:22','2022-03-29 14:56:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1990','47','33','42.55703','-2.97282','1721','2022-03-29 14:56:25','2022-03-29 14:56:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1991','47','36','42.55703','-2.97282','1721','2022-03-29 14:56:28','2022-03-29 14:56:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1992','47','39','42.55703','-2.97282','1721','2022-03-29 14:56:31','2022-03-29 14:56:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1993','47','42','42.55703','-2.97282','1721','2022-03-29 14:56:34','2022-03-29 14:56:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1994','47','45','42.55703','-2.97282','1721','2022-03-29 14:56:37','2022-03-29 14:56:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1995','47','48','42.55703','-2.97282','1721','2022-03-29 14:56:40','2022-03-29 14:56:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1996','47','51','42.55703','-2.97282','1721','2022-03-29 14:56:43','2022-03-29 14:56:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1997','47','54','42.55703','-2.97282','1721','2022-03-29 14:56:46','2022-03-29 14:56:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1998','47','57','42.55703','-2.97282','1721','2022-03-29 14:56:49','2022-03-29 14:56:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('1999','47','60','42.55703','-2.97282','1721','2022-03-29 14:56:52','2022-03-29 14:56:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2000','47','63','42.55703','-2.97282','1721','2022-03-29 14:56:55','2022-03-29 14:56:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2001','47','66','42.55703','-2.97282','1721','2022-03-29 14:56:58','2022-03-29 14:56:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2002','47','69','42.55703','-2.97282','1721','2022-03-29 14:57:01','2022-03-29 14:57:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2003','47','72','42.55703','-2.97282','1721','2022-03-29 14:57:04','2022-03-29 14:57:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2004','48','0','42.572362780593','-2.8752175345637','81','2022-03-29 14:57:15','2022-03-29 14:57:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2005','48','0','42.55703','-2.97282','1721','2022-03-29 14:57:17','2022-03-29 14:57:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2006','48','3','42.55703','-2.97282','1721','2022-03-29 14:57:20','2022-03-29 14:57:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2007','48','6','42.55703','-2.97282','1721','2022-03-29 14:57:23','2022-03-29 14:57:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2008','48','9','42.55703','-2.97282','1721','2022-03-29 14:57:27','2022-03-29 14:57:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2009','48','12','42.55703','-2.97282','1721','2022-03-29 14:57:30','2022-03-29 14:57:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2010','48','15','42.55703','-2.97282','1721','2022-03-29 14:57:33','2022-03-29 14:57:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2011','48','18','42.55703','-2.97282','1721','2022-03-29 14:57:36','2022-03-29 14:57:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2012','48','21','42.55703','-2.97282','1721','2022-03-29 14:57:39','2022-03-29 14:57:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2013','48','24','42.55703','-2.97282','1721','2022-03-29 14:57:42','2022-03-29 14:57:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2014','48','27','42.55703','-2.97282','1721','2022-03-29 14:57:45','2022-03-29 14:57:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2015','48','30','42.55703','-2.97282','1721','2022-03-29 14:57:47','2022-03-29 14:57:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2016','48','33','42.55703','-2.97282','1721','2022-03-29 14:57:50','2022-03-29 14:57:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2017','48','36','42.57193','-2.87533','1594','2022-03-29 14:57:53','2022-03-29 14:57:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2018','48','39','42.57193','-2.87533','1594','2022-03-29 14:57:56','2022-03-29 14:57:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2019','48','42','42.57193','-2.87533','1594','2022-03-29 14:57:59','2022-03-29 14:57:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2020','48','45','42.57193','-2.87533','1594','2022-03-29 14:58:02','2022-03-29 14:58:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2021','48','48','42.57193','-2.87533','1594','2022-03-29 14:58:05','2022-03-29 14:58:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2022','48','51','42.57193','-2.87533','1594','2022-03-29 14:58:08','2022-03-29 14:58:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2023','48','54','42.57193','-2.87533','1594','2022-03-29 14:58:11','2022-03-29 14:58:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2024','48','57','42.57193','-2.87533','1594','2022-03-29 14:58:14','2022-03-29 14:58:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2025','48','60','42.57193','-2.87533','1594','2022-03-29 14:58:17','2022-03-29 14:58:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2026','48','63','42.57193','-2.87533','1594','2022-03-29 14:58:20','2022-03-29 14:58:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2027','48','66','42.57193','-2.87533','1594','2022-03-29 14:58:23','2022-03-29 14:58:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2028','48','69','42.57193','-2.87533','1594','2022-03-29 14:58:26','2022-03-29 14:58:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2029','48','72','42.57193','-2.87533','1594','2022-03-29 14:58:29','2022-03-29 14:58:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2030','48','75','42.57193','-2.87533','1594','2022-03-29 14:58:32','2022-03-29 14:58:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2031','48','78','42.57193','-2.87533','1594','2022-03-29 14:58:35','2022-03-29 14:58:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2032','48','81','42.57193','-2.87533','1594','2022-03-29 14:58:38','2022-03-29 14:58:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2033','49','0','42.64976','-3.02136','108','2022-03-29 14:58:49','2022-03-29 14:58:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2034','49','0','42.57193','-2.87533','1594','2022-03-29 14:58:52','2022-03-29 14:58:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2035','49','3','42.57193','-2.87533','1594','2022-03-29 14:58:55','2022-03-29 14:58:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2036','49','6','42.57193','-2.87533','1594','2022-03-29 14:58:58','2022-03-29 14:58:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2037','49','9','42.57193','-2.87533','1594','2022-03-29 14:59:01','2022-03-29 14:59:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2038','49','12','42.57193','-2.87533','1594','2022-03-29 14:59:04','2022-03-29 14:59:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2039','49','15','42.57193','-2.87533','1594','2022-03-29 14:59:07','2022-03-29 14:59:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2040','49','18','42.64976','-3.02136','1767','2022-03-29 14:59:09','2022-03-29 14:59:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2041','49','21','42.64976','-3.02136','1767','2022-03-29 14:59:12','2022-03-29 14:59:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2042','49','24','42.64976','-3.02136','1767','2022-03-29 14:59:15','2022-03-29 14:59:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2043','49','27','42.64976','-3.02136','1767','2022-03-29 14:59:18','2022-03-29 14:59:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2044','49','30','42.64976','-3.02136','1767','2022-03-29 14:59:21','2022-03-29 14:59:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2045','49','33','42.64976','-3.02136','1767','2022-03-29 14:59:24','2022-03-29 14:59:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2046','49','36','42.64976','-3.02136','1767','2022-03-29 14:59:27','2022-03-29 14:59:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2047','49','39','42.64976','-3.02136','1767','2022-03-29 14:59:30','2022-03-29 14:59:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2048','49','42','42.64976','-3.02136','1767','2022-03-29 14:59:33','2022-03-29 14:59:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2049','49','45','42.64976','-3.02136','1767','2022-03-29 14:59:36','2022-03-29 14:59:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2050','49','48','42.64976','-3.02136','1767','2022-03-29 14:59:39','2022-03-29 14:59:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2051','49','51','42.64976','-3.02136','1767','2022-03-29 14:59:42','2022-03-29 14:59:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2052','49','54','42.64976','-3.02136','1767','2022-03-29 14:59:45','2022-03-29 14:59:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2053','50','0','42.6905','-2.95349','77','2022-03-29 15:00:56','2022-03-29 15:00:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2054','50','0','42.6905','-2.95349','1569','2022-03-29 15:01:16','2022-03-29 15:01:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2055','50','3','42.6905','-2.95349','1569','2022-03-29 15:01:19','2022-03-29 15:01:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2056','50','6','42.6905','-2.95349','1569','2022-03-29 15:01:22','2022-03-29 15:01:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2057','50','9','42.6905','-2.95349','1569','2022-03-29 15:01:25','2022-03-29 15:01:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2058','50','12','42.6905','-2.95349','1569','2022-03-29 15:01:28','2022-03-29 15:01:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2059','50','15','42.6905','-2.95349','1569','2022-03-29 15:01:31','2022-03-29 15:01:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2060','50','18','42.6905','-2.95349','1569','2022-03-29 15:01:34','2022-03-29 15:01:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2061','50','21','42.6905','-2.95349','1569','2022-03-29 15:01:37','2022-03-29 15:01:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2062','50','24','42.6905','-2.95349','1569','2022-03-29 15:01:40','2022-03-29 15:01:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2063','50','27','42.6905','-2.95349','1569','2022-03-29 15:01:43','2022-03-29 15:01:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2064','50','30','42.6905','-2.95349','1569','2022-03-29 15:01:46','2022-03-29 15:01:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2065','50','33','42.6905','-2.95349','1569','2022-03-29 15:01:49','2022-03-29 15:01:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2066','50','36','42.6905','-2.95349','1569','2022-03-29 15:01:52','2022-03-29 15:01:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2067','50','39','42.6905','-2.95349','1569','2022-03-29 15:01:55','2022-03-29 15:01:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2068','51','0','42.65918','-2.92346','81','2022-03-29 15:02:53','2022-03-29 15:02:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2069','51','0','42.6905','-2.95349','1569','2022-03-29 15:02:56','2022-03-29 15:02:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2070','51','3','42.6905','-2.95349','1569','2022-03-29 15:02:59','2022-03-29 15:02:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2071','51','6','42.6905','-2.95349','1569','2022-03-29 15:03:02','2022-03-29 15:03:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2072','51','9','42.6905','-2.95349','1569','2022-03-29 15:03:05','2022-03-29 15:03:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2073','51','12','42.6905','-2.95349','1569','2022-03-29 15:03:08','2022-03-29 15:03:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2074','51','15','42.6905','-2.95349','1569','2022-03-29 15:03:11','2022-03-29 15:03:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2075','51','18','42.6905','-2.95349','1569','2022-03-29 15:03:13','2022-03-29 15:03:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2076','51','21','42.65918','-2.92346','1595','2022-03-29 15:03:16','2022-03-29 15:03:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2077','51','24','42.65918','-2.92346','1595','2022-03-29 15:03:19','2022-03-29 15:03:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2078','51','27','42.65918','-2.92346','1595','2022-03-29 15:03:22','2022-03-29 15:03:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2079','51','30','42.65918','-2.92346','1595','2022-03-29 15:03:25','2022-03-29 15:03:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2080','51','33','42.65918','-2.92346','1595','2022-03-29 15:03:28','2022-03-29 15:03:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2081','51','36','42.65918','-2.92346','1595','2022-03-29 15:03:31','2022-03-29 15:03:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2082','51','39','42.65918','-2.92346','1595','2022-03-29 15:03:34','2022-03-29 15:03:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2083','51','42','42.65918','-2.92346','1595','2022-03-29 15:03:37','2022-03-29 15:03:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2084','51','45','42.65918','-2.92346','1595','2022-03-29 15:03:40','2022-03-29 15:03:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2085','51','48','42.65918','-2.92346','1595','2022-03-29 15:03:43','2022-03-29 15:03:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2086','51','51','42.65918','-2.92346','1595','2022-03-29 15:03:46','2022-03-29 15:03:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2087','51','54','42.65918','-2.92346','1595','2022-03-29 15:03:49','2022-03-29 15:03:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2088','52','0','42.65401','-2.81404','108','2022-03-29 15:04:02','2022-03-29 15:04:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2089','52','0','42.65918','-2.92346','1595','2022-03-29 15:04:05','2022-03-29 15:04:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2090','52','3','42.65918','-2.92346','1595','2022-03-29 15:04:08','2022-03-29 15:04:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2091','52','6','42.65918','-2.92346','1595','2022-03-29 15:04:11','2022-03-29 15:04:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2092','52','9','42.65918','-2.92346','1595','2022-03-29 15:04:14','2022-03-29 15:04:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2093','52','12','42.65918','-2.92346','1595','2022-03-29 15:04:17','2022-03-29 15:04:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2094','52','15','42.65918','-2.92346','1595','2022-03-29 15:04:20','2022-03-29 15:04:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2095','52','18','42.65401','-2.81404','1768','2022-03-29 15:04:23','2022-03-29 15:04:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2096','52','21','42.65401','-2.81404','1768','2022-03-29 15:04:26','2022-03-29 15:04:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2097','52','24','42.65401','-2.81404','1768','2022-03-29 15:04:29','2022-03-29 15:04:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2098','53','0','42.55703','-2.97282','101','2022-03-29 15:04:31','2022-03-29 15:04:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2099','53','0','42.55703','-2.97282','1721','2022-03-29 15:04:51','2022-03-29 15:04:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2100','53','3','42.55703','-2.97282','1721','2022-03-29 15:04:54','2022-03-29 15:04:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2101','53','6','42.55703','-2.97282','1721','2022-03-29 15:04:57','2022-03-29 15:04:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2102','53','9','42.55703','-2.97282','1721','2022-03-29 15:05:00','2022-03-29 15:05:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2103','54','0','42.65401','-2.81404','108','2022-03-29 15:05:08','2022-03-29 15:05:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2104','54','0','42.55703','-2.97282','1721','2022-03-29 15:05:11','2022-03-29 15:05:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2105','54','3','42.55703','-2.97282','1721','2022-03-29 15:05:14','2022-03-29 15:05:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2106','54','6','42.55703','-2.97282','1721','2022-03-29 15:05:17','2022-03-29 15:05:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2107','54','9','42.55703','-2.97282','1721','2022-03-29 15:05:20','2022-03-29 15:05:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2108','54','12','42.55703','-2.97282','1721','2022-03-29 15:05:23','2022-03-29 15:05:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2109','54','15','42.55703','-2.97282','1721','2022-03-29 15:05:25','2022-03-29 15:05:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2110','54','18','42.65401','-2.81404','1768','2022-03-29 15:05:28','2022-03-29 15:05:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2111','54','21','42.65401','-2.81404','1768','2022-03-29 15:05:31','2022-03-29 15:05:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2112','54','24','42.65401','-2.81404','1768','2022-03-29 15:05:34','2022-03-29 15:05:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2113','54','27','42.65401','-2.81404','1768','2022-03-29 15:05:37','2022-03-29 15:05:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2114','54','30','42.65401','-2.81404','1768','2022-03-29 15:05:40','2022-03-29 15:05:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2115','54','33','42.65401','-2.81404','1768','2022-03-29 15:05:43','2022-03-29 15:05:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2116','54','36','42.65401','-2.81404','1768','2022-03-29 15:05:46','2022-03-29 15:05:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2117','54','39','42.65401','-2.81404','1768','2022-03-29 15:05:49','2022-03-29 15:05:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2118','54','42','42.65401','-2.81404','1768','2022-03-29 15:05:52','2022-03-29 15:05:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2119','54','45','42.65401','-2.81404','1768','2022-03-29 15:05:55','2022-03-29 15:05:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2120','54','48','42.65401','-2.81404','1768','2022-03-29 15:05:58','2022-03-29 15:05:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2121','54','51','42.65401','-2.81404','1768','2022-03-29 15:06:01','2022-03-29 15:06:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2122','54','54','42.65401','-2.81404','1768','2022-03-29 15:06:04','2022-03-29 15:06:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2123','54','57','42.65401','-2.81404','1768','2022-03-29 15:06:07','2022-03-29 15:06:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2124','54','60','42.65401','-2.81404','1768','2022-03-29 15:06:10','2022-03-29 15:06:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2125','54','63','42.65401','-2.81404','1768','2022-03-29 15:06:13','2022-03-29 15:06:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2126','54','66','42.65401','-2.81404','1768','2022-03-29 15:06:16','2022-03-29 15:06:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2127','54','69','42.65401','-2.81404','1768','2022-03-29 15:06:19','2022-03-29 15:06:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2128','54','72','42.65401','-2.81404','1768','2022-03-29 15:06:22','2022-03-29 15:06:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2129','54','75','42.65401','-2.81404','1768','2022-03-29 15:06:25','2022-03-29 15:06:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2130','54','78','42.65401','-2.81404','1768','2022-03-29 15:06:28','2022-03-29 15:06:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2131','54','81','42.65401','-2.81404','1768','2022-03-29 15:06:31','2022-03-29 15:06:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2132','54','84','42.65401','-2.81404','1768','2022-03-29 15:06:34','2022-03-29 15:06:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2133','54','87','42.65401','-2.81404','1768','2022-03-29 15:06:37','2022-03-29 15:06:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2134','54','90','42.65401','-2.81404','1768','2022-03-29 15:06:40','2022-03-29 15:06:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2135','54','93','42.65401','-2.81404','1768','2022-03-29 15:06:43','2022-03-29 15:06:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2136','54','96','42.65401','-2.81404','1768','2022-03-29 15:06:46','2022-03-29 15:06:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2137','54','99','42.65401','-2.81404','1768','2022-03-29 15:06:49','2022-03-29 15:06:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2138','54','102','42.65401','-2.81404','1768','2022-03-29 15:06:52','2022-03-29 15:06:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2139','54','105','42.65401','-2.81404','1768','2022-03-29 15:06:55','2022-03-29 15:06:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2140','54','108','42.65401','-2.81404','1768','2022-03-29 15:06:58','2022-03-29 15:06:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2141','54','111','42.65401','-2.81404','1768','2022-03-29 15:07:01','2022-03-29 15:07:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2142','54','114','42.65401','-2.81404','1768','2022-03-29 15:07:04','2022-03-29 15:07:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2143','54','117','42.65401','-2.81404','1768','2022-03-29 15:07:07','2022-03-29 15:07:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2144','54','120','42.65401','-2.81404','1768','2022-03-29 15:07:10','2022-03-29 15:07:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2145','54','123','42.65401','-2.81404','1768','2022-03-29 15:07:13','2022-03-29 15:07:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2146','54','126','42.65401','-2.81404','1768','2022-03-29 15:07:16','2022-03-29 15:07:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2147','54','129','42.65401','-2.81404','1768','2022-03-29 15:07:19','2022-03-29 15:07:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2148','54','132','42.65401','-2.81404','1768','2022-03-29 15:07:22','2022-03-29 15:07:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2149','54','135','42.65401','-2.81404','1768','2022-03-29 15:07:25','2022-03-29 15:07:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2150','54','138','42.65401','-2.81404','1768','2022-03-29 15:07:28','2022-03-29 15:07:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2151','54','141','42.65401','-2.81404','1768','2022-03-29 15:07:31','2022-03-29 15:07:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2152','54','144','42.65401','-2.81404','1768','2022-03-29 15:07:34','2022-03-29 15:07:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2153','54','147','42.65401','-2.81404','1768','2022-03-29 15:07:37','2022-03-29 15:07:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2154','54','150','42.65401','-2.81404','1768','2022-03-29 15:07:40','2022-03-29 15:07:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2155','54','153','42.65401','-2.81404','1768','2022-03-29 15:07:43','2022-03-29 15:07:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2156','54','156','42.65401','-2.81404','1768','2022-03-29 15:07:46','2022-03-29 15:07:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2157','55','0','42.43542','-2.96253','170','2022-03-29 15:08:09','2022-03-29 15:08:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2158','55','0','42.43542','-2.96253','2166','2022-03-29 15:08:29','2022-03-29 15:08:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2159','55','3','42.43542','-2.96253','2166','2022-03-29 15:08:32','2022-03-29 15:08:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2160','55','6','42.43542','-2.96253','2166','2022-03-29 15:08:35','2022-03-29 15:08:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2161','55','9','42.43542','-2.96253','2166','2022-03-29 15:08:38','2022-03-29 15:08:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2162','55','12','42.43542','-2.96253','2166','2022-03-29 15:08:41','2022-03-29 15:08:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2163','55','15','42.43542','-2.96253','2166','2022-03-29 15:08:44','2022-03-29 15:08:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2164','55','18','42.43542','-2.96253','2166','2022-03-29 15:08:47','2022-03-29 15:08:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2165','55','21','42.43542','-2.96253','2166','2022-03-29 15:08:50','2022-03-29 15:08:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2166','55','24','42.43542','-2.96253','2166','2022-03-29 15:08:53','2022-03-29 15:08:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2167','55','27','42.43542','-2.96253','2166','2022-03-29 15:08:56','2022-03-29 15:08:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2168','55','30','42.43542','-2.96253','2166','2022-03-29 15:08:59','2022-03-29 15:08:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2169','55','33','42.43542','-2.96253','2166','2022-03-29 15:09:02','2022-03-29 15:09:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2170','55','36','42.43542','-2.96253','2166','2022-03-29 15:09:05','2022-03-29 15:09:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2171','55','39','42.43542','-2.96253','2166','2022-03-29 15:09:08','2022-03-29 15:09:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2172','55','42','42.43542','-2.96253','2166','2022-03-29 15:09:11','2022-03-29 15:09:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2173','55','45','42.43542','-2.96253','2166','2022-03-29 15:09:14','2022-03-29 15:09:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2174','55','48','42.43542','-2.96253','2166','2022-03-29 15:09:17','2022-03-29 15:09:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2175','56','0','42.43542','-2.94073','166','2022-03-29 15:09:26','2022-03-29 15:09:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2176','56','0','42.43542','-2.96253','2166','2022-03-29 15:09:29','2022-03-29 15:09:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2177','56','3','42.43542','-2.96253','2166','2022-03-29 15:09:32','2022-03-29 15:09:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2178','56','6','42.43542','-2.96253','2166','2022-03-29 15:09:35','2022-03-29 15:09:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2179','56','9','42.43542','-2.96253','2166','2022-03-29 15:09:38','2022-03-29 15:09:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2180','56','12','42.43542','-2.96253','2166','2022-03-29 15:09:41','2022-03-29 15:09:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2181','56','15','42.43542','-2.96253','2166','2022-03-29 15:09:44','2022-03-29 15:09:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2182','56','18','42.43542','-2.94073','2141','2022-03-29 15:09:47','2022-03-29 15:09:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2183','56','21','42.43542','-2.94073','2141','2022-03-29 15:09:50','2022-03-29 15:09:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2184','56','24','42.43542','-2.94073','2141','2022-03-29 15:09:53','2022-03-29 15:09:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2185','56','27','42.43542','-2.94073','2141','2022-03-29 15:09:56','2022-03-29 15:09:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2186','56','30','42.43542','-2.94073','2141','2022-03-29 15:09:59','2022-03-29 15:09:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2187','56','33','42.43542','-2.94073','2141','2022-03-29 15:10:02','2022-03-29 15:10:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2188','56','36','42.43542','-2.94073','2141','2022-03-29 15:10:05','2022-03-29 15:10:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2189','56','39','42.43542','-2.94073','2141','2022-03-29 15:10:08','2022-03-29 15:10:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2190','56','42','42.43542','-2.94073','2141','2022-03-29 15:10:11','2022-03-29 15:10:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2191','56','45','42.43542','-2.94073','2141','2022-03-29 15:10:14','2022-03-29 15:10:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2192','56','48','42.43542','-2.94073','2141','2022-03-29 15:10:17','2022-03-29 15:10:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2193','57','0','42.32963','-3.0156','255','2022-03-29 15:10:26','2022-03-29 15:10:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2194','57','0','42.43542','-2.94073','2141','2022-03-29 15:10:29','2022-03-29 15:10:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2195','57','3','42.43542','-2.94073','2141','2022-03-29 15:10:31','2022-03-29 15:10:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2196','57','6','42.43542','-2.94073','2141','2022-03-29 15:10:35','2022-03-29 15:10:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2197','57','9','42.43542','-2.94073','2141','2022-03-29 15:10:38','2022-03-29 15:10:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2198','57','12','42.43542','-2.94073','2141','2022-03-29 15:10:41','2022-03-29 15:10:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2199','57','15','42.43542','-2.94073','2141','2022-03-29 15:10:43','2022-03-29 15:10:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2200','57','18','42.32963','-3.0156','2712','2022-03-29 15:10:46','2022-03-29 15:10:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2201','57','21','42.32963','-3.0156','2712','2022-03-29 15:10:49','2022-03-29 15:10:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2202','57','24','42.32963','-3.0156','2712','2022-03-29 15:10:52','2022-03-29 15:10:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2203','57','27','42.32963','-3.0156','2712','2022-03-29 15:10:55','2022-03-29 15:10:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2204','57','30','42.32963','-3.0156','2712','2022-03-29 15:10:58','2022-03-29 15:10:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2205','57','33','42.32963','-3.0156','2712','2022-03-29 15:11:01','2022-03-29 15:11:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2206','57','36','42.32963','-3.0156','2712','2022-03-29 15:11:04','2022-03-29 15:11:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2207','57','39','42.32963','-3.0156','2712','2022-03-29 15:11:07','2022-03-29 15:11:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2208','57','42','42.32963','-3.0156','2712','2022-03-29 15:11:10','2022-03-29 15:11:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2209','57','45','42.32963','-3.0156','2712','2022-03-29 15:11:13','2022-03-29 15:11:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2210','57','48','42.32963','-3.0156','2712','2022-03-29 15:11:16','2022-03-29 15:11:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2211','57','51','42.32963','-3.0156','2712','2022-03-29 15:11:19','2022-03-29 15:11:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2212','57','54','42.32963','-3.0156','2712','2022-03-29 15:11:22','2022-03-29 15:11:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2213','57','57','42.32963','-3.0156','2712','2022-03-29 15:11:25','2022-03-29 15:11:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2214','58','0','42.36793','-2.80294','143','2022-03-29 15:11:43','2022-03-29 15:11:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2215','58','0','42.32963','-3.0156','2712','2022-03-29 15:11:46','2022-03-29 15:11:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2216','58','3','42.32963','-3.0156','2712','2022-03-29 15:11:49','2022-03-29 15:11:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2217','58','6','42.32963','-3.0156','2712','2022-03-29 15:11:52','2022-03-29 15:11:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2218','58','9','42.32963','-3.0156','2712','2022-03-29 15:11:55','2022-03-29 15:11:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2219','58','12','42.32963','-3.0156','2712','2022-03-29 15:11:58','2022-03-29 15:11:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2220','58','15','42.32963','-3.0156','2712','2022-03-29 15:12:01','2022-03-29 15:12:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2221','58','18','42.36793','-2.80294','1991','2022-03-29 15:12:04','2022-03-29 15:12:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2222','58','21','42.36793','-2.80294','1991','2022-03-29 15:12:07','2022-03-29 15:12:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2223','59','0','42.55703','-2.97282','101','2022-03-29 15:14:20','2022-03-29 15:14:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2224','60','0','42.36793','-2.80294','143','2022-03-29 15:14:29','2022-03-29 15:14:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2225','60','0','42.55703','-2.97282','1721','2022-03-29 15:14:31','2022-03-29 15:14:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2226','60','3','42.55703','-2.97282','1721','2022-03-29 15:14:34','2022-03-29 15:14:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2227','60','6','42.55703','-2.97282','1721','2022-03-29 15:14:37','2022-03-29 15:14:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2228','60','9','42.55703','-2.97282','1721','2022-03-29 15:14:40','2022-03-29 15:14:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2229','60','12','42.55703','-2.97282','1721','2022-03-29 15:14:43','2022-03-29 15:14:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2230','60','15','42.55703','-2.97282','1721','2022-03-29 15:14:46','2022-03-29 15:14:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2231','60','18','42.36793','-2.80294','1991','2022-03-29 15:14:49','2022-03-29 15:14:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2232','60','21','42.36793','-2.80294','1991','2022-03-29 15:14:52','2022-03-29 15:14:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2233','60','24','42.36793','-2.80294','1991','2022-03-29 15:14:55','2022-03-29 15:14:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2234','60','27','42.36793','-2.80294','1991','2022-03-29 15:14:58','2022-03-29 15:14:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2235','60','30','42.36793','-2.80294','1991','2022-03-29 15:15:01','2022-03-29 15:15:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2236','60','33','42.36793','-2.80294','1991','2022-03-29 15:15:04','2022-03-29 15:15:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2237','60','36','42.36793','-2.80294','1991','2022-03-29 15:15:07','2022-03-29 15:15:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2238','60','39','42.36793','-2.80294','1991','2022-03-29 15:15:10','2022-03-29 15:15:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2239','60','42','42.36793','-2.80294','1991','2022-03-29 15:15:13','2022-03-29 15:15:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2240','60','45','42.36793','-2.80294','1991','2022-03-29 15:15:16','2022-03-29 15:15:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2241','60','48','42.36793','-2.80294','1991','2022-03-29 15:15:19','2022-03-29 15:15:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2242','60','51','42.36793','-2.80294','1991','2022-03-29 15:15:22','2022-03-29 15:15:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2243','60','54','42.36793','-2.80294','1991','2022-03-29 15:15:25','2022-03-29 15:15:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2244','60','57','42.36793','-2.80294','1991','2022-03-29 15:15:28','2022-03-29 15:15:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2245','61','0','42.41171','-2.88973','208','2022-03-29 15:15:44','2022-03-29 15:15:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2246','61','0','42.41171','-2.88973','2414','2022-03-29 15:16:14','2022-03-29 15:16:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2247','61','3','42.41171','-2.88973','2414','2022-03-29 15:16:17','2022-03-29 15:16:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2248','61','6','42.41171','-2.88973','2414','2022-03-29 15:16:20','2022-03-29 15:16:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2249','61','9','42.41171','-2.88973','2414','2022-03-29 15:16:23','2022-03-29 15:16:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2250','61','12','42.41171','-2.88973','2414','2022-03-29 15:16:26','2022-03-29 15:16:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2251','61','15','42.41171','-2.88973','2414','2022-03-29 15:16:29','2022-03-29 15:16:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2252','61','18','42.41171','-2.88973','2414','2022-03-29 15:16:32','2022-03-29 15:16:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2253','61','21','42.41171','-2.88973','2414','2022-03-29 15:16:35','2022-03-29 15:16:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2254','61','24','42.41171','-2.88973','2414','2022-03-29 15:16:38','2022-03-29 15:16:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2255','61','27','42.41171','-2.88973','2414','2022-03-29 15:16:41','2022-03-29 15:16:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2256','61','30','42.41171','-2.88973','2414','2022-03-29 15:16:44','2022-03-29 15:16:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2257','61','33','42.41171','-2.88973','2414','2022-03-29 15:16:47','2022-03-29 15:16:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2258','61','36','42.41171','-2.88973','2414','2022-03-29 15:16:50','2022-03-29 15:16:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2259','62','0','42.4944','-2.87698','139','2022-03-29 15:17:19','2022-03-29 15:17:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2260','62','0','42.4944','-2.87698','1967','2022-03-29 15:17:48','2022-03-29 15:17:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2261','62','3','42.4944','-2.87698','1967','2022-03-29 15:17:51','2022-03-29 15:17:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2262','62','6','42.4944','-2.87698','1967','2022-03-29 15:17:54','2022-03-29 15:17:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2263','62','9','42.4944','-2.87698','1967','2022-03-29 15:17:57','2022-03-29 15:17:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2264','62','12','42.4944','-2.87698','1967','2022-03-29 15:18:00','2022-03-29 15:18:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2265','62','15','42.4944','-2.87698','1967','2022-03-29 15:18:03','2022-03-29 15:18:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2266','62','18','42.4944','-2.87698','1967','2022-03-29 15:18:06','2022-03-29 15:18:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2267','62','21','42.4944','-2.87698','1967','2022-03-29 15:18:09','2022-03-29 15:18:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2268','62','24','42.4944','-2.87698','1967','2022-03-29 15:18:12','2022-03-29 15:18:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2269','62','27','42.4944','-2.87698','1967','2022-03-29 15:18:15','2022-03-29 15:18:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2270','62','30','42.4944','-2.87698','1967','2022-03-29 15:18:18','2022-03-29 15:18:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2271','62','33','42.4944','-2.87698','1967','2022-03-29 15:18:21','2022-03-29 15:18:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2272','63','0','42.58014','-2.84859','66','2022-03-29 15:18:36','2022-03-29 15:18:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2273','63','0','42.4944','-2.87698','1967','2022-03-29 15:18:39','2022-03-29 15:18:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2274','63','3','42.4944','-2.87698','1967','2022-03-29 15:18:42','2022-03-29 15:18:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2275','63','6','42.4944','-2.87698','1967','2022-03-29 15:18:45','2022-03-29 15:18:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2276','63','9','42.4944','-2.87698','1967','2022-03-29 15:18:48','2022-03-29 15:18:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2277','63','12','42.4944','-2.87698','1967','2022-03-29 15:18:51','2022-03-29 15:18:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2278','63','15','42.4944','-2.87698','1967','2022-03-29 15:18:54','2022-03-29 15:18:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2279','63','18','42.4944','-2.87698','1967','2022-03-29 15:18:57','2022-03-29 15:18:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2280','63','21','42.4944','-2.87698','1967','2022-03-29 15:19:00','2022-03-29 15:19:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2281','63','24','42.4944','-2.87698','1967','2022-03-29 15:19:02','2022-03-29 15:19:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2282','63','27','42.4944','-2.87698','1967','2022-03-29 15:19:05','2022-03-29 15:19:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2283','63','30','42.58014','-2.84859','1495','2022-03-29 15:19:08','2022-03-29 15:19:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2284','63','33','42.58014','-2.84859','1495','2022-03-29 15:19:11','2022-03-29 15:19:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2285','63','36','42.58014','-2.84859','1495','2022-03-29 15:19:14','2022-03-29 15:19:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2286','63','39','42.58014','-2.84859','1495','2022-03-29 15:19:17','2022-03-29 15:19:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2287','63','42','42.58014','-2.84859','1495','2022-03-29 15:19:20','2022-03-29 15:19:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2288','63','45','42.58014','-2.84859','1495','2022-03-29 15:19:23','2022-03-29 15:19:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2289','63','48','42.58014','-2.84859','1495','2022-03-29 15:19:26','2022-03-29 15:19:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2290','63','51','42.58014','-2.84859','1495','2022-03-29 15:19:29','2022-03-29 15:19:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2291','63','54','42.58014','-2.84859','1495','2022-03-29 15:19:32','2022-03-29 15:19:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2292','63','57','42.58014','-2.84859','1495','2022-03-29 15:19:35','2022-03-29 15:19:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2293','63','60','42.58014','-2.84859','1495','2022-03-29 15:19:38','2022-03-29 15:19:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2294','63','63','42.58014','-2.84859','1495','2022-03-29 15:19:41','2022-03-29 15:19:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2295','63','66','42.58014','-2.84859','1495','2022-03-29 15:19:44','2022-03-29 15:19:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2296','64','0','42.56707','-2.84366','77','2022-03-29 15:19:58','2022-03-29 15:19:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2297','64','0','42.56707','-2.84366','1569','2022-03-29 15:20:27','2022-03-29 15:20:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2298','64','3','42.56707','-2.84366','1569','2022-03-29 15:20:30','2022-03-29 15:20:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2299','64','6','42.56707','-2.84366','1569','2022-03-29 15:20:33','2022-03-29 15:20:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2300','64','9','42.56707','-2.84366','1569','2022-03-29 15:20:37','2022-03-29 15:20:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2301','64','12','42.56707','-2.84366','1569','2022-03-29 15:20:39','2022-03-29 15:20:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2302','64','15','42.56707','-2.84366','1569','2022-03-29 15:20:42','2022-03-29 15:20:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2303','64','18','42.56707','-2.84366','1569','2022-03-29 15:20:45','2022-03-29 15:20:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2304','64','21','42.56707','-2.84366','1569','2022-03-29 15:20:48','2022-03-29 15:20:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2305','64','24','42.56707','-2.84366','1569','2022-03-29 15:20:52','2022-03-29 15:20:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2306','64','27','42.56707','-2.84366','1569','2022-03-29 15:20:54','2022-03-29 15:20:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2307','64','30','42.56707','-2.84366','1569','2022-03-29 15:20:57','2022-03-29 15:20:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2308','64','33','42.56707','-2.84366','1569','2022-03-29 15:21:00','2022-03-29 15:21:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2309','65','0','42.59321','-2.91934','100','2022-03-29 15:21:32','2022-03-29 15:21:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2310','65','0','42.56707','-2.84366','1569','2022-03-29 15:21:35','2022-03-29 15:21:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2311','65','3','42.56707','-2.84366','1569','2022-03-29 15:21:38','2022-03-29 15:21:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2312','65','6','42.56707','-2.84366','1569','2022-03-29 15:21:41','2022-03-29 15:21:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2313','65','9','42.56707','-2.84366','1569','2022-03-29 15:21:44','2022-03-29 15:21:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2314','65','12','42.56707','-2.84366','1569','2022-03-29 15:21:47','2022-03-29 15:21:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2315','65','15','42.56707','-2.84366','1569','2022-03-29 15:21:50','2022-03-29 15:21:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2316','65','18','42.56707','-2.84366','1569','2022-03-29 15:21:53','2022-03-29 15:21:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2317','65','21','42.56707','-2.84366','1569','2022-03-29 15:21:56','2022-03-29 15:21:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2318','65','24','42.56707','-2.84366','1569','2022-03-29 15:21:59','2022-03-29 15:21:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2319','65','27','42.56707','-2.84366','1569','2022-03-29 15:22:02','2022-03-29 15:22:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2320','65','30','42.59321','-2.91934','1718','2022-03-29 15:22:05','2022-03-29 15:22:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2321','65','33','42.59321','-2.91934','1718','2022-03-29 15:22:08','2022-03-29 15:22:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2322','65','36','42.59321','-2.91934','1718','2022-03-29 15:22:11','2022-03-29 15:22:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2323','65','39','42.59321','-2.91934','1718','2022-03-29 15:22:14','2022-03-29 15:22:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2324','65','42','42.59321','-2.91934','1718','2022-03-29 15:22:17','2022-03-29 15:22:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2325','65','45','42.59321','-2.91934','1718','2022-03-29 15:22:20','2022-03-29 15:22:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2326','65','48','42.59321','-2.91934','1718','2022-03-29 15:22:23','2022-03-29 15:22:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2327','65','51','42.59321','-2.91934','1718','2022-03-29 15:22:26','2022-03-29 15:22:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2328','65','54','42.59321','-2.91934','1718','2022-03-29 15:22:29','2022-03-29 15:22:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2329','65','57','42.59321','-2.91934','1718','2022-03-29 15:22:32','2022-03-29 15:22:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2330','65','60','42.59321','-2.91934','1718','2022-03-29 15:22:35','2022-03-29 15:22:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2331','65','63','42.59321','-2.91934','1718','2022-03-29 15:22:38','2022-03-29 15:22:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2332','66','0','42.62544','-3.12337','162','2022-03-29 15:22:53','2022-03-29 15:22:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2333','66','0','42.62544','-3.12337','2116','2022-03-29 15:23:26','2022-03-29 15:23:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2334','66','3','42.62544','-3.12337','2116','2022-03-29 15:23:29','2022-03-29 15:23:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2335','66','6','42.62544','-3.12337','2116','2022-03-29 15:23:32','2022-03-29 15:23:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2336','66','9','42.62544','-3.12337','2116','2022-03-29 15:23:35','2022-03-29 15:23:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2337','66','12','42.62544','-3.12337','2116','2022-03-29 15:23:38','2022-03-29 15:23:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2338','66','15','42.62544','-3.12337','2116','2022-03-29 15:23:41','2022-03-29 15:23:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2339','66','18','42.62544','-3.12337','2116','2022-03-29 15:23:44','2022-03-29 15:23:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2340','66','21','42.62544','-3.12337','2116','2022-03-29 15:23:47','2022-03-29 15:23:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2341','66','24','42.62544','-3.12337','2116','2022-03-29 15:23:50','2022-03-29 15:23:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2342','66','27','42.62544','-3.12337','2116','2022-03-29 15:23:53','2022-03-29 15:23:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2343','66','30','42.62544','-3.12337','2116','2022-03-29 15:23:56','2022-03-29 15:23:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2344','67','0','42.63881','-3.17396','193','2022-03-29 15:24:08','2022-03-29 15:24:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2345','67','0','42.62544','-3.12337','2116','2022-03-29 15:24:11','2022-03-29 15:24:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2346','67','3','42.62544','-3.12337','2116','2022-03-29 15:24:14','2022-03-29 15:24:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2347','67','6','42.62544','-3.12337','2116','2022-03-29 15:24:17','2022-03-29 15:24:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2348','67','9','42.62544','-3.12337','2116','2022-03-29 15:24:20','2022-03-29 15:24:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2349','67','12','42.62544','-3.12337','2116','2022-03-29 15:24:23','2022-03-29 15:24:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2350','67','15','42.62544','-3.12337','2116','2022-03-29 15:24:26','2022-03-29 15:24:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2351','67','18','42.62544','-3.12337','2116','2022-03-29 15:24:29','2022-03-29 15:24:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2352','67','21','42.62544','-3.12337','2116','2022-03-29 15:24:32','2022-03-29 15:24:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2353','67','24','42.62544','-3.12337','2116','2022-03-29 15:24:34','2022-03-29 15:24:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2354','67','27','42.63881','-3.17396','2314','2022-03-29 15:24:37','2022-03-29 15:24:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2355','67','30','42.63881','-3.17396','2314','2022-03-29 15:24:40','2022-03-29 15:24:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2356','67','33','42.63881','-3.17396','2314','2022-03-29 15:24:43','2022-03-29 15:24:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2357','67','36','42.63881','-3.17396','2314','2022-03-29 15:24:46','2022-03-29 15:24:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2358','67','39','42.63881','-3.17396','2314','2022-03-29 15:24:49','2022-03-29 15:24:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2359','67','42','42.63881','-3.17396','2314','2022-03-29 15:24:52','2022-03-29 15:24:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2360','67','45','42.63881','-3.17396','2314','2022-03-29 15:24:55','2022-03-29 15:24:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2361','67','48','42.63881','-3.17396','2314','2022-03-29 15:24:58','2022-03-29 15:24:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2362','67','51','42.63881','-3.17396','2314','2022-03-29 15:25:01','2022-03-29 15:25:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2363','67','54','42.63881','-3.17396','2314','2022-03-29 15:25:04','2022-03-29 15:25:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2364','67','57','42.63881','-3.17396','2314','2022-03-29 15:25:07','2022-03-29 15:25:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2365','68','0','42.50079','-3.05632','143','2022-03-29 15:25:21','2022-03-29 15:25:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2366','68','0','42.63881','-3.17396','2314','2022-03-29 15:25:24','2022-03-29 15:25:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2367','68','3','42.63881','-3.17396','2314','2022-03-29 15:25:26','2022-03-29 15:25:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2368','68','6','42.63881','-3.17396','2314','2022-03-29 15:25:30','2022-03-29 15:25:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2369','68','9','42.63881','-3.17396','2314','2022-03-29 15:25:32','2022-03-29 15:25:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2370','68','12','42.63881','-3.17396','2314','2022-03-29 15:25:36','2022-03-29 15:25:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2371','68','15','42.63881','-3.17396','2314','2022-03-29 15:25:38','2022-03-29 15:25:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2372','68','18','42.63881','-3.17396','2314','2022-03-29 15:25:41','2022-03-29 15:25:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2373','68','21','42.63881','-3.17396','2314','2022-03-29 15:25:44','2022-03-29 15:25:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2374','68','24','42.63881','-3.17396','2314','2022-03-29 15:25:48','2022-03-29 15:25:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2375','68','27','42.50079','-3.05632','1992','2022-03-29 15:25:50','2022-03-29 15:25:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2376','68','30','42.50079','-3.05632','1992','2022-03-29 15:25:53','2022-03-29 15:25:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2377','68','33','42.50079','-3.05632','1992','2022-03-29 15:25:56','2022-03-29 15:25:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2378','68','36','42.50079','-3.05632','1992','2022-03-29 15:25:59','2022-03-29 15:25:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2379','68','39','42.50079','-3.05632','1992','2022-03-29 15:26:02','2022-03-29 15:26:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2380','68','42','42.50079','-3.05632','1992','2022-03-29 15:26:05','2022-03-29 15:26:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2381','68','45','42.50079','-3.05632','1992','2022-03-29 15:26:08','2022-03-29 15:26:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2382','68','48','42.50079','-3.05632','1992','2022-03-29 15:26:11','2022-03-29 15:26:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2383','68','51','42.50079','-3.05632','1992','2022-03-29 15:26:14','2022-03-29 15:26:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2384','68','54','42.50079','-3.05632','1992','2022-03-29 15:26:17','2022-03-29 15:26:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2385','68','57','42.50079','-3.05632','1992','2022-03-29 15:26:20','2022-03-29 15:26:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2386','68','60','42.50079','-3.05632','1992','2022-03-29 15:26:23','2022-03-29 15:26:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2387','68','63','42.50079','-3.05632','1992','2022-03-29 15:26:26','2022-03-29 15:26:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2388','68','66','42.50079','-3.05632','1992','2022-03-29 15:26:29','2022-03-29 15:26:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2389','69','0','42.47586','-3.14722','185','2022-03-29 15:26:44','2022-03-29 15:26:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2390','69','0','42.50079','-3.05632','1992','2022-03-29 15:26:47','2022-03-29 15:26:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2391','69','3','42.50079','-3.05632','1992','2022-03-29 15:26:50','2022-03-29 15:26:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2392','69','6','42.50079','-3.05632','1992','2022-03-29 15:26:53','2022-03-29 15:26:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2393','69','9','42.50079','-3.05632','1992','2022-03-29 15:26:56','2022-03-29 15:26:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2394','69','12','42.50079','-3.05632','1992','2022-03-29 15:26:59','2022-03-29 15:26:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2395','69','15','42.50079','-3.05632','1992','2022-03-29 15:27:02','2022-03-29 15:27:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2396','69','18','42.50079','-3.05632','1992','2022-03-29 15:27:05','2022-03-29 15:27:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2397','69','21','42.50079','-3.05632','1992','2022-03-29 15:27:08','2022-03-29 15:27:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2398','69','24','42.50079','-3.05632','1992','2022-03-29 15:27:11','2022-03-29 15:27:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2399','69','27','42.47586','-3.14722','2265','2022-03-29 15:27:14','2022-03-29 15:27:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2400','69','30','42.47586','-3.14722','2265','2022-03-29 15:27:16','2022-03-29 15:27:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2401','70','0','42.47586','-3.14722','185','2022-03-29 15:27:30','2022-03-29 15:27:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2402','70','0','42.47586','-3.14722','2265','2022-03-29 15:28:02','2022-03-29 15:28:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2403','70','3','42.47586','-3.14722','2265','2022-03-29 15:28:05','2022-03-29 15:28:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2404','70','6','42.47586','-3.14722','2265','2022-03-29 15:28:08','2022-03-29 15:28:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2405','70','9','42.47586','-3.14722','2265','2022-03-29 15:28:11','2022-03-29 15:28:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2406','70','12','42.47586','-3.14722','2265','2022-03-29 15:28:14','2022-03-29 15:28:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2407','70','15','42.47586','-3.14722','2265','2022-03-29 15:28:17','2022-03-29 15:28:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2408','70','18','42.47586','-3.14722','2265','2022-03-29 15:28:20','2022-03-29 15:28:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2409','70','21','42.47586','-3.14722','2265','2022-03-29 15:28:23','2022-03-29 15:28:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2410','71','0','42.45914','-3.16985','197','2022-03-29 15:28:35','2022-03-29 15:28:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2411','71','0','42.45896','-3.16985','2339','2022-03-29 15:29:05','2022-03-29 15:29:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2412','71','3','42.45896','-3.16985','2339','2022-03-29 15:29:08','2022-03-29 15:29:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2413','71','6','42.45896','-3.16985','2339','2022-03-29 15:29:11','2022-03-29 15:29:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2414','71','9','42.45896','-3.16985','2339','2022-03-29 15:29:14','2022-03-29 15:29:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2415','71','12','42.45896','-3.16985','2339','2022-03-29 15:29:17','2022-03-29 15:29:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2416','71','15','42.45896','-3.16985','2339','2022-03-29 15:29:20','2022-03-29 15:29:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2417','71','18','42.45896','-3.16985','2339','2022-03-29 15:29:23','2022-03-29 15:29:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2418','71','21','42.45896','-3.16985','2339','2022-03-29 15:29:26','2022-03-29 15:29:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2419','71','24','42.45896','-3.16985','2339','2022-03-29 15:29:29','2022-03-29 15:29:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2420','72','0','42.64337','-2.7219','205','2022-03-29 15:29:42','2022-03-29 15:29:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2421','72','0','42.45896','-3.16985','2339','2022-03-29 15:29:44','2022-03-29 15:29:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2422','72','3','42.45896','-3.16985','2339','2022-03-29 15:29:47','2022-03-29 15:29:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2423','72','6','42.45896','-3.16985','2339','2022-03-29 15:29:50','2022-03-29 15:29:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2424','72','9','42.45896','-3.16985','2339','2022-03-29 15:29:53','2022-03-29 15:29:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2425','72','12','42.45896','-3.16985','2339','2022-03-29 15:29:56','2022-03-29 15:29:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2426','72','15','42.45896','-3.16985','2339','2022-03-29 15:30:00','2022-03-29 15:30:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2427','72','18','42.45896','-3.16985','2339','2022-03-29 15:30:02','2022-03-29 15:30:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2428','72','21','42.45896','-3.16985','2339','2022-03-29 15:30:06','2022-03-29 15:30:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2429','72','24','42.45896','-3.16985','2339','2022-03-29 15:30:09','2022-03-29 15:30:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2430','72','27','42.45896','-3.16985','2339','2022-03-29 15:30:11','2022-03-29 15:30:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2431','72','30','42.64337','-2.7219','2389','2022-03-29 15:30:14','2022-03-29 15:30:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2432','72','33','42.64337','-2.7219','2389','2022-03-29 15:30:17','2022-03-29 15:30:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2433','72','36','42.64337','-2.7219','2389','2022-03-29 15:30:20','2022-03-29 15:30:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2434','72','39','42.64337','-2.7219','2389','2022-03-29 15:30:23','2022-03-29 15:30:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2435','72','42','42.64337','-2.7219','2389','2022-03-29 15:30:26','2022-03-29 15:30:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2436','72','45','42.64337','-2.7219','2389','2022-03-29 15:30:29','2022-03-29 15:30:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2437','72','48','42.64337','-2.7219','2389','2022-03-29 15:30:32','2022-03-29 15:30:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2438','72','51','42.64337','-2.7219','2389','2022-03-29 15:30:35','2022-03-29 15:30:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2439','73','0','42.65614','-2.87533','73','2022-03-29 15:31:01','2022-03-29 15:31:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2440','73','0','42.65614','-2.87533','1545','2022-03-29 15:31:33','2022-03-29 15:31:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2441','73','3','42.65614','-2.87533','1545','2022-03-29 15:31:36','2022-03-29 15:31:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2442','73','6','42.65614','-2.87533','1545','2022-03-29 15:31:39','2022-03-29 15:31:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2443','73','9','42.65614','-2.87533','1545','2022-03-29 15:31:42','2022-03-29 15:31:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2444','73','12','42.65614','-2.87533','1545','2022-03-29 15:31:45','2022-03-29 15:31:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2445','73','15','42.65614','-2.87533','1545','2022-03-29 15:31:48','2022-03-29 15:31:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2446','73','18','42.65614','-2.87533','1545','2022-03-29 15:31:51','2022-03-29 15:31:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2447','74','0','42.64125','-2.86135','77','2022-03-29 15:32:05','2022-03-29 15:32:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2448','74','0','42.65614','-2.87533','1545','2022-03-29 15:32:08','2022-03-29 15:32:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2449','74','3','42.65614','-2.87533','1545','2022-03-29 15:32:11','2022-03-29 15:32:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2450','74','6','42.65614','-2.87533','1545','2022-03-29 15:32:14','2022-03-29 15:32:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2451','74','9','42.65614','-2.87533','1545','2022-03-29 15:32:17','2022-03-29 15:32:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2452','74','12','42.65614','-2.87533','1545','2022-03-29 15:32:20','2022-03-29 15:32:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2453','74','15','42.65614','-2.87533','1545','2022-03-29 15:32:23','2022-03-29 15:32:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2454','74','18','42.65614','-2.87533','1545','2022-03-29 15:32:26','2022-03-29 15:32:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2455','74','21','42.65614','-2.87533','1545','2022-03-29 15:32:29','2022-03-29 15:32:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2456','74','24','42.65614','-2.87533','1545','2022-03-29 15:32:32','2022-03-29 15:32:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2457','74','27','42.64125','-2.86135','1569','2022-03-29 15:32:35','2022-03-29 15:32:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2458','74','30','42.64125','-2.86135','1569','2022-03-29 15:32:38','2022-03-29 15:32:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2459','74','33','42.64125','-2.86135','1569','2022-03-29 15:32:41','2022-03-29 15:32:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2460','74','36','42.64125','-2.86135','1569','2022-03-29 15:32:44','2022-03-29 15:32:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2461','74','39','42.64125','-2.86135','1569','2022-03-29 15:32:47','2022-03-29 15:32:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2462','74','42','42.64125','-2.86135','1569','2022-03-29 15:32:50','2022-03-29 15:32:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2463','74','45','42.64125','-2.86135','1569','2022-03-29 15:32:53','2022-03-29 15:32:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2464','74','48','42.64125','-2.86135','1569','2022-03-29 15:32:56','2022-03-29 15:32:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2465','74','51','42.64125','-2.86135','1569','2022-03-29 15:32:59','2022-03-29 15:32:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2466','74','54','42.64125','-2.86135','1569','2022-03-29 15:33:02','2022-03-29 15:33:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2467','74','57','42.64125','-2.86135','1569','2022-03-29 15:33:05','2022-03-29 15:33:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2468','74','60','42.64125','-2.86135','1569','2022-03-29 15:33:08','2022-03-29 15:33:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2469','74','63','42.64125','-2.86135','1569','2022-03-29 15:33:11','2022-03-29 15:33:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2470','74','66','42.64125','-2.86135','1569','2022-03-29 15:33:14','2022-03-29 15:33:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2471','74','69','42.64125','-2.86135','1569','2022-03-29 15:33:17','2022-03-29 15:33:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2472','74','72','42.64125','-2.86135','1569','2022-03-29 15:33:20','2022-03-29 15:33:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2473','74','75','42.64125','-2.86135','1569','2022-03-29 15:33:23','2022-03-29 15:33:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2474','74','78','42.64125','-2.86135','1569','2022-03-29 15:33:26','2022-03-29 15:33:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2475','74','81','42.64125','-2.86135','1569','2022-03-29 15:33:29','2022-03-29 15:33:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2476','74','84','42.64125','-2.86135','1569','2022-03-29 15:33:32','2022-03-29 15:33:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2477','74','87','42.64125','-2.86135','1569','2022-03-29 15:33:35','2022-03-29 15:33:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2478','74','90','42.64125','-2.86135','1569','2022-03-29 15:33:38','2022-03-29 15:33:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2479','75','0','42.56372','-3.03863','116','2022-03-29 15:33:53','2022-03-29 15:33:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2480','75','0','42.64125','-2.86135','1569','2022-03-29 15:33:55','2022-03-29 15:33:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2481','75','3','42.64125','-2.86135','1569','2022-03-29 15:33:58','2022-03-29 15:33:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2482','75','6','42.64125','-2.86135','1569','2022-03-29 15:34:01','2022-03-29 15:34:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2483','75','9','42.64125','-2.86135','1569','2022-03-29 15:34:04','2022-03-29 15:34:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2484','75','12','42.64125','-2.86135','1569','2022-03-29 15:34:07','2022-03-29 15:34:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2485','75','15','42.64125','-2.86135','1569','2022-03-29 15:34:10','2022-03-29 15:34:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2486','75','18','42.56372','-3.03863','1818','2022-03-29 15:34:13','2022-03-29 15:34:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2487','75','21','42.56372','-3.03863','1818','2022-03-29 15:34:16','2022-03-29 15:34:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2488','75','24','42.56372','-3.03863','1818','2022-03-29 15:34:19','2022-03-29 15:34:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2489','75','27','42.56372','-3.03863','1818','2022-03-29 15:34:22','2022-03-29 15:34:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2490','75','30','42.56372','-3.03863','1818','2022-03-29 15:34:25','2022-03-29 15:34:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2491','75','33','42.56372','-3.03863','1818','2022-03-29 15:34:28','2022-03-29 15:34:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2492','75','36','42.56372','-3.03863','1818','2022-03-29 15:34:31','2022-03-29 15:34:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2493','75','39','42.56372','-3.03863','1818','2022-03-29 15:34:34','2022-03-29 15:34:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2494','75','42','42.56372','-3.03863','1818','2022-03-29 15:34:37','2022-03-29 15:34:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2495','75','45','42.56372','-3.03863','1818','2022-03-29 15:34:40','2022-03-29 15:34:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2496','75','48','42.56372','-3.03863','1818','2022-03-29 15:34:43','2022-03-29 15:34:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2497','75','51','42.56372','-3.03863','1818','2022-03-29 15:34:46','2022-03-29 15:34:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2498','75','54','42.56372','-3.03863','1818','2022-03-29 15:34:49','2022-03-29 15:34:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2499','75','57','42.56372','-3.03863','1818','2022-03-29 15:34:52','2022-03-29 15:34:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2500','75','60','42.56372','-3.03863','1818','2022-03-29 15:34:55','2022-03-29 15:34:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2501','75','63','42.56372','-3.03863','1818','2022-03-29 15:34:58','2022-03-29 15:34:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2502','75','66','42.56372','-3.03863','1818','2022-03-29 15:35:01','2022-03-29 15:35:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2503','75','69','42.56372','-3.03863','1818','2022-03-29 15:35:04','2022-03-29 15:35:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2504','75','72','42.56372','-3.03863','1818','2022-03-29 15:35:07','2022-03-29 15:35:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2505','75','75','42.56372','-3.03863','1818','2022-03-29 15:35:10','2022-03-29 15:35:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2506','75','78','42.56372','-3.03863','1818','2022-03-29 15:35:13','2022-03-29 15:35:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, created_at, updated_at) VALUES ('2507','75','81','42.56372','-3.03863','1818','2022-03-29 15:35:16','2022-03-29 15:35:16');


CREATE TABLE `takeoff_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` double NOT NULL DEFAULT 0,
  `z` double NOT NULL DEFAULT 0,
  `y` double NOT NULL DEFAULT 0,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `takeoff_points_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('1','Instalaciones de Globos Arcoiris','Finca de despegue de Globos Arcoirirs, Km 459, N-232, Cuzcurrita de Río Tirón.','3830','3945','42.82','42.556537','-2.97265','2022-02-28 09:41:47','2022-03-29 14:57:04');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('3','Carretera Anguciana','Finca de despegue situada entre las localidades de Haro y Anguciana, carretera LR-202.','5015','4190','34.57','42.572362780593','-2.8752175345637','2022-03-19 12:34:29','2022-03-29 14:58:38');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('4','Bugedo','Finca de despegue en Bugedo, Burgos.','3240','5470','46.13','42.64976','-3.02136','2022-03-19 12:44:21','2022-03-29 14:59:44');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('5','Miranda de Ebro','Punto de despegue en Miranda de Ebro, Burgos.','4065','6140','32.94','42.6905','-2.95349','2022-03-27 10:09:21','2022-03-29 15:01:56');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('6','Parking Poligono Industrial Miranda.','Punto de despegue en polígono industrial de Miranda de Ebro, junto a los Montes Obarenes.','4430','5625','34.6','42.65918','-2.92346','2022-03-27 10:10:09','2022-03-29 15:03:49');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('7','Ocio','Despegue en Ocio, entre los montes, junto al castillo de la localidad.','5760','5540','46.12','42.65401','-2.81404','2022-03-27 10:11:00','2022-03-29 15:06:24');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('8','Santo Domingo Oeste','Punto de despegue en Santo Domingo de la calzada.','3955','1945','72.48','42.43542','-2.96253','2022-03-27 13:50:33','2022-03-29 15:09:13');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('9','Santo Domingo Este','Finca de despegue en Santo Domingo de la Calzada','4220','1945','70.82','42.43542','-2.94073','2022-03-27 13:52:09','2022-03-29 15:10:10');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('10','Ezcaray','Punto de despegue en la localidad de Ezcaray.','3310','205','108.71','42.32963','-3.0156','2022-03-27 13:55:38','2022-03-29 15:11:20');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('11','Badarán','Finca de despegue en el municipio de Badarán.','5895','835','60.94','42.36793','-2.80294','2022-03-27 13:59:34','2022-03-29 15:15:37');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('12','Campo de Golf de Cirueña','Finca de despegue junto al campo de golf en Cirueña.','4840','1555','88.94','42.41171','-2.88973','2022-03-27 14:02:07','2022-03-29 15:24:23');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('13','Cidamón','Punto de despegue junto al municipio de Cidamón.','4995','2915','59.29','42.4944','-2.87698','2022-03-27 14:05:55','2022-03-29 15:18:21');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('14','Haro, Barrio de las bodegas','Despegue en Haro, junto al barrio de las bodegas y las piscinas municipales.','5340','4325','28','42.58014','-2.84859','2022-03-27 14:08:25','2022-03-29 15:19:42');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('15','Haro, el Mazo','Finca de despegue en el Mazo, junto al campo de futbol.','5400','4110','32.95','42.56707','-2.84366','2022-03-27 14:10:49','2022-03-29 15:21:02');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('16','Hermita de la Esclavitud, Cihuri','Finca de despegue junto a la Hermita de la Esclavitud, en Cihuri.','4480','4540','42.83','42.59321','-2.91934','2022-03-27 14:13:36','2022-03-29 15:24:17');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('17','Pancorbo','Punto de despegue en Pancorbo, Burgos.','2000','5070','69.18','42.62544','-3.12337','2022-03-27 14:15:48','2022-03-29 15:23:55');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('18','Parquing restaurante, Santa María Ribarredonda','Punto de despegue en Santa María Ribarredonda, Burgos.','1385','5290','82.36','42.63881','-3.17396','2022-03-27 14:23:05','2022-03-29 15:25:09');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('19','Leiva','Finca de despegue en la localidad de Leiva, junto al pantano del río Tirón.','2815','3020','60.94','42.50079','-3.05632','2022-03-27 14:30:44','2022-03-29 15:26:30');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('20','Cerezo de Río Tirón','Fincas de despegue en Cerezo de Río Tirón junto a las minas de Glauberita.','1710','2610','79.07','42.47586','-3.14722','2022-03-27 14:36:06','2022-03-29 15:28:24');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('21','Campo de Fútbol de Fresno','Campo de despegue en Fresno de Río Tirón, Burgos.','1435','2332','84','42.45914','-3.16985','2022-03-27 14:41:06','2022-03-29 15:29:29');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('22','Peñacerrada','Finca de despegue en Peñacerrada, junto al Toloño.','6880','5365','87.3','42.64337','-2.7219','2022-03-27 19:15:12','2022-03-29 15:30:36');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('23','Zambrana','Finca de despegue en Zambrana, Burgos.','5015','5575','31.3','42.65614','-2.87533','2022-03-27 19:16:59','2022-03-29 15:31:51');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('24','Montes Obarenes - San Felices','Finca de despegue en Álaba, cerca del monte San Felices, junto al Ebro.','5185','5330','32.94','42.64125','-2.86135','2022-03-27 19:19:55','2022-03-29 15:33:38');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, created_at, updated_at) VALUES ('25','Treviana','Finca de despegue cerca de Treviana.','3030','4055','49.42','42.56372','-3.03863','2022-03-29 14:38:44','2022-03-29 15:35:11');
