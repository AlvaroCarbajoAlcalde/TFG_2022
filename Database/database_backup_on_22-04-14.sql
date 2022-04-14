

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
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('276','Sin nombre','2022-04-14','Hermita de la Esclavitud, Cihuri','2022-04-14 16:53:26','2022-04-14 16:53:26');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('277','Prueba de datos para graficas','2022-04-14','Peñacerrada','2022-04-14 17:21:08','2022-04-14 17:21:08');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('278','Treviana tracking','2022-04-14','Treviana','2022-04-14 19:35:28','2022-04-14 19:35:28');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('279','Vuelo por ezcaray','2022-04-14','Ezcaray','2022-04-14 19:52:48','2022-04-14 19:52:48');


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
  `speed` double NOT NULL,
  `speedy` double NOT NULL,
  `direction` double NOT NULL,
  `fuel` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8559 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7915','276','0','42.59321','-2.91934','525','0','0','0','100','2022-04-14 16:53:28','2022-04-14 16:53:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7916','276','3','42.59328','-2.91932','527','3','1.76','13','94.4','2022-04-14 16:53:59','2022-04-14 16:53:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7917','276','6','42.59336','-2.9193','535','3','3.87','13','92.4','2022-04-14 16:54:02','2022-04-14 16:54:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7918','276','9','42.59344','-2.91927','550','3','5.98','13','90.4','2022-04-14 16:54:05','2022-04-14 16:54:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7919','276','12','42.59352','-2.91925','569','3','6.074','13','90','2022-04-14 16:54:08','2022-04-14 16:54:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7920','276','15','42.59359','-2.91923','586','3','6.42','13','89.4','2022-04-14 16:54:11','2022-04-14 16:54:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7921','276','18','42.59368','-2.91922','609','4','8.54','341','87.4','2022-04-14 16:54:14','2022-04-14 16:54:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7922','276','21','42.59378','-2.91927','637','4','10.65','341','85.4','2022-04-14 16:54:17','2022-04-14 16:54:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7923','276','24','42.59389','-2.91932','672','4','11.52','341','84.4','2022-04-14 16:54:20','2022-04-14 16:54:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7924','276','27','42.59399','-2.91935','705','5','11.12','24','84.4','2022-04-14 16:54:23','2022-04-14 16:54:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7925','276','30','42.59411','-2.91928','737','5','10.72','24','84.4','2022-04-14 16:54:26','2022-04-14 16:54:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7926','276','33','42.59423','-2.91921','769','5','10.32','24','84.4','2022-04-14 16:54:29','2022-04-14 16:54:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7927','276','36','42.59436','-2.91913','799','5','9.92','24','84.4','2022-04-14 16:54:32','2022-04-14 16:54:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7928','276','39','42.59448','-2.91906','828','5','9.52','24','84.4','2022-04-14 16:54:35','2022-04-14 16:54:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7929','276','42','42.59459','-2.91899','856','2','9.1200000000001','33','84.4','2022-04-14 16:54:38','2022-04-14 16:54:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7930','276','45','42.59464','-2.91895','882','2','8.7100000000001','33','84.4','2022-04-14 16:54:41','2022-04-14 16:54:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7931','276','48','42.59468','-2.91891','908','2','8.3100000000001','33','84.4','2022-04-14 16:54:44','2022-04-14 16:54:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7932','276','51','42.59472','-2.91888','928','2','7.9000000000001','33','84.4','2022-04-14 16:54:47','2022-04-14 16:54:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7933','276','54','42.59476','-2.91884','951','2','7.5000000000001','33','84.4','2022-04-14 16:54:50','2022-04-14 16:54:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7934','276','57','42.59481','-2.9188','973','2','7.0900000000001','33','84.4','2022-04-14 16:54:53','2022-04-14 16:54:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7935','276','60','42.59482','-2.91858','993','7','6.6900000000001','90','84.4','2022-04-14 16:54:56','2022-04-14 16:54:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7936','276','63','42.59482','-2.91833','1013','7','6.2800000000001','90','84.4','2022-04-14 16:54:59','2022-04-14 16:54:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7937','276','66','42.59482','-2.91807','1031','7','5.87','90','84.4','2022-04-14 16:55:02','2022-04-14 16:55:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7938','276','69','42.59482','-2.91782','1047','7','5.46','90','84.4','2022-04-14 16:55:05','2022-04-14 16:55:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7939','276','72','42.59482','-2.91757','1063','7','5.05','90','84.4','2022-04-14 16:55:08','2022-04-14 16:55:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7940','276','75','42.59482','-2.91733','1076','7','4.64','90','84.4','2022-04-14 16:55:11','2022-04-14 16:55:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7941','276','78','42.59482','-2.9171','1088','7','4.23','90','84.4','2022-04-14 16:55:14','2022-04-14 16:55:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7942','276','81','42.59482','-2.91687','1099','7','3.81','90','84.4','2022-04-14 16:55:17','2022-04-14 16:55:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7943','276','84','42.59482','-2.91662','1109','7','3.4','90','84.4','2022-04-14 16:55:20','2022-04-14 16:55:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7944','276','87','42.59482','-2.91637','1119','7','2.99','90','84.4','2022-04-14 16:55:23','2022-04-14 16:55:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7945','276','90','42.59482','-2.91611','1127','7','2.57','90','84.4','2022-04-14 16:55:26','2022-04-14 16:55:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7946','276','93','42.59482','-2.91585','1134','7','2.16','90','84.4','2022-04-14 16:55:29','2022-04-14 16:55:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7947','276','96','42.59482','-2.9156','1140','7','1.278','90','84.4','2022-04-14 16:55:32','2022-04-14 16:55:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7948','276','99','42.59482','-2.91534','1139','7','-1.452','90','84.4','2022-04-14 16:55:35','2022-04-14 16:55:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7949','276','102','42.59482','-2.91508','1131','7','-4.192','90','84.4','2022-04-14 16:55:38','2022-04-14 16:55:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7950','276','105','42.59482','-2.91482','1114','7','-6.932','90','84.4','2022-04-14 16:55:41','2022-04-14 16:55:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7951','276','108','42.59482','-2.91457','1090','7','-9.672','90','84.4','2022-04-14 16:55:44','2022-04-14 16:55:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7952','276','111','42.59482','-2.91432','1058','7','-12.422','90','84.4','2022-04-14 16:55:47','2022-04-14 16:55:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7953','276','114','42.59482','-2.91406','1017','7','-14.258','90','84.4','2022-04-14 16:55:50','2022-04-14 16:55:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7954','276','117','42.59482','-2.9138','973','2','-14.708','33','84.4','2022-04-14 16:55:53','2022-04-14 16:55:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7955','276','120','42.59486','-2.91376','931','2','-13.394','33','83','2022-04-14 16:55:56','2022-04-14 16:55:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7956','276','123','42.59491','-2.91372','893','2','-11.314','33','81','2022-04-14 16:55:59','2022-04-14 16:55:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7957','276','126','42.59495','-2.91368','863','2','-9.234','33','79','2022-04-14 16:56:02','2022-04-14 16:56:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7958','276','129','42.59504','-2.91363','838','5','-7.154','24','77','2022-04-14 16:56:05','2022-04-14 16:56:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7959','276','132','42.59516','-2.91355','820','5','-5.064','24','75','2022-04-14 16:56:08','2022-04-14 16:56:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7960','276','135','42.59528','-2.91348','807','5','-4.486','24','74.2','2022-04-14 16:56:11','2022-04-14 16:56:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7961','276','138','42.59541','-2.9134','791','5','-6.764','24','74.2','2022-04-14 16:56:14','2022-04-14 16:56:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7962','276','141','42.59553','-2.91333','766','5','-8.811','24','74.2','2022-04-14 16:56:17','2022-04-14 16:56:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7963','276','144','42.59565','-2.91326','740','5','-7.991','24','73.2','2022-04-14 16:56:20','2022-04-14 16:56:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7964','276','147','42.59578','-2.91318','718','5','-6.762','24','72.1','2022-04-14 16:56:23','2022-04-14 16:56:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7965','276','150','42.5959','-2.91311','700','4','-5.552','341','71.1','2022-04-14 16:56:26','2022-04-14 16:56:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7966','276','153','42.59601','-2.91315','685','4','-4.322','341','70.1','2022-04-14 16:56:29','2022-04-14 16:56:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7967','276','156','42.59611','-2.9132','673','4','-3.927','341','69.6','2022-04-14 16:56:32','2022-04-14 16:56:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7968','276','159','42.59621','-2.91325','661','4','-4.357','341','69.6','2022-04-14 16:56:35','2022-04-14 16:56:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7969','276','162','42.59631','-2.9133','648','4','-4.787','341','69.6','2022-04-14 16:56:38','2022-04-14 16:56:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7970','276','165','42.59641','-2.91334','633','4','-4.392','341','69.1','2022-04-14 16:56:41','2022-04-14 16:56:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7971','276','168','42.59652','-2.91339','622','4','-3.667','341','68.4','2022-04-14 16:56:44','2022-04-14 16:56:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7972','276','171','42.59662','-2.91344','610','4','-4.087','341','68.4','2022-04-14 16:56:47','2022-04-14 16:56:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7973','276','174','42.59672','-2.91349','601','4','-1.997','341','66.4','2022-04-14 16:56:50','2022-04-14 16:56:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7974','276','177','42.59681','-2.91348','597','3','-1.409','13','65.6','2022-04-14 16:56:53','2022-04-14 16:56:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7975','276','180','42.59688','-2.91345','592','3','-1.509','13','65.4','2022-04-14 16:56:56','2022-04-14 16:56:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7976','276','183','42.59696','-2.91343','587','3','-2.919','13','65.3','2022-04-14 16:56:59','2022-04-14 16:56:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7977','276','186','42.59704','-2.9134','577','3','-2.551','13','64.3','2022-04-14 16:57:02','2022-04-14 16:57:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7978','276','189','42.59712','-2.91338','570','3','-1.972','13','63.6','2022-04-14 16:57:05','2022-04-14 16:57:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7979','276','192','42.5972','-2.91335','566','3','-0.74199999999998','13','62.6','2022-04-14 16:57:08','2022-04-14 16:57:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7980','276','195','42.59728','-2.91333','565','3','-0.66699999999998','13','62.3','2022-04-14 16:57:11','2022-04-14 16:57:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7981','276','198','42.59736','-2.9133','563','3','-0.75699999999999','13','62.1','2022-04-14 16:57:14','2022-04-14 16:57:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7982','276','201','42.59743','-2.91328','561','3','-0.36199999999999','13','61.6','2022-04-14 16:57:17','2022-04-14 16:57:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7983','276','204','42.59751','-2.91326','559','3','-1.013','13','61.6','2022-04-14 16:57:20','2022-04-14 16:57:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7984','276','207','42.59759','-2.91323','556','3','-0.60799999999999','13','61.1','2022-04-14 16:57:23','2022-04-14 16:57:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7985','276','210','42.59767','-2.91321','555','3','-0.69799999999999','13','60.9','2022-04-14 16:57:26','2022-04-14 16:57:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7986','277','0','42.64337','-2.7219','725','0','0','0','100','2022-04-14 17:21:10','2022-04-14 17:21:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7987','277','3','42.64348','-2.72184','727','5','1.81','24','95.2','2022-04-14 17:21:50','2022-04-14 17:21:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7988','277','6','42.64361','-2.72176','736','5','3.406','24','93.6','2022-04-14 17:21:53','2022-04-14 17:21:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7989','277','9','42.64372','-2.72169','745','5','2.996','24','93.6','2022-04-14 17:21:56','2022-04-14 17:21:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7990','277','12','42.64385','-2.72162','753','5','2.586','24','93.6','2022-04-14 17:21:59','2022-04-14 17:21:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7991','277','15','42.64397','-2.72154','762','5','3.486','24','92.8','2022-04-14 17:22:02','2022-04-14 17:22:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7992','277','18','42.64409','-2.72147','773','5','4.066','24','92.2','2022-04-14 17:22:05','2022-04-14 17:22:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7993','277','21','42.64421','-2.7214','784','5','3.656','24','92.2','2022-04-14 17:22:08','2022-04-14 17:22:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7994','277','24','42.64433','-2.72133','794','5','3.236','24','92.2','2022-04-14 17:22:11','2022-04-14 17:22:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7995','277','27','42.64444','-2.72126','802','5','2.826','24','92.2','2022-04-14 17:22:14','2022-04-14 17:22:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7996','277','30','42.64455','-2.7212','809','5','3.231','24','91.7','2022-04-14 17:22:17','2022-04-14 17:22:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7997','277','33','42.64466','-2.72113','820','5','4.471','24','90.7','2022-04-14 17:22:20','2022-04-14 17:22:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7998','277','36','42.64479','-2.72105','836','5','5.711','24','89.7','2022-04-14 17:22:23','2022-04-14 17:22:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('7999','277','39','42.6449','-2.72098','852','2','5.301','33','89.7','2022-04-14 17:22:26','2022-04-14 17:22:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8000','277','42','42.64495','-2.72094','867','2','4.891','33','89.7','2022-04-14 17:22:29','2022-04-14 17:22:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8001','277','45','42.64499','-2.7209','880','2','4.481','33','89.7','2022-04-14 17:22:32','2022-04-14 17:22:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8002','277','48','42.64503','-2.72087','892','2','4.071','33','89.7','2022-04-14 17:22:35','2022-04-14 17:22:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8003','277','51','42.64508','-2.72083','903','2','3.651','33','89.7','2022-04-14 17:22:38','2022-04-14 17:22:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8004','277','54','42.64512','-2.72079','912','2','3.241','33','89.7','2022-04-14 17:22:41','2022-04-14 17:22:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8005','277','57','42.64516','-2.72075','921','2','2.831','33','89.7','2022-04-14 17:22:44','2022-04-14 17:22:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8006','277','60','42.6452','-2.72071','929','2','2.411','33','89.7','2022-04-14 17:22:48','2022-04-14 17:22:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8007','277','63','42.64525','-2.72068','937','2','4.017','33','88.1','2022-04-14 17:22:50','2022-04-14 17:22:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8008','277','66','42.64529','-2.72064','950','2','5.109','33','86.9','2022-04-14 17:22:53','2022-04-14 17:22:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8009','277','69','42.64533','-2.72061','962','2','4.699','33','86.9','2022-04-14 17:22:56','2022-04-14 17:22:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8010','277','72','42.64536','-2.72057','973','2','4.289','33','86.9','2022-04-14 17:22:59','2022-04-14 17:22:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8011','277','75','42.64537','-2.7204','983','7','3.879','90','86.9','2022-04-14 17:23:02','2022-04-14 17:23:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8012','277','78','42.64537','-2.72017','993','7','3.459','90','86.9','2022-04-14 17:23:05','2022-04-14 17:23:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8013','277','81','42.64537','-2.71991','1004','7','4.561','90','85.7','2022-04-14 17:23:08','2022-04-14 17:23:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8014','277','84','42.64537','-2.71966','1021','7','5.915','90','84.3','2022-04-14 17:23:11','2022-04-14 17:23:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8015','277','87','42.64537','-2.7194','1038','7','5.505','90','84.3','2022-04-14 17:23:14','2022-04-14 17:23:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8016','277','90','42.64537','-2.71917','1052','7','5.095','90','84.3','2022-04-14 17:23:17','2022-04-14 17:23:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8017','277','93','42.64537','-2.71895','1065','7','4.685','90','84.3','2022-04-14 17:23:20','2022-04-14 17:23:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8018','277','96','42.64537','-2.71874','1077','7','5.265','90','83.7','2022-04-14 17:23:23','2022-04-14 17:23:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8019','277','99','42.64537','-2.71854','1089','7','4.845','90','83.7','2022-04-14 17:23:26','2022-04-14 17:23:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8020','277','102','42.64537','-2.71834','1101','7','5.755','90','82.9','2022-04-14 17:23:29','2022-04-14 17:23:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8021','277','105','42.64537','-2.71811','1117','7','6.005','90','82.5','2022-04-14 17:23:32','2022-04-14 17:23:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8022','277','108','42.64537','-2.71786','1134','7','5.595','90','82.5','2022-04-14 17:23:35','2022-04-14 17:23:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8023','277','111','42.64537','-2.71761','1150','7','5.185','90','82.5','2022-04-14 17:23:38','2022-04-14 17:23:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8024','277','114','42.64537','-2.71737','1164','7','4.775','90','82.5','2022-04-14 17:23:41','2022-04-14 17:23:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8025','277','117','42.64537','-2.71713','1176','7','4.365','90','82.5','2022-04-14 17:23:44','2022-04-14 17:23:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8026','277','120','42.64537','-2.7169','1188','7','4.78','90','82','2022-04-14 17:23:47','2022-04-14 17:23:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8027','277','123','42.64537','-2.7167','1202','1','6.02','122','81','2022-04-14 17:23:50','2022-04-14 17:23:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8028','277','126','42.64536','-2.71667','1216','1','5.775','122','80.9','2022-04-14 17:23:53','2022-04-14 17:23:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8029','277','129','42.64535','-2.71665','1230','1','5.365','122','80.9','2022-04-14 17:23:56','2022-04-14 17:23:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8030','277','132','42.64533','-2.71662','1245','1','4.955','122','80.9','2022-04-14 17:23:59','2022-04-14 17:23:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8031','277','135','42.64532','-2.71659','1259','1','4.535','122','80.9','2022-04-14 17:24:02','2022-04-14 17:24:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8032','277','138','42.6453','-2.71656','1271','1','4.125','122','80.9','2022-04-14 17:24:05','2022-04-14 17:24:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8033','277','141','42.64529','-2.71653','1282','1','3.715','122','80.9','2022-04-14 17:24:08','2022-04-14 17:24:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8034','277','144','42.64528','-2.7165','1290','1','3.3049999999999','122','80.9','2022-04-14 17:24:11','2022-04-14 17:24:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8035','277','147','42.64527','-2.71648','1298','1','3.0499999999999','122','80.8','2022-04-14 17:24:14','2022-04-14 17:24:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8036','277','150','42.64526','-2.71645','1306','1','3.7949999999999','122','80.1','2022-04-14 17:24:17','2022-04-14 17:24:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8037','277','153','42.64524','-2.71643','1316','1','3.3749999999999','122','80.1','2022-04-14 17:24:20','2022-04-14 17:24:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8038','277','156','42.64523','-2.71639','1325','1','2.9649999999999','122','80.1','2022-04-14 17:24:23','2022-04-14 17:24:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8039','277','159','42.64522','-2.71636','1333','1','2.5449999999999','122','80.1','2022-04-14 17:24:26','2022-04-14 17:24:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8040','277','162','42.6452','-2.71633','1341','1','3.1249999999999','122','79.5','2022-04-14 17:24:29','2022-04-14 17:24:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8041','277','165','42.64519','-2.7163','1351','1','4.1899999999999','122','78.6','2022-04-14 17:24:32','2022-04-14 17:24:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8042','277','168','42.64518','-2.71628','1361','1','3.7799999999999','122','78.6','2022-04-14 17:24:35','2022-04-14 17:24:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8043','277','171','42.64516','-2.71625','1370','1','3.3699999999999','122','78.6','2022-04-14 17:24:38','2022-04-14 17:24:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8044','277','174','42.64515','-2.71623','1378','1','3.2799999999999','122','78.4','2022-04-14 17:24:41','2022-04-14 17:24:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8045','277','177','42.64514','-2.7162','1387','1','4.5199999999999','122','77.4','2022-04-14 17:24:44','2022-04-14 17:24:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8046','277','180','42.64513','-2.71617','1401','11','4.6049999999999','245','77.1','2022-04-14 17:24:47','2022-04-14 17:24:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8047','277','183','42.645','-2.71653','1414','11','4.1949999999999','245','77.1','2022-04-14 17:24:50','2022-04-14 17:24:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8048','277','186','42.64488','-2.71689','1425','11','3.7749999999999','245','77.1','2022-04-14 17:24:53','2022-04-14 17:24:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8049','277','189','42.64477','-2.71722','1435','11','3.3649999999999','245','77.1','2022-04-14 17:24:56','2022-04-14 17:24:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8050','277','192','42.64465','-2.71755','1443','11','2.9449999999999','245','77.1','2022-04-14 17:24:59','2022-04-14 17:24:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8051','277','195','42.64455','-2.71786','1450','11','2.5349999999999','245','77.1','2022-04-14 17:25:02','2022-04-14 17:25:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8052','277','198','42.64445','-2.71815','1456','11','2.1149999999999','245','77.1','2022-04-14 17:25:05','2022-04-14 17:25:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8053','277','201','42.64435','-2.71843','1460','11','1.7049999999999','245','77.1','2022-04-14 17:25:08','2022-04-14 17:25:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8054','277','204','42.64426','-2.7187','1463','11','1.2849999999999','245','77.1','2022-04-14 17:25:11','2022-04-14 17:25:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8055','277','207','42.64414','-2.71904','1466','11','1.3599999999999','245','76.8','2022-04-14 17:25:14','2022-04-14 17:25:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8056','277','210','42.64402','-2.7194','1470','11','0.93999999999992','245','76.8','2022-04-14 17:25:17','2022-04-14 17:25:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8057','277','213','42.6439','-2.71975','1473','11','1.1799999999999','245','76.400000000001','2022-04-14 17:25:20','2022-04-14 17:25:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8058','277','216','42.64378','-2.72008','1476','11','0.76999999999992','245','76.400000000001','2022-04-14 17:25:23','2022-04-14 17:25:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8059','277','219','42.64367','-2.7204','1478','11','0.67999999999991','245','76.200000000001','2022-04-14 17:25:26','2022-04-14 17:25:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8060','277','222','42.64357','-2.72071','1480','11','1.5799999999999','245','75.400000000001','2022-04-14 17:25:29','2022-04-14 17:25:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8061','277','225','42.64347','-2.72101','1484','11','1.1599999999999','245','75.400000000001','2022-04-14 17:25:32','2022-04-14 17:25:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8062','277','228','42.64337','-2.72129','1486','11','1.5649999999999','245','74.900000000001','2022-04-14 17:25:35','2022-04-14 17:25:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8063','277','231','42.64326','-2.7216','1490','11','1.1449999999999','245','74.900000000001','2022-04-14 17:25:38','2022-04-14 17:25:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8064','277','234','42.64314','-2.72196','1492','11','0.7349999999999','245','74.900000000001','2022-04-14 17:25:41','2022-04-14 17:25:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8065','277','237','42.64302','-2.72232','1494','11','0.9749999999999','245','74.500000000001','2022-04-14 17:25:44','2022-04-14 17:25:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8066','277','240','42.6429','-2.72266','1497','11','0.5549999999999','245','74.500000000001','2022-04-14 17:25:47','2022-04-14 17:25:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8067','277','243','42.64278','-2.72299','1499','11','1.4549999999999','245','73.700000000001','2022-04-14 17:25:50','2022-04-14 17:25:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8068','277','246','42.64268','-2.72331','1504','11','2.1899999999999','245','73.000000000001','2022-04-14 17:25:53','2022-04-14 17:25:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8069','277','249','42.64257','-2.72361','1509','11','1.7799999999999','245','73.000000000001','2022-04-14 17:25:56','2022-04-14 17:25:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8070','277','252','42.64248','-2.7239','1513','11','1.3599999999999','245','73.000000000001','2022-04-14 17:25:59','2022-04-14 17:25:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8071','277','255','42.64236','-2.72422','1516','11','0.93999999999989','245','73.000000000001','2022-04-14 17:26:02','2022-04-14 17:26:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8072','277','258','42.64224','-2.72459','1518','11','0.51999999999989','245','73.000000000001','2022-04-14 17:26:05','2022-04-14 17:26:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8073','277','261','42.64211','-2.72494','1519','11','0.099999999999886','245','73.000000000001','2022-04-14 17:26:08','2022-04-14 17:26:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8074','277','264','42.642','-2.72528','1518','11','-0.32000000000012','245','73.000000000001','2022-04-14 17:26:11','2022-04-14 17:26:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8075','277','267','42.64189','-2.7256','1517','11','-0.74000000000012','245','73.000000000001','2022-04-14 17:26:14','2022-04-14 17:26:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8076','277','270','42.64178','-2.72591','1514','11','-1.1600000000001','245','73.000000000001','2022-04-14 17:26:17','2022-04-14 17:26:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8077','277','273','42.64168','-2.7262','1511','11','-1.5800000000001','245','73.000000000001','2022-04-14 17:26:20','2022-04-14 17:26:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8078','277','276','42.64159','-2.72648','1507','11','-2.0000000000001','245','73.000000000001','2022-04-14 17:26:23','2022-04-14 17:26:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8079','277','279','42.64146','-2.72684','1500','11','-2.4300000000001','245','73.000000000001','2022-04-14 17:26:26','2022-04-14 17:26:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8080','277','282','42.64134','-2.72721','1493','11','-2.8500000000001','245','73.000000000001','2022-04-14 17:26:29','2022-04-14 17:26:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8081','277','285','42.64122','-2.72756','1486','11','-1.7950000000001','245','72.100000000001','2022-04-14 17:26:32','2022-04-14 17:26:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8082','277','288','42.6411','-2.7279','1483','11','-0.56500000000012','245','71.100000000001','2022-04-14 17:26:35','2022-04-14 17:26:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8083','277','291','42.64099','-2.72822','1483','11','0.66499999999988','245','70.100000000001','2022-04-14 17:26:38','2022-04-14 17:26:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8084','277','294','42.64088','-2.72853','1486','11','1.8949999999999','245','69.100000000001','2022-04-14 17:26:41','2022-04-14 17:26:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8085','277','297','42.64078','-2.72883','1492','11','3.1349999999999','245','68.100000000001','2022-04-14 17:26:44','2022-04-14 17:26:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8086','277','300','42.64068','-2.72911','1499','11','2.7149999999999','245','68.100000000001','2022-04-14 17:26:47','2022-04-14 17:26:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8087','277','303','42.64056','-2.72948','1506','11','2.3049999999999','245','68.100000000001','2022-04-14 17:26:50','2022-04-14 17:26:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8088','277','306','42.64043','-2.72984','1512','11','1.8849999999999','245','68.100000000001','2022-04-14 17:26:53','2022-04-14 17:26:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8089','277','309','42.64031','-2.73019','1517','11','1.4649999999999','245','68.100000000001','2022-04-14 17:26:56','2022-04-14 17:26:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8090','277','312','42.64019','-2.73053','1521','11','1.0449999999999','245','68.100000000001','2022-04-14 17:26:59','2022-04-14 17:26:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8091','277','315','42.64007','-2.7309','1523','11','0.63499999999987','245','68.100000000001','2022-04-14 17:27:02','2022-04-14 17:27:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8092','277','318','42.63994','-2.73126','1524','11','0.21499999999986','245','68.100000000001','2022-04-14 17:27:05','2022-04-14 17:27:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8093','277','321','42.63984','-2.73155','1524','11','-0.20500000000014','245','68.100000000001','2022-04-14 17:27:08','2022-04-14 17:27:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8094','277','324','42.63973','-2.73189','1523','11','-0.62500000000014','245','68.100000000001','2022-04-14 17:27:11','2022-04-14 17:27:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8095','277','327','42.6396','-2.73225','1521','11','-1.0550000000001','245','68.100000000001','2022-04-14 17:27:14','2022-04-14 17:27:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8096','277','330','42.63948','-2.73261','1517','11','-1.4750000000001','245','68.100000000001','2022-04-14 17:27:17','2022-04-14 17:27:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8097','277','333','42.63936','-2.73295','1512','11','-1.8950000000001','245','68.100000000001','2022-04-14 17:27:20','2022-04-14 17:27:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8098','277','336','42.63925','-2.73328','1507','11','-2.3150000000001','245','68.100000000001','2022-04-14 17:27:23','2022-04-14 17:27:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8099','277','339','42.63914','-2.73359','1500','11','-2.7450000000001','245','68.100000000001','2022-04-14 17:27:26','2022-04-14 17:27:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8100','277','342','42.63904','-2.73388','1493','11','-2.6700000000001','245','67.800000000001','2022-04-14 17:27:29','2022-04-14 17:27:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8101','277','345','42.63894','-2.73416','1489','11','-1.4500000000001','245','66.800000000001','2022-04-14 17:27:32','2022-04-14 17:27:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8102','277','348','42.63882','-2.73453','1486','11','-0.22000000000014','245','65.800000000001','2022-04-14 17:27:35','2022-04-14 17:27:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8103','277','351','42.6387','-2.73489','1488','11','1.0099999999999','245','64.800000000001','2022-04-14 17:27:38','2022-04-14 17:27:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8104','277','354','42.63858','-2.73524','1492','11','2.2499999999999','245','63.800000000001','2022-04-14 17:27:41','2022-04-14 17:27:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8105','277','357','42.63846','-2.73557','1500','11','2.9849999999999','245','63.100000000001','2022-04-14 17:27:44','2022-04-14 17:27:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8106','277','360','42.63835','-2.73589','1507','11','2.5749999999999','245','63.100000000001','2022-04-14 17:27:47','2022-04-14 17:27:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8107','277','363','42.63825','-2.7362','1513','11','2.1549999999998','245','63.100000000001','2022-04-14 17:27:50','2022-04-14 17:27:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8108','277','366','42.63814','-2.73649','1518','11','1.7349999999998','245','63.100000000001','2022-04-14 17:27:53','2022-04-14 17:27:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8109','277','369','42.63805','-2.73677','1521','11','1.3149999999998','245','63.100000000001','2022-04-14 17:27:56','2022-04-14 17:27:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8110','277','372','42.63793','-2.73712','1524','11','0.90499999999984','245','63.100000000001','2022-04-14 17:27:59','2022-04-14 17:27:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8111','277','375','42.6378','-2.73748','1526','11','0.48499999999984','245','63.100000000001','2022-04-14 17:28:02','2022-04-14 17:28:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8112','277','378','42.63768','-2.73783','1527','11','0.06499999999984','245','63.100000000001','2022-04-14 17:28:05','2022-04-14 17:28:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8113','277','381','42.63757','-2.73817','1527','11','-0.35500000000016','245','63.100000000001','2022-04-14 17:28:08','2022-04-14 17:28:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8114','277','384','42.63745','-2.7385','1525','11','-0.77500000000016','245','63.100000000001','2022-04-14 17:28:11','2022-04-14 17:28:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8115','277','387','42.63735','-2.73882','1522','11','-1.1950000000002','245','63.100000000001','2022-04-14 17:28:14','2022-04-14 17:28:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8116','277','390','42.63724','-2.73912','1519','11','-1.6250000000002','245','63.100000000001','2022-04-14 17:28:17','2022-04-14 17:28:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8117','277','393','42.63715','-2.7394','1515','11','-2.0450000000002','245','63.100000000001','2022-04-14 17:28:20','2022-04-14 17:28:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8118','277','396','42.63703','-2.73973','1509','11','-2.4650000000002','245','63.100000000001','2022-04-14 17:28:23','2022-04-14 17:28:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8119','277','399','42.63691','-2.74009','1501','11','-2.8950000000002','245','63.100000000001','2022-04-14 17:28:26','2022-04-14 17:28:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8120','277','402','42.63678','-2.74045','1492','11','-2.6550000000002','245','62.700000000001','2022-04-14 17:28:29','2022-04-14 17:28:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8121','277','405','42.63666','-2.7408','1486','11','-1.4350000000002','245','61.700000000001','2022-04-14 17:28:32','2022-04-14 17:28:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8122','277','408','42.63655','-2.74113','1484','11','-0.20500000000016','245','60.700000000001','2022-04-14 17:28:35','2022-04-14 17:28:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8123','277','411','42.63644','-2.74145','1485','11','1.0249999999998','245','59.700000000001','2022-04-14 17:28:38','2022-04-14 17:28:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8124','277','414','42.63634','-2.74175','1489','11','2.0899999999998','245','58.800000000001','2022-04-14 17:28:41','2022-04-14 17:28:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8125','277','417','42.63624','-2.74204','1494','11','1.6799999999998','245','58.800000000001','2022-04-14 17:28:44','2022-04-14 17:28:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8126','277','420','42.63612','-2.74237','1497','11','1.2599999999998','245','58.800000000001','2022-04-14 17:28:47','2022-04-14 17:28:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8127','277','423','42.636','-2.74274','1501','11','0.83999999999983','245','58.800000000001','2022-04-14 17:28:50','2022-04-14 17:28:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8128','277','426','42.63587','-2.7431','1502','11','0.41999999999983','245','58.800000000001','2022-04-14 17:28:53','2022-04-14 17:28:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8129','277','429','42.63575','-2.74344','1503','11','-1.7656986983638E-13','245','58.800000000001','2022-04-14 17:28:56','2022-04-14 17:28:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8130','277','432','42.63564','-2.74378','1502','11','-0.42000000000018','245','58.800000000001','2022-04-14 17:28:59','2022-04-14 17:28:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8131','277','435','42.63553','-2.74409','1501','11','-0.84000000000018','245','58.800000000001','2022-04-14 17:29:02','2022-04-14 17:29:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8132','277','438','42.63543','-2.74439','1498','11','-1.2600000000002','245','58.800000000001','2022-04-14 17:29:05','2022-04-14 17:29:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8133','277','441','42.63533','-2.74468','1495','11','-1.6800000000002','245','58.800000000001','2022-04-14 17:29:08','2022-04-14 17:29:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8134','277','444','42.63521','-2.74501','1489','11','-2.1100000000002','245','58.800000000001','2022-04-14 17:29:11','2022-04-14 17:29:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8135','277','447','42.63509','-2.74538','1485','11','-0.88000000000018','245','57.800000000001','2022-04-14 17:29:14','2022-04-14 17:29:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8136','277','450','42.63497','-2.74574','1484','11','0.34999999999982','245','56.800000000001','2022-04-14 17:29:17','2022-04-14 17:29:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8137','277','453','42.63485','-2.74608','1487','11','1.5799999999998','245','55.800000000001','2022-04-14 17:29:20','2022-04-14 17:29:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8138','277','456','42.63473','-2.74642','1493','11','2.8199999999998','245','54.800000000001','2022-04-14 17:29:23','2022-04-14 17:29:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8139','277','459','42.63462','-2.74674','1500','11','2.3999999999998','245','54.800000000001','2022-04-14 17:29:26','2022-04-14 17:29:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8140','277','462','42.63452','-2.74703','1505','11','1.9799999999998','245','54.800000000001','2022-04-14 17:29:29','2022-04-14 17:29:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8141','277','465','42.63442','-2.74732','1509','11','1.5699999999998','245','54.800000000001','2022-04-14 17:29:32','2022-04-14 17:29:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8142','277','468','42.6343','-2.74767','1513','11','1.1499999999998','245','54.800000000001','2022-04-14 17:29:35','2022-04-14 17:29:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8143','277','471','42.63418','-2.74804','1516','11','0.72999999999981','245','54.800000000001','2022-04-14 17:29:38','2022-04-14 17:29:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8144','277','474','42.63405','-2.74839','1517','11','0.3099999999998','245','54.800000000001','2022-04-14 17:29:41','2022-04-14 17:29:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8145','277','477','42.63393','-2.74875','1518','11','-0.1100000000002','245','54.800000000001','2022-04-14 17:29:44','2022-04-14 17:29:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8146','277','480','42.63381','-2.7491','1517','11','-0.5300000000002','245','54.800000000001','2022-04-14 17:29:47','2022-04-14 17:29:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8147','277','483','42.6337','-2.74941','1515','11','-0.9500000000002','245','54.800000000001','2022-04-14 17:29:50','2022-04-14 17:29:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8148','277','486','42.63361','-2.74969','1512','11','-1.3700000000002','245','54.800000000001','2022-04-14 17:29:53','2022-04-14 17:29:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8149','277','489','42.63351','-2.74998','1508','11','-1.7900000000002','245','54.800000000001','2022-04-14 17:29:56','2022-04-14 17:29:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8150','277','492','42.63338','-2.75034','1502','11','-2.2200000000002','245','54.800000000001','2022-04-14 17:29:59','2022-04-14 17:29:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8151','277','495','42.63326','-2.75071','1498','11','-0.9900000000002','245','53.800000000001','2022-04-14 17:30:02','2022-04-14 17:30:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8152','277','498','42.63313','-2.75107','1496','11','-0.5850000000002','245','53.300000000001','2022-04-14 17:30:05','2022-04-14 17:30:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8153','277','501','42.63302','-2.75141','1494','11','-1.0050000000002','245','53.300000000001','2022-04-14 17:30:08','2022-04-14 17:30:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8154','277','504','42.63291','-2.75173','1491','11','-1.4350000000002','245','53.300000000001','2022-04-14 17:30:11','2022-04-14 17:30:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8155','277','507','42.6328','-2.75205','1486','11','-1.8550000000002','245','53.300000000001','2022-04-14 17:30:14','2022-04-14 17:30:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8156','277','510','42.63269','-2.75235','1482','11','-1.2850000000002','245','52.700000000001','2022-04-14 17:30:17','2022-04-14 17:30:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8157','277','513','42.63259','-2.75264','1481','11','-0.055000000000203','245','51.700000000001','2022-04-14 17:30:20','2022-04-14 17:30:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8158','277','516','42.6325','-2.75292','1482','11','1.1749999999998','245','50.700000000001','2022-04-14 17:30:23','2022-04-14 17:30:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8159','277','519','42.63237','-2.75328','1487','11','2.4049999999998','245','49.700000000001','2022-04-14 17:30:26','2022-04-14 17:30:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8160','277','522','42.63225','-2.75365','1494','11','2.1599999999998','245','49.600000000001','2022-04-14 17:30:29','2022-04-14 17:30:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8161','277','525','42.63212','-2.75401','1500','11','1.7399999999998','245','49.600000000001','2022-04-14 17:30:32','2022-04-14 17:30:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8162','277','528','42.632','-2.75436','1504','11','1.3199999999998','245','49.600000000001','2022-04-14 17:30:35','2022-04-14 17:30:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8163','277','531','42.63189','-2.75469','1507','11','0.90999999999978','245','49.600000000001','2022-04-14 17:30:38','2022-04-14 17:30:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8164','277','534','42.63178','-2.75501','1509','11','0.48999999999978','245','49.600000000001','2022-04-14 17:30:41','2022-04-14 17:30:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8165','277','537','42.63168','-2.75531','1510','11','0.069999999999782','245','49.600000000001','2022-04-14 17:30:44','2022-04-14 17:30:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8166','277','540','42.63158','-2.7556','1510','11','-0.35000000000022','245','49.600000000001','2022-04-14 17:30:47','2022-04-14 17:30:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8167','277','543','42.63146','-2.75594','1508','11','-0.77000000000022','245','49.600000000001','2022-04-14 17:30:50','2022-04-14 17:30:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8168','277','546','42.63133','-2.75631','1505','11','-1.2000000000002','245','49.600000000001','2022-04-14 17:30:53','2022-04-14 17:30:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8169','277','549','42.63121','-2.75667','1501','11','-1.6200000000002','245','49.600000000001','2022-04-14 17:30:56','2022-04-14 17:30:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8170','277','552','42.63109','-2.75702','1495','11','-2.0400000000002','245','49.600000000001','2022-04-14 17:30:59','2022-04-14 17:30:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8171','277','555','42.63097','-2.75736','1489','11','-2.4700000000002','245','49.600000000001','2022-04-14 17:31:02','2022-04-14 17:31:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8172','277','558','42.63086','-2.75768','1482','11','-2.3950000000002','245','49.300000000001','2022-04-14 17:31:05','2022-04-14 17:31:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8173','277','561','42.63076','-2.75798','1478','11','-1.1650000000002','245','48.300000000001','2022-04-14 17:31:08','2022-04-14 17:31:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8174','277','564','42.63065','-2.75829','1477','11','0.064999999999778','245','47.300000000001','2022-04-14 17:31:11','2022-04-14 17:31:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8175','277','567','42.63052','-2.75866','1479','11','1.2949999999998','245','46.300000000001','2022-04-14 17:31:14','2022-04-14 17:31:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8176','277','570','42.6304','-2.75902','1483','11','1.3699999999998','245','46.000000000001','2022-04-14 17:31:17','2022-04-14 17:31:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8177','277','573','42.63027','-2.75938','1487','11','0.94999999999977','245','46.000000000001','2022-04-14 17:31:20','2022-04-14 17:31:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8178','277','576','42.63015','-2.75973','1489','11','0.52999999999977','245','46.000000000001','2022-04-14 17:31:23','2022-04-14 17:31:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8179','277','579','42.63004','-2.76006','1490','11','0.10999999999977','245','46.000000000001','2022-04-14 17:31:26','2022-04-14 17:31:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8180','277','582','42.62993','-2.76038','1489','11','-0.31000000000023','245','46.000000000001','2022-04-14 17:31:29','2022-04-14 17:31:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8181','277','585','42.62983','-2.76068','1488','11','-0.070000000000233','245','45.600000000001','2022-04-14 17:31:32','2022-04-14 17:31:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8182','277','588','42.62971','-2.76101','1490','11','1.1599999999998','245','44.600000000001','2022-04-14 17:31:35','2022-04-14 17:31:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8183','277','591','42.62959','-2.76138','1493','11','0.91499999999976','245','44.500000000001','2022-04-14 17:31:38','2022-04-14 17:31:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8184','278','0','42.56372','-3.03863','554','0','0','0','100','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8185','278','3','42.56374','-3.03862','555','3','0.56','13','95.8','2022-04-14 19:36:16','2022-04-14 19:36:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8186','278','6','42.56382','-3.0386','560','3','2.66','13','93.8','2022-04-14 19:36:19','2022-04-14 19:36:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8187','278','9','42.5639','-3.03858','569','3','3.258','13','93','2022-04-14 19:36:22','2022-04-14 19:36:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8188','278','12','42.56398','-3.03855','578','3','2.848','13','93','2022-04-14 19:36:25','2022-04-14 19:36:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8189','278','15','42.56405','-3.03853','585','3','2.428','13','93','2022-04-14 19:36:28','2022-04-14 19:36:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8190','278','18','42.56413','-3.0385','595','3','4.034','13','91.4','2022-04-14 19:36:31','2022-04-14 19:36:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8191','278','21','42.56423','-3.03852','609','4','4.632','341','90.6','2022-04-14 19:36:34','2022-04-14 19:36:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8192','278','24','42.56433','-3.03857','622','4','4.212','341','90.6','2022-04-14 19:36:37','2022-04-14 19:36:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8193','278','27','42.56443','-3.03862','634','4','3.802','341','90.6','2022-04-14 19:36:40','2022-04-14 19:36:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8194','278','30','42.56453','-3.03867','644','4','3.392','341','90.6','2022-04-14 19:36:43','2022-04-14 19:36:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8195','278','33','42.56463','-3.03871','654','4','2.972','341','90.6','2022-04-14 19:36:46','2022-04-14 19:36:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8196','278','36','42.56474','-3.03876','662','4','2.562','341','90.6','2022-04-14 19:36:49','2022-04-14 19:36:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8197','278','39','42.56483','-3.03881','670','4','2.977','341','90.1','2022-04-14 19:36:52','2022-04-14 19:36:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8198','278','42','42.56493','-3.03885','678','4','2.557','341','90.1','2022-04-14 19:36:55','2022-04-14 19:36:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8199','278','45','42.56503','-3.0389','685','4','2.642','341','89.8','2022-04-14 19:36:58','2022-04-14 19:36:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8200','278','48','42.56514','-3.03895','695','4','3.377','341','89.1','2022-04-14 19:37:01','2022-04-14 19:37:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8201','278','51','42.56525','-3.03895','704','5','2.967','24','89.1','2022-04-14 19:37:04','2022-04-14 19:37:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8202','278','54','42.56537','-3.03887','713','5','2.547','24','89.1','2022-04-14 19:37:07','2022-04-14 19:37:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8203','278','57','42.56549','-3.0388','719','5','2.137','24','89.1','2022-04-14 19:37:10','2022-04-14 19:37:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8204','278','60','42.56562','-3.03872','725','5','1.717','24','89.1','2022-04-14 19:37:13','2022-04-14 19:37:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8205','278','63','42.56574','-3.03865','730','5','1.957','24','88.7','2022-04-14 19:37:16','2022-04-14 19:37:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8206','278','66','42.56586','-3.03858','737','5','2.372','24','88.2','2022-04-14 19:37:19','2022-04-14 19:37:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8207','278','69','42.56598','-3.03851','743','5','1.952','24','88.2','2022-04-14 19:37:22','2022-04-14 19:37:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8208','278','72','42.5661','-3.03843','748','5','1.542','24','88.2','2022-04-14 19:37:25','2022-04-14 19:37:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8209','278','75','42.56622','-3.03836','754','5','3.138','24','86.6','2022-04-14 19:37:28','2022-04-14 19:37:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8210','278','78','42.56634','-3.03828','767','5','5.248','24','84.6','2022-04-14 19:37:31','2022-04-14 19:37:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8211','278','81','42.56647','-3.03821','786','5','7.358','24','82.6','2022-04-14 19:37:34','2022-04-14 19:37:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8212','278','84','42.56659','-3.03813','812','5','9.4779999999999','24','80.6','2022-04-14 19:37:37','2022-04-14 19:37:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8213','278','87','42.56672','-3.03806','842','5','9.834','24','80','2022-04-14 19:37:40','2022-04-14 19:37:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8214','278','90','42.56678','-3.03801','870','2','9.434','33','80','2022-04-14 19:37:43','2022-04-14 19:37:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8215','278','93','42.56683','-3.03797','898','2','9.024','33','80','2022-04-14 19:37:46','2022-04-14 19:37:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8216','278','96','42.56687','-3.03793','923','2','8.624','33','80','2022-04-14 19:37:49','2022-04-14 19:37:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8217','278','99','42.56692','-3.03789','947','2','8.224','33','80','2022-04-14 19:37:52','2022-04-14 19:37:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8218','278','102','42.56696','-3.03785','970','2','7.814','33','80','2022-04-14 19:37:55','2022-04-14 19:37:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8219','278','105','42.56697','-3.03766','993','7','7.404','90','80','2022-04-14 19:37:58','2022-04-14 19:37:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8220','278','108','42.56697','-3.03741','1014','7','7.004','90','80','2022-04-14 19:38:01','2022-04-14 19:38:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8221','278','111','42.56697','-3.03715','1035','7','6.594','90','80','2022-04-14 19:38:04','2022-04-14 19:38:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8222','278','114','42.56697','-3.03689','1054','7','6.184','90','80','2022-04-14 19:38:07','2022-04-14 19:38:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8223','278','117','42.56697','-3.03663','1072','7','5.784','90','80','2022-04-14 19:38:10','2022-04-14 19:38:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8224','278','120','42.56697','-3.03639','1087','7','5.374','90','80','2022-04-14 19:38:13','2022-04-14 19:38:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8225','278','123','42.56697','-3.03616','1101','7','4.964','90','80','2022-04-14 19:38:16','2022-04-14 19:38:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8226','278','126','42.56697','-3.03592','1114','7','4.544','90','80','2022-04-14 19:38:19','2022-04-14 19:38:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8227','278','129','42.56697','-3.03568','1126','7','4.134','90','80','2022-04-14 19:38:22','2022-04-14 19:38:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8228','278','132','42.56697','-3.03546','1135','7','2.338','90','80','2022-04-14 19:38:25','2022-04-14 19:38:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8229','278','135','42.56697','-3.03525','1138','7','0.99399999999995','90','80','2022-04-14 19:38:28','2022-04-14 19:38:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8230','278','138','42.56697','-3.03504','1140','7','0.57399999999995','90','80','2022-04-14 19:38:31','2022-04-14 19:38:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8231','278','141','42.56697','-3.03484','1141','7','0.48399999999995','90','79.8','2022-04-14 19:38:34','2022-04-14 19:38:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8232','278','144','42.56697','-3.03465','1142','7','0.22899999999995','90','79.7','2022-04-14 19:38:37','2022-04-14 19:38:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8233','278','147','42.56697','-3.03446','1142','7','-0.19100000000005','90','79.7','2022-04-14 19:38:40','2022-04-14 19:38:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8234','278','150','42.56697','-3.03429','1141','7','-0.61100000000006','90','79.7','2022-04-14 19:38:43','2022-04-14 19:38:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8235','278','153','42.56697','-3.03412','1139','7','-1.0310000000001','90','79.7','2022-04-14 19:38:46','2022-04-14 19:38:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8236','278','156','42.56697','-3.03395','1137','7','-1.1210000000001','90','79.5','2022-04-14 19:38:49','2022-04-14 19:38:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8237','278','159','42.56697','-3.03379','1136','7','-1.0460000000001','90','79.2','2022-04-14 19:38:52','2022-04-14 19:38:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8238','278','162','42.56697','-3.03364','1134','7','-0.31100000000006','90','78.5','2022-04-14 19:38:55','2022-04-14 19:38:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8239','278','165','42.56697','-3.03343','1135','7','0.42399999999994','90','77.8','2022-04-14 19:38:58','2022-04-14 19:38:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8240','278','168','42.56697','-3.03317','1136','7','0.0039999999999349','90','77.8','2022-04-14 19:39:01','2022-04-14 19:39:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8241','278','171','42.56697','-3.03291','1135','7','-0.41600000000007','90','77.8','2022-04-14 19:39:04','2022-04-14 19:39:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8242','278','174','42.56697','-3.03266','1133','7','-0.17600000000007','90','77.4','2022-04-14 19:39:07','2022-04-14 19:39:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8243','278','177','42.56697','-3.0324','1135','7','0.55899999999993','90','76.7','2022-04-14 19:39:10','2022-04-14 19:39:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8244','278','180','42.56697','-3.03216','1136','7','0.13899999999993','90','76.7','2022-04-14 19:39:13','2022-04-14 19:39:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8245','278','183','42.56697','-3.03192','1135','7','-0.28100000000007','90','76.7','2022-04-14 19:39:16','2022-04-14 19:39:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8246','278','186','42.56697','-3.03168','1134','7','-0.70100000000008','90','76.7','2022-04-14 19:39:19','2022-04-14 19:39:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8247','278','189','42.56697','-3.03143','1133','7','0.36399999999992','90','75.8','2022-04-14 19:39:22','2022-04-14 19:39:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8248','278','192','42.56697','-3.03117','1136','7','1.0989999999999','90','75.1','2022-04-14 19:39:25','2022-04-14 19:39:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8249','278','195','42.56697','-3.03092','1139','7','0.67899999999992','90','75.1','2022-04-14 19:39:28','2022-04-14 19:39:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8250','278','198','42.56697','-3.03066','1140','7','0.25899999999992','90','75.1','2022-04-14 19:39:31','2022-04-14 19:39:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8251','278','201','42.56697','-3.03041','1140','7','-0.16100000000008','90','75.1','2022-04-14 19:39:34','2022-04-14 19:39:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8252','278','204','42.56697','-3.03017','1139','7','-0.58100000000009','90','75.1','2022-04-14 19:39:37','2022-04-14 19:39:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8253','278','207','42.56697','-3.02993','1137','7','-1.0010000000001','90','75.1','2022-04-14 19:39:40','2022-04-14 19:39:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8254','278','210','42.56697','-3.02969','1133','7','-2.3450000000001','90','75.1','2022-04-14 19:39:43','2022-04-14 19:39:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8255','278','213','42.56697','-3.02945','1123','7','-4.1610000000001','90','75.1','2022-04-14 19:39:46','2022-04-14 19:39:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8256','278','216','42.56697','-3.02919','1111','7','-3.6010000000001','90','74.5','2022-04-14 19:39:49','2022-04-14 19:39:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8257','278','219','42.56697','-3.02894','1101','7','-3.0310000000001','90','73.9','2022-04-14 19:39:52','2022-04-14 19:39:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8258','278','222','42.56697','-3.02869','1092','7','-3.4610000000001','90','73.9','2022-04-14 19:39:55','2022-04-14 19:39:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8259','278','225','42.56697','-3.02843','1082','7','-3.0660000000001','90','73.4','2022-04-14 19:39:58','2022-04-14 19:39:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8260','278','228','42.56697','-3.02818','1073','7','-3.1560000000001','90','73.2','2022-04-14 19:40:01','2022-04-14 19:40:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8261','278','231','42.56697','-3.02794','1065','7','-2.2660000000001','90','72.4','2022-04-14 19:40:04','2022-04-14 19:40:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8262','278','234','42.56697','-3.02769','1058','7','-2.6860000000001','90','72.4','2022-04-14 19:40:07','2022-04-14 19:40:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8263','278','237','42.56697','-3.02746','1051','7','-3.1160000000001','90','72.4','2022-04-14 19:40:10','2022-04-14 19:40:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8264','278','240','42.56697','-3.02722','1041','7','-3.5360000000001','90','72.4','2022-04-14 19:40:13','2022-04-14 19:40:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8265','278','243','42.56697','-3.02697','1031','7','-3.3060000000001','90','72','2022-04-14 19:40:16','2022-04-14 19:40:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8266','278','246','42.56697','-3.02672','1023','7','-2.4160000000001','90','71.2','2022-04-14 19:40:19','2022-04-14 19:40:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8267','278','249','42.56697','-3.02646','1015','7','-2.8360000000001','90','71.2','2022-04-14 19:40:22','2022-04-14 19:40:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8268','278','252','42.56697','-3.02621','1005','7','-4.6520000000001','90','71.2','2022-04-14 19:40:25','2022-04-14 19:40:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8269','278','255','42.56697','-3.02595','990','7','-5.3130000000001','90','71.2','2022-04-14 19:40:28','2022-04-14 19:40:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8270','278','258','42.56697','-3.0257','978','7','-3.2130000000001','90','69.2','2022-04-14 19:40:31','2022-04-14 19:40:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8271','278','261','42.56701','-3.02559','968','2','-3.3910000000001','33','69','2022-04-14 19:40:34','2022-04-14 19:40:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8272','278','264','42.56705','-3.02556','958','2','-3.4910000000001','33','68.8','2022-04-14 19:40:37','2022-04-14 19:40:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8273','278','267','42.56709','-3.02552','950','2','-2.2610000000001','33','67.8','2022-04-14 19:40:40','2022-04-14 19:40:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8274','278','270','42.56714','-3.02548','943','2','-2.5260000000001','33','67.7','2022-04-14 19:40:43','2022-04-14 19:40:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8275','278','273','42.56718','-3.02544','935','2','-2.9460000000001','33','67.7','2022-04-14 19:40:46','2022-04-14 19:40:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8276','278','276','42.56723','-3.0254','926','2','-2.5510000000001','33','67.2','2022-04-14 19:40:49','2022-04-14 19:40:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8277','278','279','42.56727','-3.02536','919','2','-2.4760000000001','33','66.9','2022-04-14 19:40:52','2022-04-14 19:40:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8278','278','282','42.56732','-3.02532','913','2','-1.2560000000001','33','65.900000000001','2022-04-14 19:40:55','2022-04-14 19:40:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8279','278','285','42.56736','-3.02528','909','2','-1.6760000000001','33','65.900000000001','2022-04-14 19:40:58','2022-04-14 19:40:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8280','278','288','42.56741','-3.02524','903','2','-2.0960000000001','33','65.900000000001','2022-04-14 19:41:01','2022-04-14 19:41:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8281','278','291','42.56745','-3.0252','896','2','-2.5260000000001','33','65.900000000001','2022-04-14 19:41:04','2022-04-14 19:41:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8282','278','294','42.5675','-3.02516','888','2','-2.9460000000001','33','65.900000000001','2022-04-14 19:41:07','2022-04-14 19:41:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8283','278','297','42.56754','-3.02512','881','2','-1.8910000000001','33','65.000000000001','2022-04-14 19:41:10','2022-04-14 19:41:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8284','278','300','42.56759','-3.02508','877','2','-1.4860000000001','33','64.500000000001','2022-04-14 19:41:13','2022-04-14 19:41:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8285','278','303','42.56763','-3.02504','872','2','-1.9060000000001','33','64.500000000001','2022-04-14 19:41:16','2022-04-14 19:41:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8286','278','306','42.56768','-3.025','865','2','-2.3360000000001','33','64.500000000001','2022-04-14 19:41:19','2022-04-14 19:41:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8287','278','309','42.56772','-3.02496','858','2','-2.7560000000001','33','64.500000000001','2022-04-14 19:41:22','2022-04-14 19:41:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8288','278','312','42.56778','-3.02492','849','5','-2.8560000000001','24','64.300000000001','2022-04-14 19:41:25','2022-04-14 19:41:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8289','278','315','42.5679','-3.02485','842','5','-1.7910000000001','24','63.400000000001','2022-04-14 19:41:28','2022-04-14 19:41:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8290','278','318','42.56802','-3.02478','837','5','-2.0560000000001','24','63.300000000001','2022-04-14 19:41:31','2022-04-14 19:41:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8291','278','321','42.56813','-3.0247','831','5','-2.4760000000001','24','63.300000000001','2022-04-14 19:41:34','2022-04-14 19:41:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8292','278','324','42.56825','-3.02463','824','5','-2.0710000000001','24','62.800000000001','2022-04-14 19:41:37','2022-04-14 19:41:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8293','278','327','42.56837','-3.02456','819','5','-0.85100000000009','24','61.800000000001','2022-04-14 19:41:40','2022-04-14 19:41:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8294','278','330','42.5685','-3.02448','819','5','0.3789999999999','24','60.800000000001','2022-04-14 19:41:43','2022-04-14 19:41:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8295','278','333','42.56862','-3.02441','822','5','1.1139999999999','24','60.100000000001','2022-04-14 19:41:46','2022-04-14 19:41:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8296','278','336','42.56875','-3.02434','824','5','0.7039999999999','24','60.100000000001','2022-04-14 19:41:49','2022-04-14 19:41:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8297','278','339','42.56886','-3.02427','826','5','0.2839999999999','24','60.100000000001','2022-04-14 19:41:52','2022-04-14 19:41:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8298','278','342','42.56898','-3.02419','826','5','-0.1360000000001','24','60.100000000001','2022-04-14 19:41:55','2022-04-14 19:41:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8299','278','345','42.5691','-3.02412','825','5','-0.55600000000011','24','60.100000000001','2022-04-14 19:41:58','2022-04-14 19:41:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8300','278','348','42.56922','-3.02405','823','5','-0.98600000000011','24','60.100000000001','2022-04-14 19:42:01','2022-04-14 19:42:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8301','278','351','42.56933','-3.02398','820','5','-0.41600000000011','24','59.500000000001','2022-04-14 19:42:04','2022-04-14 19:42:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8302','278','354','42.56944','-3.02392','821','5','0.81399999999989','24','58.500000000001','2022-04-14 19:42:07','2022-04-14 19:42:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8303','278','357','42.56954','-3.02385','824','5','1.2289999999999','24','58.000000000001','2022-04-14 19:42:10','2022-04-14 19:42:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8304','278','360','42.56967','-3.02378','827','5','0.80899999999988','24','58.000000000001','2022-04-14 19:42:13','2022-04-14 19:42:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8305','278','363','42.56979','-3.02371','829','5','0.38899999999988','24','58.000000000001','2022-04-14 19:42:16','2022-04-14 19:42:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8306','278','366','42.56991','-3.02363','829','5','-0.031000000000119','24','58.000000000001','2022-04-14 19:42:19','2022-04-14 19:42:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8307','278','369','42.57004','-3.02356','829','5','-0.45100000000012','24','58.000000000001','2022-04-14 19:42:22','2022-04-14 19:42:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8308','278','372','42.57016','-3.02348','827','5','-0.87100000000012','24','58.000000000001','2022-04-14 19:42:25','2022-04-14 19:42:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8309','278','375','42.57028','-3.02341','824','5','-0.79600000000012','24','57.700000000001','2022-04-14 19:42:28','2022-04-14 19:42:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8310','278','378','42.5704','-3.02334','823','5','0.42399999999988','24','56.700000000001','2022-04-14 19:42:31','2022-04-14 19:42:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8311','278','381','42.57052','-3.02327','826','5','1.3339999999999','24','55.900000000001','2022-04-14 19:42:34','2022-04-14 19:42:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8312','278','384','42.57063','-3.0232','829','5','0.91399999999987','24','55.900000000001','2022-04-14 19:42:37','2022-04-14 19:42:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8313','278','387','42.57074','-3.02313','831','5','0.49399999999987','24','55.900000000001','2022-04-14 19:42:40','2022-04-14 19:42:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8314','278','390','42.57085','-3.02307','832','5','0.073999999999867','24','55.900000000001','2022-04-14 19:42:43','2022-04-14 19:42:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8315','278','393','42.57097','-3.02299','831','5','-0.34600000000013','24','55.900000000001','2022-04-14 19:42:46','2022-04-14 19:42:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8316','278','396','42.5711','-3.02292','830','5','-0.76600000000014','24','55.900000000001','2022-04-14 19:42:49','2022-04-14 19:42:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8317','278','399','42.57122','-3.02284','827','5','-1.1860000000001','24','55.900000000001','2022-04-14 19:42:52','2022-04-14 19:42:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8318','278','402','42.57134','-3.02277','822','5','-1.6160000000001','24','55.900000000001','2022-04-14 19:42:55','2022-04-14 19:42:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8319','278','405','42.57146','-3.02269','817','5','-2.0360000000001','24','55.900000000001','2022-04-14 19:42:58','2022-04-14 19:42:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8320','278','408','42.57159','-3.02262','813','5','-0.80600000000014','24','54.900000000001','2022-04-14 19:43:01','2022-04-14 19:43:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8321','278','411','42.57171','-3.02255','812','5','0.42399999999986','24','53.9','2022-04-14 19:43:04','2022-04-14 19:43:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8322','278','414','42.57182','-3.02248','815','5','0.99399999999985','24','53.3','2022-04-14 19:43:07','2022-04-14 19:43:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8323','278','417','42.57194','-3.02241','817','5','0.57399999999985','24','53.3','2022-04-14 19:43:10','2022-04-14 19:43:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8324','278','420','42.57205','-3.02234','818','5','0.15399999999985','24','53.3','2022-04-14 19:43:13','2022-04-14 19:43:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8325','278','423','42.57218','-3.02226','818','5','-0.26600000000015','24','53.3','2022-04-14 19:43:16','2022-04-14 19:43:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8326','278','426','42.5723','-3.02219','816','5','-0.68600000000015','24','53.3','2022-04-14 19:43:19','2022-04-14 19:43:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8327','278','429','42.57242','-3.02212','814','5','-1.1060000000002','24','53.3','2022-04-14 19:43:22','2022-04-14 19:43:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8328','278','432','42.57255','-3.02204','810','5','-1.0220000000002','24','52.9','2022-04-14 19:43:25','2022-04-14 19:43:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8329','278','435','42.57267','-3.02197','810','5','1.0779999999998','24','50.9','2022-04-14 19:43:28','2022-04-14 19:43:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8330','278','438','42.57279','-3.02189','813','5','0.65799999999984','24','50.9','2022-04-14 19:43:31','2022-04-14 19:43:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8331','278','441','42.57291','-3.02182','814','5','0.23799999999984','24','50.9','2022-04-14 19:43:34','2022-04-14 19:43:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8332','278','444','42.57303','-3.02175','814','5','-0.18200000000016','24','50.9','2022-04-14 19:43:37','2022-04-14 19:43:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8333','278','447','42.57315','-3.02168','813','5','-0.60200000000016','24','50.9','2022-04-14 19:43:40','2022-04-14 19:43:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8334','278','450','42.57327','-3.02161','811','5','-1.0220000000002','24','50.9','2022-04-14 19:43:43','2022-04-14 19:43:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8335','278','453','42.57339','-3.02153','807','5','-1.4520000000002','24','50.9','2022-04-14 19:43:46','2022-04-14 19:43:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8336','278','456','42.57351','-3.02146','804','5','-0.10800000000016','24','49.5','2022-04-14 19:43:49','2022-04-14 19:43:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8337','278','459','42.57364','-3.02138','807','5','1.9919999999998','24','47.5','2022-04-14 19:43:52','2022-04-14 19:43:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8338','278','462','42.57376','-3.02131','816','5','4.1019999999998','24','45.5','2022-04-14 19:43:55','2022-04-14 19:43:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8339','278','465','42.57388','-3.02124','832','5','5.9599999999998','24','43.7','2022-04-14 19:43:58','2022-04-14 19:43:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8340','278','468','42.57401','-3.02116','848','5','5.5499999999998','24','43.7','2022-04-14 19:44:01','2022-04-14 19:44:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8341','278','471','42.57406','-3.02112','864','2','5.1399999999998','33','43.7','2022-04-14 19:44:04','2022-04-14 19:44:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8342','278','474','42.57411','-3.02108','878','2','4.7299999999998','33','43.7','2022-04-14 19:44:07','2022-04-14 19:44:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8343','278','477','42.57415','-3.02104','890','2','4.3199999999998','33','43.7','2022-04-14 19:44:10','2022-04-14 19:44:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8344','278','480','42.57419','-3.02101','900','2','3.8999999999998','33','43.7','2022-04-14 19:44:13','2022-04-14 19:44:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8345','278','483','42.57423','-3.02097','911','2','3.4899999999998','33','43.7','2022-04-14 19:44:16','2022-04-14 19:44:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8346','278','486','42.57428','-3.02093','921','2','3.0799999999998','33','43.7','2022-04-14 19:44:19','2022-04-14 19:44:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8347','278','489','42.57432','-3.02089','930','2','2.6599999999998','33','43.7','2022-04-14 19:44:22','2022-04-14 19:44:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8348','278','492','42.57437','-3.02085','937','2','2.2499999999998','33','43.7','2022-04-14 19:44:25','2022-04-14 19:44:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8349','278','495','42.57441','-3.02081','943','2','1.8299999999998','33','43.7','2022-04-14 19:44:28','2022-04-14 19:44:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8350','278','498','42.57446','-3.02077','948','2','1.4199999999998','33','43.7','2022-04-14 19:44:31','2022-04-14 19:44:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8351','278','501','42.5745','-3.02073','951','2','0.99999999999981','33','43.7','2022-04-14 19:44:34','2022-04-14 19:44:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8352','278','504','42.57454','-3.0207','953','2','0.57999999999981','33','43.7','2022-04-14 19:44:37','2022-04-14 19:44:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8353','278','507','42.57458','-3.02066','954','2','0.15999999999981','33','43.7','2022-04-14 19:44:40','2022-04-14 19:44:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8354','278','510','42.57462','-3.02063','954','2','-0.2600000000002','33','43.7','2022-04-14 19:44:43','2022-04-14 19:44:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8355','278','513','42.57467','-3.02059','952','2','-0.6800000000002','33','43.7','2022-04-14 19:44:46','2022-04-14 19:44:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8356','278','516','42.57471','-3.02055','950','2','-1.1000000000002','33','43.7','2022-04-14 19:44:49','2022-04-14 19:44:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8357','278','519','42.57476','-3.02051','946','2','-1.5300000000002','33','43.7','2022-04-14 19:44:52','2022-04-14 19:44:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8358','278','522','42.5748','-3.02047','941','2','-1.9500000000002','33','43.7','2022-04-14 19:44:55','2022-04-14 19:44:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8359','278','525','42.57485','-3.02043','936','2','-1.0500000000002','33','42.9','2022-04-14 19:44:58','2022-04-14 19:44:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8360','278','528','42.57489','-3.02039','935','2','0.1799999999998','33','41.9','2022-04-14 19:45:01','2022-04-14 19:45:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8361','278','531','42.57494','-3.02035','937','2','1.2449999999998','33','41','2022-04-14 19:45:04','2022-04-14 19:45:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8362','278','534','42.57498','-3.02031','940','2','0.82499999999979','33','41','2022-04-14 19:45:07','2022-04-14 19:45:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8363','278','537','42.57502','-3.02028','941','2','0.40499999999979','33','41','2022-04-14 19:45:10','2022-04-14 19:45:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8364','278','540','42.57506','-3.02024','942','2','-0.015000000000212','33','41','2022-04-14 19:45:13','2022-04-14 19:45:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8365','278','543','42.57511','-3.0202','941','2','-0.43500000000021','33','41','2022-04-14 19:45:16','2022-04-14 19:45:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8366','278','546','42.57515','-3.02016','939','2','-0.85500000000022','33','41','2022-04-14 19:45:19','2022-04-14 19:45:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8367','278','549','42.5752','-3.02012','936','2','-0.78000000000022','33','40.7','2022-04-14 19:45:22','2022-04-14 19:45:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8368','278','552','42.57524','-3.02008','936','2','0.44999999999978','33','39.7','2022-04-14 19:45:25','2022-04-14 19:45:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8369','278','555','42.57529','-3.02004','939','2','1.3499999999998','33','38.9','2022-04-14 19:45:28','2022-04-14 19:45:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8370','278','558','42.57533','-3.02','942','2','0.92999999999978','33','38.9','2022-04-14 19:45:31','2022-04-14 19:45:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8371','278','561','42.57537','-3.01996','944','2','0.50999999999977','33','38.9','2022-04-14 19:45:34','2022-04-14 19:45:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8372','278','564','42.57542','-3.01992','945','2','0.089999999999773','33','38.9','2022-04-14 19:45:37','2022-04-14 19:45:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8373','278','567','42.57546','-3.01989','945','2','-0.33000000000023','33','38.9','2022-04-14 19:45:40','2022-04-14 19:45:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8374','278','570','42.5755','-3.01985','945','2','0.66599999999977','33','37.9','2022-04-14 19:45:43','2022-04-14 19:45:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8375','278','573','42.57555','-3.01981','950','2','2.7759999999998','33','35.9','2022-04-14 19:45:46','2022-04-14 19:45:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8376','278','576','42.57559','-3.01977','959','2','2.8599999999998','33','35.5','2022-04-14 19:45:49','2022-04-14 19:45:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8377','278','579','42.57564','-3.01973','967','2','2.6149999999998','33','35.4','2022-04-14 19:45:52','2022-04-14 19:45:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8378','278','582','42.57568','-3.01967','977','7','3.8449999999998','90','34.4','2022-04-14 19:45:55','2022-04-14 19:45:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8379','278','585','42.57568','-3.01941','988','7','3.5999999999998','90','34.3','2022-04-14 19:45:58','2022-04-14 19:45:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8380','278','588','42.57568','-3.01917','998','7','3.1899999999998','90','34.3','2022-04-14 19:46:01','2022-04-14 19:46:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8381','278','591','42.57568','-3.01892','1006','7','2.7699999999998','90','34.3','2022-04-14 19:46:04','2022-04-14 19:46:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8382','278','594','42.57568','-3.01868','1013','7','2.3599999999998','90','34.3','2022-04-14 19:46:07','2022-04-14 19:46:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8383','278','597','42.57568','-3.01844','1019','7','1.9399999999998','90','34.3','2022-04-14 19:46:10','2022-04-14 19:46:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8384','278','600','42.57568','-3.01821','1024','7','1.5299999999998','90','34.3','2022-04-14 19:46:13','2022-04-14 19:46:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8385','278','603','42.57568','-3.01796','1028','7','1.1099999999998','90','34.3','2022-04-14 19:46:16','2022-04-14 19:46:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8386','278','606','42.57568','-3.0177','1030','7','0.68999999999976','90','34.3','2022-04-14 19:46:19','2022-04-14 19:46:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8387','278','609','42.57568','-3.01745','1032','7','0.26999999999976','90','34.3','2022-04-14 19:46:22','2022-04-14 19:46:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8388','278','612','42.57568','-3.01719','1032','7','-0.15000000000025','90','34.3','2022-04-14 19:46:25','2022-04-14 19:46:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8389','278','615','42.57568','-3.01694','1030','7','-1.2630000000002','90','34.3','2022-04-14 19:46:28','2022-04-14 19:46:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8390','278','618','42.57568','-3.01669','1022','7','-4.0030000000002','90','34.3','2022-04-14 19:46:31','2022-04-14 19:46:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8391','278','621','42.57568','-3.01645','1009','7','-5.1160000000002','90','34.3','2022-04-14 19:46:34','2022-04-14 19:46:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8392','278','624','42.57568','-3.01621','996','7','-4.3910000000002','90','33.6','2022-04-14 19:46:37','2022-04-14 19:46:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8393','278','627','42.57568','-3.01599','986','7','-4.3260000000002','90','33.3','2022-04-14 19:46:40','2022-04-14 19:46:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8394','278','630','42.57568','-3.01576','974','2','-3.7660000000002','33','32.7','2022-04-14 19:46:43','2022-04-14 19:46:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8395','278','633','42.57573','-3.01572','962','2','-4.1960000000002','33','32.7','2022-04-14 19:46:46','2022-04-14 19:46:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8396','278','636','42.57578','-3.01568','951','2','-3.2960000000002','33','31.9','2022-04-14 19:46:49','2022-04-14 19:46:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8397','278','639','42.57582','-3.01564','940','2','-3.7260000000002','33','31.9','2022-04-14 19:46:52','2022-04-14 19:46:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8398','278','642','42.57587','-3.0156','928','2','-4.1560000000002','33','31.9','2022-04-14 19:46:55','2022-04-14 19:46:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8399','278','645','42.57591','-3.01556','917','2','-3.4210000000002','33','31.2','2022-04-14 19:46:58','2022-04-14 19:46:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8400','278','648','42.57596','-3.01552','908','2','-2.5310000000002','33','30.4','2022-04-14 19:47:01','2022-04-14 19:47:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8401','278','651','42.576','-3.01548','900','2','-2.9610000000002','33','30.4','2022-04-14 19:47:04','2022-04-14 19:47:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8402','278','654','42.57605','-3.01544','891','2','-3.3810000000002','33','30.4','2022-04-14 19:47:07','2022-04-14 19:47:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8403','278','657','42.57609','-3.0154','881','2','-3.8110000000002','33','30.4','2022-04-14 19:47:10','2022-04-14 19:47:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8404','278','660','42.57613','-3.01536','871','2','-2.7460000000002','33','29.5','2022-04-14 19:47:13','2022-04-14 19:47:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8405','278','663','42.57618','-3.01532','864','2','-2.3510000000002','33','29','2022-04-14 19:47:16','2022-04-14 19:47:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8406','278','666','42.57623','-3.01528','856','2','-2.7710000000002','33','29','2022-04-14 19:47:19','2022-04-14 19:47:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8407','278','669','42.57629','-3.01523','847','5','-3.2010000000002','24','29','2022-04-14 19:47:22','2022-04-14 19:47:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8408','278','672','42.57642','-3.01516','837','5','-3.6310000000002','24','29','2022-04-14 19:47:25','2022-04-14 19:47:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8409','278','675','42.57654','-3.01508','827','5','-3.0610000000002','24','28.4','2022-04-14 19:47:28','2022-04-14 19:47:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8410','278','678','42.57666','-3.01501','818','5','-2.9960000000002','24','28.1','2022-04-14 19:47:31','2022-04-14 19:47:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8411','278','681','42.57677','-3.01494','810','5','-3.4160000000002','24','28.1','2022-04-14 19:47:34','2022-04-14 19:47:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8412','278','684','42.57688','-3.01487','800','5','-3.8460000000002','24','28.1','2022-04-14 19:47:37','2022-04-14 19:47:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8413','278','687','42.577','-3.0148','790','5','-2.9560000000002','24','27.3','2022-04-14 19:47:40','2022-04-14 19:47:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8414','278','690','42.57712','-3.01473','783','5','-1.7260000000002','24','26.3','2022-04-14 19:47:43','2022-04-14 19:47:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8415','278','693','42.57724','-3.01466','779','5','-1.8160000000002','24','26.1','2022-04-14 19:47:46','2022-04-14 19:47:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8416','278','696','42.57736','-3.01458','772','5','-2.2460000000002','24','26.1','2022-04-14 19:47:49','2022-04-14 19:47:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8417','278','699','42.57749','-3.01451','765','5','-2.6660000000002','24','26.1','2022-04-14 19:47:52','2022-04-14 19:47:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8418','278','702','42.57761','-3.01444','757','5','-3.0960000000002','24','26.1','2022-04-14 19:47:55','2022-04-14 19:47:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8419','278','705','42.57773','-3.01436','747','5','-3.5160000000002','24','26.1','2022-04-14 19:47:58','2022-04-14 19:47:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8420','278','708','42.57785','-3.01429','738','5','-2.4610000000002','24','25.2','2022-04-14 19:48:01','2022-04-14 19:48:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8421','278','711','42.57796','-3.01422','731','5','-2.8910000000002','24','25.2','2022-04-14 19:48:04','2022-04-14 19:48:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8422','278','714','42.57808','-3.01415','722','5','-3.3110000000002','24','25.2','2022-04-14 19:48:07','2022-04-14 19:48:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8423','278','717','42.57819','-3.01408','712','5','-3.7410000000002','24','25.2','2022-04-14 19:48:10','2022-04-14 19:48:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8424','278','720','42.5783','-3.01402','702','5','-4.1610000000002','24','25.2','2022-04-14 19:48:13','2022-04-14 19:48:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8425','278','723','42.5784','-3.01404','690','4','-4.5910000000002','341','25.2','2022-04-14 19:48:16','2022-04-14 19:48:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8426','278','726','42.5785','-3.01408','677','4','-3.8660000000002','341','24.5','2022-04-14 19:48:19','2022-04-14 19:48:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8427','278','729','42.5786','-3.01413','667','4','-2.8110000000002','341','23.6','2022-04-14 19:48:22','2022-04-14 19:48:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8428','278','732','42.5787','-3.01418','658','4','-3.2310000000002','341','23.6','2022-04-14 19:48:25','2022-04-14 19:48:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8429','278','735','42.57881','-3.01423','649','4','-2.8360000000002','341','23.1','2022-04-14 19:48:28','2022-04-14 19:48:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8430','278','738','42.57891','-3.01427','640','4','-2.9260000000002','341','22.9','2022-04-14 19:48:31','2022-04-14 19:48:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8431','278','741','42.57901','-3.01432','634','4','-1.7060000000002','341','21.9','2022-04-14 19:48:34','2022-04-14 19:48:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8432','278','744','42.5791','-3.01436','629','4','-1.7960000000002','341','21.7','2022-04-14 19:48:37','2022-04-14 19:48:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8433','278','747','42.57919','-3.01441','624','4','-1.8860000000002','341','21.5','2022-04-14 19:48:40','2022-04-14 19:48:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8434','278','750','42.57928','-3.01445','619','4','-1.6560000000002','341','21.1','2022-04-14 19:48:43','2022-04-14 19:48:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8435','278','753','42.57936','-3.01449','616','4','-1.7460000000002','341','20.9','2022-04-14 19:48:46','2022-04-14 19:48:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8436','278','756','42.57947','-3.01453','611','4','-1.1760000000002','341','20.3','2022-04-14 19:48:49','2022-04-14 19:48:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8437','278','759','42.57957','-3.01458','608','4','-0.60600000000025','341','19.7','2022-04-14 19:48:52','2022-04-14 19:48:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8438','278','762','42.57967','-3.01463','606','4','-1.0360000000003','341','19.7','2022-04-14 19:48:55','2022-04-14 19:48:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8439','278','765','42.57977','-3.01468','604','4','0.028999999999746','341','18.8','2022-04-14 19:48:58','2022-04-14 19:48:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8440','278','768','42.57987','-3.01472','606','4','0.59899999999974','341','18.2','2022-04-14 19:49:01','2022-04-14 19:49:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8441','278','771','42.57997','-3.01477','607','4','0.17899999999974','341','18.2','2022-04-14 19:49:04','2022-04-14 19:49:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8442','278','774','42.58007','-3.01481','607','4','-0.24100000000026','341','18.2','2022-04-14 19:49:07','2022-04-14 19:49:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8443','278','777','42.58016','-3.01486','606','4','-0.66100000000026','341','18.2','2022-04-14 19:49:10','2022-04-14 19:49:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8444','278','780','42.58025','-3.0149','603','4','-1.0810000000003','341','18.2','2022-04-14 19:49:13','2022-04-14 19:49:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8445','278','783','42.58034','-3.01494','601','4','-0.84100000000026','341','17.8','2022-04-14 19:49:16','2022-04-14 19:49:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8446','278','786','42.58041','-3.01494','598','3','-1.2610000000003','13','17.8','2022-04-14 19:49:19','2022-04-14 19:49:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8447','278','789','42.58049','-3.01491','591','3','-2.6150000000003','13','17.8','2022-04-14 19:49:22','2022-04-14 19:49:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8448','278','792','42.58057','-3.01489','586','3','-1.5230000000003','13','16.6','2022-04-14 19:49:25','2022-04-14 19:49:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8449','278','795','42.58065','-3.01486','581','3','-1.2830000000003','13','16.2','2022-04-14 19:49:28','2022-04-14 19:49:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8450','278','798','42.58072','-3.01484','579','3','0.042999999999733','13','15','2022-04-14 19:49:31','2022-04-14 19:49:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8451','278','801','42.5808','-3.01482','582','3','0.88299999999973','13','14','2022-04-14 19:49:34','2022-04-14 19:49:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8452','278','804','42.58088','-3.01479','583','3','0.46299999999973','13','14','2022-04-14 19:49:37','2022-04-14 19:49:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8453','278','807','42.58095','-3.01477','584','3','0.04299999999973','13','14','2022-04-14 19:49:40','2022-04-14 19:49:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8454','278','810','42.58103','-3.01474','584','3','-0.37700000000027','13','14','2022-04-14 19:49:43','2022-04-14 19:49:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8455','278','813','42.58109','-3.01472','583','3','-0.13700000000027','13','13.6','2022-04-14 19:49:46','2022-04-14 19:49:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8456','278','816','42.58115','-3.0147','582','3','-0.55700000000028','13','13.6','2022-04-14 19:49:49','2022-04-14 19:49:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8457','279','0','42.32963','-3.0156','821','0','0','0','100','2022-04-14 19:52:50','2022-04-14 19:52:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8458','279','3','42.32969','-3.01556','822','5','1.06','24','99.62','2022-04-14 19:53:39','2022-04-14 19:53:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8459','279','6','42.32981','-3.01549','828','5','3.17','24','99.42','2022-04-14 19:53:42','2022-04-14 19:53:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8460','279','9','42.32992','-3.01542','839','5','4.514','24','99.28','2022-04-14 19:53:45','2022-04-14 19:53:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8461','279','12','42.33003','-3.01536','850','5','4.104','24','99.28','2022-04-14 19:53:48','2022-04-14 19:53:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8462','279','15','42.33007','-3.01532','860','2','3.694','33','99.28','2022-04-14 19:53:51','2022-04-14 19:53:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8463','279','18','42.33011','-3.01528','869','2','3.274','33','99.28','2022-04-14 19:53:54','2022-04-14 19:53:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8464','279','21','42.33015','-3.01525','877','2','3.689','33','99.23','2022-04-14 19:53:57','2022-04-14 19:53:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8465','279','24','42.33019','-3.01522','888','2','4.929','33','99.13','2022-04-14 19:54:00','2022-04-14 19:54:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8466','279','27','42.33023','-3.01518','902','2','5.179','33','99.09','2022-04-14 19:54:03','2022-04-14 19:54:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8467','279','30','42.33027','-3.01514','916','2','4.759','33','99.09','2022-04-14 19:54:06','2022-04-14 19:54:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8468','279','33','42.33031','-3.0151','929','2','4.349','33','99.09','2022-04-14 19:54:09','2022-04-14 19:54:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8469','279','36','42.33036','-3.01506','941','2','3.939','33','99.09','2022-04-14 19:54:12','2022-04-14 19:54:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8470','279','39','42.3304','-3.01503','951','2','3.529','33','99.09','2022-04-14 19:54:15','2022-04-14 19:54:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8471','279','42','42.33044','-3.01499','959','2','3.109','33','99.09','2022-04-14 19:54:18','2022-04-14 19:54:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8472','279','45','42.33048','-3.01496','967','2','2.699','33','99.09','2022-04-14 19:54:21','2022-04-14 19:54:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8473','279','48','42.33053','-3.01492','975','2','2.279','33','99.09','2022-04-14 19:54:24','2022-04-14 19:54:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8474','279','51','42.33102','-3.01512','981','21.111111111111','1.869','342.32','99.09','2022-04-14 19:54:27','2022-04-14 19:54:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8475','279','54','42.33153','-3.01535','985','21.111111111111','1.449','342.32','99.09','2022-04-14 19:54:30','2022-04-14 19:54:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8476','279','57','42.332','-3.01555','988','21.111111111111','1.029','342.32','99.09','2022-04-14 19:54:33','2022-04-14 19:54:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8477','279','60','42.33247','-3.01575','992','21.111111111111','1.764','342.32','99.02','2022-04-14 19:54:36','2022-04-14 19:54:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8478','279','63','42.33292','-3.01595','998','21.111111111111','3.004','342.32','98.92','2022-04-14 19:54:39','2022-04-14 19:54:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8479','279','66','42.33337','-3.01614','1007','21.111111111111','4.765','342.32','98.75','2022-04-14 19:54:42','2022-04-14 19:54:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8480','279','69','42.33383','-3.01634','1021','21.111111111111','5.615','342.32','98.65','2022-04-14 19:54:45','2022-04-14 19:54:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8481','279','72','42.33437','-3.01657','1037','21.111111111111','5.7','342.32','98.62','2022-04-14 19:54:48','2022-04-14 19:54:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8482','279','75','42.33491','-3.01681','1056','21.111111111111','6.95','342.32','98.52','2022-04-14 19:54:51','2022-04-14 19:54:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8483','279','78','42.33544','-3.01704','1079','21.111111111111','8.304','342.32','98.38','2022-04-14 19:54:54','2022-04-14 19:54:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8484','279','81','42.33592','-3.01724','1100','21.111111111111','7.894','342.32','98.38','2022-04-14 19:54:57','2022-04-14 19:54:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8485','279','84','42.33638','-3.01745','1119','21.111111111111','7.494','342.32','98.38','2022-04-14 19:55:00','2022-04-14 19:55:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8486','279','87','42.33691','-3.01767','1140','21.111111111111','7.084','342.32','98.38','2022-04-14 19:55:03','2022-04-14 19:55:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8487','279','90','42.33746','-3.01791','1161','21.111111111111','6.674','342.32','98.38','2022-04-14 19:55:06','2022-04-14 19:55:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8488','279','93','42.33801','-3.01815','1180','21.111111111111','6.274','342.32','98.38','2022-04-14 19:55:09','2022-04-14 19:55:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8489','279','96','42.33855','-3.01838','1198','21.111111111111','5.864','342.32','98.38','2022-04-14 19:55:12','2022-04-14 19:55:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8490','279','99','42.3386','-3.01838','1215','1','5.454','122','98.38','2022-04-14 19:55:15','2022-04-14 19:55:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8491','279','102','42.33858','-3.01835','1230','1','5.044','122','98.38','2022-04-14 19:55:18','2022-04-14 19:55:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8492','279','105','42.33857','-3.01832','1240','1','3.017','122','98.38','2022-04-14 19:55:21','2022-04-14 19:55:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8493','279','108','42.33856','-3.0183','1243','1','0.28699999999995','122','98.38','2022-04-14 19:55:24','2022-04-14 19:55:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8494','279','111','42.33855','-3.01828','1241','1','-1.75','122','98.38','2022-04-14 19:55:27','2022-04-14 19:55:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8495','279','114','42.33854','-3.01825','1233','1','-3.104','122','98.38','2022-04-14 19:55:30','2022-04-14 19:55:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8496','279','117','42.33852','-3.01822','1224','1','-3.524','122','98.38','2022-04-14 19:55:33','2022-04-14 19:55:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8497','279','120','42.33851','-3.01819','1213','1','-3.954','122','98.38','2022-04-14 19:55:36','2022-04-14 19:55:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8498','279','123','42.3385','-3.01816','1202','1','-4.054','122','98.36','2022-04-14 19:55:39','2022-04-14 19:55:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8499','279','126','42.33888','-3.01832','1193','21.111111111111','-2.834','342.32','98.26','2022-04-14 19:55:42','2022-04-14 19:55:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8500','279','129','42.33934','-3.01852','1188','21.111111111111','-1.604','342.32','98.16','2022-04-14 19:55:45','2022-04-14 19:55:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8501','279','132','42.33976','-3.0187','1184','21.111111111111','-1.859','342.32','98.15','2022-04-14 19:55:48','2022-04-14 19:55:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8502','279','135','42.34018','-3.01888','1179','21.111111111111','-2.279','342.32','98.15','2022-04-14 19:55:51','2022-04-14 19:55:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8503','279','138','42.34069','-3.01911','1172','21.111111111111','-2.709','342.32','98.15','2022-04-14 19:55:54','2022-04-14 19:55:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8504','279','141','42.34124','-3.01934','1163','21.111111111111','-3.129','342.32','98.15','2022-04-14 19:55:57','2022-04-14 19:55:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8505','279','144','42.34175','-3.01956','1154','21.111111111111','-3.559','342.32','98.15','2022-04-14 19:56:00','2022-04-14 19:56:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8506','279','147','42.34225','-3.01978','1146','21.111111111111','-1.973','342.32','97.99','2022-04-14 19:56:03','2022-04-14 19:56:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8507','279','150','42.3427','-3.01997','1142','21.111111111111','-1.385','342.32','97.91','2022-04-14 19:56:06','2022-04-14 19:56:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8508','279','153','42.34314','-3.02017','1138','21.111111111111','-1.805','342.32','97.91','2022-04-14 19:56:09','2022-04-14 19:56:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8509','279','156','42.34357','-3.02035','1134','21.111111111111','-2.225','342.32','97.91','2022-04-14 19:56:12','2022-04-14 19:56:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8510','279','159','42.34396','-3.02052','1129','21.111111111111','-1.995','342.32','97.87','2022-04-14 19:56:15','2022-04-14 19:56:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8511','279','162','42.34435','-3.02069','1125','21.111111111111','-1.26','342.32','97.8','2022-04-14 19:56:18','2022-04-14 19:56:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8512','279','165','42.34476','-3.02087','1123','21.111111111111','-1.02','342.32','97.76','2022-04-14 19:56:21','2022-04-14 19:56:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8513','279','168','42.34529','-3.0211','1119','21.111111111111','-1.44','342.32','97.76','2022-04-14 19:56:24','2022-04-14 19:56:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8514','279','171','42.34584','-3.02133','1114','21.111111111111','-1.87','342.32','97.76','2022-04-14 19:56:27','2022-04-14 19:56:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8515','279','174','42.34635','-3.02156','1108','21.111111111111','-2.125','342.32','97.75','2022-04-14 19:56:30','2022-04-14 19:56:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8516','279','177','42.34688','-3.02178','1104','21.111111111111','-0.89500000000005','342.32','97.65','2022-04-14 19:56:33','2022-04-14 19:56:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8517','279','180','42.34738','-3.022','1105','21.111111111111','1.205','342.32','97.45','2022-04-14 19:56:36','2022-04-14 19:56:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8518','279','183','42.34786','-3.02221','1111','21.111111111111','3.305','342.32','97.25','2022-04-14 19:56:39','2022-04-14 19:56:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8519','279','186','42.34832','-3.02241','1122','21.111111111111','5.415','342.32','97.05','2022-04-14 19:56:42','2022-04-14 19:56:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8520','279','189','42.34877','-3.0226','1138','21.111111111111','7.5249999999999','342.32','96.85','2022-04-14 19:56:45','2022-04-14 19:56:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8521','279','192','42.34918','-3.02278','1155','21.111111111111','7.3669999999999','342.32','96.83','2022-04-14 19:56:48','2022-04-14 19:56:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8522','279','195','42.3496','-3.02296','1171','21.111111111111','6.9569999999999','342.32','96.83','2022-04-14 19:56:51','2022-04-14 19:56:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8523','279','198','42.35014','-3.0232','1191','21.111111111111','6.5469999999999','342.32','96.83','2022-04-14 19:56:54','2022-04-14 19:56:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8524','279','201','42.3504','-3.0233','1210','1','6.1469999999999','122','96.83','2022-04-14 19:56:57','2022-04-14 19:56:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8525','279','204','42.35038','-3.02327','1226','1','5.7369999999999','122','96.83','2022-04-14 19:57:00','2022-04-14 19:57:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8526','279','207','42.35037','-3.02324','1243','1','5.3269999999999','122','96.83','2022-04-14 19:57:03','2022-04-14 19:57:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8527','279','210','42.35035','-3.02321','1258','1','4.9169999999999','122','96.83','2022-04-14 19:57:06','2022-04-14 19:57:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8528','279','213','42.35034','-3.02318','1271','1','4.5069999999999','122','96.83','2022-04-14 19:57:09','2022-04-14 19:57:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8529','279','216','42.35033','-3.02315','1281','1','4.0869999999999','122','96.83','2022-04-14 19:57:12','2022-04-14 19:57:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8530','279','219','42.35032','-3.02312','1291','1','3.6769999999999','122','96.83','2022-04-14 19:57:15','2022-04-14 19:57:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8531','279','222','42.35031','-3.0231','1299','1','4.0819999999999','122','96.78','2022-04-14 19:57:18','2022-04-14 19:57:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8532','279','225','42.3503','-3.02308','1310','1','5.3219999999999','122','96.68','2022-04-14 19:57:21','2022-04-14 19:57:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8533','279','228','42.35028','-3.02305','1324','1','6.5619999999999','122','96.58','2022-04-14 19:57:24','2022-04-14 19:57:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8534','279','231','42.35027','-3.02302','1344','1','6.6469999999999','122','96.55','2022-04-14 19:57:27','2022-04-14 19:57:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8535','279','234','42.35026','-3.02299','1363','1','6.2469999999999','122','96.55','2022-04-14 19:57:30','2022-04-14 19:57:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8536','279','237','42.35024','-3.02296','1381','1','5.8369999999999','122','96.55','2022-04-14 19:57:33','2022-04-14 19:57:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8537','279','240','42.35023','-3.02293','1397','1','5.4269999999999','122','96.55','2022-04-14 19:57:36','2022-04-14 19:57:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8538','279','243','42.35014','-3.02315','1411','11','5.0169999999999','245','96.55','2022-04-14 19:57:39','2022-04-14 19:57:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8539','279','246','42.35004','-3.02346','1423','11','4.5969999999999','245','96.55','2022-04-14 19:57:42','2022-04-14 19:57:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8540','279','249','42.34993','-3.02379','1435','11','4.1869999999999','245','96.55','2022-04-14 19:57:45','2022-04-14 19:57:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8541','279','252','42.3498','-3.02416','1447','11','3.7769999999999','245','96.55','2022-04-14 19:57:48','2022-04-14 19:57:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8542','279','255','42.34968','-3.02452','1457','11','3.3669999999999','245','96.55','2022-04-14 19:57:51','2022-04-14 19:57:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8543','279','258','42.34955','-3.02488','1466','11','2.9469999999999','245','96.55','2022-04-14 19:57:54','2022-04-14 19:57:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8544','279','261','42.34942','-3.02525','1475','11','2.5369999999999','245','96.55','2022-04-14 19:57:57','2022-04-14 19:57:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8545','279','264','42.3493','-3.02562','1482','11','2.1169999999999','245','96.55','2022-04-14 19:58:00','2022-04-14 19:58:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8546','279','267','42.34917','-3.02598','1487','11','1.7069999999999','245','96.55','2022-04-14 19:58:03','2022-04-14 19:58:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8547','279','270','42.34905','-3.02635','1491','11','0.13199999999992','245','96.55','2022-04-14 19:58:06','2022-04-14 19:58:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8548','279','273','42.34892','-3.02671','1487','11','-2.5980000000001','245','96.55','2022-04-14 19:58:09','2022-04-14 19:58:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8549','279','276','42.34879','-3.02708','1475','11','-5.3380000000001','245','96.55','2022-04-14 19:58:12','2022-04-14 19:58:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8550','279','279','42.34867','-3.02744','1454','11','-8.0880000000001','245','96.55','2022-04-14 19:58:15','2022-04-14 19:58:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8551','279','282','42.34854','-3.02781','1426','11','-10.828','245','96.55','2022-04-14 19:58:18','2022-04-14 19:58:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8552','279','285','42.34844','-3.02809','1390','1','-13.588','122','96.55','2022-04-14 19:58:21','2022-04-14 19:58:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8553','279','288','42.34843','-3.02806','1347','1','-16.348','122','96.55','2022-04-14 19:58:24','2022-04-14 19:58:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8554','279','291','42.34841','-3.02803','1293','1','-19.108','122','96.55','2022-04-14 19:58:27','2022-04-14 19:58:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8555','279','294','42.3484','-3.028','1232','1','-20.954','122','96.55','2022-04-14 19:58:30','2022-04-14 19:58:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8556','279','297','42.34861','-3.02807','1169','21.111111111111','-21.414','342.32','96.55','2022-04-14 19:58:33','2022-04-14 19:58:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8557','279','300','42.34915','-3.02831','1101','21.111111111111','-23.953','342.32','96.55','2022-04-14 19:58:36','2022-04-14 19:58:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, created_at, updated_at) VALUES ('8558','279','303','42.3497','-3.02854','1025','21.111111111111','-26.733','342.32','96.55','2022-04-14 19:58:39','2022-04-14 19:58:39');


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

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('5','Miranda de Ebro','Punto de despegue en Miranda de Ebro, provincia de Burgos.','4065','6140','32.94','42.6905','-2.95349','miranda.png','2022-03-27 10:09:21','2022-04-12 12:31:34');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('6','Parking Polígono Industrial Miranda','Punto de despegue en polígono industrial de Miranda de Ebro, junto a los Montes Obarenes.','4430','5625','34.6','42.65918','-2.92346','miranda2.png','2022-03-27 10:10:09','2022-04-10 11:18:57');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('7','Ocio','Despegue en Ocio, entre los montes, junto al castillo de la localidad.','5760','5540','46.12','42.65401','-2.81404','ocio.png','2022-03-27 10:11:00','2022-04-02 14:31:00');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('8','Santo Domingo Oeste','Punto de despegue en Santo Domingo de la calzada, al oeste de la localidad.','3955','1945','72.48','42.43542','-2.96253','sto.png','2022-03-27 13:50:33','2022-04-12 12:39:43');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('9','Santo Domingo Este','Finca de despegue en Santo Domingo de la Calzada, al este, de la localidad.','4220','1945','70.82','42.43542','-2.94073','ste.png','2022-03-27 13:52:09','2022-04-12 12:40:05');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('10','Ezcaray','Punto de despegue en la localidad de Ezcaray. Entre los montes de la Sierra de la Demanda.','3310','205','108.71','42.32963','-3.0156','ezcaray.png','2022-03-27 13:55:38','2022-04-12 12:40:47');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('11','Badarán','Finca de despegue en el municipio de Badarán, junto al rio Cárdenas.','5895','835','60.94','42.36793','-2.80294','badaran.png','2022-03-27 13:59:34','2022-04-12 12:33:39');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('12','Campo de Golf de Cirueña','Finca de despegue junto al campo de golf "Rioja Alta" en Cirueña.','4840','1555','88.94','42.41171','-2.88973','golf.png','2022-03-27 14:02:07','2022-04-12 12:34:16');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('13','Cidamón','Punto de despegue junto al municipio de Cidamón. Cerca del aeródromo de San Torcuato.','4995','2915','59.29','42.4944','-2.87698','cidamon.png','2022-03-27 14:05:55','2022-04-12 12:35:21');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('14','Haro, Barrio de las bodegas','Despegue en Haro, junto al barrio de las bodegas y las piscinas municipales.','5340','4325','28','42.58014','-2.84859','bodegas.png','2022-03-27 14:08:25','2022-04-02 14:20:56');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('15','Haro, el Mazo','Finca de despegue en el Mazo, junto al campo de futbol.','5400','4110','32.95','42.56707','-2.84366','mazo.png','2022-03-27 14:10:49','2022-04-02 14:18:53');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('16','Hermita de la Esclavitud, Cihuri','Finca de despegue junto a la Hermita de la Esclavitud, en Cihuri.','4480','4540','42.83','42.59321','-2.91934','hc.png','2022-03-27 14:13:36','2022-04-02 14:53:06');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('17','Pancorbo','Punto de despegue en Pancorbo, en la provincia de Burgos.','2000','5070','69.18','42.62544','-3.12337','pancorbo.png','2022-03-27 14:15:48','2022-04-12 12:38:00');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('18','Parquing restaurante, Santa María Ribarredonda','Punto de despegue en Santa María Ribarredonda, Burgos.','1385','5290','82.36','42.63881','-3.17396','riba.png','2022-03-27 14:23:05','2022-04-02 14:46:23');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('19','Leiva','Finca de despegue en la localidad de Leiva, junto al pantano del río Tirón.','2815','3020','60.94','42.50079','-3.05632','leiva.png','2022-03-27 14:30:44','2022-04-02 14:47:50');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('20','Cerezo de Río Tirón','Fincas de despegue en Cerezo de Río Tirón junto a las minas de Glauberita.','1710','2610','79.07','42.47586','-3.14722','cerezo.png','2022-03-27 14:36:06','2022-04-02 14:49:57');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('21','Campo de Fútbol de Fresno','Campo de despegue en Fresno de Río Tirón, junto al campo de fútbol. En la provincia de Burgos.','1435','2332','84','42.45914','-3.16985','fresno.png','2022-03-27 14:41:06','2022-04-12 12:39:30');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('22','Peñacerrada','Finca de despegue en Peñacerrada, junto al monte Toloño.','6880','5365','87.3','42.64337','-2.7219','pegnacerrada.png','2022-03-27 19:15:12','2022-04-12 12:37:17');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('23','Zambrana','Finca de despegue en Zambrana, en la provincia de Álava.','5015','5575','31.3','42.65614','-2.87533','zambrana.png','2022-03-27 19:16:59','2022-04-12 12:36:52');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('24','Montes Obarenes - San Felices','Finca de despegue en Álaba, cerca del monte San Felices, junto al Ebro.','5185','5330','32.94','42.64125','-2.86135','sf.png','2022-03-27 19:19:55','2022-04-02 14:41:33');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('25','Treviana','Finca de despegue cerca de la localidad riojana de Treviana.','3030','4055','49.42','42.56372','-3.03863','treviana.png','2022-03-29 14:38:44','2022-04-12 12:41:51');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('26','Anguciana','Finca de despegue junto a la localidad riojana de Anguciana.','4580','4200','36.23','42.57254','-2.91112','anguciana.png','2022-04-03 14:41:54','2022-04-12 12:37:47');


CREATE TABLE `weather` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flight` int(11) NOT NULL,
  `temperature` double NOT NULL,
  `pressure` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('111','276','20','1221','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('112','277','20','1221','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('113','278','9.5','1013.25','2022-04-14 19:35:28','2022-04-14 19:35:28');

INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('114','279','2','1013.25','2022-04-14 19:52:48','2022-04-14 19:52:48');


CREATE TABLE `winds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weather` int(11) NOT NULL,
  `altitude` double NOT NULL,
  `wind_direction` double NOT NULL,
  `wind_speed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('984','276','0','13','3','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('985','276','600','341','4','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('986','276','700','24','5','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('987','276','850','33','2','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('988','276','975','90','7','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('989','276','1200','122','1','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('990','276','1400','245','11','2022-04-14 16:53:27','2022-04-14 16:53:27');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('991','276','1600','345','6','2022-04-14 16:53:28','2022-04-14 16:53:28');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('992','276','2000','20','2','2022-04-14 16:53:28','2022-04-14 16:53:28');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('993','277','0','13','3','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('994','277','600','341','4','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('995','277','700','24','5','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('996','277','850','33','2','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('997','277','975','90','7','2022-04-14 17:21:09','2022-04-14 17:21:09');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('998','277','1200','122','1','2022-04-14 17:21:10','2022-04-14 17:21:10');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('999','277','1400','245','11','2022-04-14 17:21:10','2022-04-14 17:21:10');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1000','277','1600','345','6','2022-04-14 17:21:10','2022-04-14 17:21:10');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1001','277','2000','20','2','2022-04-14 17:21:10','2022-04-14 17:21:10');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1002','278','0','13','3','2022-04-14 19:35:28','2022-04-14 19:35:28');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1003','278','600','341','4','2022-04-14 19:35:28','2022-04-14 19:35:28');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1004','278','700','24','5','2022-04-14 19:35:28','2022-04-14 19:35:28');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1005','278','850','33','2','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1006','278','975','90','7','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1007','278','1200','122','1','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1008','278','1400','245','11','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1009','278','1600','345','6','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1010','278','2000','20','2','2022-04-14 19:35:29','2022-04-14 19:35:29');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1011','279','0','13','3','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1012','279','600','341','4','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1013','279','700','24','5','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1014','279','850','33','2','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1015','279','975','342.32','21.111111111111','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1016','279','1200','122','1','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1017','279','1400','245','11','2022-04-14 19:52:49','2022-04-14 19:52:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1018','279','1600','345','6','2022-04-14 19:52:49','2022-04-14 19:52:49');
