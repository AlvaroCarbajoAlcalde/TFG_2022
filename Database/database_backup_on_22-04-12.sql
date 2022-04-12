

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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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

INSERT INTO migrations (id, migration, batch) VALUES ('20','2022_03_28_170944_create_flights_table','15');

INSERT INTO migrations (id, migration, batch) VALUES ('21','2022_04_10_122944_create_weather_table','16');

INSERT INTO migrations (id, migration, batch) VALUES ('22','2022_04_10_123219_create_winds_table','16');


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
) ENGINE=InnoDB AUTO_INCREMENT=6535 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `takeoff_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` double NOT NULL DEFAULT 0,
  `z` double NOT NULL DEFAULT 0,
  `y` double NOT NULL DEFAULT 0,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `takeoff_points_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('1','Instalaciones de Globos Arcoíris','Finca de despegue de Globos Arcoirirs, Km 459, N-232, Cuzcurrita de Río Tirón.','3830','3945','42.82','42.55654','-2.97265','instalacines.png','2022-02-28 09:41:47','2022-04-12 12:23:09');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('3','Carretera Anguciana','Finca de despegue situada entre las localidades de Haro y Anguciana, carretera LR-202.','5015','4190','34.57','42.57236','-2.87522','haro3.png','2022-03-19 12:34:29','2022-04-12 12:23:29');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('4','Bugedo','Finca de despegue en Bugedo, Burgos. Despegue ideal para cruzar los Obarenes.','3240','5470','46.13','42.64976','-3.02136','bugedo.png','2022-03-19 12:44:21','2022-04-02 14:25:00');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('5','Miranda de Ebro','Punto de despegue en Miranda de Ebro, Burgos.','4065','6140','32.94','42.6905','-2.95349','miranda.png','2022-03-27 10:09:21','2022-04-02 14:29:01');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('6','Parking Polígono Industrial Miranda','Punto de despegue en polígono industrial de Miranda de Ebro, junto a los Montes Obarenes.','4430','5625','34.6','42.65918','-2.92346','miranda2.png','2022-03-27 10:10:09','2022-04-10 11:18:57');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('7','Ocio','Despegue en Ocio, entre los montes, junto al castillo de la localidad.','5760','5540','46.12','42.65401','-2.81404','ocio.png','2022-03-27 10:11:00','2022-04-02 14:31:00');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('8','Santo Domingo Oeste','Punto de despegue en Santo Domingo de la calzada.','3955','1945','72.48','42.43542','-2.96253','sto.png','2022-03-27 13:50:33','2022-04-02 14:35:25');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('9','Santo Domingo Este','Finca de despegue en Santo Domingo de la Calzada','4220','1945','70.82','42.43542','-2.94073','ste.png','2022-03-27 13:52:09','2022-04-02 14:35:35');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('10','Ezcaray','Punto de despegue en la localidad de Ezcaray.','3310','205','108.71','42.32963','-3.0156','ezcaray.png','2022-03-27 13:55:38','2022-04-02 14:48:15');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('11','Badarán','Finca de despegue en el municipio de Badarán.','5895','835','60.94','42.36793','-2.80294','badaran.png','2022-03-27 13:59:34','2022-04-02 14:48:22');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('12','Campo de Golf de Cirueña','Finca de despegue junto al campo de golf en Cirueña.','4840','1555','88.94','42.41171','-2.88973','golf.png','2022-03-27 14:02:07','2022-04-02 14:49:45');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('13','Cidamón','Punto de despegue junto al municipio de Cidamón.','4995','2915','59.29','42.4944','-2.87698','cidamon.png','2022-03-27 14:05:55','2022-04-02 14:48:32');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('14','Haro, Barrio de las bodegas','Despegue en Haro, junto al barrio de las bodegas y las piscinas municipales.','5340','4325','28','42.58014','-2.84859','bodegas.png','2022-03-27 14:08:25','2022-04-02 14:20:56');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('15','Haro, el Mazo','Finca de despegue en el Mazo, junto al campo de futbol.','5400','4110','32.95','42.56707','-2.84366','mazo.png','2022-03-27 14:10:49','2022-04-02 14:18:53');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('16','Hermita de la Esclavitud, Cihuri','Finca de despegue junto a la Hermita de la Esclavitud, en Cihuri.','4480','4540','42.83','42.59321','-2.91934','hc.png','2022-03-27 14:13:36','2022-04-02 14:53:06');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('17','Pancorbo','Punto de despegue en Pancorbo, Burgos.','2000','5070','69.18','42.62544','-3.12337','pancorbo.png','2022-03-27 14:15:48','2022-04-02 14:26:06');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('18','Parquing restaurante, Santa María Ribarredonda','Punto de despegue en Santa María Ribarredonda, Burgos.','1385','5290','82.36','42.63881','-3.17396','riba.png','2022-03-27 14:23:05','2022-04-02 14:46:23');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('19','Leiva','Finca de despegue en la localidad de Leiva, junto al pantano del río Tirón.','2815','3020','60.94','42.50079','-3.05632','leiva.png','2022-03-27 14:30:44','2022-04-02 14:47:50');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('20','Cerezo de Río Tirón','Fincas de despegue en Cerezo de Río Tirón junto a las minas de Glauberita.','1710','2610','79.07','42.47586','-3.14722','cerezo.png','2022-03-27 14:36:06','2022-04-02 14:49:57');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('21','Campo de Fútbol de Fresno','Campo de despegue en Fresno de Río Tirón, Burgos.','1435','2332','84','42.45914','-3.16985','fresno.png','2022-03-27 14:41:06','2022-04-02 14:45:00');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('22','Peñacerrada','Finca de despegue en Peñacerrada, junto al Toloño.','6880','5365','87.3','42.64337','-2.7219','pegnacerrada.png','2022-03-27 19:15:12','2022-04-02 14:02:12');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('23','Zambrana','Finca de despegue en Zambrana, Burgos.','5015','5575','31.3','42.65614','-2.87533','zambrana.png','2022-03-27 19:16:59','2022-04-02 14:42:56');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('24','Montes Obarenes - San Felices','Finca de despegue en Álaba, cerca del monte San Felices, junto al Ebro.','5185','5330','32.94','42.64125','-2.86135','sf.png','2022-03-27 19:19:55','2022-04-02 14:41:33');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('25','Treviana','Finca de despegue cerca de Treviana.','3030','4055','49.42','42.56372','-3.03863','treviana.png','2022-03-29 14:38:44','2022-04-02 14:44:52');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('26','Anguciana','Finca de despegue en la localidad de Anguciana.','4580','4200','36.23','42.57254','-2.91112','anguciana.png','2022-04-03 14:41:54','2022-04-03 14:41:54');
