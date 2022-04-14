

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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('276','Sin nombre','2022-04-14','Hermita de la Esclavitud, Cihuri','2022-04-14 16:53:26','2022-04-14 16:53:26');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('277','Prueba de datos para graficas','2022-04-14','Peñacerrada','2022-04-14 17:21:08','2022-04-14 17:21:08');


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
) ENGINE=InnoDB AUTO_INCREMENT=8184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
