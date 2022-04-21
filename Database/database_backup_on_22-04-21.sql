

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
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('359','Vuelo desde Ezcaray','2022-04-18','Ezcaray','2022-04-18 17:17:39','2022-04-18 17:17:39');

INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('424','Mi vuelo por la finca de Globos Arcoiris','2022-04-20','Instalaciones de Globos Arcoíris','2022-04-20 15:43:46','2022-04-20 15:43:46');


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
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14543 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11960','359','0','42.32963','-3.0156','821','0','0','0','100','3310','108.71','205','2022-04-18 17:17:41','2022-04-18 17:17:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11961','359','3','42.32968','-3.01559','822','4.4181987172666','1.1418656425317','4.7854424385419','99.4','3310.0764121946','108.88241207178','205.96786074177','2022-04-18 17:18:09','2022-04-18 17:18:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11962','359','6','42.3298','-3.01558','828','4.4255863214532','2.2376349500764','4.7479597424798','99.22','3310.2347427523','110.17292643788','207.92973545208','2022-04-18 17:18:12','2022-04-18 17:18:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11963','359','9','42.32992','-3.01557','833','4.40948323319','1.8214593786184','4.6833318905403','99.22','3310.3872178168','111.48231282177','209.8131277313','2022-04-18 17:18:15','2022-04-18 17:18:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11964','359','12','42.33004','-3.01555','838','4.4261800338006','1.4045711510714','4.8870586614387','99.22','3310.5398614632','112.54770401288','211.73898339948','2022-04-18 17:18:18','2022-04-18 17:18:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11965','359','15','42.33015','-3.01554','842','4.4242824332498','1.6470485251396','4.8432972888583','99.16','3310.6906450408','113.39589344488','213.64158536144','2022-04-18 17:18:21','2022-04-18 17:18:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11966','359','18','42.33027','-3.01553','848','4.4264965957104','2.3862162036265','4.1316061841282','99.055','3310.8462153929','114.82279981878','215.5920543765','2022-04-18 17:18:24','2022-04-18 17:18:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11967','359','21','42.33039','-3.01552','855','4.4217484471501','1.9703372751131','4.7600093105074','99.055','3310.9981093364','116.23374914945','217.49057746841','2022-04-18 17:18:27','2022-04-18 17:18:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11968','359','24','42.3305','-3.0155','860','4.4267605434352','1.8056719724371','4.1006906468616','99.025','3311.1470978834','117.37546410696','219.38310801808','2022-04-18 17:18:30','2022-04-18 17:18:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11969','359','27','42.33061','-3.01549','868','4.4184021946542','3.4065925471639','4.7099676767032','98.785','3311.2868208805','119.06014287069','221.20560318633','2022-04-18 17:18:33','2022-04-18 17:18:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11970','359','30','42.33073','-3.01548','877','4.413549013731','2.9925710283304','4.3767383594308','98.785','3311.4357715218','121.10702170493','223.08715480985','2022-04-18 17:18:36','2022-04-18 17:18:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11971','359','33','42.33084','-3.01547','885','4.4268282913887','2.5779887519528','4.6491315131494','98.785','3311.5931179212','122.96191151787','225.03646204427','2022-04-18 17:18:39','2022-04-18 17:18:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11972','359','36','42.33096','-3.01545','892','4.4238580053881','2.1626353470976','4.3320285837023','98.785','3311.7484481886','124.5527866897','227.00227010804','2022-04-18 17:18:42','2022-04-18 17:18:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11973','359','39','42.33108','-3.01544','898','4.4278376156614','2.4066160626647','4.7727441238077','98.725','3311.9051558702','125.91568174825','228.94160827845','2022-04-18 17:18:45','2022-04-18 17:18:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11974','359','42','42.33119','-3.01543','907','4.4257586808592','3.6419723632496','4.4597834982243','98.575','3312.0547112117','127.74954188625','230.77365946727','2022-04-18 17:18:48','2022-04-18 17:18:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11975','359','45','42.33131','-3.01542','917','4.4223724910793','3.7240265611908','4.669267482889','98.53','3312.1972046886','130.16471859358','232.62545813369','2022-04-18 17:18:51','2022-04-18 17:18:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11976','359','48','42.33141','-3.01541','926','4.4106053109529','3.3098634182109','4.5463281661838','98.53','3312.3304855584','132.16310894727','234.29949078402','2022-04-18 17:18:54','2022-04-18 17:18:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11977','359','51','42.33151','-3.01539','934','4.4204703375535','2.8950466196231','4.8363459664767','98.53','3312.4613857546','133.93770436185','235.97734892916','2022-04-18 17:18:57','2022-04-18 17:18:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11978','359','54','42.33163','-3.01538','942','4.4125224086176','2.4801814506616','4.8928194270647','98.53','3312.6094547944','135.6957389993','237.89816413843','2022-04-18 17:19:00','2022-04-18 17:19:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11979','359','57','42.33175','-3.01537','949','4.4115881553451','2.0646310786226','4.6823580151016','98.53','3312.7672796169','137.21917765205','239.85984627941','2022-04-18 17:19:03','2022-04-18 17:19:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11980','359','60','42.33186','-3.01536','955','4.413826365163','1.6481454234324','4.9304306128032','98.53','3312.9176292983','138.42239930769','241.75265096141','2022-04-18 17:19:06','2022-04-18 17:19:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11981','359','63','42.33198','-3.01534','959','4.4236261383728','1.2309202934714','4.2423787896217','98.53','3313.0695113013','139.37244374078','243.68212252427','2022-04-18 17:19:09','2022-04-18 17:19:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11982','359','66','42.3321','-3.01533','962','4.4245590606748','0.81294801867858','4.4798018191144','98.53','3313.219721049','140.06668491887','245.65119280932','2022-04-18 17:19:12','2022-04-18 17:19:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11983','359','69','42.33222','-3.01532','964','4.4139741810868','0.55915758472981','4.6181140369904','98.515','3313.3755801782','140.48080935615','247.61173520301','2022-04-18 17:19:15','2022-04-18 17:19:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11984','359','72','42.33234','-3.01531','967','4.4182001868856','1.7913229199219','4.8025784801233','98.365','3313.5309756675','141.22216466871','249.56803380246','2022-04-18 17:19:18','2022-04-18 17:19:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11985','359','75','42.33246','-3.01529','972','4.4166833597285','1.5397346847902','4.7230359249849','98.35','3313.6886049633','142.39026557958','251.53703156685','2022-04-18 17:19:21','2022-04-18 17:19:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11986','359','78','42.33257','-3.01528','976','4.4229239039741','1.1223091609042','4.8962908820412','98.35','3313.8445709285','143.27170026514','253.46925031749','2022-04-18 17:19:24','2022-04-18 17:19:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11987','359','81','42.33269','-3.01527','979','4.427713839332','0.70410971252556','4.2447846749364','98.35','3314.0010368902','143.88816302566','255.42291553425','2022-04-18 17:19:27','2022-04-18 17:19:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11988','359','84','42.33281','-3.01526','982','4.4252080144572','1.4407967255395','4.2709134273439','98.245','3314.1526854006','144.46575307489','257.39141463961','2022-04-18 17:19:30','2022-04-18 17:19:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11989','359','87','42.33293','-3.01524','987','4.4146785656534','2.0144918835103','4.5806240544015','98.155','3314.3067739183','145.73088052598','259.35690401441','2022-04-18 17:19:33','2022-04-18 17:19:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11990','359','90','42.33305','-3.01523','993','4.419131503913','1.5980423425969','4.6086598848234','98.155','3314.4669701186','146.9464667851','261.32119515236','2022-04-18 17:19:36','2022-04-18 17:19:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11991','359','93','42.33317','-3.01522','997','4.4203984039796','1.1807818291726','4.6648234954386','98.155','3314.6229347382','147.88439682656','263.29045812506','2022-04-18 17:19:39','2022-04-18 17:19:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11992','359','96','42.33329','-3.0152','1000','4.4092126671346','0.76271233298023','4.3484787319727','98.155','3314.7800523619','148.54535188743','265.25927349743','2022-04-18 17:19:42','2022-04-18 17:19:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11993','359','99','42.3334','-3.01519','1002','4.4192315052119','0.34374784538595','4.6971761576879','98.155','3314.9162738497','148.89988481424','267.05029603564','2022-04-18 17:19:45','2022-04-18 17:19:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11994','359','102','42.33351','-3.01518','1003','4.4232220283817','0.91447963646908','4.1881083907227','98.065','3315.0606004409','149.15043133892','268.82880564521','2022-04-18 17:19:48','2022-04-18 17:19:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11995','359','105','42.33362','-3.01517','1007','4.425412537336','2.1472932365191','4.6601550314122','97.915','3315.212453179','150.11373593587','270.76663062666','2022-04-18 17:19:51','2022-04-18 17:19:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11996','359','108','42.33374','-3.01516','1015','4.417607256505','3.217327863921','4.5409826871966','97.78','3315.3615842897','151.83746341452','272.65426211891','2022-04-18 17:19:54','2022-04-18 17:19:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11997','359','111','42.33386','-3.01514','1024','4.4088935180477','2.8031361473799','4.4411008538537','97.78','3315.5138233373','153.82607091265','274.59279726406','2022-04-18 17:19:57','2022-04-18 17:19:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11998','359','114','42.33398','-3.01513','1032','4.427386041612','2.3882117800784','4.7144269514164','97.78','3315.6714602583','155.56383755465','276.5548488257','2022-04-18 17:20:00','2022-04-18 17:20:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('11999','359','117','42.3341','-3.01512','1038','4.4233286090462','1.9724894839657','4.7282445792325','97.78','3315.8289556695','157.02841380774','278.52060322011','2022-04-18 17:20:03','2022-04-18 17:20:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12000','359','120','42.3342','-3.01511','1043','4.410590851271','1.5555189024004','4.7488675143765','97.78','3315.9655909764','158.0656090922','280.23638081378','2022-04-18 17:20:06','2022-04-18 17:20:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12001','359','123','42.3343','-3.0151','1047','4.4226395054015','1.7978396105978','4.7561699390394','97.72','3316.095311805','158.86016014246','281.83425661275','2022-04-18 17:20:09','2022-04-18 17:20:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12002','359','126','42.3344','-3.01509','1052','4.4233611346504','3.0316217045609','4.2845100631316','97.57','3316.2224893324','160.15505225077','283.44621752567','2022-04-18 17:20:12','2022-04-18 17:20:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12003','359','129','42.33451','-3.01507','1062','4.4223656853782','3.1128224659896','4.60981233592','97.525','3316.3768322363','162.27803415387','285.37993059472','2022-04-18 17:20:15','2022-04-18 17:20:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12004','359','132','42.33463','-3.01506','1070','4.426781067433','2.6983117735145','4.2751609636302','97.525','3316.5265544771','164.15743246163','287.27765248275','2022-04-18 17:20:18','2022-04-18 17:20:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12005','359','135','42.33474','-3.01505','1078','4.4193889266727','2.2829628078011','4.309713663725','97.525','3316.6743091415','165.74982748194','289.15551575763','2022-04-18 17:20:21','2022-04-18 17:20:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12006','359','138','42.33485','-3.01504','1083','4.4278794433927','1.8667440167802','4.4663103300533','97.525','3316.8156668619','167.0444165944','290.98152944434','2022-04-18 17:20:24','2022-04-18 17:20:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12007','359','141','42.33496','-3.01502','1088','4.4219483111881','1.44967741795','4.4693673634015','97.525','3316.9556097084','168.04873802649','292.74732151347','2022-04-18 17:20:27','2022-04-18 17:20:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12008','359','144','42.33507','-3.01501','1091','4.4195938156693','1.5269010341893','4.1892141207001','97.48','3317.0877615246','168.81004727694','294.46523112187','2022-04-18 17:20:30','2022-04-18 17:20:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12009','359','147','42.33517','-3.015','1097','4.424538630346','2.760310061348','4.9409449157999','97.33','3317.2195376789','169.97721086619','296.11903814054','2022-04-18 17:20:33','2022-04-18 17:20:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12010','359','150','42.33526','-3.01499','1104','4.4218733502126','3.33541887671','4.5365349869371','97.24','3317.3478686269','171.7263384023','297.731316861','2022-04-18 17:20:36','2022-04-18 17:20:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12011','359','153','42.33537','-3.01498','1115','4.423981664481','4.1822773884369','4.5950859261777','97.09','3317.4880559261','174.07451716163','299.49408666465','2022-04-18 17:20:39','2022-04-18 17:20:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12012','359','156','42.33549','-3.01497','1127','4.4143217318423','3.7699274625941','4.4131681778956','97.09','3317.641452113','176.69370662407','301.43013065051','2022-04-18 17:20:42','2022-04-18 17:20:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12013','359','159','42.33561','-3.01496','1138','4.422541013694','3.3569077515898','4.308241391117','97.09','3317.7994801158','179.08357880136','303.39776695254','2022-04-18 17:20:45','2022-04-18 17:20:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12014','359','162','42.33573','-3.01494','1147','4.4155280999994','2.9429222889027','4.7258096631241','97.09','3317.9513651419','181.14280233667','305.31748444108','2022-04-18 17:20:48','2022-04-18 17:20:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12015','359','165','42.33583','-3.01493','1154','4.4191224985714','2.527463920088','4.3523484872438','97.09','3318.0801327739','182.69774053706','306.98620447338','2022-04-18 17:20:51','2022-04-18 17:20:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12016','359','168','42.33592','-3.01492','1159','4.4172515366782','2.1111623153909','4.1210589998195','97.09','3318.2032223807','183.96397636775','308.58831368922','2022-04-18 17:20:54','2022-04-18 17:20:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12017','359','171','42.33602','-3.01491','1164','4.4180699785597','1.6939924299195','4.4217055955211','97.09','3318.3174916094','184.9329350992','310.08082253603','2022-04-18 17:20:57','2022-04-18 17:20:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12018','359','174','42.33611','-3.0149','1167','4.4254365741151','1.276240448277','4.7535782243313','97.09','3318.4356783485','185.70259900993','311.59764211506','2022-04-18 17:21:00','2022-04-18 17:21:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12019','359','177','42.33623','-3.01489','1171','4.618529844309','1.5185444378299','6.9447597633773','97.03','3318.6081485944','186.49142602451','313.57299057264','2022-04-18 17:21:03','2022-04-18 17:21:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12020','359','180','42.33636','-3.01486','1176','5.2096273521103','1.7620863377347','14.16859660878','96.97','3318.9910719901','187.70408183896','315.70977798783','2022-04-18 17:21:06','2022-04-18 17:21:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12021','359','183','42.3365','-3.0148','1181','5.7158732371656','1.3451218314458','20.355456862849','96.97','3319.700128789','188.74335714243','318.01246953488','2022-04-18 17:21:09','2022-04-18 17:21:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12022','359','186','42.33664','-3.01472','1184','6.0918510600621','1.2573755061594','24.950303591601','96.94','3320.6973779847','189.51495764467','320.41635649652','2022-04-18 17:21:12','2022-04-18 17:21:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12023','359','189','42.33679','-3.01461','1190','6.5851318875296','2.1608241103328','30.86658685234','96.82','3321.9913419764','190.69567139011','322.87150901606','2022-04-18 17:21:15','2022-04-18 17:21:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12024','359','192','42.33694','-3.01449','1195','6.5921043040752','1.7444782553431','30.657884979625','96.82','3323.4423778175','191.94675705393','325.28279906204','2022-04-18 17:21:18','2022-04-18 17:21:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12025','359','195','42.33708','-3.01438','1200','6.5880591106037','1.3272154104574','30.601918256313','96.82','3324.8182812448','192.88388886273','327.57453103464','2022-04-18 17:21:21','2022-04-18 17:21:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12026','359','198','42.33721','-3.01427','1203','6.5834920315909','0.90916772581502','31.033113261093','96.82','3326.1570910619','193.55231163969','329.7933811732','2022-04-18 17:21:24','2022-04-18 17:21:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12027','359','201','42.33734','-3.01416','1204','6.5772808827121','0.4903465547535','31.274335644638','96.82','3327.4431509612','193.95591247679','331.9170987832','2022-04-18 17:21:27','2022-04-18 17:21:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12028','359','204','42.33747','-3.01406','1205','6.5803756439326','0.070814035727977','31.130650190182','96.82','3328.6530144145','194.11596598961','333.92879897701','2022-04-18 17:21:30','2022-04-18 17:21:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12029','359','207','42.33758','-3.01397','1205','6.5924460749143','-0.34935756358786','30.698465228895','96.82','3329.7876839251','194.05721477877','335.80495757452','2022-04-18 17:21:33','2022-04-18 17:21:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12030','359','210','42.33772','-3.01386','1203','6.5843138436359','-0.77034287153614','31.020934934882','96.82','3331.1764337425','193.71987057237','338.11020337184','2022-04-18 17:21:36','2022-04-18 17:21:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12031','359','213','42.33787','-3.01373','1200','6.5900173577798','-1.1922075254989','30.875609146802','96.82','3332.6848120728','193.08146081189','340.62022271878','2022-04-18 17:21:39','2022-04-18 17:21:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12032','359','216','42.33802','-3.01361','1196','6.5938495745103','-1.2848434066962','31.243894106392','96.79','3334.1895560742','192.17900259851','343.11850237273','2022-04-18 17:21:42','2022-04-18 17:21:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12033','359','219','42.33817','-3.01348','1194','6.5915738716952','-0.056225499529928','31.00756135414','96.64','3335.6787548888','191.70580940954','345.59734269456','2022-04-18 17:21:45','2022-04-18 17:21:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12034','359','222','42.33833','-3.01336','1196','6.5803524987462','1.174731789715','31.154561675726','96.49','3337.1691335493','192.03356072951','348.07385767793','2022-04-18 17:21:48','2022-04-18 17:21:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12035','359','225','42.33847','-3.01324','1201','6.5832612369384','2.4079251025844','31.2231152069','96.34','3338.6131087915','193.12686927083','350.46717891487','2022-04-18 17:21:51','2022-04-18 17:21:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12036','359','228','42.33861','-3.01313','1208','6.5791108940633','2.3224351334056','31.381362153995','96.31','3340.0249570372','194.67098831588','352.80572463529','2022-04-18 17:21:54','2022-04-18 17:21:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12037','359','231','42.33875','-3.01302','1213','6.5773420956383','1.9060936340256','30.638620519577','96.31','3341.3713344244','195.92356522892','355.03402203942','2022-04-18 17:21:57','2022-04-18 17:21:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12038','359','234','42.33888','-3.01291','1218','6.5880027275603','1.4889730191983','30.773390214059','96.31','3342.6813075308','196.90939296702','357.21306530506','2022-04-18 17:22:00','2022-04-18 17:22:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12039','359','237','42.33903','-3.01279','1221','6.5813776031507','1.0714013339108','31.061306249439','96.31','3344.1457576959','197.74078573207','359.64928103126','2022-04-18 17:22:03','2022-04-18 17:22:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12040','359','240','42.33918','-3.01266','1224','6.5762454392919','0.65311253695853','30.907814063932','96.31','3345.6560066798','198.32665782934','362.17035643031','2022-04-18 17:22:06','2022-04-18 17:22:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12041','359','243','42.33933','-3.01254','1225','6.587948663656','0.233998489813','31.399110448474','96.31','3347.1364153979','198.62998539623','364.62855020933','2022-04-18 17:22:09','2022-04-18 17:22:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12042','359','246','42.33948','-3.01242','1226','6.5941299490742','-0.18592087588175','31.334562877156','96.31','3348.6252154559','198.65759251719','367.09209471493','2022-04-18 17:22:12','2022-04-18 17:22:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12043','359','249','42.33963','-3.0123','1224','6.5916436802475','-0.6066485991236','31.050999153326','96.31','3350.1259679043','198.40843871718','369.58921883968','2022-04-18 17:22:15','2022-04-18 17:22:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12044','359','252','42.33978','-3.01217','1222','6.5844813721063','-1.0281757622216','30.829006409308','96.31','3351.6214734626','197.8855771852','372.07342183748','2022-04-18 17:22:18','2022-04-18 17:22:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12045','359','255','42.33992','-3.01206','1219','6.5813999040358','-1.4502615068966','30.668839693682','96.31','3352.957554351','197.17147162727','374.29460509729','2022-04-18 17:22:21','2022-04-18 17:22:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12046','359','258','42.34006','-3.01195','1214','6.5887948921589','-1.5432545008978','30.67801637509','96.28','3354.3872632956','196.14674713596','376.66992079089','2022-04-18 17:22:24','2022-04-18 17:22:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12047','359','261','42.34022','-3.01182','1211','6.5931282679824','-0.31516339933496','31.13579123238','96.13','3355.9044149794','195.49318920062','379.17633001185','2022-04-18 17:22:27','2022-04-18 17:22:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12048','359','264','42.34037','-3.0117','1212','6.5937947983793','0.91530933235667','31.427408430036','95.98','3357.4141847292','195.65504042452','381.67612215156','2022-04-18 17:22:30','2022-04-18 17:22:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12049','359','267','42.34052','-3.01157','1214','6.5941670739583','0.49669166397758','31.008003696203','95.98','3358.9022599402','196.1283153681','384.14753032707','2022-04-18 17:22:33','2022-04-18 17:22:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12050','359','270','42.34067','-3.01145','1215','6.5758926184095','0.077273435502745','30.811823307106','95.98','3360.3828297226','196.32749903834','386.60743326861','2022-04-18 17:22:36','2022-04-18 17:22:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12051','359','273','42.34081','-3.01134','1215','6.5842810498529','-0.34292789601681','30.638155185928','95.98','3361.7827504492','196.25856828243','388.91895769592','2022-04-18 17:22:39','2022-04-18 17:22:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12052','359','276','42.34094','-3.01123','1213','6.5837091231303','-0.76383200758099','31.318658612734','95.98','3363.108159834','195.9490236384','391.11920522788','2022-04-18 17:22:42','2022-04-18 17:22:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12053','359','279','42.34107','-3.01112','1211','6.583427705657','-1.1854304750951','30.695255874418','95.98','3364.408975094','195.40174930054','393.2907399016','2022-04-18 17:22:45','2022-04-18 17:22:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12054','359','282','42.3412','-3.01102','1207','6.5878958391252','-1.442649417546','30.565153703895','95.965','3365.6731681782','194.64204023554','395.39532659545','2022-04-18 17:22:48','2022-04-18 17:22:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12055','359','285','42.34134','-3.0109','1205','6.5849153242925','-0.21412305983185','31.070272023924','95.815','3367.0489314616','194.13750285887','397.66857842654','2022-04-18 17:22:51','2022-04-18 17:22:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12056','359','288','42.34149','-3.01078','1204','6.5898278297529','-0.46961760207989','31.378372354621','95.8','3368.5478334602','193.96818425905','400.17532878944','2022-04-18 17:22:54','2022-04-18 17:22:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12057','359','291','42.34164','-3.01066','1203','6.5807467889553','-0.89088293910632','30.598317088176','95.8','3370.0507559181','193.53496526823','402.65898295181','2022-04-18 17:22:57','2022-04-18 17:22:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12058','359','294','42.3418','-3.01053','1199','6.5930912078726','-1.3129533643884','31.271287196097','95.8','3371.5455661678','192.8261046781','405.1420633971','2022-04-18 17:23:00','2022-04-18 17:23:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12059','359','297','42.34194','-3.01041','1195','6.5806375427227','-1.4057438379695','31.089724619619','95.77','3373.0135842395','191.87071799183','407.57407722719','2022-04-18 17:23:03','2022-04-18 17:23:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12060','359','300','42.34208','-3.0103','1193','6.5839453332782','-0.17727052898185','30.994385243145','95.62','3374.4235550818','191.34801808986','409.90310584958','2022-04-18 17:23:06','2022-04-18 17:23:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12061','359','303','42.34222','-3.01019','1194','6.5808494970946','1.0533708682165','31.024585806319','95.47','3375.763943701','191.56761606352','412.12365719586','2022-04-18 17:23:09','2022-04-18 17:23:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12062','359','306','42.34235','-3.01008','1196','6.5840247908726','0.63481712548539','30.7708241401','95.47','3377.0768658545','192.06277751173','414.29836668841','2022-04-18 17:23:12','2022-04-18 17:23:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12063','359','309','42.34248','-3.00997','1197','6.5917029544298','0.21554870244037','30.631307696315','95.47','3378.3676302987','192.31325072442','416.45239649315','2022-04-18 17:23:15','2022-04-18 17:23:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12064','359','312','42.34264','-3.00985','1197','6.5786582643378','-0.20440216415572','31.011809684623','95.47','3379.8782967694','192.33007274354','418.96784819633','2022-04-18 17:23:18','2022-04-18 17:23:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12065','359','315','42.34279','-3.00973','1196','6.5864801177186','-0.62515978110849','30.591784437318','95.47','3381.3676766386','192.07068410253','421.45027625159','2022-04-18 17:23:21','2022-04-18 17:23:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12066','359','318','42.34294','-3.00961','1194','6.5863243143754','-1.0466997018695','30.732626501867','95.47','3382.8332604041','191.54345467347','423.89603857442','2022-04-18 17:23:24','2022-04-18 17:23:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12067','359','321','42.34308','-3.00949','1191','6.5759916562282','-0.47849328178729','31.390271739383','95.38','3384.2426451423','190.92937884567','426.24201612866','2022-04-18 17:23:27','2022-04-18 17:23:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12068','359','324','42.34321','-3.00938','1191','6.5763204977801','0.75164092188534','30.549379411308','95.23','3385.5927273982','190.97532674604','428.48782093899','2022-04-18 17:23:30','2022-04-18 17:23:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12069','359','327','42.34334','-3.00927','1194','6.5932780497222','1.8187667390001','31.243198459943','95.095','3386.8594190043','191.70315208102','430.59599263738','2022-04-18 17:23:33','2022-04-18 17:23:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12070','359','330','42.34347','-3.00917','1198','6.5806081102759','1.4013106506665','30.609884259137','95.095','3388.0892046994','192.5741222825','432.62452809588','2022-04-18 17:23:36','2022-04-18 17:23:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12071','359','333','42.34359','-3.00907','1201','6.5924662397816','0.98316321115594','31.340476016629','95.095','3389.3018074496','193.20839154745','434.61783255837','2022-04-18 17:23:39','2022-04-18 17:23:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12072','359','336','42.34374','-3.00895','1203','6.592092881616','0.56464805615119','31.421685860975','95.095','3390.7890868377','193.71676444489','437.04767483905','2022-04-18 17:23:42','2022-04-18 17:23:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12073','359','339','42.34389','-3.00883','1204','6.5878062991665','0.14535885241437','31.016096869408','95.095','3392.2779904008','193.96012288093','439.51536277729','2022-04-18 17:23:45','2022-04-18 17:23:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12074','359','342','42.34404','-3.00871','1204','6.5757797418718','-0.27472809049063','31.121521724984','95.095','3393.7672627867','193.93035585699','441.98227481988','2022-04-18 17:23:48','2022-04-18 17:23:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12075','359','345','42.34418','-3.00859','1203','6.5820278709659','-0.69558229514878','30.910893865589','95.095','3395.2032339228','193.6378980594','444.36644657426','2022-04-18 17:23:51','2022-04-18 17:23:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12076','359','348','42.34432','-3.00848','1201','6.5879144153792','-1.1171237485981','30.970789386713','95.095','3396.557849468','193.11014387709','446.62827293719','2022-04-18 17:23:54','2022-04-18 17:23:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12077','359','351','42.34445','-3.00837','1199','6.5945850437509','0.11191777230605','30.835739128891','94.945','3397.8675069925','192.78198518266','448.80388625567','2022-04-18 17:23:57','2022-04-18 17:23:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12078','359','354','42.34457','-3.00827','1201','6.5769553064982','1.3429799475855','30.983275896864','94.795','3399.1007667395','193.14564679458','450.84875835796','2022-04-18 17:24:00','2022-04-18 17:24:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12079','359','357','42.3447','-3.00817','1205','6.5791752619591','1.7507147506204','31.116060053256','94.72','3400.3393179105','194.08197331163','452.89576087161','2022-04-18 17:24:03','2022-04-18 17:24:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12080','359','360','42.34485','-3.00804','1210','6.5937813284516','1.3337479323312','30.825815642679','94.72','3401.8456129001','195.12045704545','455.41377375781','2022-04-18 17:24:06','2022-04-18 17:24:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12081','359','363','42.345','-3.00792','1213','6.5924574405012','0.91594137945802','31.409200142263','94.72','3403.3442228478','195.87143716444','457.89868184689','2022-04-18 17:24:09','2022-04-18 17:24:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12082','359','366','42.34515','-3.0078','1215','6.5908454887092','0.49732275620225','30.738941403475','94.72','3404.8380354312','196.3443851827','460.37096153969','2022-04-18 17:24:12','2022-04-18 17:24:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12083','359','369','42.3453','-3.00767','1216','6.5827487460745','0.077896354143422','31.247599107433','94.72','3406.3087362316','196.54077042712','462.79147436449','2022-04-18 17:24:15','2022-04-18 17:24:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12084','359','372','42.34544','-3.00756','1216','6.5868524679671','-0.34229559595793','31.073261531259','94.72','3407.679801866','196.47505162852','465.05733396471','2022-04-18 17:24:18','2022-04-18 17:24:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12085','359','375','42.34557','-3.00745','1214','6.5908866091454','-0.76319681565989','30.84042746354','94.72','3409.0033441611','196.16649708406','467.24661745892','2022-04-18 17:24:21','2022-04-18 17:24:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12086','359','378','42.3457','-3.00735','1212','6.5834426900481','-0.85469417009886','30.62508303601','94.69','3410.2521947354','195.65384127347','469.32529009518','2022-04-18 17:24:24','2022-04-18 17:24:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12087','359','381','42.34582','-3.00725','1211','6.582538260205','0.37485655506768','31.322125729762','94.54','3411.4118618866','195.50002107704','471.25316854681','2022-04-18 17:24:27','2022-04-18 17:24:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12088','359','384','42.34596','-3.00713','1214','6.5862771226135','1.6066388065234','31.181312981911','94.39','3412.8761900196','196.11021832954','473.69336965477','2022-04-18 17:24:30','2022-04-18 17:24:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12089','359','387','42.34611','-3.00701','1220','6.5790530408724','2.0154634644038','30.934772582095','94.315','3414.3718892542','197.41968323304','476.17838227923','2022-04-18 17:24:33','2022-04-18 17:24:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12090','359','390','42.34626','-3.00689','1225','6.5826214437695','1.5989475138954','30.788506097023','94.315','3415.8651893422','198.61253254763','478.64935369135','2022-04-18 17:24:36','2022-04-18 17:24:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12091','359','393','42.34641','-3.00677','1229','6.582512301097','1.1815808613328','31.376724099914','94.315','3417.3304596665','199.51412326653','481.07540660623','2022-04-18 17:24:39','2022-04-18 17:24:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12092','359','396','42.34655','-3.00665','1232','6.5926440885053','0.76336529620118','31.366831214265','94.315','3418.7340321028','200.12506806362','483.39756722379','2022-04-18 17:24:42','2022-04-18 17:24:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12093','359','399','42.34668','-3.00654','1234','6.5757929381868','0.34432099886518','30.974948158715','94.315','3420.0418741506','200.4522761789','485.55748941481','2022-04-18 17:24:45','2022-04-18 17:24:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12094','359','402','42.34681','-3.00644','1234','6.5824886601217','-0.075432108045844','30.673129681344','94.315','3421.2748825821','200.5368060493','487.60989784256','2022-04-18 17:24:48','2022-04-18 17:24:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12095','359','405','42.34693','-3.00634','1233','6.5811979173659','-0.4958424013188','31.423281766147','94.315','3422.498936982','200.39633214082','489.62079365953','2022-04-18 17:24:51','2022-04-18 17:24:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12096','359','408','42.34706','-3.00624','1232','6.5924242326066','-0.91697966801598','31.043928603482','94.315','3423.7621521157','200.00696115068','491.72494258775','2022-04-18 17:24:54','2022-04-18 17:24:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12097','359','411','42.34721','-3.00612','1228','6.580203779979','-1.3391155083357','30.918790027898','94.315','3425.2612802184','199.27570412701','494.22436790299','2022-04-18 17:24:57','2022-04-18 17:24:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12098','359','414','42.34736','-3.00599','1224','6.5814847520999','-1.7620666604212','30.885867071207','94.315','3426.7609473901','198.26530523605','496.73569961853','2022-04-18 17:25:00','2022-04-18 17:25:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12099','359','417','42.34751','-3.00587','1218','6.5911920257414','-2.1857388898784','30.973759797735','94.315','3428.2281082899','197.00802792077','499.17305646035','2022-04-18 17:25:03','2022-04-18 17:25:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12100','359','420','42.34766','-3.00575','1211','6.5951633419903','-2.6101081074989','30.76543343539','94.315','3429.6610009823','195.51211970923','501.55414581622','2022-04-18 17:25:06','2022-04-18 17:25:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12101','359','423','42.34779','-3.00564','1204','6.5812347687287','-2.7049516307343','30.560452575203','94.285','3431.022806476','193.85382140273','503.81237444901','2022-04-18 17:25:09','2022-04-18 17:25:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12102','359','426','42.34792','-3.00554','1198','6.5908291228901','-1.4784945318404','31.09203796811','94.135','3432.3105845768','192.64082280259','505.94731096622','2022-04-18 17:25:12','2022-04-18 17:25:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12103','359','429','42.34805','-3.00543','1196','6.5756856710768','-0.74502987634718','30.659921981034','94.03','3433.5489006768','192.11516016578','507.99376450776','2022-04-18 17:25:15','2022-04-18 17:25:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12104','359','432','42.34817','-3.00533','1194','6.5935597183335','-1.1665266450659','30.682834623186','94.03','3434.7903145664','191.60270489082','510.05523585649','2022-04-18 17:25:18','2022-04-18 17:25:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12105','359','435','42.34833','-3.00521','1190','6.5866651838113','-1.5891693338243','31.353067136946','94.03','3436.304310751','190.69791594284','512.57523528416','2022-04-18 17:25:21','2022-04-18 17:25:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12106','359','438','42.34848','-3.00509','1184','6.0922467155434','-2.0126115056736','24.955138920131','94.03','3437.6794888136','189.51940446043','515.06041995111','2022-04-18 17:25:24','2022-04-18 17:25:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12107','359','441','42.34862','-3.00502','1178','5.3862405680898','-2.4368494255189','16.326996940602','94.03','3438.607774402','188.0684492444','517.43637302975','2022-04-18 17:25:27','2022-04-18 17:25:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12108','359','444','42.34875','-3.00498','1170','4.5810169706854','-2.8616754619208','6.4863127642224','94.03','3439.0549785521','186.41613798183','519.50982335821','2022-04-18 17:25:30','2022-04-18 17:25:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12109','359','447','42.34886','-3.00497','1163','4.4125747795909','-2.1313956216089','4.3621785157371','93.925','3439.2030241481','184.80007619446','521.28795552079','2022-04-18 17:25:33','2022-04-18 17:25:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12110','359','450','42.34896','-3.00496','1159','4.4266763629672','-0.90397094479415','4.9447557947154','93.775','3439.3361840166','183.91835149341','522.93902437143','2022-04-18 17:25:36','2022-04-18 17:25:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12111','359','453','42.34905','-3.00495','1158','4.4227766307624','0.32551271697485','4.6338071817867','93.625','3439.4592515264','183.74157050725','524.46236508325','2022-04-18 17:25:39','2022-04-18 17:25:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12112','359','456','42.34914','-3.00494','1161','4.4188078934161','1.5568379502457','4.3521939183612','93.475','3439.5798554413','184.19529643812','526.00410327449','2022-04-18 17:25:42','2022-04-18 17:25:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12113','359','459','42.34926','-3.00492','1167','4.4155055950074','2.7907385757696','4.8888148801733','93.325','3439.7268445662','185.5307707171','527.85077364668','2022-04-18 17:25:45','2022-04-18 17:25:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12114','359','462','42.34938','-3.00491','1174','4.9859405636845','2.3757514118148','11.434907424282','93.325','3439.9633472807','187.24703739331','529.87095077331','2022-04-18 17:25:48','2022-04-18 17:25:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12115','359','465','42.34952','-3.00485','1181','5.6872698085097','2.2899547666049','20.005892706171','93.295','3440.5847344658','188.68615841972','532.1065399207','2022-04-18 17:25:51','2022-04-18 17:25:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12116','359','468','42.34966','-3.00476','1188','6.5297996630036','2.7000043947587','30.302498809086','93.22','3441.672633382','190.41502177161','534.48552057501','2022-04-18 17:25:54','2022-04-18 17:25:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12117','359','471','42.3498','-3.00465','1195','6.5843915066379','2.28451081957','31.112770128678','93.22','3443.087515654','191.95790621123','536.82420538721','2022-04-18 17:25:57','2022-04-18 17:25:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12118','359','474','42.34994','-3.00454','1201','6.5819150157789','2.6934124121263','30.923687452156','93.145','3444.4411696045','193.29371157736','539.06366045471','2022-04-18 17:26:00','2022-04-18 17:26:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12119','359','477','42.35006','-3.00444','1209','6.5811790748527','3.2683736509115','31.222155797302','93.055','3445.6789615867','194.99231267322','541.12099275637','2022-04-18 17:26:03','2022-04-18 17:26:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12120','359','480','42.35018','-3.00434','1216','6.5786981289577','2.853013134673','30.827751505865','93.055','3446.8616198191','196.58075308955','543.07365048724','2022-04-18 17:26:06','2022-04-18 17:26:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12121','359','483','42.3503','-3.00424','1222','6.5907008872616','2.4368972228757','30.580094215697','93.055','3448.0037880185','197.91056541328','544.96170628109','2022-04-18 17:26:09','2022-04-18 17:26:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12122','359','486','42.35041','-3.00415','1227','6.578030421061','2.020083821898','31.345881573109','93.055','3449.1089293547','199.00157530532','546.80307826297','2022-04-18 17:26:12','2022-04-18 17:26:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12123','359','489','42.35056','-3.00403','1233','6.5933234765438','1.6036214750457','30.755811232263','93.055','3450.6134550112','200.2127771389','549.30543885027','2022-04-18 17:26:15','2022-04-18 17:26:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12124','359','492','42.35071','-3.00391','1237','6.5898115433276','1.5163784979831','30.58381882125','93.025','3452.1101489024','201.15671118148','551.80142298953','2022-04-18 17:26:18','2022-04-18 17:26:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12125','359','495','42.35086','-3.00379','1243','6.5893348070725','2.7502834859243','30.898804562356','92.875','3453.5713299464','202.49367904041','554.24019051442','2022-04-18 17:26:21','2022-04-18 17:26:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12126','359','498','42.351','-3.00367','1252','6.5861290272322','3.3260606759403','30.636243116293','92.785','3454.9784724635','204.47164094007','556.58571140265','2022-04-18 17:26:24','2022-04-18 17:26:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12127','359','501','42.35114','-3.00356','1260','6.5841789198524','2.9116265847798','30.728274512124','92.785','3456.364012157','206.37726557608','558.88721245952','2022-04-18 17:26:27','2022-04-18 17:26:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12128','359','504','42.35128','-3.00345','1267','6.5869846136242','2.496243133975','30.591561439595','92.785','3457.6880571075','207.95785378434','561.08290164323','2022-04-18 17:26:30','2022-04-18 17:26:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12129','359','507','42.3514','-3.00334','1273','6.5952180835163','2.079928345098','31.038860791596','92.785','3458.944581878','209.21957568949','563.1596396271','2022-04-18 17:26:33','2022-04-18 17:26:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12130','359','510','42.35153','-3.00324','1278','6.5812728218445','1.6628692209861','31.392838628757','92.785','3460.1618666594','210.22645627366','565.18092354008','2022-04-18 17:26:36','2022-04-18 17:26:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12131','359','513','42.35166','-3.00314','1281','6.5829041261991','1.2452946683856','31.308051303491','92.785','3461.4629153875','211.05686734422','567.34462344111','2022-04-18 17:26:39','2022-04-18 17:26:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12132','359','516','42.35181','-3.00301','1284','6.5920285758365','0.82733480950633','31.127308738748','92.785','3462.969129483','211.75535941311','569.84688293847','2022-04-18 17:26:42','2022-04-18 17:26:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12133','359','519','42.35196','-3.00289','1286','6.5759171914165','0.40855036810092','31.374719602089','92.785','3464.4582321907','212.17153554376','572.32498870782','2022-04-18 17:26:45','2022-04-18 17:26:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12134','359','522','42.35211','-3.00277','1287','6.5941759196564','-0.01103837551857','31.282929754989','92.785','3465.9239522028','212.3123391956','574.76494541256','2022-04-18 17:26:48','2022-04-18 17:26:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12135','359','525','42.35225','-3.00265','1286','6.5917157951504','-0.4314081380589','30.55314119845','92.785','3467.3593790176','212.18574197192','577.13462382985','2022-04-18 17:26:51','2022-04-18 17:26:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12136','359','528','42.35239','-3.00254','1285','6.5833872808238','-0.85250990850353','31.290273266255','92.785','3468.7476028903','211.80852398955','579.43668231012','2022-04-18 17:26:54','2022-04-18 17:26:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12137','359','531','42.35253','-3.00243','1282','6.5845173529722','-1.2742618186903','31.116845596304','92.785','3470.063639891','211.20871481045','581.61408397033','2022-04-18 17:26:57','2022-04-18 17:26:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12138','359','534','42.35265','-3.00233','1278','6.5948017027495','-1.6965691384786','31.358867563128','92.785','3471.2896085448','210.41874760859','583.6588149311','2022-04-18 17:27:00','2022-04-18 17:27:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12139','359','537','42.35277','-3.00223','1274','6.581734283421','-2.1194599614115','30.97261163899','92.785','3472.4822143569','209.42900387432','585.64111554058','2022-04-18 17:27:03','2022-04-18 17:27:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12140','359','540','42.35292','-3.00211','1269','6.5945316084147','-1.0577612484455','31.024413394975','92.65','3473.9830582611','208.29872774441','588.13987277483','2022-04-18 17:27:06','2022-04-18 17:27:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12141','359','543','42.35307','-3.00198','1267','6.583475538815','0.17127900989011','31.166023418525','92.5','3475.4875644535','207.97013677883','590.6396436205','2022-04-18 17:27:09','2022-04-18 17:27:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12142','359','546','42.35323','-3.00186','1270','6.5776884930777','1.4026871154067','31.012939205868','92.35','3476.9969965974','208.45223604419','593.14085504665','2022-04-18 17:27:12','2022-04-18 17:27:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12143','359','549','42.35337','-3.00174','1275','6.5880787572219','2.3062838073328','30.701352631477','92.23','3478.447974106','209.68365124344','595.55614343095','2022-04-18 17:27:15','2022-04-18 17:27:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12144','359','552','42.35351','-3.00163','1281','6.5852856458455','1.8900422413328','31.053980465575','92.23','3479.834509122','210.97044278633','597.85150879004','2022-04-18 17:27:18','2022-04-18 17:27:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12145','359','555','42.35364','-3.00152','1285','6.5874405808227','1.4728714345134','30.742061325947','92.23','3481.1442178136','211.93908607182','600.01967485487','2022-04-18 17:27:21','2022-04-18 17:27:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12146','359','558','42.35377','-3.00142','1288','6.5756181265663','1.0549114227081','31.232120772289','92.23','3482.3874602097','212.63752578278','602.07733105503','2022-04-18 17:27:24','2022-04-18 17:27:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12147','359','561','42.35389','-3.00132','1290','6.587268001432','0.63622659904413','30.586478453724','92.23','3483.5830899058','213.08780847674','604.04807831504','2022-04-18 17:27:27','2022-04-18 17:27:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12148','359','564','42.35403','-3.0012','1292','6.590038191369','0.21702497873168','30.928758310444','92.23','3485.0051809664','213.36115323415','606.42355690387','2022-04-18 17:27:30','2022-04-18 17:27:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12149','359','567','42.35419','-3.00108','1292','6.5862355275221','-0.20292479632602','30.946813068445','92.23','3486.4996062863','213.37834896807','608.91581892962','2022-04-18 17:27:33','2022-04-18 17:27:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12150','359','570','42.35433','-3.00096','1291','6.5832675905528','-0.62367450969043','31.278663521226','92.23','3487.9758106642','213.12166631329','611.37268371907','2022-04-18 17:27:36','2022-04-18 17:27:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12151','359','573','42.35448','-3.00084','1288','6.5854507515268','-1.0451683823568','31.374806595032','92.23','3489.4196166963','212.61020257248','613.75089034281','2022-04-18 17:27:39','2022-04-18 17:27:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12152','359','576','42.35463','-3.00071','1285','6.5841066691693','-1.4675448808422','31.075203955552','92.23','3490.9267206387','211.7965503565','616.24908574848','2022-04-18 17:27:42','2022-04-18 17:27:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12153','359','579','42.35478','-3.00059','1280','6.5926380206155','-1.8907619642886','30.943182640219','92.23','3492.4323873631','210.69510337838','618.76069830578','2022-04-18 17:27:45','2022-04-18 17:27:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12154','359','582','42.35492','-3.00048','1274','6.5946232697967','-2.149251691961','30.987681715784','92.215','3493.7521606461','209.5003100001','620.94799895076','2022-04-18 17:27:48','2022-04-18 17:27:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12155','359','585','42.35504','-3.00038','1270','6.5822065281475','-0.92178202642501','30.977605923077','92.065','3495.0243197809','208.633988285','623.05145901912','2022-04-18 17:27:51','2022-04-18 17:27:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12156','359','588','42.3552','-3.00025','1268','6.593633662246','-0.84814804038193','30.862000627417','92.02','3496.5122829835','208.16630009166','625.52815557205','2022-04-18 17:27:54','2022-04-18 17:27:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12157','359','591','42.35535','-3.00013','1265','6.59138571291','-1.270139559917','30.588923936178','92.02','3498.0002941539','207.48445480842','628.01305394768','2022-04-18 17:27:57','2022-04-18 17:27:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12158','359','594','42.3555','-3.00001','1261','6.5941786033683','-1.6929137826087','30.75160650109','92.02','3499.4829748564','206.53463201045','630.4673684866','2022-04-18 17:28:00','2022-04-18 17:28:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12159','359','597','42.35564','-2.99989','1256','6.5874215340875','-2.1162872836634','31.174363993882','92.02','3500.8909605515','205.37963164935','632.78696636159','2022-04-18 17:28:03','2022-04-18 17:28:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12160','359','600','42.35578','-2.99978','1250','6.5909714658229','-2.2103021851044','30.927643625427','91.99','3502.2659639529','204.00503222314','635.06096936189','2022-04-18 17:28:06','2022-04-18 17:28:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12161','359','603','42.3559','-2.99968','1246','6.5853738668881','-0.9829116148193','31.090091564475','91.84','3503.5081472953','203.11163031986','637.12481710499','2022-04-18 17:28:09','2022-04-18 17:28:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12162','359','606','42.35602','-2.99958','1245','6.5767011419882','-0.083611715263806','31.276396992198','91.72','3504.731994524','202.8719338582','639.15159993911','2022-04-18 17:28:12','2022-04-18 17:28:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12163','359','609','42.35614','-2.99948','1244','6.5850262138796','-0.50402550140932','30.9357680203','91.72','3505.8998865282','202.73026407961','641.0960285082','2022-04-18 17:28:15','2022-04-18 17:28:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12164','359','612','42.35627','-2.99937','1242','6.5811917229644','-0.9252204483715','31.035291422904','91.72','3507.20504574','202.32114484401','643.27781898882','2022-04-18 17:28:18','2022-04-18 17:28:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12165','359','615','42.35643','-2.99925','1239','6.588375871889','-1.3473660395491','30.562635275841','91.72','3508.7007480123','201.58654937637','645.76931057264','2022-04-18 17:28:21','2022-04-18 17:28:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12166','359','618','42.35658','-2.99913','1234','6.5873138963502','-1.7703080639449','30.565774760677','91.72','3510.1868020099','200.57927557256','648.24839680769','2022-04-18 17:28:24','2022-04-18 17:28:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12167','359','621','42.35673','-2.99901','1228','6.5888443690538','-2.1940153972841','31.426899804804','91.72','3511.6597300232','199.30997958712','650.70657171511','2022-04-18 17:28:27','2022-04-18 17:28:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12168','359','624','42.35687','-2.99889','1222','6.5948638154967','-2.6182678731446','30.697139437878','91.72','3513.057209498','197.8540407643','653.02054162056','2022-04-18 17:28:30','2022-04-18 17:28:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12169','359','627','42.35702','-2.99877','1214','6.5815954708859','-2.8786296001678','30.754633091531','91.705','3514.5433727266','196.01832275278','655.49930174853','2022-04-18 17:28:33','2022-04-18 17:28:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12170','359','630','42.35715','-2.99866','1208','6.5818703216814','-1.6524146190538','31.365536239442','91.555','3515.8239458052','194.7224292258','657.6143356962','2022-04-18 17:28:36','2022-04-18 17:28:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12171','359','633','42.35727','-2.99857','1205','6.5919303706362','-0.42408767544882','30.846913917755','91.405','3517.0206048043','194.14961756542','659.58580552279','2022-04-18 17:28:39','2022-04-18 17:28:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12172','359','636','42.35738','-2.99847','1206','6.5807504450562','0.80609471151112','31.106016582417','91.255','3518.1572936305','194.21206218933','661.48927259623','2022-04-18 17:28:42','2022-04-18 17:28:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12173','359','639','42.35753','-2.99835','1210','6.5879508677297','2.0387208794538','31.264663427451','91.105','3519.657845876','195.11119483311','663.98262797754','2022-04-18 17:28:45','2022-04-18 17:28:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12174','359','642','42.35769','-2.99823','1216','6.5848454868','2.1180286541791','31.138671128079','91.06','3521.1519910361','196.58606657097','666.47421756605','2022-04-18 17:28:48','2022-04-18 17:28:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12175','359','645','42.35784','-2.9981','1222','6.582103027615','1.7017305987786','30.667310281353','91.06','3522.6457389025','197.85351758992','668.96598908561','2022-04-18 17:28:51','2022-04-18 17:28:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12176','359','648','42.35798','-2.99799','1226','6.5864535281318','1.2845087846583','31.159539564057','91.06','3524.0723680884','198.80469728196','671.34927628697','2022-04-18 17:28:54','2022-04-18 17:28:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12177','359','651','42.35813','-2.99787','1229','6.5908946096423','0.86649341970052','31.406121277944','91.06','3525.4888505785','199.48418549117','673.706447039','2022-04-18 17:28:57','2022-04-18 17:28:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12178','359','654','42.35826','-2.99776','1231','6.5826340328129','0.44765806779156','31.069072745284','91.06','3526.840385536','199.88293116929','675.95067441145','2022-04-18 17:29:00','2022-04-18 17:29:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12179','359','657','42.35838','-2.99766','1232','6.5819118272602','0.028056976756981','30.75882239796','91.06','3528.0441700939','200.01950738244','677.9420838449','2022-04-18 17:29:03','2022-04-18 17:29:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12180','359','660','42.3585','-2.99756','1231','6.5820699969939','-0.3921831761615','31.102370974788','91.06','3529.2072446681','199.9372851738','679.87808480892','2022-04-18 17:29:06','2022-04-18 17:29:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12181','359','663','42.35862','-2.99747','1230','6.5809445684259','-0.81303098446577','31.366891390825','91.06','3530.3476419145','199.64701732397','681.76921303181','2022-04-18 17:29:09','2022-04-18 17:29:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12182','359','666','42.35877','-2.99735','1227','6.5871650653728','-1.2349464671608','31.283893795085','91.06','3531.8400513002','198.99120510735','684.25344600915','2022-04-18 17:29:12','2022-04-18 17:29:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12183','359','669','42.35892','-2.99722','1223','6.5823595304981','-1.6576573688322','31.052930674667','91.06','3533.3329979531','198.06306180501','686.73063980034','2022-04-18 17:29:15','2022-04-18 17:29:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12184','359','672','42.35907','-2.9971','1217','6.5833497160071','-2.0811581191956','30.938391547568','91.06','3534.8138971419','196.86449453964','689.19241583761','2022-04-18 17:29:18','2022-04-18 17:29:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12185','359','675','42.35922','-2.99698','1211','6.5908482023732','-2.5054600262053','31.124552050911','91.06','3536.2910912213','195.39163175731','691.6464829158','2022-04-18 17:29:21','2022-04-18 17:29:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12186','359','678','42.35936','-2.99687','1203','6.5927429141454','-2.9302857993572','30.725707116381','91.06','3537.6900646255','193.73941062481','693.96730451315','2022-04-18 17:29:24','2022-04-18 17:29:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12187','359','681','42.35949','-2.99676','1197','6.5843894765495','-1.8427875737338','31.173002160238','90.88','3538.9762443546','192.19811837495','696.09119429834','2022-04-18 17:29:27','2022-04-18 17:29:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12188','359','684','42.35961','-2.99666','1194','6.5934955527856','0.0038653561421476','30.767194616994','90.61','3540.1656020164','191.73691606478','698.05364259136','2022-04-18 17:29:30','2022-04-18 17:29:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12189','359','687','42.35972','-2.99657','1196','6.5913654562691','1.8529126529159','30.604274574112','90.34','3541.2986060811','192.09548365741','699.93898400838','2022-04-18 17:29:33','2022-04-18 17:29:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12190','359','690','42.35983','-2.99648','1200','6.58803294582','1.4352107810482','30.743861477661','90.34','3542.3876785181','192.88230387166','701.73623313507','2022-04-18 17:29:36','2022-04-18 17:29:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12191','359','693','42.35995','-2.99638','1202','6.5900851029154','1.0170770966596','31.115054934786','90.34','3543.5773779069','193.52128253807','703.71565301324','2022-04-18 17:29:39','2022-04-18 17:29:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12192','359','696','42.3601','-2.99626','1205','6.5814741577568','0.59864316558229','30.728975139114','90.34','3545.0509778609','194.05746442802','706.16299033094','2022-04-18 17:29:42','2022-04-18 17:29:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12193','359','699','42.36025','-2.99614','1206','6.589227115205','0.17941891279456','30.71567485148','90.34','3546.5337304046','194.32306040554','708.63860685087','2022-04-18 17:29:45','2022-04-18 17:29:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12194','359','702','42.36039','-2.99602','1206','6.5840131391671','-0.24059760015905','30.902252275024','90.34','3547.9740682596','194.31740679314','711.02568566046','2022-04-18 17:29:48','2022-04-18 17:29:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12195','359','705','42.36054','-2.9959','1205','6.5830476391076','-0.66137062623731','30.655839977305','90.34','3549.3815279741','194.05274246221','713.36029505559','2022-04-18 17:29:51','2022-04-18 17:29:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12196','359','708','42.36067','-2.9958','1203','6.5897565666108','-1.0828003965692','31.187853107828','90.34','3550.6986718587','193.56322571896','715.54330629148','2022-04-18 17:29:54','2022-04-18 17:29:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12197','359','711','42.36079','-2.99569','1201','6.5881072861782','0.51230248031015','30.86940361277','90.1','3551.9346037217','193.25607373903','717.58113285052','2022-04-18 17:29:57','2022-04-18 17:29:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12198','359','714','42.36091','-2.9956','1205','6.5831604309092','2.6145036308366','30.871697036373','89.8','3553.1149685639','194.00969130476','719.54247941576','2022-04-18 17:30:00','2022-04-18 17:30:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12199','359','717','42.36104','-2.9955','1211','6.5770361914259','2.1982995564495','30.812947595535','89.8','3554.343871096','195.30931901571','721.58140897587','2022-04-18 17:30:03','2022-04-18 17:30:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12200','359','720','42.36119','-2.99537','1216','6.583374804576','1.782169293904','31.02875894774','89.8','3555.8413472342','196.63421801084','724.0761937758','2022-04-18 17:30:06','2022-04-18 17:30:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12201','359','723','42.36134','-2.99525','1221','6.5913742716269','1.3652379589334','30.669159164825','89.8','3557.3465539873','197.68485032412','726.57201983992','2022-04-18 17:30:09','2022-04-18 17:30:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12202','359','726','42.36149','-2.99512','1225','6.5899287600839','0.94751194197085','31.357813238602','89.8','3558.8538287092','198.46340387631','729.0726173362','2022-04-18 17:30:12','2022-04-18 17:30:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12203','359','729','42.36163','-2.99501','1227','6.5910917555455','0.52884359535251','31.008013279932','89.8','3560.2252303028','198.9193278887','731.33849675893','2022-04-18 17:30:15','2022-04-18 17:30:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12204','359','732','42.36178','-2.99489','1228','6.5754162234812','0.10946752153168','31.364541160817','89.8','3561.6929490686','199.13294423284','733.77598571818','2022-04-18 17:30:18','2022-04-18 17:30:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12205','359','735','42.36193','-2.99477','1227','6.5850718112741','-0.31069114514999','31.123654671814','89.8','3563.2101254971','199.07862082471','736.29299300402','2022-04-18 17:30:21','2022-04-18 17:30:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12206','359','738','42.36207','-2.99466','1226','6.581350667374','-0.73152398761757','31.229658886728','89.8','3564.5445894293','198.79347689405','738.50725312684','2022-04-18 17:30:24','2022-04-18 17:30:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12207','359','741','42.3622','-2.99454','1224','6.5953993046396','-1.1531744541282','30.951719373524','89.8','3565.925108532','198.22839943154','740.80592033436','2022-04-18 17:30:27','2022-04-18 17:30:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12208','359','744','42.36236','-2.99442','1220','6.5913578198989','-1.5757910138167','31.064061356245','89.8','3567.4364395814','197.33255640793','743.3286263641','2022-04-18 17:30:30','2022-04-18 17:30:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12209','359','747','42.36251','-2.99429','1214','6.5911757595028','-1.9991963812232','31.349020219627','89.8','3568.9403201082','196.1666458241','745.82202983964','2022-04-18 17:30:33','2022-04-18 17:30:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12210','359','750','42.36266','-2.99417','1210','6.5845720118838','-0.93720717262365','30.805581832448','89.665','3570.4196091336','195.13582795911','748.26649010492','2022-04-18 17:30:36','2022-04-18 17:30:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12211','359','753','42.36281','-2.99405','1208','6.5810501125259','-0.86356934338746','30.933893740259','89.62','3571.8862047947','194.66945557666','750.6971282999','2022-04-18 17:30:39','2022-04-18 17:30:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12212','359','756','42.36295','-2.99394','1205','6.5867656744191','-1.285477198736','31.36861277891','89.62','3573.2993733756','194.01625476814','753.04494908892','2022-04-18 17:30:42','2022-04-18 17:30:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12213','359','759','42.36309','-2.99382','1201','6.5906130149649','-1.7080447995054','31.397325333321','89.62','3574.6581790366','193.1371740245','755.30483405571','2022-04-18 17:30:45','2022-04-18 17:30:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12214','359','762','42.36322','-2.99372','1196','6.5796590543041','-2.1312013947441','30.592341891543','89.62','3575.9602026619','192.05643665954','757.46271889382','2022-04-18 17:30:48','2022-04-18 17:30:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12215','359','765','42.36334','-2.99361','1190','6.5844577325653','-2.5549069006654','30.876944323557','89.62','3577.2114128938','190.78776633523','759.53200685809','2022-04-18 17:30:51','2022-04-18 17:30:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12216','359','768','42.36346','-2.99353','1184','6.020876767777','-2.9790457895953','24.082922658812','89.62','3578.2740612493','189.37071676829','761.47062955297','2022-04-18 17:30:54','2022-04-18 17:30:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12217','359','771','42.36361','-2.99346','1177','5.2360994949997','-1.7537492827593','14.492114198784','89.47','3579.1113612268','187.76036117192','763.83501730677','2022-04-18 17:30:57','2022-04-18 17:30:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12218','359','774','42.36374','-2.99342','1173','4.8798256191668','-0.09088457871851','10.138070547222','89.245','3579.5763886903','187.02929052335','766.01313396745','2022-04-18 17:31:00','2022-04-18 17:31:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12219','359','777','42.36387','-2.99339','1176','5.1314979543074','1.2546237971595','13.213772717444','89.035','3579.9939333285','187.5457197924','768.16245392608','2022-04-18 17:31:03','2022-04-18 17:31:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12220','359','780','42.364','-2.99334','1179','5.4711383451972','0.83665940179816','17.364537587055','89.035','3580.6060473584','188.24265868601','770.40766000049','2022-04-18 17:31:06','2022-04-18 17:31:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12221','359','783','42.36414','-2.99327','1181','5.6697163626684','0.4178495615799','19.791371028853','89.035','3581.3601701225','188.65013891365','772.63806904334','2022-04-18 17:31:09','2022-04-18 17:31:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12222','359','786','42.36427','-2.99321','1181','5.7370289392299','-0.0017470064468675','20.614001921906','89.035','3582.1699214408','188.78826368883','774.81691367538','2022-04-18 17:31:12','2022-04-18 17:31:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12223','359','789','42.3644','-2.99314','1181','5.6821225470887','-0.42207608305122','19.94298772651','89.035','3582.9619028543','188.67559628761','776.93043357995','2022-04-18 17:31:15','2022-04-18 17:31:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12224','359','792','42.36452','-2.99308','1179','5.5157055897035','-0.67807348836427','17.909196460952','89.02','3583.6579510232','188.33411025335','778.92684242145','2022-04-18 17:31:18','2022-04-18 17:31:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12225','359','795','42.36466','-2.99303','1179','5.4851440982292','0.55174334404001','17.535702705271','88.87','3584.3586644968','188.27139835975','781.16780137405','2022-04-18 17:31:21','2022-04-18 17:31:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12226','359','798','42.3648','-2.99296','1182','5.8451037296585','1.7838949383827','21.934790189244','88.72','3585.1750905364','189.00804915739','783.52242381922','2022-04-18 17:31:24','2022-04-18 17:31:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12227','359','801','42.36495','-2.99286','1189','6.5842160533018','2.5233223419752','30.967524663605','88.615','3586.3634994747','190.52387875552','785.98376233749','2022-04-18 17:31:27','2022-04-18 17:31:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12228','359','804','42.3651','-2.99274','1196','6.5889680492357','2.1077831479085','31.363560572795','88.615','3587.844507117','192.05114445967','788.4597348833','2022-04-18 17:31:30','2022-04-18 17:31:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12229','359','807','42.36525','-2.99262','1201','6.5916047760074','1.6913899323093','31.184432772397','88.615','3589.3123288067','193.28601506378','790.8945553265','2022-04-18 17:31:33','2022-04-18 17:31:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12230','359','810','42.36539','-2.9925','1206','6.5813375752656','2.4296520890041','30.534147563173','88.51','3590.7008184066','194.40289396773','793.18011791606','2022-04-18 17:31:36','2022-04-18 17:31:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12231','359','813','42.36552','-2.9924','1214','6.5893853599468','2.6742541334763','31.127053529057','88.45','3592.0214760864','195.97851613031','795.36745028432','2022-04-18 17:31:39','2022-04-18 17:31:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12232','359','816','42.36565','-2.99229','1220','6.5912935001896','2.2583584311017','30.856227799857','88.45','3593.3108727476','197.38372252049','797.51067267042','2022-04-18 17:31:42','2022-04-18 17:31:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12233','359','819','42.36578','-2.99219','1225','6.5936006537475','1.8416526113909','31.161552039612','88.45','3594.5527047772','198.51156548302','799.57286340799','2022-04-18 17:31:45','2022-04-18 17:31:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12234','359','822','42.36593','-2.99207','1230','6.5842297754966','1.4247329130183','31.194881068906','88.45','3596.0077291115','199.56618186943','801.99633060781','2022-04-18 17:31:48','2022-04-18 17:31:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12235','359','825','42.36608','-2.99194','1233','6.5820763446921','1.0071362480884','31.037943808408','88.45','3597.5181454129','200.38902224472','804.51710094733','2022-04-18 17:31:51','2022-04-18 17:31:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12236','359','828','42.36623','-2.99182','1236','6.5931596341688','0.58871600328721','31.058955466876','88.45','3599.0134914901','200.92988996507','807.02411351733','2022-04-18 17:31:54','2022-04-18 17:31:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12237','359','831','42.36638','-2.9917','1238','6.5756061225976','1.3251379460624','30.610003759662','88.345','3600.5027619548','201.41672675336','809.48668344703','2022-04-18 17:31:57','2022-04-18 17:31:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12238','359','834','42.36653','-2.99158','1243','6.5797386468219','2.3936700242675','30.722786840352','88.21','3601.9716041254','202.6260198694','811.91925832665','2022-04-18 17:32:00','2022-04-18 17:32:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12239','359','837','42.36667','-2.99146','1249','6.5839437896361','1.9776097359252','31.039299493414','88.21','3603.3669189647','203.97487623954','814.23789737745','2022-04-18 17:32:03','2022-04-18 17:32:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12240','359','840','42.36681','-2.99135','1254','6.5827658647665','1.5607629791873','30.878800472443','88.21','3604.7408124939','205.05446597355','816.52354757201','2022-04-18 17:32:06','2022-04-18 17:32:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12241','359','843','42.36694','-2.99125','1258','6.5777435278066','1.1429844780451','31.259278804421','88.21','3606.0136827719','205.81505028682','818.6215998894','2022-04-18 17:32:09','2022-04-18 17:32:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12242','359','846','42.36708','-2.99113','1262','6.5829723372688','2.3760516629902','30.930376849304','88.06','3607.3866298676','206.86517585715','820.91632582361','2022-04-18 17:32:12','2022-04-18 17:32:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12243','359','849','42.36723','-2.99101','1271','6.5886275142025','2.9515284418219','31.38523240311','87.97','3608.8892094455','208.74028466125','823.41975140138','2022-04-18 17:32:15','2022-04-18 17:32:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12244','359','852','42.36738','-2.99088','1279','6.5923869390845','2.5368850484568','31.291298234638','87.97','3610.409058435','210.57424958294','825.92488581918','2022-04-18 17:32:18','2022-04-18 17:32:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12245','359','855','42.36753','-2.99076','1286','6.5809366667602','2.1213760648799','30.650503925798','87.97','3611.9073459982','212.11185858508','828.40911272418','2022-04-18 17:32:21','2022-04-18 17:32:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12246','359','858','42.36768','-2.99064','1292','6.5862322525295','1.7050859401354','31.292256784959','87.97','3613.40852832','213.38202485753','830.90577411128','2022-04-18 17:32:24','2022-04-18 17:32:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12247','359','861','42.36783','-2.99052','1298','6.5870746528721','2.9391410366777','31.118730163165','87.82','3614.8252285563','214.77038605699','833.23915995332','2022-04-18 17:32:27','2022-04-18 17:32:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12248','359','864','42.36796','-2.99041','1307','6.5841486476665','3.6800667887686','31.087749079637','87.715','3616.1736750495','216.7992118062','835.46354075154','2022-04-18 17:32:30','2022-04-18 17:32:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12249','359','867','42.36809','-2.9903','1316','6.5802247208065','3.2659639505844','30.561369350199','87.715','3617.4869026808','218.81824897745','837.65257689761','2022-04-18 17:32:33','2022-04-18 17:32:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12250','359','870','42.36822','-2.9902','1324','6.5768575479918','2.8509204040853','31.056081918683','87.715','3618.7441325861','220.51521171452','839.73760082421','2022-04-18 17:32:36','2022-04-18 17:32:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12251','359','873','42.36837','-2.99007','1332','6.5768958276315','2.4360633881198','30.895658836086','87.715','3620.2534782605','222.276037729','842.23641948067','2022-04-18 17:32:39','2022-04-18 17:32:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12252','359','876','42.36852','-2.98995','1339','6.5863321648328','2.0204115623205','30.56487883644','87.715','3621.7614125639','223.76474121258','844.7421636068','2022-04-18 17:32:42','2022-04-18 17:32:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12253','359','879','42.36868','-2.98982','1344','6.5780680505977','1.6039803902192','30.814433951921','87.715','3623.2795120262','224.98661648249','847.26314389641','2022-04-18 17:32:45','2022-04-18 17:32:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12254','359','882','42.36882','-2.98971','1349','6.5940144581004','2.1770297239448','31.005765601845','87.625','3624.714165503','226.03063025247','849.643158677','2022-04-18 17:32:48','2022-04-18 17:32:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12255','359','885','42.36896','-2.98959','1356','6.5837055641754','3.4117980514066','31.048128413733','87.475','3626.0754666689','227.66318345193','851.90456807528','2022-04-18 17:32:51','2022-04-18 17:32:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12256','359','888','42.36909','-2.98949','1365','6.5873885036101','3.3274762275821','30.978726375946','87.445','3627.3456611186','229.60724554847','854.00638818191','2022-04-18 17:32:54','2022-04-18 17:32:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12257','359','891','42.36921','-2.98939','1372','6.5806863977954','2.9123900215037','31.112740787504','87.445','3628.580369764','231.28960273818','856.04592452085','2022-04-18 17:32:57','2022-04-18 17:32:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12258','359','894','42.36933','-2.98929','1379','6.58925479399','2.4965437127227','31.140276308987','87.445','3629.7742752785','232.7117202298','858.01697091014','2022-04-18 17:33:00','2022-04-18 17:33:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12259','359','897','42.36948','-2.98917','1385','6.5882413079616','2.0807382496767','30.704587826997','87.445','3631.1967925687','234.14782225495','860.3909575383','2022-04-18 17:33:03','2022-04-18 17:33:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12260','359','900','42.36963','-2.98905','1391','6.5831139924525','1.6643746579405','31.337829637228','87.445','3632.6885425046','235.39283531103','862.88488003441','2022-04-18 17:33:06','2022-04-18 17:33:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12261','359','903','42.36978','-2.98893','1397','6.5842308928404','2.8986148444435','30.749937963783','87.295','3634.1806121689','236.84456657263','865.36537252694','2022-04-18 17:33:09','2022-04-18 17:33:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12262','359','906','42.36992','-2.98881','1407','6.5817224006502','4.134901576996','31.275876227878','87.145','3635.609128924','238.9969827867','867.73230283868','2022-04-18 17:33:12','2022-04-18 17:33:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12263','359','909','42.37006','-2.9887','1418','6.5942008856672','3.8870303334362','30.943351878976','87.13','3636.9690550954','241.4376864145','869.98672829005','2022-04-18 17:33:15','2022-04-18 17:33:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12264','359','912','42.37019','-2.98859','1428','6.5817819826547','3.4732541107482','30.982531500981','87.13','3638.2824356344','243.56854836658','872.16671471332','2022-04-18 17:33:18','2022-04-18 17:33:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12265','359','915','42.37031','-2.98849','1435','6.5774771121283','3.0583315899137','31.124609530036','87.13','3639.4948010517','245.3069471916','874.16905641133','2022-04-18 17:33:21','2022-04-18 17:33:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12266','359','918','42.37042','-2.98838','1442','6.5214413481707','2.6426072799702','51.406973004887','87.13','3640.8788008975','246.77083396059','875.9359483219','2022-04-18 17:33:24','2022-04-18 17:33:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12267','359','921','42.37049','-2.9882','1448','6.440643850014','2.5566881549992','77.207153292387','87.1','3643.0731877995','248.16802105366','877.0420149747','2022-04-18 17:33:27','2022-04-18 17:33:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12268','359','924','42.37048','-2.98797','1457','6.3296833279179','2.9672924872391','112.63896170465','87.025','3645.8121614226','250.08680087792','876.92172710435','2022-04-18 17:33:30','2022-04-18 17:33:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12269','359','927','42.37042','-2.98776','1465','6.3320508542201','1.5882755816349','113.30122812425','87.025','3648.354084638','251.79288477511','875.83770508461','2022-04-18 17:33:33','2022-04-18 17:33:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12270','359','930','42.37035','-2.98755','1469','6.3323506212128','1.1709160266884','113.02901190195','87.025','3650.8727266446','252.69690553599','874.76032144477','2022-04-18 17:33:36','2022-04-18 17:33:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12271','359','933','42.37029','-2.98736','1470','6.3361418879743','-0.45341572586391','112.75739485903','87.025','3653.2436375438','252.92569634732','873.75112985378','2022-04-18 17:33:39','2022-04-18 17:33:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12272','359','936','42.37023','-2.98717','1468','6.3196107791145','-0.87450938548089','112.85026841123','87.025','3655.5395068546','252.5512553046','872.78103238844','2022-04-18 17:33:42','2022-04-18 17:33:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12273','359','939','42.37017','-2.98699','1465','6.3307820225525','-2.2606271670283','113.49196546358','87.025','3657.7101558434','251.82618114209','871.85600891835','2022-04-18 17:33:45','2022-04-18 17:33:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12274','359','942','42.37012','-2.98682','1459','6.3244840651762','-2.6844468337594','113.24890952218','87.025','3659.8100650834','250.51842508032','870.9527316287','2022-04-18 17:33:48','2022-04-18 17:33:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12275','359','945','42.37008','-2.98662','1451','6.4023060557165','-3.1093755010424','89.449141315121','87.025','3662.1910845274','248.8309756326','870.28375699999','2022-04-18 17:33:51','2022-04-18 17:33:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12276','359','948','42.37013','-2.98641','1442','6.5275468860311','-3.535701095135','49.457358460572','87.025','3664.8402033785','246.66525422249','871.14954950618','2022-04-18 17:33:54','2022-04-18 17:33:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12277','359','951','42.37027','-2.98627','1432','6.5794462300248','-2.6419309031692','31.262303691663','86.905','3666.5373595206','244.53232750559','873.47271024886','2022-04-18 17:33:57','2022-04-18 17:33:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12278','359','954','42.37042','-2.98615','1424','6.5873435015335','-3.0672231113781','30.760942310904','86.905','3668.0023173385','242.72041095563','875.89845928034','2022-04-18 17:34:00','2022-04-18 17:34:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12279','359','957','42.37056','-2.98603','1415','6.5771735685457','-3.493081407193','30.929563022456','86.905','3669.4211754579','240.71468050767','878.24363988761','2022-04-18 17:34:03','2022-04-18 17:34:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12280','359','960','42.37069','-2.98592','1405','6.5822632370033','-3.5892387960661','30.56707927861','86.875','3670.7398521078','238.60654825675','880.42171924241','2022-04-18 17:34:06','2022-04-18 17:34:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12281','359','963','42.37082','-2.98582','1398','6.5873285509602','-2.3641752809614','30.656186949642','86.724999999999','3672.0142224658','236.91642225882','882.53349752991','2022-04-18 17:34:09','2022-04-18 17:34:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12282','359','966','42.37094','-2.98572','1393','6.5810629416392','-1.7970759680009','30.751491230361','86.634999999999','3673.2002854504','235.9233013071','884.50858578162','2022-04-18 17:34:12','2022-04-18 17:34:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12283','359','969','42.37108','-2.98561','1388','6.5797773560151','-2.2205098211562','31.255687313671','86.634999999999','3674.5355316933','234.74763793245','886.73405019427','2022-04-18 17:34:15','2022-04-18 17:34:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12284','359','972','42.37123','-2.98548','1381','6.5775663499808','-2.6451568551355','31.088675821877','86.634999999999','3676.0356091107','233.15661251491','889.23281860949','2022-04-18 17:34:18','2022-04-18 17:34:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12285','359','975','42.37138','-2.98536','1372','6.5772801691122','-3.0705864744822','30.767786472834','86.634999999999','3677.528850396','231.29764991065','891.71214220287','2022-04-18 17:34:21','2022-04-18 17:34:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12286','359','978','42.37153','-2.98524','1365','6.5848221063513','-2.0104865939319','30.901288173336','86.499999999999','3678.9672636566','229.61997450992','894.09944990391','2022-04-18 17:34:24','2022-04-18 17:34:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12287','359','981','42.37167','-2.98513','1361','6.5923041844263','-0.7830676402218','30.53553217195','86.349999999999','3680.3597784849','228.73629036441','896.39824219428','2022-04-18 17:34:27','2022-04-18 17:34:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12288','359','984','42.3718','-2.98502','1360','6.5801821935454','0.44654441242818','31.192900311179','86.199999999999','3681.6719734632','228.60346712763','898.59318783261','2022-04-18 17:34:30','2022-04-18 17:34:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12289','359','987','42.37193','-2.98492','1362','6.5800683441929','0.8528771414632','31.163359725207','86.124999999999','3682.9194318733','229.05975941619','900.67282297058','2022-04-18 17:34:33','2022-04-18 17:34:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12290','359','990','42.37205','-2.98482','1364','6.576132293144','0.43391491550328','30.636503071826','86.124999999999','3684.1431760561','229.41506666868','902.70964891901','2022-04-18 17:34:36','2022-04-18 17:34:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12291','359','993','42.37216','-2.98472','1364','6.583751913715','0.014270625286181','30.691757784231','86.124999999999','3685.2837736674','229.53685258813','904.60311552477','2022-04-18 17:34:39','2022-04-18 17:34:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12292','359','996','42.3723','-2.98461','1364','6.5779946902441','-0.40605986614013','31.388246647466','86.124999999999','3686.622119817','229.4237007881','906.83224523239','2022-04-18 17:34:42','2022-04-18 17:34:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12293','359','999','42.37245','-2.98449','1362','6.5900019954566','-0.82721000182791','31.179633766317','86.124999999999','3688.1296718963','229.02992378517','909.33215505692','2022-04-18 17:34:45','2022-04-18 17:34:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12294','359','1002','42.3726','-2.98437','1359','6.584565995471','-1.2491597361965','30.534891148254','86.124999999999','3689.6227712924','228.36238467277','911.81370121886','2022-04-18 17:34:48','2022-04-18 17:34:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12295','359','1005','42.37275','-2.98425','1355','6.5945795608206','-1.6718439518539','30.605250464359','86.124999999999','3691.0804926768','227.44337797813','914.22923833595','2022-04-18 17:34:51','2022-04-18 17:34:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12296','359','1008','42.37289','-2.98413','1350','6.5888698774713','-1.269876712323','31.312733045228','86.049999999999','3692.4764164912','226.40503846671','916.54801951535','2022-04-18 17:34:54','2022-04-18 17:34:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12297','359','1011','42.37303','-2.98402','1348','6.5932322453817','-0.041106001965581','31.033170702089','85.899999999999','3693.8127228585','225.9841611769','918.75591806429','2022-04-18 17:34:57','2022-04-18 17:34:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12298','359','1014','42.37315','-2.98392','1350','6.5910118770807','0.69462905987917','30.749378791105','85.794999999999','3695.0531034164','226.23582752659','920.81271011131','2022-04-18 17:35:00','2022-04-18 17:35:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12299','359','1017','42.37327','-2.98382','1351','6.5767366737705','0.27540500332409','30.748656070292','85.794999999999','3696.252126656','226.50149068915','922.80149918057','2022-04-18 17:35:03','2022-04-18 17:35:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12300','359','1020','42.3734','-2.98372','1351','6.5773544119124','-0.14447510899017','31.06737105689','85.794999999999','3697.48791382','226.54253716226','924.84683029625','2022-04-18 17:35:06','2022-04-18 17:35:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12301','359','1023','42.37355','-2.9836','1350','6.5804475536528','-0.56511907807964','30.765137532479','85.794999999999','3698.992175274','226.32205863896','927.33809916451','2022-04-18 17:35:09','2022-04-18 17:35:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12302','359','1026','42.3737','-2.98347','1348','6.5929065369112','-0.98655497202722','31.049430580964','85.794999999999','3700.4652484413','225.83044532654','929.79731321075','2022-04-18 17:35:12','2022-04-18 17:35:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12303','359','1029','42.37384','-2.98335','1344','6.5820164562841','-1.4087560247831','31.35155284829','85.794999999999','3701.9223890586','225.07686123492','932.22847941747','2022-04-18 17:35:15','2022-04-18 17:35:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12304','359','1032','42.37399','-2.98324','1340','6.5807227589412','-1.8316364141845','31.144393223433','85.794999999999','3703.3266032862','224.09068967464','934.56746524085','2022-04-18 17:35:18','2022-04-18 17:35:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12305','359','1035','42.37412','-2.98313','1335','6.5931712578962','-2.2551579785523','30.806474614942','85.794999999999','3704.6978648876','222.88499622726','936.82353446569','2022-04-18 17:35:21','2022-04-18 17:35:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12306','359','1038','42.37425','-2.98302','1328','6.5774199362558','-2.6791345858837','30.605206612439','85.794999999999','3705.9726769945','221.52350772338','938.93430986703','2022-04-18 17:35:24','2022-04-18 17:35:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12307','359','1041','42.37437','-2.98293','1322','6.5824226865504','-3.103399488794','31.307236585942','85.794999999999','3707.1406752054','220.06331419697','940.87106404181','2022-04-18 17:35:27','2022-04-18 17:35:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12308','359','1044','42.37448','-2.98283','1314','6.5827701361405','-3.3632053581924','30.746396195108','85.779999999999','3708.283704741','218.41790759991','942.76694255597','2022-04-18 17:35:30','2022-04-18 17:35:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12309','359','1047','42.37464','-2.98271','1306','6.5858098278962','-2.1386025933734','30.644343575567','85.629999999999','3709.7763544907','216.57003250459','945.25915650512','2022-04-18 17:35:33','2022-04-18 17:35:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12310','359','1050','42.37479','-2.98259','1301','6.5790910492453','-0.91161796284565','30.699789551228','85.479999999999','3711.2649839457','215.53764722508','947.73563102557','2022-04-18 17:35:36','2022-04-18 17:35:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12311','359','1053','42.37494','-2.98247','1300','6.5839366305897','0.31770756396766','31.149370183024','85.329999999999','3712.731945681','215.30672488015','950.17548599369','2022-04-18 17:35:39','2022-04-18 17:35:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12312','359','1056','42.37508','-2.98235','1303','6.5799576923159','1.0541885275924','31.109375676153','85.224999999999','3714.1281995877','215.81376889573','952.5116025521','2022-04-18 17:35:42','2022-04-18 17:35:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12313','359','1059','42.37522','-2.98224','1305','6.5942076185559','0.63570521286049','31.092078514991','85.224999999999','3715.5002057741','216.33304308712','954.78480542935','2022-04-18 17:35:45','2022-04-18 17:35:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12314','359','1062','42.37535','-2.98213','1306','6.5781868190894','0.21645511092433','30.712016255318','85.224999999999','3716.804193895','216.58978897825','956.95684879761','2022-04-18 17:35:48','2022-04-18 17:35:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12315','359','1065','42.37547','-2.98203','1306','6.5767584729335','-0.20349662760944','30.935093134228','85.224999999999','3718.04692796','216.60631246825','959.01642362566','2022-04-18 17:35:51','2022-04-18 17:35:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12316','359','1068','42.37559','-2.98193','1305','6.5796151197889','-0.62408343563371','30.990308545108','85.224999999999','3719.211179566','216.4054044297','960.95748586115','2022-04-18 17:35:54','2022-04-18 17:35:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12317','359','1071','42.3757','-2.98184','1304','6.5875858845056','-1.0452521197632','31.190719064081','85.224999999999','3720.3284237677','216.00527691539','962.82118676407','2022-04-18 17:35:57','2022-04-18 17:35:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12318','359','1074','42.37586','-2.98172','1300','6.5838231241919','-1.4676238779087','30.998154649083','85.224999999999','3721.8190363081','215.19324767035','965.30811854353','2022-04-18 17:36:00','2022-04-18 17:36:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12319','359','1077','42.37601','-2.9816','1295','6.5766921851586','-1.8907704488224','30.771190012554','85.224999999999','3723.2988513096','214.11594237754','967.76828449718','2022-04-18 17:36:03','2022-04-18 17:36:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12320','359','1080','42.37615','-2.98147','1289','6.5845488309137','-2.3147202460879','30.957313499983','85.224999999999','3724.7758015032','212.76363295361','970.22586269856','2022-04-18 17:36:06','2022-04-18 17:36:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12321','359','1083','42.3763','-2.98136','1282','6.5803041296786','-1.9140341691792','30.548204842907','85.149999999999','3726.2144726342','211.28665617268','972.61492504883','2022-04-18 17:36:09','2022-04-18 17:36:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12322','359','1086','42.37643','-2.98125','1279','6.5764728639361','-0.68635641591831','30.944094011569','84.999999999999','3727.553187654','210.49157836517','974.8354648734','2022-04-18 17:36:12','2022-04-18 17:36:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12323','359','1089','42.37657','-2.98114','1278','6.5874615733578','0.54343022821605','30.794307989093','84.849999999999','3728.8741717224','210.41853078111','977.02165511582','2022-04-18 17:36:15','2022-04-18 17:36:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12324','359','1092','42.3767','-2.98103','1280','6.5795599594212','0.45447076997951','31.300224736576','84.819999999999','3730.1585147699','210.77478563121','979.14035933922','2022-04-18 17:36:18','2022-04-18 17:36:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12325','359','1095','42.37682','-2.98093','1281','6.5791055448255','0.034878916425758','30.764600886052','84.819999999999','3731.3754549403','210.91452452121','981.15500982587','2022-04-18 17:36:21','2022-04-18 17:36:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12326','359','1098','42.37697','-2.98081','1280','6.5846846466215','-0.38542286509074','30.859221111708','84.819999999999','3732.8696975901','210.811202259','983.66123292387','2022-04-18 17:36:24','2022-04-18 17:36:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12327','359','1101','42.37712','-2.98069','1279','6.5909531252441','-0.80653352885521','30.826407445729','84.819999999999','3734.3643684093','210.43093943168','986.16297887269','2022-04-18 17:36:27','2022-04-18 17:36:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12328','359','1104','42.37727','-2.98057','1276','6.5765318397811','-1.2284149541634','30.607407540919','84.819999999999','3735.8347953525','209.78678759206','988.61304699926','2022-04-18 17:36:30','2022-04-18 17:36:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12329','359','1107','42.37742','-2.98045','1272','6.5889087937009','-1.6510547033845','31.201790014316','84.819999999999','3737.2879491633','208.88300506639','991.02413767707','2022-04-18 17:36:33','2022-04-18 17:36:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12330','359','1110','42.37756','-2.98033','1269','6.5847394423053','-0.58797486171949','31.353384374897','84.684999999999','3738.6605184954','208.22559203039','993.29900094892','2022-04-18 17:36:36','2022-04-18 17:36:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12331','359','1113','42.37769','-2.98023','1267','6.582971837737','-1.0092290604601','30.611307208345','84.684999999999','3739.9311891679','207.79618650339','995.39975942438','2022-04-18 17:36:39','2022-04-18 17:36:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12332','359','1116','42.37781','-2.98013','1264','6.5922325781579','-1.4311184391274','31.088314683724','84.684999999999','3741.1574067923','207.14931163729','997.45087936344','2022-04-18 17:36:42','2022-04-18 17:36:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12333','359','1119','42.37793','-2.98003','1260','6.5804426825488','-1.8535812819467','30.809052529574','84.684999999999','3742.3432694676','206.30609733278','999.42634636822','2022-04-18 17:36:45','2022-04-18 17:36:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12334','359','1122','42.37806','-2.97992','1255','6.5774791978927','-2.276973203809','31.379185763745','84.684999999999','3743.6337290854','205.14479015893','1001.5624560787','2022-04-18 17:36:48','2022-04-18 17:36:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12335','359','1125','42.37821','-2.9798','1247','6.5940185970967','-2.7016783309764','31.152723143212','84.684999999999','3745.1162835384','203.53387512162','1004.030207704','2022-04-18 17:36:51','2022-04-18 17:36:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12336','359','1128','42.37836','-2.97968','1239','6.5894919273008','-2.3019193685498','30.986273253957','84.609999999999','3746.6172793199','201.73947808673','1006.5185971624','2022-04-18 17:36:54','2022-04-18 17:36:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12337','359','1131','42.37851','-2.97956','1234','6.5863192330284','-1.0752268611948','31.018387154106','84.459999999999','3748.0896730813','200.60707731452','1008.9809290413','2022-04-18 17:36:57','2022-04-18 17:36:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12338','359','1134','42.37865','-2.97944','1233','6.5913278590492','0.1538351334524','30.921129915652','84.309999999999','3749.4991149156','200.28592830534','1011.3128727741','2022-04-18 17:37:00','2022-04-18 17:37:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12339','359','1137','42.37879','-2.97933','1235','6.5771016940817','1.0550250798067','30.721250811933','84.189999999999','3750.8522354237','200.69333546087','1013.5601937204','2022-04-18 17:37:03','2022-04-18 17:37:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12340','359','1140','42.37892','-2.97922','1237','6.5767650284976','0.63646408526551','31.318816592559','84.189999999999','3752.1453739682','201.18601407506','1015.719671773','2022-04-18 17:37:06','2022-04-18 17:37:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12341','359','1143','42.37905','-2.97912','1238','6.5906584220996','0.21717140494284','31.089897585115','84.189999999999','3753.3888625735','201.42818221714','1017.7780960376','2022-04-18 17:37:09','2022-04-18 17:37:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12342','359','1146','42.37917','-2.97902','1238','6.5894920195501','-0.20280045558952','30.900685830104','84.189999999999','3754.6564244479','201.43781645017','1019.8661126343','2022-04-18 17:37:12','2022-04-18 17:37:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12343','359','1149','42.37932','-2.97889','1237','6.5862404237244','-0.62355980840187','30.878785334372','84.189999999999','3756.162080418','201.1778334953','1022.3626751553','2022-04-18 17:37:15','2022-04-18 17:37:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12344','359','1152','42.37948','-2.97877','1234','6.5754092434783','-1.0451177330583','30.643130321266','84.189999999999','3757.6469612472','200.64443999353','1024.8373100885','2022-04-18 17:37:18','2022-04-18 17:37:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12345','359','1155','42.37962','-2.97865','1231','6.5895410823185','-1.4674666497792','30.569462923733','84.189999999999','3759.125103209','199.8402310673','1027.2994055258','2022-04-18 17:37:21','2022-04-18 17:37:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12346','359','1158','42.37977','-2.97853','1226','6.5772508785715','-1.8905234427106','31.105026950316','84.189999999999','3760.5674318311','198.79366345629','1029.7004730239','2022-04-18 17:37:24','2022-04-18 17:37:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12347','359','1161','42.37991','-2.97842','1221','6.5857137748845','-2.3141850148301','30.763183323809','84.189999999999','3761.9475946595','197.54003494051','1031.9872809193','2022-04-18 17:37:27','2022-04-18 17:37:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12348','359','1164','42.38004','-2.97831','1216','6.5903833451778','-1.2523733943188','30.720428346677','84.054999999999','3763.2457382016','196.44841546239','1034.1464734853','2022-04-18 17:37:30','2022-04-18 17:37:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12349','359','1167','42.38017','-2.97821','1214','6.5772932404575','-0.3535187709766','30.987321202163','83.934999999999','3764.4942238199','196.05626782943','1036.2187772002','2022-04-18 17:37:33','2022-04-18 17:37:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12350','359','1170','42.38029','-2.97811','1213','6.5904514236289','-0.77434672265612','31.174804523459','83.934999999999','3765.6834601267','195.77279837935','1038.1956921582','2022-04-18 17:37:36','2022-04-18 17:37:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12351','359','1173','42.38044','-2.97799','1210','6.591012228858','-1.1961674018615','30.943269164616','83.934999999999','3767.1448600396','195.14944444955','1040.6390061158','2022-04-18 17:37:39','2022-04-18 17:37:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12352','359','1176','42.38059','-2.97787','1206','6.5852306465818','-1.6188252629736','31.020298593905','83.934999999999','3768.6389513531','194.23946087627','1043.1238340661','2022-04-18 17:37:42','2022-04-18 17:37:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12353','359','1179','42.38074','-2.97775','1200','6.5893790806458','-2.0422310475874','31.299338053199','83.934999999999','3770.1027288179','193.07340745135','1045.5706210214','2022-04-18 17:37:45','2022-04-18 17:37:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12354','359','1182','42.38089','-2.97762','1194','6.5783268407289','-2.4664579723859','31.347808322163','83.934999999999','3771.5890919531','191.62621665773','1048.0248425712','2022-04-18 17:37:48','2022-04-18 17:37:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12355','359','1185','42.38103','-2.97751','1187','6.3249332453601','-2.7262234539935','27.798814464917','83.919999999999','3772.9770183302','189.99463780586','1050.353135355','2022-04-18 17:37:51','2022-04-18 17:37:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12356','359','1188','42.38116','-2.97743','1181','5.7184301194737','-1.499858476828','20.386704669485','83.769999999999','3773.9353592053','188.75009908529','1052.4726365094','2022-04-18 17:37:54','2022-04-18 17:37:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12357','359','1191','42.38128','-2.97738','1179','5.4637277866038','-0.27138501272939','17.273972721689','83.619999999999','3774.6030947968','188.22745228935','1054.4446314126','2022-04-18 17:37:57','2022-04-18 17:37:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12358','359','1194','42.38139','-2.97733','1179','5.5371727731612','0.95905517330069','18.171548152141','83.469999999999','3775.1774277247','188.37816071227','1056.2771320205','2022-04-18 17:38:00','2022-04-18 17:38:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12359','359','1197','42.3815','-2.97728','1183','5.8993858443784','1.8612260653021','22.598175054153','83.349999999999','3775.825052697','189.12141853401','1058.0663830153','2022-04-18 17:38:03','2022-04-18 17:38:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12360','359','1200','42.38165','-2.97718','1188','6.4392406432627','1.4444616372843','29.195771788833','83.349999999999','3777.0111541403','190.22919551325','1060.526064359','2022-04-18 17:38:06','2022-04-18 17:38:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12361','359','1203','42.3818','-2.97706','1191','6.5920301506894','1.026866822678','31.385037938225','83.349999999999','3778.483761411','191.05266939191','1063.0038198759','2022-04-18 17:38:09','2022-04-18 17:38:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12362','359','1206','42.38195','-2.97693','1194','6.5780671304207','0.60847034990054','31.269856135897','83.349999999999','3779.9799256999','191.60167604438','1065.4823387368','2022-04-18 17:38:12','2022-04-18 17:38:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12363','359','1209','42.38209','-2.97681','1195','6.5767750603168','0.18924051695122','30.616597113157','83.349999999999','3781.4282130832','191.86536151749','1067.868682999','2022-04-18 17:38:15','2022-04-18 17:38:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12364','359','1212','42.38223','-2.9767','1195','6.5933492271908','-0.23076058009779','31.258243584646','83.349999999999','3782.8257266595','191.864985916','1070.1815587331','2022-04-18 17:38:18','2022-04-18 17:38:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12365','359','1215','42.38237','-2.97659','1194','6.5812074014916','-0.65147372316643','31.312208365935','83.349999999999','3784.1549231665','191.62082399388','1072.3824191189','2022-04-18 17:38:21','2022-04-18 17:38:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12366','359','1218','42.38249','-2.97648','1192','6.5914802847336','-1.072838531719','30.775909630922','83.349999999999','3785.4322263735','191.15354850011','1074.4915373933','2022-04-18 17:38:24','2022-04-18 17:38:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12367','359','1221','42.38261','-2.97639','1190','6.5859966358997','-0.33920344266801','31.366714403089','83.244999999999','3786.6207295066','190.68623794843','1076.4402878304','2022-04-18 17:38:27','2022-04-18 17:38:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12368','359','1224','42.38276','-2.97627','1188','6.4932947462364','-0.76021439423108','29.856370108996','83.244999999999','3788.0905712573','190.3401140251','1078.8963122842','2022-04-18 17:38:30','2022-04-18 17:38:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12369','359','1227','42.38291','-2.97616','1185','6.1911366349577','-1.1820253521425','26.163678347342','83.244999999999','3789.4156355223','189.72008841737','1081.3473773343','2022-04-18 17:38:33','2022-04-18 17:38:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12370','359','1230','42.38306','-2.97607','1181','5.7588404711607','-1.6046162809598','20.880561915709','83.244999999999','3790.4748429566','188.83302074759','1083.7234203784','2022-04-18 17:38:36','2022-04-18 17:38:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12371','359','1233','42.38319','-2.97601','1177','5.2848308652228','-1.0374572156027','15.087663094014','83.154999999999','3791.2087822544','187.86035748613','1085.9512654739','2022-04-18 17:38:39','2022-04-18 17:38:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12372','359','1236','42.38332','-2.97597','1175','5.0918750824705','-0.633613679018','12.729539308035','83.079999999999','3791.7185764365','187.46441403136','1088.01408869','2022-04-18 17:38:42','2022-04-18 17:38:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12373','359','1239','42.38343','-2.97594','1173','4.8639781456','-1.0549795591497','9.9443976557834','83.079999999999','3792.1036808734','186.99677165636','1089.8784033774','2022-04-18 17:38:45','2022-04-18 17:38:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12374','359','1242','42.38354','-2.97591','1170','4.5209407542309','-1.4770307278558','5.7521178467541','83.079999999999','3792.3596712566','186.29450402463','1091.6462527816','2022-04-18 17:38:48','2022-04-18 17:38:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12375','359','1245','42.38363','-2.9759','1166','4.4187501077054','-1.0743114272593','4.1350663616347','83.004999999999','3792.4878783606','185.51365096074','1093.188758609','2022-04-18 17:38:51','2022-04-18 17:38:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12376','359','1248','42.38374','-2.97589','1165','4.4196225181522','0.15477616328629','4.4029211972399','82.854999999999','3792.6403259222','185.20126533163','1095.0551974262','2022-04-18 17:38:54','2022-04-18 17:38:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12377','359','1251','42.38386','-2.97588','1167','4.4124480513346','1.3861389405602','4.6650681188438','82.704999999999','3792.7881001543','185.6678453676','1096.9888863257','2022-04-18 17:38:57','2022-04-18 17:38:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12378','359','1254','42.38398','-2.97586','1171','4.6858340796331','1.298948532784','7.7672887176854','82.674999999999','3792.9699801732','186.6297777875','1098.9337935117','2022-04-18 17:39:00','2022-04-18 17:39:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12379','359','1257','42.38411','-2.97584','1175','5.032288259865','0.88102633215658','12.001325301111','82.674999999999','3793.328088965','187.34116307735','1100.9955056419','2022-04-18 17:39:03','2022-04-18 17:39:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12380','359','1260','42.38423','-2.97579','1177','5.2415235359263','0.46228172483537','14.558401716797','82.674999999999','3793.8229838202','187.77097737823','1103.0848380152','2022-04-18 17:39:06','2022-04-18 17:39:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12381','359','1263','42.38435','-2.97575','1177','5.3192266951411','0.042748793966498','15.508016521684','82.674999999999','3794.3648846504','187.93088988644','1105.0849084991','2022-04-18 17:39:09','2022-04-18 17:39:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12382','359','1266','42.38447','-2.97571','1177','5.279414149271','-0.37748845459876','15.02146509494','82.674999999999','3794.8967843547','187.84966205396','1107.0037609979','2022-04-18 17:39:12','2022-04-18 17:39:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12383','359','1269','42.38458','-2.97567','1176','5.131715585697','-0.79837230636829','13.216432403249','82.674999999999','3795.3627421584','187.54705384474','1108.8132943981','2022-04-18 17:39:15','2022-04-18 17:39:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12384','359','1272','42.38471','-2.97563','1173','4.8209657150532','-1.2202333885506','9.4187402532507','82.674999999999','3795.7962963387','186.9098669704','1110.9123143565','2022-04-18 17:39:18','2022-04-18 17:39:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12385','359','1275','42.38483','-2.97561','1169','4.4275439625698','-1.6429477897815','4.3349698925117','82.674999999999','3796.0499429786','185.9805255085','1112.9413490498','2022-04-18 17:39:21','2022-04-18 17:39:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12386','359','1278','42.38495','-2.9756','1163','4.4216872020058','-1.4062555960698','4.1660060309355','82.614999999999','3796.2034102206','184.84801735289','1114.8714390046','2022-04-18 17:39:24','2022-04-18 17:39:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12387','359','1281','42.38507','-2.97559','1161','4.4247687726338','-0.1778625499387','4.2287587826677','82.464999999999','3796.3492398658','184.29783750449','1116.7740676644','2022-04-18 17:39:27','2022-04-18 17:39:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12388','359','1284','42.38517','-2.97558','1162','4.4180744083491','0.72271916865123','4.4596625585725','82.344999999999','3796.4784274717','184.49700305107','1118.4661422383','2022-04-18 17:39:30','2022-04-18 17:39:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12389','359','1287','42.38527','-2.97557','1163','4.4180974402496','0.30357838395395','4.413773456226','82.344999999999','3796.6119517274','184.79117636503','1120.096514554','2022-04-18 17:39:33','2022-04-18 17:39:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12390','359','1290','42.38537','-2.97555','1163','4.4207383912744','-0.11623610212394','4.8431690956391','82.344999999999','3796.7468051072','184.85469158069','1121.8094517156','2022-04-18 17:39:36','2022-04-18 17:39:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12391','359','1293','42.38548','-2.97554','1163','4.4150681985785','-0.53678589534094','4.3379745312152','82.344999999999','3796.8903894743','184.66645646416','1123.607355498','2022-04-18 17:39:39','2022-04-18 17:39:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12392','359','1296','42.3856','-2.97553','1160','4.4168062413333','-0.95816962559473','4.0976956968004','82.344999999999','3797.0399451037','184.1927026645','1125.5299148641','2022-04-18 17:39:42','2022-04-18 17:39:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12393','359','1299','42.38571','-2.97552','1157','4.4202984892834','-1.3803193198281','4.8420218101529','82.344999999999','3797.1886454615','183.45670241564','1127.427139143','2022-04-18 17:39:45','2022-04-18 17:39:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12394','359','1302','42.38583','-2.97551','1153','4.4258555317565','-1.8031885856123','4.8762262229935','82.344999999999','3797.3380476822','182.47433929698','1129.2769062502','2022-04-18 17:39:48','2022-04-18 17:39:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12395','359','1305','42.38593','-2.97549','1147','4.4220919771014','-2.2266638765496','4.6901209332459','82.344999999999','3797.4812756509','181.28448868707','1131.039075151','2022-04-18 17:39:51','2022-04-18 17:39:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12396','359','1308','42.38603','-2.97548','1141','4.4212087450237','-2.6505723732759','4.867745083038','82.344999999999','3797.6107688652','179.94631950999','1132.6799271337','2022-04-18 17:39:54','2022-04-18 17:39:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12397','359','1311','42.38613','-2.97547','1134','4.4254777945318','-2.9100687628348','4.2149733189401','82.329999999999','3797.743301544','178.40687088377','1134.2819369077','2022-04-18 17:39:57','2022-04-18 17:39:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12398','359','1314','42.38622','-2.97546','1129','4.4147861475551','-1.6835507742916','4.2628265584935','82.179999999999','3797.8646239398','177.21471934009','1135.7905973417','2022-04-18 17:40:00','2022-04-18 17:40:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12399','359','1317','42.38631','-2.97545','1126','4.4174937711557','-1.2803774402615','4.1161836317716','82.104999999999','3797.9773327056','176.58931569544','1137.2337179277','2022-04-18 17:40:03','2022-04-18 17:40:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12400','359','1320','42.38639','-2.97544','1123','4.4224377173132','-1.7023788187919','4.6326644513024','82.104999999999','3798.0857000835','175.90409494472','1138.6088669071','2022-04-18 17:40:06','2022-04-18 17:40:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12401','359','1323','42.38647','-2.97544','1119','4.4232437653646','-2.1248156422533','4.4871235302517','82.104999999999','3798.1863013487','175.06978900193','1139.9152085781','2022-04-18 17:40:09','2022-04-18 17:40:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12402','359','1326','42.38659','-2.97542','1113','4.4119839876681','-2.5491169659636','4.6860965817301','82.104999999999','3798.3345683167','173.59712592639','1141.7853515114','2022-04-18 17:40:12','2022-04-18 17:40:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12403','359','1329','42.3867','-2.97541','1105','4.4165411467953','-2.4791920904935','4.7584877957096','82.059999999999','3798.4841950124','171.85953326831','1143.6973061416','2022-04-18 17:40:15','2022-04-18 17:40:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12404','359','1332','42.38682','-2.9754','1099','4.4104396931405','-1.2527818411501','4.4235180551606','81.909999999999','3798.6355663029','170.63049458196','1145.5873984933','2022-04-18 17:40:18','2022-04-18 17:40:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12405','359','1335','42.38693','-2.97539','1098','4.4108265113398','-0.024027919762964','4.541687564212','81.759999999999','3798.7741499398','170.20386917871','1147.3891188048','2022-04-18 17:40:21','2022-04-18 17:40:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12406','359','1338','42.38703','-2.97538','1097','4.4141724128313','-0.44436671856303','4.9033617980149','81.759999999999','3798.9030722764','170.08787314668','1149.0145660728','2022-04-18 17:40:24','2022-04-18 17:40:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12407','359','1341','42.38712','-2.97537','1095','4.4120718711766','-0.86537767703471','4.571350354258','81.759999999999','3799.0349616676','169.74174685802','1150.6362018348','2022-04-18 17:40:27','2022-04-18 17:40:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12408','359','1344','42.38721','-2.97536','1093','4.4282595905443','-1.2869147080555','4.129511770411','81.759999999999','3799.1509983691','169.21550680198','1152.1162234596','2022-04-18 17:40:30','2022-04-18 17:40:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12409','359','1347','42.3873','-2.97535','1090','4.4234398021005','-1.7088774596741','4.1721515526838','81.759999999999','3799.2546210724','168.54351091658','1153.4697822638','2022-04-18 17:40:33','2022-04-18 17:40:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12410','359','1350','42.3874','-2.97534','1085','4.4218920757183','-1.9671132667181','4.1473566732024','81.744999999999','3799.3912417703','167.4356534582','1155.1804061758','2022-04-18 17:40:36','2022-04-18 17:40:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12411','359','1353','42.38752','-2.97532','1081','4.412678552649','-1.2348939179955','4.0868728842023','81.639999999999','3799.5391977724','166.48362967715','1157.1007389646','2022-04-18 17:40:39','2022-04-18 17:40:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12412','359','1356','42.38763','-2.97531','1077','4.4274345489294','-1.6575884372208','4.2182771276342','81.639999999999','3799.6858345267','165.56109530476','1159.0151746931','2022-04-18 17:40:42','2022-04-18 17:40:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12413','359','1359','42.38774','-2.9753','1072','4.4247065710344','-2.0807072829412','4.371291191031','81.639999999999','3799.8175947071','164.49328240803','1160.7219631665','2022-04-18 17:40:45','2022-04-18 17:40:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12414','359','1362','42.38784','-2.97529','1066','4.4174972543077','-2.5046014354256','4.6574991963157','81.639999999999','3799.95009578','163.16002433203','1162.4559888678','2022-04-18 17:40:48','2022-04-18 17:40:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12415','359','1365','42.38794','-2.97528','1059','4.4092158097479','-2.9289514059913','4.2326839050506','81.639999999999','3800.0783711346','161.67070581907','1164.0948052359','2022-04-18 17:40:51','2022-04-18 17:40:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12416','359','1368','42.38804','-2.97527','1052','4.4221361024333','-3.3538335674297','4.2497015104882','81.639999999999','3800.2071540951','159.99917878147','1165.6828242319','2022-04-18 17:40:54','2022-04-18 17:40:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12417','359','1371','42.38813','-2.97526','1044','4.4175934913509','-3.1189204807761','4.7418918224774','81.579999999999','3800.3232147364','158.25754993454','1167.1828475617','2022-04-18 17:40:57','2022-04-18 17:40:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12418','359','1374','42.38822','-2.97525','1038','4.4164137354405','-1.8924481720049','4.2654964205963','81.429999999999','3800.4406991559','157.04975880685','1168.5860234721','2022-04-18 17:41:00','2022-04-18 17:41:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12419','359','1377','42.38832','-2.97524','1035','4.4151578573773','-0.66462043273109','4.2704204890696','81.279999999999','3800.5741482069','156.30603236882','1170.2920525713','2022-04-18 17:41:03','2022-04-18 17:41:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12420','359','1380','42.38844','-2.97523','1035','4.4160057395198','0.5651751028126','4.5929720329384','81.129999999999','3800.7262260659','156.2360289756','1172.2115572409','2022-04-18 17:41:06','2022-04-18 17:41:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12421','359','1383','42.38855','-2.97521','1036','4.4162142373403','0.1458830449173','4.8939229279699','81.129999999999','3800.8811250907','156.47841022087','1174.1160572403','2022-04-18 17:41:09','2022-04-18 17:41:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12422','359','1386','42.38866','-2.9752','1036','4.4122299133285','-0.27419892578543','4.5015419307428','81.129999999999','3801.0307677901','156.45034555164','1175.9679684328','2022-04-18 17:41:12','2022-04-18 17:41:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12423','359','1389','42.38877','-2.97519','1034','4.4167459046631','-0.69498801617115','4.4729226165081','81.129999999999','3801.1657348488','156.18018121326','1177.6942990421','2022-04-18 17:41:15','2022-04-18 17:41:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12424','359','1392','42.38887','-2.97518','1032','4.4138500786154','-1.1164615681029','4.2125988697','81.129999999999','3801.2959685942','155.67567477153','1179.3889225653','2022-04-18 17:41:18','2022-04-18 17:41:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12425','359','1395','42.38897','-2.97517','1029','4.4182093115734','-1.5385652506609','4.321875498296','81.129999999999','3801.4233712877','154.95542774188','1181.0192666942','2022-04-18 17:41:21','2022-04-18 17:41:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12426','359','1398','42.38906','-2.97516','1025','4.4129998396599','-1.9611316713201','4.0647719139038','81.129999999999','3801.5432379641','154.07675103777','1182.5252562047','2022-04-18 17:41:24','2022-04-18 17:41:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12427','359','1401','42.38915','-2.97515','1022','4.4174670105431','-0.89835914626683','4.82204657201','80.994999999999','3801.6577483452','153.31412066472','1183.9817774208','2022-04-18 17:41:27','2022-04-18 17:41:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12428','359','1404','42.38924','-2.97514','1021','4.4277077858317','0.0011646364069538','4.5511244638301','80.874999999999','3801.7793497441','153.15107604881','1185.4815614503','2022-04-18 17:41:30','2022-04-18 17:41:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12429','359','1407','42.38936','-2.97513','1020','4.4137421288585','-0.4192026103017','4.5406955413335','80.874999999999','3801.9407255574','153.02534018146','1187.4348868471','2022-04-18 17:41:33','2022-04-18 17:41:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12430','359','1410','42.38948','-2.97511','1019','4.411214648321','-0.8403503828494','4.1328107749831','80.874999999999','3802.0909421242','152.63237225717','1189.3424543149','2022-04-18 17:41:36','2022-04-18 17:41:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12431','359','1413','42.38959','-2.9751','1016','4.4247589649883','-1.262262183927','4.9454464374769','80.874999999999','3802.2365494041','151.97782053206','1191.2229665503','2022-04-18 17:41:39','2022-04-18 17:41:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12432','359','1416','42.3897','-2.97509','1012','4.4284225043','-1.6848037893079','4.2727865915903','80.874999999999','3802.3754011007','151.10763994369','1193.000230554','2022-04-18 17:41:42','2022-04-18 17:41:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12433','359','1419','42.3898','-2.97508','1007','4.4278682231244','-1.7778941623053','4.8420181630007','80.844999999999','3802.5037072232','150.04957537809','1194.6844481437','2022-04-18 17:41:45','2022-04-18 17:41:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12434','359','1422','42.3899','-2.97507','1004','4.4239309288307','-0.54989765395683','4.2683131379756','80.694999999999','3802.6326600994','149.36363114881','1196.3312656233','2022-04-18 17:41:48','2022-04-18 17:41:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12435','359','1425','42.39','-2.97506','1003','4.4183645652685','-0.3102639910573','4.5574956935828','80.634999999999','3802.7528056727','149.23820670801','1197.8741841687','2022-04-18 17:41:51','2022-04-18 17:41:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12436','359','1428','42.39009','-2.97505','1002','4.4248939664082','-0.73099563778129','4.1925967616229','80.634999999999','3802.8660167486','148.9877096082','1199.3587941045','2022-04-18 17:41:54','2022-04-18 17:41:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12437','359','1431','42.39019','-2.97504','1000','4.4238754374507','-1.1525778725109','4.5327523042981','80.634999999999','3803.0019263543','148.44599295999','1201.0648960682','2022-04-18 17:41:57','2022-04-18 17:41:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12438','359','1434','42.39031','-2.97503','996','4.4157593788489','-1.5751391317624','4.8094049939142','80.634999999999','3803.1509633249','147.56908338968','1202.9996515075','2022-04-18 17:42:00','2022-04-18 17:42:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12439','359','1437','42.39042','-2.97501','991','4.4208547419246','-1.5033807551615','4.2911578052846','80.589999999999','3803.3042661426','146.45923456028','1204.9089531927','2022-04-18 17:42:03','2022-04-18 17:42:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12440','359','1440','42.39053','-2.975','988','4.4103515400822','-0.77014639178286','4.0992948946916','80.484999999999','3803.4455433492','145.85472580152','1206.7008146597','2022-04-18 17:42:06','2022-04-18 17:42:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12441','359','1443','42.39064','-2.97499','985','4.427438565722','-1.1918189948257','4.9240862743103','80.484999999999','3803.584314754','145.28206935734','1208.4618741747','2022-04-18 17:42:09','2022-04-18 17:42:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12442','359','1446','42.39074','-2.97498','982','4.4243559315308','-1.6140950356348','4.7973972390207','80.484999999999','3803.7134519994','144.50281127684','1210.1357105829','2022-04-18 17:42:12','2022-04-18 17:42:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12443','359','1449','42.39084','-2.97497','978','4.4276498926884','-2.036918880338','4.7240994392988','80.484999999999','3803.8412331845','143.53599917303','1211.723189102','2022-04-18 17:42:15','2022-04-18 17:42:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12444','359','1452','42.39093','-2.97496','972','4.4158614082288','-2.4602586787683','4.3689196005636','80.484999999999','3803.9655438967','142.39253772737','1213.2429410546','2022-04-18 17:42:18','2022-04-18 17:42:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12445','359','1455','42.39104','-2.97495','965','4.4157913179949','-2.5548300388115','4.3316065945451','80.454999999999','3804.1026441554','140.82742112743','1214.9916486698','2022-04-18 17:42:21','2022-04-18 17:42:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12446','359','1458','42.39115','-2.97494','958','4.4153306323392','-2.8147738403949','4.4877564304071','80.439999999999','3804.2509093592','139.13479008284','1216.9176666963','2022-04-18 17:42:24','2022-04-18 17:42:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12447','359','1461','42.39127','-2.97492','949','4.4194492816516','-3.240470601596','4.2749681906706','80.439999999999','3804.4041392146','137.18436494952','1218.834078279','2022-04-18 17:42:27','2022-04-18 17:42:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12448','359','1464','42.39138','-2.97491','940','4.4192355149032','-2.8412332248552','4.1763937234067','80.364999999999','3804.5494584934','135.21139033435','1220.6637743242','2022-04-18 17:42:30','2022-04-18 17:42:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12449','359','1467','42.39149','-2.9749','932','4.424891466658','-3.2666330410935','4.3585208014322','80.364999999999','3804.6898608858','133.36263155109','1222.4634549388','2022-04-18 17:42:33','2022-04-18 17:42:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12450','359','1470','42.39159','-2.97489','923','4.4192613713843','-3.6923258820689','4.6539674145519','80.364999999999','3804.8214401328','131.41354860265','1224.1316145893','2022-04-18 17:42:36','2022-04-18 17:42:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12451','359','1473','42.39169','-2.97488','915','4.4177083534047','-3.1278627738064','4.0973084283553','80.274999999999','3804.9485888853','129.51785867919','1225.7171469622','2022-04-18 17:42:39','2022-04-18 17:42:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12452','359','1476','42.39178','-2.97487','907','4.4219056291362','-3.5528965256218','4.9221236742576','80.274999999999','3805.0698538176','127.79443097893','1227.2534554014','2022-04-18 17:42:42','2022-04-18 17:42:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12453','359','1479','42.39188','-2.97486','898','4.417140005998','-3.153408604559','4.8713539673194','80.199999999999','3805.1963448078','125.90723632279','1228.8188900728','2022-04-18 17:42:45','2022-04-18 17:42:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12454','359','1482','42.392','-2.97485','890','4.417990182153','-2.9188764672737','4.341404365923','80.139999999999','3805.3525477958','124.03518016881','1230.7614892999','2022-04-18 17:42:48','2022-04-18 17:42:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12455','359','1485','42.39211','-2.97483','881','4.417691970117','-3.3448810552097','4.6788772408682','80.139999999999','3805.5105440747','121.97936304533','1232.7105373674','2022-04-18 17:42:51','2022-04-18 17:42:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12456','359','1488','42.39223','-2.97482','870','4.4219853628666','-3.6067614845624','4.7650765338448','80.124999999999','3805.6694863698','119.62368025227','1234.6774085772','2022-04-18 17:42:54','2022-04-18 17:42:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12457','359','1491','42.39235','-2.97481','861','4.4146246865198','-2.7127009250592','4.2813541306065','80.004999999999','3805.8217155562','117.59016794345','1236.6317565416','2022-04-18 17:42:57','2022-04-18 17:42:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12458','359','1494','42.39247','-2.9748','852','4.4198826007726','-3.1382035658244','4.6002725691782','80.004999999999','3805.9720624015','115.70620467571','1238.5483553489','2022-04-18 17:43:00','2022-04-18 17:43:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12459','359','1497','42.39258','-2.97478','844','4.4189900106825','-2.9037637817238','4.6241586383849','79.944999999999','3806.1162198561','113.80252915656','1240.2870327185','2022-04-18 17:43:03','2022-04-18 17:43:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12460','359','1500','42.39268','-2.97477','837','4.4174355373768','-2.6680235279839','4.1093037606767','79.884999999999','3806.2461941309','112.34410113511','1241.9435050185','2022-04-18 17:43:06','2022-04-18 17:43:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12461','359','1503','42.39278','-2.97476','830','4.4264341083067','-2.7629923795646','4.7901577544267','79.854999999999','3806.3867611302','110.64289361303','1243.7128172559','2022-04-18 17:43:09','2022-04-18 17:43:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12462','359','1506','42.3929','-2.97475','822','4.4206378974094','-2.6929270451997','4.1957407151628','79.809999999999','3806.5367938','108.95339048318','1245.6633588146','2022-04-18 17:43:12','2022-04-18 17:43:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12463','359','1509','42.393','-2.9747','814','3.5881567611759','-2.788468287332','48.013758871965','79.779999999999','3807.1429852136','107.05621109596','1247.3331631275','2022-04-18 17:43:15','2022-04-18 17:43:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12464','359','1512','42.39304','-2.97459','807','2.860037769473','-1.5627285338602','86.16899579895','79.629999999999','3808.4106931259','105.59761179549','1247.8947985648','2022-04-18 17:43:18','2022-04-18 17:43:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12465','359','1515','42.39303','-2.9745','804','2.5349127037955','-0.33463306086987','103.20635377641','79.479999999999','3809.5637163806','104.94555052496','1247.7877161116','2022-04-18 17:43:21','2022-04-18 17:43:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12466','359','1518','42.39302','-2.97442','804','2.4951847014459','-0.25986553623945','105.28819940818','79.434999999999','3810.5906340486','104.86595691243','1247.5309108729','2022-04-18 17:43:24','2022-04-18 17:43:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12467','359','1521','42.393','-2.97434','802','2.3616586011414','-0.51564524127705','112.28529748021','79.419999999999','3811.524992661','104.59900587688','1247.2305703125','2022-04-18 17:43:27','2022-04-18 17:43:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12468','359','1524','42.39298','-2.97427','803','2.3733023443853','0.54942114880742','111.67513652128','79.284999999999','3812.3291212962','104.62173614146','1246.8843444738','2022-04-18 17:43:30','2022-04-18 17:43:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12469','359','1527','42.39296','-2.9742','804','2.4764106462715','0.1300234529284','106.27200635652','79.284999999999','3813.2444250442','104.82794964664','1246.5757710644','2022-04-18 17:43:33','2022-04-18 17:43:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12470','359','1530','42.39294','-2.97411','803','2.4621270003876','0.039940249426668','107.02050474633','79.254999999999','3814.3053206785','104.79946289861','1246.269188746','2022-04-18 17:43:36','2022-04-18 17:43:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12471','359','1533','42.39292','-2.97402','804','2.5443363641514','0.11542093927777','102.71253065451','79.209999999999','3815.3777169342','104.96403879249','1245.979463367','2022-04-18 17:43:39','2022-04-18 17:43:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12472','359','1536','42.39291','-2.97393','804','2.5192544092747','-0.30472468955253','104.02688715642','79.209999999999','3816.4576892826','104.91417921075','1245.7358820971','2022-04-18 17:43:42','2022-04-18 17:43:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12473','359','1539','42.39289','-2.97385','802','2.3608529873725','-0.72564926871341','112.32751363522','79.209999999999','3817.4709638213','104.59762698582','1245.4243573063','2022-04-18 17:43:45','2022-04-18 17:43:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12474','359','1542','42.39286','-2.97378','800','2.1896458286902','-1.1472157488629','121.25589805319','79.209999999999','3818.2633172661','104.06130430235','1245.0146400208','2022-04-18 17:43:48','2022-04-18 17:43:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12475','359','1545','42.39284','-2.97372','797','2.2010602347195','-1.5694638536008','121.35873811182','79.209999999999','3818.9959517313','103.29161081718','1244.5772041091','2022-04-18 17:43:51','2022-04-18 17:43:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12476','359','1548','42.39281','-2.97367','792','2.1895500651583','-1.4972051786547','120.75947576153','79.164999999999','3819.6964928575','102.35305132784','1244.1603782551','2022-04-18 17:43:54','2022-04-18 17:43:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12477','359','1551','42.39278','-2.97361','789','2.1958700062324','-1.424394469072','120.69530110289','79.119999999999','3820.4288550618','101.6034943597','1243.7238136746','2022-04-18 17:43:57','2022-04-18 17:43:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12478','359','1554','42.39275','-2.97354','784','2.1892142164371','-1.8475330120778','120.47748182186','79.119999999999','3821.2665128107','100.52893761696','1243.220549638','2022-04-18 17:44:00','2022-04-18 17:44:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12479','359','1557','42.39272','-2.97347','779','2.195466363113','-1.2809940695628','120.71794726401','79.029999999999','3822.1029205113','99.343960176553','1242.7199451615','2022-04-18 17:44:03','2022-04-18 17:44:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12480','359','1560','42.39269','-2.9734','776','2.189358018482','-1.0428341274285','120.83627996853','78.969999999999','3822.927833389','98.713971489771','1242.2310217457','2022-04-18 17:44:06','2022-04-18 17:44:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12481','359','1563','42.39266','-2.97333','773','2.2004843893601','-0.97001895949014','121.02144820405','78.924999999999','3823.7310328254','97.965940948436','1241.7509137392','2022-04-18 17:44:09','2022-04-18 17:44:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12482','359','1566','42.39264','-2.97327','772','2.2030611561636','0.25928472317107','120.78563713211','78.774999999999','3824.4572150412','97.727539725284','1241.3161152585','2022-04-18 17:44:12','2022-04-18 17:44:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12483','359','1569','42.39261','-2.97322','773','2.1923108864176','0.99548291295982','121.20916777414','78.669999999999','3825.1447818532','98.137769221655','1240.9108031939','2022-04-18 17:44:15','2022-04-18 17:44:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12484','359','1572','42.39259','-2.97316','775','2.1868623440624','0.57670110925185','120.6743635037','78.669999999999','3825.8029653259','98.554848432355','1240.5192927258','2022-04-18 17:44:18','2022-04-18 17:44:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12485','359','1575','42.39256','-2.9731','776','2.203053471649','0.157327283912','120.96566760305','78.669999999999','3826.5351912636','98.769234598792','1240.0828193603','2022-04-18 17:44:21','2022-04-18 17:44:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12486','359','1578','42.39253','-2.97303','776','2.2055158862744','-0.26273673168635','121.34503738665','78.669999999999','3827.3703257879','98.747317297446','1239.5834423364','2022-04-18 17:44:24','2022-04-18 17:44:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12487','359','1581','42.3925','-2.97297','775','2.1889590785245','-0.68359736931142','120.99993186277','78.669999999999','3828.1933807532','98.452657016743','1239.089788788','2022-04-18 17:44:27','2022-04-18 17:44:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12488','359','1584','42.39247','-2.9729','774','2.1931893296922','0.21565334216662','120.59058850061','78.549999999999','3828.9884391042','98.196119817138','1238.6124159002','2022-04-18 17:44:30','2022-04-18 17:44:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12489','359','1587','42.39245','-2.97284','775','2.2010727327169','0.62169142939576','121.20293360459','78.474999999999','3829.734900586','98.55153429755','1238.1664787337','2022-04-18 17:44:33','2022-04-18 17:44:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12490','359','1590','42.39242','-2.97278','776','2.2044557023234','0.20241675895578','121.03064479107','78.474999999999','3830.4612313904','98.799868562207','1237.7310201754','2022-04-18 17:44:36','2022-04-18 17:44:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12491','359','1593','42.3924','-2.97272','776','2.2036007593133','-0.2175630109218','121.15533356975','78.474999999999','3831.1434510747','98.806794838004','1237.3248771267','2022-04-18 17:44:39','2022-04-18 17:44:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12492','359','1596','42.39237','-2.97267','775','2.1902550500311','-0.63818267523521','120.52945168439','78.474999999999','3831.7965435723','98.594637647551','1236.9349267508','2022-04-18 17:44:42','2022-04-18 17:44:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12493','359','1599','42.39234','-2.9726','773','2.2037848289826','-1.0597775302036','120.70374333806','78.474999999999','3832.6282476836','98.048600152801','1236.4363717325','2022-04-18 17:44:45','2022-04-18 17:44:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12494','359','1602','42.39231','-2.97253','771','2.1931769252945','-0.16129807195077','120.6637409265','78.354999999999','3833.4669951673','97.528005601761','1235.9337729075','2022-04-18 17:44:48','2022-04-18 17:44:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12495','359','1605','42.39228','-2.97246','772','2.1983298943928','0.73943867041474','121.12586811109','78.234999999999','3834.3083262204','97.780247318724','1235.4316794024','2022-04-18 17:44:51','2022-04-18 17:44:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12496','359','1608','42.39225','-2.9724','773','2.1874116037514','0.32049796919512','120.96747511504','78.234999999999','3835.1431847673','98.142924091018','1234.929523169','2022-04-18 17:44:54','2022-04-18 17:44:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12497','359','1611','42.39222','-2.97233','774','2.1941272146021','-0.099249431424883','120.59666624517','78.234999999999','3835.9830153409','98.229407649311','1234.424190727','2022-04-18 17:44:57','2022-04-18 17:44:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12498','359','1614','42.39219','-2.97226','773','2.1950406005448','-0.51980184743619','120.54568054284','78.234999999999','3836.8145805671','98.040274555177','1233.9284718728','2022-04-18 17:45:00','2022-04-18 17:45:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12499','359','1617','42.39216','-2.97219','771','2.1941507912062','-0.61111729782808','120.74202368364','78.204999999999','3837.6373332193','97.589898031499','1233.4362679301','2022-04-18 17:45:03','2022-04-18 17:45:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12500','359','1620','42.39213','-2.97212','771','2.194787671611','0.61878740589302','120.87121978477','78.054999999999','3838.4628228138','97.557271026272','1232.9435231904','2022-04-18 17:45:06','2022-04-18 17:45:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12501','359','1623','42.3921','-2.97205','774','2.1868932401903','1.0257518810853','120.98516495797','77.979999999999','3839.3049506319','98.22985701919','1232.4385413347','2022-04-18 17:45:09','2022-04-18 17:45:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12502','359','1626','42.39207','-2.97198','776','2.2045975624117','0.60737518597464','120.76836943121','77.979999999999','3840.1433719585','98.785635038213','1231.9340631743','2022-04-18 17:45:12','2022-04-18 17:45:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12503','359','1629','42.39204','-2.97191','778','2.1869037793449','0.1881821320493','120.96921395438','77.979999999999','3840.9816809318','99.061912707171','1231.4340847254','2022-04-18 17:45:15','2022-04-18 17:45:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12504','359','1632','42.39201','-2.97185','778','2.2010344665173','-0.23182354859424','120.66000632731','77.979999999999','3841.8193583066','99.059967800313','1230.9372652221','2022-04-18 17:45:18','2022-04-18 17:45:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12505','359','1635','42.39198','-2.97178','776','2.1877487627327','-0.65263817391718','121.20631407837','77.979999999999','3842.6540427317','98.781060953422','1230.4375120279','2022-04-18 17:45:21','2022-04-18 17:45:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12506','359','1638','42.39195','-2.97171','774','2.1883448784654','-1.0742592628052','121.04882506576','77.979999999999','3843.4853782085','98.226041636494','1229.9397993286','2022-04-18 17:45:24','2022-04-18 17:45:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12507','359','1641','42.39192','-2.97164','772','2.1874859351244','-0.010519714308949','120.99725372507','77.844999999999','3844.3042932506','97.794495323513','1229.4479095798','2022-04-18 17:45:27','2022-04-18 17:45:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12508','359','1644','42.39189','-2.97158','772','2.1943508436195','-0.10037228060209','121.09524150392','77.814999999999','3845.0992513075','97.84497284876','1228.9731576253','2022-04-18 17:45:30','2022-04-18 17:45:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12509','359','1647','42.39186','-2.97151','773','2.1903707366142','0.80021884512697','120.49883517476','77.694999999999','3845.9058471086','98.047359158846','1228.4906357081','2022-04-18 17:45:33','2022-04-18 17:45:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12510','359','1650','42.39183','-2.97144','775','2.1909087200309','0.3814034307266','120.56687896077','77.694999999999','3846.746368194','98.452930929282','1227.989307239','2022-04-18 17:45:36','2022-04-18 17:45:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12511','359','1653','42.3918','-2.97137','775','2.2055712403891','-0.038225913896233','121.24093001204','77.694999999999','3847.5873641569','98.579833837429','1227.4839535702','2022-04-18 17:45:39','2022-04-18 17:45:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12512','359','1656','42.39177','-2.9713','775','2.2024535475069','-0.45866728217081','121.04193780067','77.694999999999','3848.4245481474','98.428720644266','1226.982277573','2022-04-18 17:45:42','2022-04-18 17:45:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12513','359','1659','42.39174','-2.97123','773','2.1943124178704','-0.21973127957434','120.82732077711','77.634999999999','3849.2668129086','98.064435183742','1226.4798637328','2022-04-18 17:45:45','2022-04-18 17:45:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12514','359','1662','42.39171','-2.97116','774','2.1966579110595','0.68088277438933','120.57291969157','77.514999999999','3850.0989817902','98.274671534132','1225.9815134064','2022-04-18 17:45:48','2022-04-18 17:45:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12515','359','1665','42.39168','-2.9711','775','2.2063136648956','0.26182362000225','121.06098890609','77.514999999999','3850.9306838254','98.596792975642','1225.4846816627','2022-04-18 17:45:51','2022-04-18 17:45:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12516','359','1668','42.39165','-2.97103','776','2.2012255358385','-0.15803940810945','120.61380841015','77.514999999999','3851.7543078925','98.643688642156','1224.9900181148','2022-04-18 17:45:54','2022-04-18 17:45:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12517','359','1671','42.39162','-2.97096','775','2.1983456612122','-0.41369549275648','121.09620267108','77.499999999999','3852.5761963031','98.419062062246','1224.5011713512','2022-04-18 17:45:57','2022-04-18 17:45:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12518','359','1674','42.39159','-2.9709','775','2.2016912301316','-0.0087451718352362','120.60644582306','77.424999999999','3853.3681277159','98.402053218032','1224.0291092278','2022-04-18 17:46:00','2022-04-18 17:46:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12519','359','1677','42.39156','-2.97083','774','2.1907309940589','-0.26413115156262','120.78909013955','77.409999999999','3854.207136454','98.269903644851','1223.5245601261','2022-04-18 17:46:03','2022-04-18 17:46:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12520','359','1680','42.39153','-2.97076','775','2.2054066787186','0.9664420280291','121.15380631073','77.259999999999','3855.0463135192','98.466145657135','1223.0211747583','2022-04-18 17:46:06','2022-04-18 17:46:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12521','359','1683','42.39149','-2.97069','779','2.2008947057774','2.1994063522662','120.49064380174','77.109999999999','3855.8857905851','99.481054355463','1222.517403057','2022-04-18 17:46:09','2022-04-18 17:46:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12522','359','1686','42.39146','-2.97062','787','2.1975448147436','2.2790843639','121.26470018852','77.064999999999','3856.7244952529','101.08268572853','1222.0135053782','2022-04-18 17:46:12','2022-04-18 17:46:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12523','359','1689','42.39143','-2.97055','793','2.1942068217435','2.0281244589138','121.27840618226','77.049999999999','3857.5597632227','102.46591078883','1221.5122059248','2022-04-18 17:46:15','2022-04-18 17:46:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12524','359','1692','42.3914','-2.97048','800','2.198880721555','2.4377579622913','121.35862949538','76.974999999999','3858.3910188487','104.05230367487','1221.0146306945','2022-04-18 17:46:18','2022-04-18 17:46:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12525','359','1695','42.39138','-2.9704','807','2.827429098285','2.0220692110808','87.877770860762','76.974999999999','3859.403824845','105.52836484335','1220.7028355117','2022-04-18 17:46:21','2022-04-18 17:46:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12526','359','1698','42.39141','-2.9703','813','3.565390641308','2.9263800771332','49.206759888785','76.854999999999','3860.6561683787','107.00429497247','1221.1273902066','2022-04-18 17:46:24','2022-04-18 17:46:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12527','359','1701','42.3915','-2.97024','823','4.4197171217562','3.3374004019203','4.8990835927551','76.779999999999','3861.3396075205','109.06549999071','1222.5908506376','2022-04-18 17:46:27','2022-04-18 17:46:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12528','359','1704','42.39162','-2.97023','832','4.428404580598','2.923497272604','4.6981640111664','76.779999999999','3861.4988313','111.15291236353','1224.5497361529','2022-04-18 17:46:30','2022-04-18 17:46:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12529','359','1707','42.39174','-2.97021','840','4.4149645286862','2.5087923042189','4.5118423767995','76.779999999999','3861.6525872715','112.9657955754','1226.5123803231','2022-04-18 17:46:33','2022-04-18 17:46:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12530','359','1710','42.39186','-2.9702','848','4.413646178208','3.4142046766752','4.2496623004513','76.659999999999','3861.8077400236','114.8188532861','1228.473767355','2022-04-18 17:46:36','2022-04-18 17:46:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12531','359','1713','42.39198','-2.97019','859','4.4267711219134','3.4962082840347','4.1295149005698','76.614999999999','3861.9605889411','117.21670907391','1230.4255330861','2022-04-18 17:46:39','2022-04-18 17:46:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12532','359','1716','42.39209','-2.97018','869','4.4233553427324','3.0826223541208','4.7699618361553','76.614999999999','3862.1120781334','119.4127223982','1232.3836040377','2022-04-18 17:46:42','2022-04-18 17:46:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12533','359','1719','42.39221','-2.97016','878','4.4188821058229','2.6681854901862','4.796612767683','76.614999999999','3862.2662810784','121.31739770736','1234.3287649657','2022-04-18 17:46:45','2022-04-18 17:46:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12534','359','1722','42.39233','-2.97015','886','4.4269758832965','3.4085903061238','4.4549718047997','76.509999999999','3862.4201627247','123.16786825958','1236.2597037449','2022-04-18 17:46:48','2022-04-18 17:46:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12535','359','1725','42.39245','-2.97014','897','4.424494379386','3.6555229882933','4.6941282489268','76.449999999999','3862.5711546528','125.54144107886','1238.1491017691','2022-04-18 17:46:51','2022-04-18 17:46:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12536','359','1728','42.39256','-2.97013','906','4.4242177265966','3.2418419783803','4.8079116343846','76.449999999999','3862.7174637403','127.70490144657','1240.0022611734','2022-04-18 17:46:54','2022-04-18 17:46:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12537','359','1731','42.39267','-2.97011','915','4.4223813289431','2.8272991687336','4.2898055839223','76.449999999999','3862.8628301878','129.57330365736','1241.813958692','2022-04-18 17:46:57','2022-04-18 17:46:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12538','359','1734','42.39279','-2.9701','923','4.4090365470619','2.4124146113571','4.0813780436797','76.449999999999','3863.0219854719','131.32470019809','1243.7742717117','2022-04-18 17:47:00','2022-04-18 17:47:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12539','359','1737','42.39291','-2.97009','930','4.4219828943492','2.9872272501443','4.2004333481605','76.359999999999','3863.1786136346','132.9724244605','1245.7400027064','2022-04-18 17:47:03','2022-04-18 17:47:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12540','359','1740','42.39303','-2.97008','940','4.418479187552','3.5638616236418','4.5480488727007','76.269999999999','3863.3275296043','135.24386403055','1247.6926154276','2022-04-18 17:47:06','2022-04-18 17:47:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12541','359','1743','42.39314','-2.97006','950','4.4247739469576','3.1504190928056','4.88964524265','76.269999999999','3863.4815805528','137.48897352639','1249.6542322689','2022-04-18 17:47:09','2022-04-18 17:47:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12542','359','1746','42.39326','-2.97005','959','4.4134916648396','2.7361528380236','4.3950109047661','76.269999999999','3863.6347443206','139.45206103986','1251.6092943485','2022-04-18 17:47:12','2022-04-18 17:47:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12543','359','1749','42.39338','-2.97004','967','4.4161227274714','2.3210674674494','4.6202488501146','76.269999999999','3863.7877714182','141.13470428483','1253.5612383515','2022-04-18 17:47:15','2022-04-18 17:47:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12544','359','1752','42.3935','-2.97003','973','4.4140626081734','1.9051453743786','4.3507748693394','76.269999999999','3863.9357338764','142.53087517653','1255.5010614803','2022-04-18 17:47:18','2022-04-18 17:47:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12545','359','1755','42.39362','-2.97001','979','4.428118969455','2.3136556198059','4.4816334967578','76.194999999999','3864.085354815','143.7326933086','1257.3878006849','2022-04-18 17:47:21','2022-04-18 17:47:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12546','359','1758','42.39373','-2.97','987','4.4201800924182','3.5489151835949','4.4882489160751','76.044999999999','3864.2330938164','145.53343324527','1259.2417356672','2022-04-18 17:47:24','2022-04-18 17:47:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12547','359','1761','42.39385','-2.96999','997','4.4159500203653','3.3007095180811','4.3034232702122','76.029999999999','3864.386870595','147.85963936105','1261.1981331892','2022-04-18 17:47:27','2022-04-18 17:47:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12548','359','1764','42.39397','-2.96998','1006','4.4134794272648','2.886753928916','4.5188877604433','76.029999999999','3864.5416597511','149.9290908252','1263.1609663769','2022-04-18 17:47:30','2022-04-18 17:47:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12549','359','1767','42.39409','-2.96996','1014','4.4134908711958','2.4719769718016','4.8580604150461','76.029999999999','3864.6946821856','151.71732693986','1265.1164327533','2022-04-18 17:47:33','2022-04-18 17:47:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12550','359','1770','42.3942','-2.96995','1022','4.4277742868682','2.7166003469657','4.4407285068524','75.969999999999','3864.8532993995','153.30025218503','1267.075389557','2022-04-18 17:47:36','2022-04-18 17:47:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12551','359','1773','42.39432','-2.96994','1031','4.4197735420675','3.4578111137803','4.4208877594595','75.864999999999','3865.0108775845','155.42665967602','1269.0226047003','2022-04-18 17:47:39','2022-04-18 17:47:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12552','359','1776','42.39444','-2.96992','1041','4.4090202851405','3.0440561410097','4.4062513502685','75.864999999999','3865.1699541432','157.56479705559','1270.9511776141','2022-04-18 17:47:42','2022-04-18 17:47:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12553','359','1779','42.39456','-2.96991','1049','4.4173584797506','2.6295552536372','4.1717826678783','75.864999999999','3865.3209535258','159.44755237937','1272.8968418048','2022-04-18 17:47:45','2022-04-18 17:47:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12554','359','1782','42.39468','-2.9699','1056','4.4242908187388','2.2141986773518','4.5083373182862','75.864999999999','3865.468913298','161.03734173474','1274.8205772903','2022-04-18 17:47:48','2022-04-18 17:47:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12555','359','1785','42.39479','-2.96989','1062','4.4134830694787','2.1279167714888','4.3150902766981','75.834999999999','3865.6195119','162.31032194172','1276.6590062216','2022-04-18 17:47:51','2022-04-18 17:47:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12556','359','1788','42.3949','-2.96988','1070','4.4181648873864','3.3630776525026','4.773083461252','75.684999999999','3865.7714044311','164.07727542355','1278.5905419055','2022-04-18 17:47:54','2022-04-18 17:47:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12557','359','1791','42.39502','-2.96986','1080','4.4180688808307','3.1145215694571','4.413769067445','75.669999999999','3865.9270313456','166.28350755112','1280.5523239898','2022-04-18 17:47:57','2022-04-18 17:47:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12558','359','1794','42.39514','-2.96985','1089','4.4180383394231','2.7001021083573','4.2838583636737','75.669999999999','3866.0797755083','168.19414114524','1282.4827961373','2022-04-18 17:48:00','2022-04-18 17:48:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12559','359','1797','42.39526','-2.96984','1096','4.4228561296226','2.2847781730086','4.5261175909637','75.669999999999','3866.2313202158','169.79510592138','1284.3668110149','2022-04-18 17:48:03','2022-04-18 17:48:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12560','359','1800','42.39537','-2.96982','1102','4.4261730516595','2.5289954422504','4.2898600648562','75.609999999999','3866.3859160768','171.23899089967','1286.3100654465','2022-04-18 17:48:06','2022-04-18 17:48:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12561','359','1803','42.39549','-2.96981','1110','4.4172131261043','2.7743603366969','4.7285994355413','75.549999999999','3866.5341746329','173.07579335577','1288.2205919157','2022-04-18 17:48:09','2022-04-18 17:48:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12562','359','1806','42.39561','-2.9698','1118','4.4206939751163','2.3592726872912','4.7671521329916','75.549999999999','3866.6865427106','174.75765638717','1290.141285006','2022-04-18 17:48:12','2022-04-18 17:48:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12563','359','1809','42.39572','-2.96979','1124','4.4249678105267','1.9433325586516','4.7445448794439','75.549999999999','3866.8358525438','176.14765236207','1292.0350372446','2022-04-18 17:48:15','2022-04-18 17:48:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12564','359','1812','42.39584','-2.96978','1131','4.411262627175','3.0126595746036','4.4839846565131','75.414999999999','3866.983228614','177.62911180315','1293.899166965','2022-04-18 17:48:18','2022-04-18 17:48:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12565','359','1815','42.39595','-2.96976','1140','4.4162231636106','3.0935818383332','4.6182673833302','75.369999999999','3867.128458142','179.65674322683','1295.7570350659','2022-04-18 17:48:21','2022-04-18 17:48:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12566','359','1818','42.39607','-2.96975','1149','4.4181431633404','2.6791757133501','4.4982167156289','75.369999999999','3867.2823731446','181.57194276573','1297.7026293712','2022-04-18 17:48:24','2022-04-18 17:48:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12567','359','1821','42.39619','-2.96974','1156','4.4117033615059','2.4290052391986','4.1390392738455','75.354999999999','3867.4358282048','183.22544872541','1299.6633777075','2022-04-18 17:48:27','2022-04-18 17:48:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12568','359','1824','42.3963','-2.96973','1165','4.422171709248','3.4997727560493','4.5997644676328','75.219999999999','3867.5928024291','185.20009878103','1301.6115986945','2022-04-18 17:48:30','2022-04-18 17:48:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12569','359','1827','42.39643','-2.96971','1175','5.0509516157983','3.0861410498043','12.229411253886','75.219999999999','3867.823489256','187.38043946193','1303.6172887454','2022-04-18 17:48:33','2022-04-18 17:48:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12570','359','1830','42.39657','-2.96965','1183','5.9788651456022','2.6717024174631','23.569496193304','75.219999999999','3868.5535383784','189.28450931399','1305.916669663','2022-04-18 17:48:36','2022-04-18 17:48:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12571','359','1833','42.39671','-2.96954','1191','6.5824217714888','2.2564175523579','30.722019297754','75.219999999999','3869.8485331198','190.89885074085','1308.3497978284','2022-04-18 17:48:39','2022-04-18 17:48:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12572','359','1836','42.39686','-2.96942','1196','6.5903626134117','1.8401516183488','30.879393443557','75.219999999999','3871.2717637185','192.17729930153','1310.7011809759','2022-04-18 17:48:42','2022-04-18 17:48:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12573','359','1839','42.397','-2.96931','1201','6.5807001823498','1.4231234862075','30.852511424753','75.219999999999','3872.6972615452','193.19479074271','1313.0663891064','2022-04-18 17:48:45','2022-04-18 17:48:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12574','359','1842','42.39714','-2.96919','1204','6.5861827138668','1.0053237682166','31.305245194428','75.219999999999','3874.092759626','193.94811095034','1315.3798073717','2022-04-18 17:48:48','2022-04-18 17:48:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12575','359','1845','42.39729','-2.96907','1209','6.5950063134928','2.2383044632053','31.313362566043','75.069999999999','3875.5583287782','194.96862457477','1317.8260558587','2022-04-18 17:48:51','2022-04-18 17:48:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12576','359','1848','42.39744','-2.96895','1216','6.5758961601843','1.9875587307756','30.839034934403','75.054999999999','3877.0641679052','196.42517683316','1320.3343739174','2022-04-18 17:48:54','2022-04-18 17:48:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12577','359','1851','42.3976','-2.96882','1221','6.5827041304261','1.5710385914522','30.997018167672','75.054999999999','3878.5619366647','197.61659200479','1322.8467861431','2022-04-18 17:48:57','2022-04-18 17:48:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12578','359','1854','42.39775','-2.9687','1225','6.5869002274016','1.1537122259581','30.81487966397','75.054999999999','3880.0701269139','198.53197598414','1325.3582333957','2022-04-18 17:49:00','2022-04-18 17:49:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12579','359','1857','42.3979','-2.96858','1228','6.5866792939919','0.73557657175677','31.216669320228','75.054999999999','3881.5712894166','199.17028023712','1327.8724488579','2022-04-18 17:49:03','2022-04-18 17:49:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12580','359','1860','42.39805','-2.96845','1229','6.5791259811997','0.31662260204687','31.080590099164','75.054999999999','3883.0642353747','199.52841421817','1330.363892877','2022-04-18 17:49:06','2022-04-18 17:49:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12581','359','1863','42.3982','-2.96833','1232','6.5827330081312','1.3830012312128','31.215369192976','74.919999999999','3884.5449945339','200.00042153598','1332.8187299345','2022-04-18 17:49:09','2022-04-18 17:49:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12582','359','1866','42.39835','-2.96821','1237','6.5925944922288','1.7913639914853','30.757651674401','74.844999999999','3886.020261723','201.15174452836','1335.2725176925','2022-04-18 17:49:12','2022-04-18 17:49:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12583','359','1869','42.39849','-2.96809','1241','6.5929087662165','1.3742729479646','30.563029935856','74.844999999999','3887.4390403909','202.14769672447','1337.6309033601','2022-04-18 17:49:15','2022-04-18 17:49:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12584','359','1872','42.39864','-2.96797','1245','6.5816974615444','0.95648257296342','30.663312498662','74.844999999999','3888.8944625135','202.90421573251','1340.0596146037','2022-04-18 17:49:18','2022-04-18 17:49:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12585','359','1875','42.39879','-2.96785','1247','6.5870530123996','0.53796732683162','30.892523569028','74.844999999999','3890.4017597497','203.41255743038','1342.5709696373','2022-04-18 17:49:21','2022-04-18 17:49:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12586','359','1878','42.39895','-2.96772','1248','6.5803931006921','0.11864306132525','30.729448437646','74.844999999999','3891.9139830641','203.64391161451','1345.0851273976','2022-04-18 17:49:24','2022-04-18 17:49:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12587','359','1881','42.3991','-2.9676','1248','6.5904129305999','-0.30149686508396','30.983475883906','74.844999999999','3893.4318282644','203.5960043957','1347.608369931','2022-04-18 17:49:27','2022-04-18 17:49:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12588','359','1884','42.39925','-2.96748','1246','6.59149596649','-0.72244990825701','30.7346364919','74.844999999999','3894.9400596168','203.269706822','1350.1165551528','2022-04-18 17:49:30','2022-04-18 17:49:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12589','359','1887','42.39941','-2.96735','1244','6.5855704195615','-1.1442089639479','30.810162113098','74.844999999999','3896.4325217998','202.66745120528','1352.613577476','2022-04-18 17:49:33','2022-04-18 17:49:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12590','359','1890','42.39956','-2.96723','1240','6.5932936447963','-1.5667716038334','31.065783780717','74.844999999999','3897.9218143597','201.79006894125','1355.1043083838','2022-04-18 17:49:36','2022-04-18 17:49:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12591','359','1893','42.39971','-2.96711','1235','6.5805647295685','-0.99962952303327','30.798133728215','74.754999999999','3899.4027492533','200.81159060248','1357.5608372936','2022-04-18 17:49:39','2022-04-18 17:49:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12592','359','1896','42.39985','-2.96699','1234','6.5952999328391','0.22956215053343','31.31259129451','74.604999999999','3900.8235340457','200.53484033407','1359.9248732898','2022-04-18 17:49:42','2022-04-18 17:49:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12593','359','1899','42.4','-2.96687','1236','6.5754452650708','0.47059790821049','30.551130254317','74.544999999999','3902.3156923546','200.88945723551','1362.3969825477','2022-04-18 17:49:45','2022-04-18 17:49:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12594','359','1902','42.40015','-2.96674','1236','6.5912240997424','0.051140530389542','31.102524230934','74.544999999999','3903.8251791377','201.07523717232','1364.9132174143','2022-04-18 17:49:48','2022-04-18 17:49:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12595','359','1905','42.40031','-2.96662','1236','6.5784569527247','-0.36913042898151','30.586061350212','74.544999999999','3905.3388880836','200.98246762331','1367.4206316702','2022-04-18 17:49:51','2022-04-18 17:49:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12596','359','1908','42.40046','-2.9665','1234','6.5779934457269','-0.79021559172088','31.065904123453','74.544999999999','3906.8403991449','200.61093569387','1369.9283417005','2022-04-18 17:49:54','2022-04-18 17:49:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12597','359','1911','42.40061','-2.96637','1231','6.5795988868174','-1.2121055164094','30.921645948989','74.544999999999','3908.3381754953','199.96387388409','1372.4213168461','2022-04-18 17:49:57','2022-04-18 17:49:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12598','359','1914','42.40076','-2.96625','1227','6.5894306831577','-1.6347995186316','31.007322990618','74.544999999999','3909.8333578401','199.04151652033','1374.9080283747','2022-04-18 17:50:00','2022-04-18 17:50:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12599','359','1917','42.40091','-2.96613','1223','6.5816645055023','-1.0678106832593','30.964254327024','74.454999999999','3911.3212696602','198.01057087191','1377.3913216575','2022-04-18 17:50:03','2022-04-18 17:50:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12600','359','1920','42.40106','-2.96601','1221','6.5755266702019','-0.33386022807125','31.429965358511','74.349999999999','3912.7936375525','197.65123360859','1379.8230028452','2022-04-18 17:50:06','2022-04-18 17:50:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12601','359','1923','42.40121','-2.96589','1220','6.5769987210478','-0.75482456119712','30.98906283578','74.349999999999','3914.2331096103','197.3210706442','1382.2132765598','2022-04-18 17:50:09','2022-04-18 17:50:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12602','359','1926','42.40136','-2.96576','1217','6.5757695887987','-1.1766586973572','30.582276102174','74.349999999999','3915.7387723886','196.69310939777','1384.7238135614','2022-04-18 17:50:12','2022-04-18 17:50:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12603','359','1929','42.40151','-2.96564','1213','6.5951061104294','-1.5993115436058','30.978888115673','74.349999999999','3917.2420286014','195.7848427853','1387.2366685535','2022-04-18 17:50:15','2022-04-18 17:50:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12604','359','1932','42.40166','-2.96552','1207','6.5818444110104','-2.0227785298588','30.750328690528','74.349999999999','3918.7467080947','194.59783548658','1389.7443511061','2022-04-18 17:50:18','2022-04-18 17:50:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12605','359','1935','42.40181','-2.96539','1203','6.59415951678','-0.96089098704509','30.758932941253','74.214999999999','3920.2472203961','193.53220986033','1392.2435288732','2022-04-18 17:50:21','2022-04-18 17:50:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12606','359','1938','42.40196','-2.96527','1201','6.5842978994353','0.2683502499033','31.072200829146','74.064999999999','3921.7297839469','193.27242882443','1394.6977016327','2022-04-18 17:50:24','2022-04-18 17:50:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12607','359','1941','42.40211','-2.96515','1203','6.5830063530979','0.83973750928898','31.321643061473','73.974999999999','3923.2225975081','193.74739090845','1397.1784112476','2022-04-18 17:50:27','2022-04-18 17:50:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12608','359','1944','42.40226','-2.96503','1205','6.5897190652605','0.42097184983782','31.330501677967','73.974999999999','3924.7026555619','194.16999749921','1399.6360463508','2022-04-18 17:50:30','2022-04-18 17:50:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12609','359','1947','42.40241','-2.96491','1206','6.5778984117593','0.0014074437419588','30.725427169289','73.974999999999','3926.1691652196','194.31913369582','1402.0875603689','2022-04-18 17:50:33','2022-04-18 17:50:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12610','359','1950','42.40256','-2.96479','1207','6.5893553905694','1.0671477877986','30.633900767015','73.839999999999','3927.5934389141','194.57260853957','1404.4454502319','2022-04-18 17:50:36','2022-04-18 17:50:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12611','359','1953','42.4027','-2.96467','1212','6.5920432258244','2.3001588817382','31.042331438867','73.689999999999','3929.0122434912','195.60352998621','1406.8268509961','2022-04-18 17:50:39','2022-04-18 17:50:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12612','359','1956','42.40285','-2.96455','1219','6.5756045478842','2.2145412477916','31.2359838637','73.659999999999','3930.5134325417','197.10393988447','1409.3419136707','2022-04-18 17:50:42','2022-04-18 17:50:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12613','359','1959','42.40301','-2.96442','1227','6.5894150780622','2.9548193906414','31.116139615308','73.554999999999','3932.0263427173','198.91104081569','1411.8503010959','2022-04-18 17:50:45','2022-04-18 17:50:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12614','359','1962','42.40316','-2.9643','1235','6.5820245100844','2.5401925402022','30.571302401765','73.554999999999','3933.5378054735','200.75066961153','1414.3720435299','2022-04-18 17:50:48','2022-04-18 17:50:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12615','359','1965','42.40331','-2.96418','1242','6.5797839165526','2.124736463228','30.803626774488','73.554999999999','3935.0410139688','202.3063924794','1416.885221762','2022-04-18 17:50:51','2022-04-18 17:50:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12616','359','1968','42.40347','-2.96405','1248','6.5874764507475','1.7084959875266','30.717413328881','73.554999999999','3936.5499059181','203.59355731263','1419.4011784346','2022-04-18 17:50:54','2022-04-18 17:50:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12617','359','1971','42.40362','-2.96393','1252','6.5755258504259','1.2914206964814','30.905494540582','73.554999999999','3938.0540653216','204.59490275292','1421.8935128737','2022-04-18 17:50:57','2022-04-18 17:50:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12618','359','1974','42.40377','-2.96381','1255','6.5914516084544','0.87351026753715','30.927134932791','73.554999999999','3939.5263855904','205.31031836559','1424.3460674821','2022-04-18 17:51:00','2022-04-18 17:51:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12619','359','1977','42.40391','-2.96369','1257','6.5943305096718','0.45475550483802','30.558758656838','73.554999999999','3940.9563289978','205.73665572516','1426.7190986954','2022-04-18 17:51:03','2022-04-18 17:51:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12620','359','1980','42.40406','-2.96357','1258','6.587065582127','0.035248448621857','31.031260967725','73.554999999999','3942.4246296292','205.90542705178','1429.1683004215','2022-04-18 17:51:06','2022-04-18 17:51:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12621','359','1983','42.40421','-2.96345','1258','6.5825125196288','-0.38505318644558','31.117248748733','73.554999999999','3943.9301450324','205.80215492998','1431.6759326999','2022-04-18 17:51:09','2022-04-18 17:51:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12622','359','1986','42.40437','-2.96332','1256','6.585229694471','-0.8061698973753','30.845044643076','73.554999999999','3945.4382963598','205.41982170815','1434.1871325583','2022-04-18 17:51:12','2022-04-18 17:51:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12623','359','1989','42.40452','-2.9632','1253','6.58050144876','-1.2280998023161','30.707768888837','73.554999999999','3946.9393100181','204.75907168397','1436.6966696098','2022-04-18 17:51:15','2022-04-18 17:51:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12624','359','1992','42.40467','-2.96307','1249','6.5770124639698','-1.3208135935874','30.826775082554','73.524999999999','3948.4429889609','203.82993905663','1439.2057294372','2022-04-18 17:51:18','2022-04-18 17:51:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12625','359','1995','42.40482','-2.96296','1246','6.593331580367','-1.2478673691776','30.88627787133','73.479999999999','3949.8918548887','203.12677889457','1441.5981663001','2022-04-18 17:51:21','2022-04-18 17:51:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12626','359','1998','42.40496','-2.96284','1242','6.5843196079905','-1.6704131029613','31.257051635503','73.479999999999','3951.2749231185','202.25518484677','1443.9007716798','2022-04-18 17:51:24','2022-04-18 17:51:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12627','359','2001','42.40509','-2.96273','1237','6.5923476507531','-2.0935163432878','31.130099217508','73.479999999999','3952.5721748102','201.19271483728','1446.0633937748','2022-04-18 17:51:27','2022-04-18 17:51:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12628','359','2004','42.40523','-2.96262','1231','6.5825217376616','-2.517702616815','31.260163441932','73.479999999999','3953.9928891326','199.75944199781','1448.4261437467','2022-04-18 17:51:30','2022-04-18 17:51:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12629','359','2007','42.40538','-2.96249','1222','6.5831772715956','-2.9429324947181','31.30020639272','73.479999999999','3955.5025353497','197.96886574818','1450.920918072','2022-04-18 17:51:33','2022-04-18 17:51:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12630','359','2010','42.40553','-2.96237','1213','6.593636193859','-3.3688594948919','31.273943829327','73.479999999999','3956.9774296963','195.93961268737','1453.3673965786','2022-04-18 17:51:36','2022-04-18 17:51:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12631','359','2013','42.40568','-2.96225','1205','6.5797592070895','-2.1442220092656','31.183167810796','73.329999999999','3958.4731661132','194.10362510722','1455.8328987935','2022-04-18 17:51:39','2022-04-18 17:51:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12632','359','2016','42.40583','-2.96213','1200','6.5889325869243','-0.91721252738307','30.994578729398','73.179999999999','3959.9338118311','193.07974829509','1458.2754661336','2022-04-18 17:51:42','2022-04-18 17:51:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12633','359','2019','42.40597','-2.96201','1199','6.5780949837907','0.31214603152672','30.882801595321','73.029999999999','3961.3206104073','192.860135294','1460.5807280949','2022-04-18 17:51:45','2022-04-18 17:51:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12634','359','2022','42.40611','-2.9619','1201','6.5854838556352','0.5532162976244','30.790155545221','72.969999999999','3962.6652870511','193.22656699485','1462.8195474777','2022-04-18 17:51:48','2022-04-18 17:51:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12635','359','2025','42.40624','-2.9618','1202','6.585998292478','0.13382305320569','31.207492149931','72.969999999999','3963.9706896969','193.43430456603','1464.9765836221','2022-04-18 17:51:51','2022-04-18 17:51:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12636','359','2028','42.40636','-2.9617','1202','6.5939694525028','-0.28626167339817','31.319529085735','72.969999999999','3965.2034959439','193.40529634684','1467.0204867519','2022-04-18 17:51:54','2022-04-18 17:51:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12637','359','2031','42.40648','-2.9616','1201','6.5849289874507','-0.70697936447859','30.677456608934','72.969999999999','3966.3853746555','193.15957730196','1468.9685786871','2022-04-18 17:51:57','2022-04-18 17:51:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12638','359','2034','42.40662','-2.96148','1198','6.5836312137732','-1.1286197150965','31.158524269844','72.969999999999','3967.7904240407','192.59796326204','1471.3075375277','2022-04-18 17:52:00','2022-04-18 17:52:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12639','359','2037','42.40677','-2.96136','1194','6.5802831797108','-1.5511536416681','30.735820080891','72.969999999999','3969.2890551192','191.73041170129','1473.7891305963','2022-04-18 17:52:03','2022-04-18 17:52:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12640','359','2040','42.40692','-2.96124','1189','6.5915016885796','-1.9744886143246','30.89829938532','72.969999999999','3970.7766271446','190.58860247695','1476.2720582821','2022-04-18 17:52:06','2022-04-18 17:52:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12641','359','2043','42.40707','-2.96113','1184','6.0405745990723','-1.2429277323863','24.323650994844','72.864999999999','3972.0655590351','189.41113653319','1478.6968870892','2022-04-18 17:52:09','2022-04-18 17:52:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12642','359','2046','42.40721','-2.96105','1182','5.8284458771403','-0.014199107116599','21.731213609749','72.714999999999','3973.0436019726','188.97585038721','1481.0204765551','2022-04-18 17:52:12','2022-04-18 17:52:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12643','359','2049','42.40735','-2.96097','1182','5.8522102298519','-0.10405667757079','22.02163913931','72.684999999999','3973.9617407128','189.02461461588','1483.2824685093','2022-04-18 17:52:15','2022-04-18 17:52:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12644','359','2052','42.40748','-2.9609','1181','5.7662105122462','-0.52457210927083','20.970631614265','72.684999999999','3974.8351752746','188.84814400271','1485.4760634735','2022-04-18 17:52:18','2022-04-18 17:52:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12645','359','2055','42.40761','-2.96084','1180','5.5695800422225','-0.94575059659923','18.567599262515','72.684999999999','3975.5823423315','188.44466012415','1487.5025933456','2022-04-18 17:52:21','2022-04-18 17:52:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12646','359','2058','42.40772','-2.96079','1177','5.2625462635348','-1.367590776392','14.815321687336','72.684999999999','3976.1742319644','187.81462969267','1489.43671594','2022-04-18 17:52:24','2022-04-18 17:52:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12647','359','2061','42.40784','-2.96076','1173','4.8053778060345','-1.7903307751014','9.2282395151726','72.684999999999','3976.6121454663','186.8765243097','1491.41583045','2022-04-18 17:52:27','2022-04-18 17:52:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12648','359','2064','42.40797','-2.96074','1168','4.4274405075134','-0.72798917767801','4.5783003833971','72.549999999999','3976.8421877426','185.96635535285','1493.4216641341','2022-04-18 17:52:30','2022-04-18 17:52:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12649','359','2067','42.40808','-2.96073','1167','4.4107812728903','-0.81921001540723','4.0876861894833','72.519999999999','3976.9946408561','185.54837178171','1495.3606697158','2022-04-18 17:52:33','2022-04-18 17:52:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12650','359','2070','42.4082','-2.96071','1164','4.4193568801484','-1.2411400356867','4.9383701714606','72.519999999999','3977.1484013072','184.88758226852','1497.2935822708','2022-04-18 17:52:36','2022-04-18 17:52:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12651','359','2073','42.40832','-2.9607','1159','4.4167013018273','-1.6638670228423','4.7004472034763','72.519999999999','3977.3027961829','183.95393170834','1499.2200973087','2022-04-18 17:52:39','2022-04-18 17:52:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12652','359','2076','42.40843','-2.96069','1154','4.4101062831311','-2.0873152256201','4.6612133351676','72.519999999999','3977.4583517069','182.77335539047','1501.0966667645','2022-04-18 17:52:42','2022-04-18 17:52:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12653','359','2079','42.40854','-2.96068','1148','4.4224892141532','-2.5113517883725','4.0604620226839','72.519999999999','3977.5978217291','181.39133968601','1502.8945773822','2022-04-18 17:52:45','2022-04-18 17:52:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12654','359','2082','42.40865','-2.96067','1142','4.4173671869448','-1.4498852202467','4.7512037367263','72.384999999999','3977.7286063065','180.18158310836','1504.5947593057','2022-04-18 17:52:48','2022-04-18 17:52:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12655','359','2085','42.40874','-2.96065','1140','4.418042424402','-0.88147039616395','4.5535191394168','72.294999999999','3977.8557876991','179.63885947283','1506.2091359355','2022-04-18 17:52:51','2022-04-18 17:52:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12656','359','2088','42.40886','-2.96064','1137','4.4199229315574','-1.3034729671046','4.1477760811534','72.294999999999','3978.0003348444','178.95323047136','1508.0839480261','2022-04-18 17:52:54','2022-04-18 17:52:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12657','359','2091','42.40898','-2.96063','1132','4.4108657959096','-1.7263659782647','4.1116981296843','72.294999999999','3978.1526772495','177.96273754415','1510.0396018','2022-04-18 17:52:57','2022-04-18 17:52:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12658','359','2094','42.4091','-2.96062','1127','4.4284944828474','-2.1500603012587','4.7297525796674','72.294999999999','3978.3044580455','176.69789596773','1511.9867368486','2022-04-18 17:53:00','2022-04-18 17:53:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12659','359','2097','42.40921','-2.96061','1120','4.4264042785855','-2.5745257794259','4.3420246272279','72.294999999999','3978.4591233583','175.16903061034','1513.9138943114','2022-04-18 17:53:03','2022-04-18 17:53:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12660','359','2100','42.40933','-2.96059','1114','4.4202318768397','-1.5136058412098','4.9297376006387','72.159999999999','3978.6056816703','173.77212195158','1515.8193991616','2022-04-18 17:53:06','2022-04-18 17:53:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12661','359','2103','42.40944','-2.96058','1110','4.423862314759','-1.1106573763849','4.7625455794146','72.084999999999','3978.7578650075','173.06972885027','1517.6598500921','2022-04-18 17:53:09','2022-04-18 17:53:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12662','359','2106','42.40955','-2.96057','1107','4.4238922774667','-1.5330016326089','4.9006164010376','72.084999999999','3978.8990879169','172.26711555881','1519.4753271545','2022-04-18 17:53:12','2022-04-18 17:53:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12663','359','2109','42.40965','-2.96056','1102','4.4180227564059','-1.9558849728307','4.533293894866','72.084999999999','3979.031740496','171.2799337132','1521.1756461037','2022-04-18 17:53:15','2022-04-18 17:53:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12664','359','2112','42.40975','-2.96055','1097','4.4215617095701','-2.3793708544993','4.6977064380203','72.084999999999','3979.1630375044','170.08645710812','1522.8163352172','2022-04-18 17:53:18','2022-04-18 17:53:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12665','359','2115','42.40987','-2.96053','1089','4.4201299083838','-2.8043080147632','4.638403843997','72.084999999999','3979.3146243409','168.39609988127','1524.7562439741','2022-04-18 17:53:21','2022-04-18 17:53:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12666','359','2118','42.40999','-2.96052','1081','4.4200728610145','-3.2299481864088','4.2176950199043','72.084999999999','3979.4610482552','166.4650495624','1526.6559486863','2022-04-18 17:53:24','2022-04-18 17:53:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12667','359','2121','42.41011','-2.96051','1071','4.4207785420695','-2.6660040896413','4.6131757331774','71.994999999999','3979.6123876948','164.39166339566','1528.5846638981','2022-04-18 17:53:27','2022-04-18 17:53:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12668','359','2124','42.41022','-2.9605','1065','4.4122467916736','-1.4399555918106','4.169228733776','71.844999999999','3979.763341288','163.03877025634','1530.4777409944','2022-04-18 17:53:30','2022-04-18 17:53:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12669','359','2127','42.41033','-2.96049','1063','4.415352604147','-0.21156570443249','4.2107730707909','71.694999999999','3979.9067676196','162.4875089318','1532.3263922692','2022-04-18 17:53:33','2022-04-18 17:53:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12670','359','2130','42.41044','-2.96047','1064','4.4275545210185','1.0190356156478','4.64849455172','71.544999999999','3980.047406515','162.69338552665','1534.078789557','2022-04-18 17:53:36','2022-04-18 17:53:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12671','359','2133','42.41054','-2.96046','1067','4.4234470950011','0.93084269215189','4.3399584550131','71.514999999999','3980.1817408635','163.31208223992','1535.7192715522','2022-04-18 17:53:39','2022-04-18 17:53:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12672','359','2136','42.41064','-2.96045','1068','4.4274316337633','0.51201472822556','4.5122184533436','71.514999999999','3980.3052604521','163.71335737409','1537.3237946706','2022-04-18 17:53:42','2022-04-18 17:53:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12673','359','2139','42.41073','-2.96044','1069','4.4227654447041','0.092508096576903','4.2202043172582','71.514999999999','3980.4246516017','163.88227406174','1538.873943763','2022-04-18 17:53:45','2022-04-18 17:53:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12674','359','2142','42.41084','-2.96043','1069','4.4145777656458','0.49763312944868','4.5783081663167','71.439999999999','3980.5618184911','163.92508211477','1540.6309341217','2022-04-18 17:53:48','2022-04-18 17:53:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12675','359','2145','42.41096','-2.96042','1071','4.4211872869507','0.24350998807023','4.6277619142341','71.424999999999','3980.7131489188','164.22529604923','1542.5740537993','2022-04-18 17:53:51','2022-04-18 17:53:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12676','359','2148','42.41107','-2.96041','1071','4.4140382114633','-0.17638621175105','4.314561045563','71.424999999999','3980.866006092','164.26083457196','1544.5151099256','2022-04-18 17:53:54','2022-04-18 17:53:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12677','359','2151','42.41119','-2.96039','1070','4.418703235734','-0.59708605171489','4.2454256884722','71.424999999999','3981.0199619655','164.02122729221','1546.4444143534','2022-04-18 17:53:57','2022-04-18 17:53:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12678','359','2154','42.41131','-2.96038','1068','4.4212129460179','-1.0185491011151','4.6244474862282','71.424999999999','3981.1685249012','163.52031664831','1548.3291278845','2022-04-18 17:54:00','2022-04-18 17:54:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12679','359','2157','42.41142','-2.96037','1064','4.4231427879076','-1.4407465220312','4.2049839361209','71.424999999999','3981.3182618886','162.76797600563','1550.1698637345','2022-04-18 17:54:03','2022-04-18 17:54:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12680','359','2160','42.41152','-2.96036','1060','4.4166967046914','-1.8635343809461','4.8533801383264','71.424999999999','3981.4531352951','161.81348451408','1551.899361758','2022-04-18 17:54:06','2022-04-18 17:54:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12681','359','2163','42.41162','-2.96035','1055','4.4207662646686','-2.2868609179683','4.4651323739866','71.424999999999','3981.5863198364','160.6745634349','1553.5410495132','2022-04-18 17:54:09','2022-04-18 17:54:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12682','359','2166','42.41173','-2.96034','1048','4.4146218541938','-2.216103044315','4.7856913150734','71.379999999999','3981.7252580294','159.22216802049','1555.3066433306','2022-04-18 17:54:12','2022-04-18 17:54:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12683','359','2169','42.41185','-2.96032','1043','4.425921761959','-0.98928532311837','4.901603194208','71.229999999999','3981.8754677295','158.13263726078','1557.2463847114','2022-04-18 17:54:15','2022-04-18 17:54:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12684','359','2172','42.41197','-2.96031','1042','4.4218555391513','-0.58543130386754','4.5556733025852','71.154999999999','3982.0239428432','157.74028280242','1559.1800807481','2022-04-18 17:54:18','2022-04-18 17:54:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12685','359','2175','42.41208','-2.9603','1039','4.4202016376844','-1.006903017959','4.4362538573713','71.154999999999','3982.1787090851','157.23640559013','1561.0994717884','2022-04-18 17:54:21','2022-04-18 17:54:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12686','359','2178','42.4122','-2.96029','1036','4.4137147653673','-1.4291240094411','4.1347005411825','71.154999999999','3982.3243526342','156.47599498935','1562.9759215823','2022-04-18 17:54:24','2022-04-18 17:54:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12687','359','2181','42.41231','-2.96028','1031','4.4088214137794','-1.8520140691711','4.2692810534705','71.154999999999','3982.463672107','155.48651255619','1564.7852940894','2022-04-18 17:54:27','2022-04-18 17:54:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12688','359','2184','42.41241','-2.96026','1026','4.4250232498254','-2.2755474599647','4.7627988117006','71.154999999999','3982.6035844151','154.27677004351','1566.5413868084','2022-04-18 17:54:30','2022-04-18 17:54:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12689','359','2187','42.41251','-2.96025','1022','4.4138304380847','-1.0483789252976','4.1385096133654','71.004999999999','3982.7354089115','153.30734883126','1568.2028163231','2022-04-18 17:54:33','2022-04-18 17:54:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12690','359','2190','42.41262','-2.96024','1020','4.4197187422911','-0.80966393551796','4.6308807692806','70.944999999999','3982.8746286345','152.8673942427','1569.9708973208','2022-04-18 17:54:36','2022-04-18 17:54:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12691','359','2193','42.41274','-2.96023','1017','4.4139962199859','-1.2315813917049','4.8720498149237','70.944999999999','3983.0292711717','152.21090635299','1571.9073692061','2022-04-18 17:54:39','2022-04-18 17:54:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12692','359','2196','42.41286','-2.96022','1012','4.4151578511506','-1.6542852138479','4.5622233867794','70.944999999999','3983.183337668','151.28518689984','1573.8300909741','2022-04-18 17:54:42','2022-04-18 17:54:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12693','359','2199','42.41297','-2.9602','1007','4.415404636432','-2.0778101686142','4.6588208389927','70.944999999999','3983.337302603','150.07833266685','1575.7600651393','2022-04-18 17:54:45','2022-04-18 17:54:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12694','359','2202','42.41309','-2.96019','1000','4.4184587242763','-2.337092088557','4.7899978724981','70.929999999999','3983.4864043521','148.61231294431','1577.6662700083','2022-04-18 17:54:48','2022-04-18 17:54:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12695','359','2205','42.4132','-2.96018','996','4.4196725973576','-1.1102390280579','4.8110328094911','70.779999999999','3983.6299908961','147.53488145667','1579.4551426371','2022-04-18 17:54:51','2022-04-18 17:54:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12696','359','2208','42.4133','-2.96017','994','4.4137151055692','-0.37626490996427','4.2127097375445','70.674999999999','3983.7652748774','147.18364576619','1581.1775877403','2022-04-18 17:54:54','2022-04-18 17:54:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12697','359','2211','42.41341','-2.96016','993','4.4220372614966','-0.79721015899782','4.667451170104','70.674999999999','3983.900439433','146.86001670624','1582.8679199152','2022-04-18 17:54:57','2022-04-18 17:54:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12698','359','2214','42.41351','-2.96015','990','4.4122484000209','-1.2188440131698','4.2332766103379','70.674999999999','3984.0326736857','146.30062688302','1584.5382426273','2022-04-18 17:55:00','2022-04-18 17:55:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12699','359','2217','42.41362','-2.96013','986','4.4179680937149','-1.6415397522499','4.1506849484229','70.674999999999','3984.184563285','145.37767486361','1586.4712352146','2022-04-18 17:55:03','2022-04-18 17:55:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12700','359','2220','42.41374','-2.96012','981','4.4264542055705','-2.0650381508229','4.8659958181826','70.674999999999','3984.3356992355','144.17991279101','1588.3967989623','2022-04-18 17:55:06','2022-04-18 17:55:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12701','359','2223','42.41386','-2.96011','974','4.4229953361172','-2.4891953796177','4.15570167611','70.674999999999','3984.4910943311','142.75658412407','1590.2709232736','2022-04-18 17:55:09','2022-04-18 17:55:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12702','359','2226','42.41397','-2.9601','966','4.415738365207','-2.9142571802653','4.596951728014','70.674999999999','3984.6376946432','141.02355322205','1592.1788205717','2022-04-18 17:55:12','2022-04-18 17:55:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12703','359','2229','42.41409','-2.96008','958','4.4128205913365','-2.5146722468924','4.2867264561436','70.599999999999','3984.7832067743','139.16957309627','1594.0423433277','2022-04-18 17:55:15','2022-04-18 17:55:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12704','359','2232','42.41419','-2.96007','952','4.4215585851622','-2.27847065529','4.1735069913105','70.539999999999','3984.9225437056','137.86909534341','1595.784853317','2022-04-18 17:55:18','2022-04-18 17:55:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12705','359','2235','42.4143','-2.96006','946','4.4246203325456','-2.702648153866','4.1167901893158','70.539999999999','3985.0576965197','136.43882682252','1597.4982523023','2022-04-18 17:55:21','2022-04-18 17:55:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12706','359','2238','42.4144','-2.96005','938','4.4204948580629','-3.1275972267264','4.5813335233389','70.539999999999','3985.1927122059','134.74439102773','1599.2222294193','2022-04-18 17:55:24','2022-04-18 17:55:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12707','359','2241','42.41452','-2.96004','928','4.4264091661888','-3.5540135441301','4.7005152688056','70.539999999999','3985.3467176289','132.54760827944','1601.1747143228','2022-04-18 17:55:27','2022-04-18 17:55:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12708','359','2244','42.41464','-2.96003','918','4.4258145555766','-3.1553329127485','4.6081174834872','70.464999999999','3985.5051597022','130.38401831229','1603.0943372694','2022-04-18 17:55:30','2022-04-18 17:55:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12709','359','2247','42.41475','-2.96001','909','4.413503330083','-3.5817265068729','4.7153495962029','70.464999999999','3985.6516153415','128.19501543287','1605.0247406356','2022-04-18 17:55:33','2022-04-18 17:55:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12710','359','2250','42.41487','-2.96','898','4.4221152288937','-3.6788145390739','4.8662699327796','70.434999999999','3985.8050132727','125.76825474157','1606.9305440444','2022-04-18 17:55:36','2022-04-18 17:55:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12711','359','2253','42.41498','-2.95999','889','4.4232706744421','-3.1146982750644','4.252305405342','70.344999999999','3985.9538735671','123.75381422903','1608.7737230464','2022-04-18 17:55:39','2022-04-18 17:55:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12712','359','2256','42.41509','-2.95998','880','4.417936480159','-3.5405082943559','4.4267918284946','70.344999999999','3986.0942794558','121.76461242625','1610.5489452435','2022-04-18 17:55:42','2022-04-18 17:55:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12713','359','2259','42.41519','-2.95997','870','4.4133375149292','-3.8016751083425','4.3723539156132','70.329999999999','3986.2261684014','119.65325325784','1612.223502231','2022-04-18 17:55:45','2022-04-18 17:55:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12714','359','2262','42.41529','-2.95996','862','4.4230538306313','-2.5769789595815','4.2301212376701','70.179999999999','3986.354919071','117.83735043259','1613.8781598562','2022-04-18 17:55:48','2022-04-18 17:55:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12715','359','2265','42.41541','-2.95994','854','4.409646888198','-3.0023400322297','4.2436563950083','70.179999999999','3986.5161713568','116.00185646234','1615.8336555681','2022-04-18 17:55:51','2022-04-18 17:55:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12716','359','2268','42.41553','-2.95993','844','4.4225588050344','-3.4284832038021','4.8413401178291','70.179999999999','3986.667830095','113.89859185104','1617.7793568541','2022-04-18 17:55:54','2022-04-18 17:55:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12717','359','2271','42.41565','-2.95992','834','4.411372268658','-3.5253999708653','4.5449474919771','70.149999999999','3986.8220821059','111.5304679566','1619.7216630542','2022-04-18 17:55:57','2022-04-18 17:55:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12718','359','2274','42.41576','-2.9599','825','4.4096942124244','-2.6309821688636','4.9054281707782','70.029999999999','3986.9736700895','109.61926632978','1621.6121656339','2022-04-18 17:56:00','2022-04-18 17:56:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12719','359','2277','42.41587','-2.95988','817','3.9951100734334','-3.0560984687843','26.688398286204','70.029999999999','3987.2387027654','107.86757627245','1623.3998072374','2022-04-18 17:56:03','2022-04-18 17:56:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12720','359','2280','42.41593','-2.9598','808','3.0205617447909','-3.4817952543315','77.757142268815','70.029999999999','3988.282700735','105.91714280365','1624.3355111539','2022-04-18 17:56:06','2022-04-18 17:56:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12721','359','2283','42.41592','-2.95972','800','2.205567472968','-2.7523791572056','120.88336573193','69.924999999999','3989.2414618224','104.00535747102','1624.1778762512','2022-04-18 17:56:09','2022-04-18 17:56:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12722','359','2286','42.41589','-2.95966','794','2.2045036058419','-2.1859504555495','120.8352931452','69.834999999999','3989.9166652416','102.78263638397','1623.7741718693','2022-04-18 17:56:12','2022-04-18 17:56:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12723','359','2289','42.41586','-2.95959','787','2.2066913967324','-2.1154320381382','120.96057263604','69.789999999999','3990.74945321','101.24825728513','1623.2734381403','2022-04-18 17:56:15','2022-04-18 17:56:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12724','359','2292','42.41583','-2.95953','782','2.1990014873108','-2.0440614647894','120.96545758655','69.744999999999','3991.5722747518','100.00563455437','1622.7799975663','2022-04-18 17:56:18','2022-04-18 17:56:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12725','359','2295','42.4158','-2.95946','775','2.1947800447492','-2.4683464559763','120.56183361275','69.744999999999','3992.4004999624','98.538563316524','1622.2815287992','2022-04-18 17:56:21','2022-04-18 17:56:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12726','359','2298','42.41577','-2.95939','768','2.2036195522792','-2.0680459268324','120.63989273613','69.669999999999','3993.2177563228','96.929584855368','1621.7913218246','2022-04-18 17:56:24','2022-04-18 17:56:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12727','359','2301','42.41574','-2.95932','764','2.2032369282948','-1.1708641213005','121.12013153772','69.549999999999','3994.0223460622','95.96470724735','1621.3138466094','2022-04-18 17:56:27','2022-04-18 17:56:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12728','359','2304','42.41572','-2.95926','760','2.1899085965303','-1.5932076788796','120.74598771484','69.549999999999','3994.7733399994','95.162333154012','1620.8657214286','2022-04-18 17:56:30','2022-04-18 17:56:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12729','359','2307','42.41569','-2.9592','755','2.2009212700448','-2.0164536182806','120.63230525859','69.549999999999','3995.5607516385','94.051006636097','1620.3973428782','2022-04-18 17:56:33','2022-04-18 17:56:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12730','359','2310','42.41566','-2.95914','749','2.1933022490873','-2.4401928342615','121.08548208195','69.549999999999','3996.292956644','92.770794850722','1619.9580321187','2022-04-18 17:56:36','2022-04-18 17:56:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12731','359','2313','42.41563','-2.95907','742','2.1892640424496','-1.8747756026485','120.5406581358','69.459999999999','3997.1281802635','91.201772326071','1619.4572742968','2022-04-18 17:56:39','2022-04-18 17:56:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12732','359','2316','42.4156','-2.959','738','2.201137498391','-0.81232642162252','121.06823854095','69.324999999999','3997.9657889946','90.328437239356','1618.9543325982','2022-04-18 17:56:42','2022-04-18 17:56:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12733','359','2319','42.41557','-2.95893','735','2.2001495482778','-0.73916847585167','120.54700968586','69.279999999999','3998.8040089049','89.697765048853','1618.4539981318','2022-04-18 17:56:45','2022-04-18 17:56:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12734','359','2322','42.41554','-2.95886','734','2.1965070793204','-0.33484161215693','121.01285063141','69.204999999999','3999.6394176912','89.467300417881','1617.9567830734','2022-04-18 17:56:48','2022-04-18 17:56:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12735','359','2325','42.41551','-2.95879','733','2.1977707011926','-0.75584809048208','120.53119061081','69.204999999999','4000.469521575','89.122708016655','1617.4601380962','2022-04-18 17:56:51','2022-04-18 17:56:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12736','359','2328','42.41548','-2.95873','732','2.2052805022266','0.1437542386067','121.31529482475','69.084999999999','4001.2728757511','88.986555681555','1616.9819085442','2022-04-18 17:56:54','2022-04-18 17:56:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12737','359','2331','42.41545','-2.95867','732','2.1917023050007','-0.27632768508552','120.98768122162','69.084999999999','4002.0389148487','88.958507107519','1616.5224148536','2022-04-18 17:56:57','2022-04-18 17:56:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12738','359','2334','42.41543','-2.95861','731','2.1875017743436','-0.69710197844499','120.84207308148','69.084999999999','4002.7644093328','88.693408891958','1616.090559844','2022-04-18 17:57:00','2022-04-18 17:57:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12739','359','2337','42.4154','-2.95854','729','2.1906277942853','-0.29342081380401','120.67208785016','69.009999999999','4003.5608723977','88.241873442227','1615.615635155','2022-04-18 17:57:03','2022-04-18 17:57:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12740','359','2340','42.41537','-2.95848','729','2.1912964525253','0.27686647941525','120.66686560149','68.919999999999','4004.3439893779','88.340235282527','1615.1483801657','2022-04-18 17:57:06','2022-04-18 17:57:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12741','359','2343','42.41534','-2.95841','730','2.2048630016748','-0.14298864568597','120.65951362963','68.919999999999','4005.1102338576','88.389836737423','1614.6898067578','2022-04-18 17:57:09','2022-04-18 17:57:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12742','359','2346','42.41531','-2.95834','729','2.2042671668205','-0.068536456712393','120.67473651428','68.874999999999','4005.9505137729','88.202280272174','1614.1889632131','2022-04-18 17:57:12','2022-04-18 17:57:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12743','359','2349','42.41528','-2.95827','729','2.1950262475447','0.17192291127932','120.97680333448','68.814999999999','4006.7848469275','88.359556107486','1613.686814098','2022-04-18 17:57:15','2022-04-18 17:57:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12744','359','2352','42.41525','-2.95821','729','2.1925594688385','-0.248110277777','121.10740593339','68.814999999999','4007.6127475179','88.348193024621','1613.1918072756','2022-04-18 17:57:18','2022-04-18 17:57:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12745','359','2355','42.41522','-2.95814','729','2.1943761730281','0.15639314613666','120.88279847385','68.739999999999','4008.4086409064','88.178178090658','1612.7215555434','2022-04-18 17:57:21','2022-04-18 17:57:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12746','359','2358','42.41519','-2.95807','729','2.1985063429335','0.066867928517415','121.0627856232','68.709999999999','4009.2402430957','88.340731417997','1612.2247361693','2022-04-18 17:57:24','2022-04-18 17:57:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12747','359','2361','42.41516','-2.958','729','2.1995142598484','-0.35336931680913','120.57123432575','68.709999999999','4010.0728928705','88.259504694369','1611.7294198211','2022-04-18 17:57:27','2022-04-18 17:57:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12748','359','2364','42.41513','-2.95794','729','2.1963066642134','0.21643414519613','121.19579449592','68.619999999999','4010.840496617','88.192215118582','1611.2691760102','2022-04-18 17:57:30','2022-04-18 17:57:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12749','359','2367','42.4151','-2.95788','729','2.1921184149965','-0.2035298859651','121.37105015786','68.619999999999','4011.62193609','88.204529927764','1610.8002699873','2022-04-18 17:57:33','2022-04-18 17:57:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12750','359','2370','42.41507','-2.95781','728','2.1991423442552','-0.62428427742193','120.77893366291','68.619999999999','4012.4421323046','87.946245613954','1610.3077505785','2022-04-18 17:57:36','2022-04-18 17:57:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12751','359','2373','42.41504','-2.95774','724','2.1870580690583','-2.010701791423','120.62112371279','68.619999999999','4013.2765175294','87.118550735878','1609.8081608429','2022-04-18 17:57:39','2022-04-18 17:57:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12752','359','2376','42.41501','-2.95767','717','2.1968298813652','-2.4349656132293','120.97602485496','68.619999999999','4014.1151640536','85.658727351759','1609.3055740437','2022-04-18 17:57:42','2022-04-18 17:57:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12753','359','2379','42.41498','-2.9576','709','2.4421643874816','-2.6950580554351','115.45526216183','68.604999999999','4014.9678667238','83.915205564981','1608.806045882','2022-04-18 17:57:45','2022-04-18 17:57:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12754','359','2382','42.41496','-2.95751','702','3.1207534362977','-2.4596621150827','100.33299372892','68.544999999999','4016.1192848297','82.338893457966','1608.4262352212','2022-04-18 17:57:48','2022-04-18 17:57:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12755','359','2385','42.41495','-2.95739','697','3.6506870264984','-1.2332609690134','88.523492799577','68.394999999999','4017.5779474367','81.106738043742','1608.3175136325','2022-04-18 17:57:51','2022-04-18 17:57:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12756','359','2388','42.41496','-2.95726','695','3.8598357187771','-0.49968213759641','83.862641474979','68.289999999999','4019.0661465079','80.620166319003','1608.4177630193','2022-04-18 17:57:54','2022-04-18 17:57:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12757','359','2391','42.41497','-2.95714','694','3.9578253320835','-0.42534710398558','81.678955724904','68.244999999999','4020.593747486','80.392498858061','1608.6089459795','2022-04-18 17:57:57','2022-04-18 17:57:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12758','359','2394','42.41499','-2.957','692','4.0654476364774','-0.35107741475135','79.280606710501','68.199999999999','4022.2545974591','80.142459156129','1608.8836770173','2022-04-18 17:58:00','2022-04-18 17:58:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12759','359','2397','42.41501','-2.95686','692','4.1063937622818','-0.27635542062281','78.368127638251','68.154999999999','4024.0341538119','80.047277065857','1609.2341725538','2022-04-18 17:58:03','2022-04-18 17:58:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12760','359','2400','42.41503','-2.95671','692','4.106203039991','0.45864348680609','78.372377859623','68.049999999999','4025.8276669481','80.046902997494','1609.6069813407','2022-04-18 17:58:06','2022-04-18 17:58:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12761','359','2403','42.41505','-2.95656','693','4.0303748899932','0.039159238696266','80.062198290764','68.049999999999','4027.5945641478','80.223483235572','1609.938893456','2022-04-18 17:58:09','2022-04-18 17:58:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12762','359','2406','42.41507','-2.95642','692','4.0737433970881','-0.38113359251669','79.095736767448','68.049999999999','4029.3604539672','80.123225328068','1610.2550470382','2022-04-18 17:58:12','2022-04-18 17:58:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12763','359','2409','42.41509','-2.95627','691','4.1201471001235','-0.80222622697097','78.374294235795','68.049999999999','4031.1239012563','79.749135274802','1610.6169831909','2022-04-18 17:58:15','2022-04-18 17:58:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12764','359','2412','42.41512','-2.95613','689','4.1042132388718','-0.23364877872847','78.502805382481','67.959999999999','4032.8944898611','79.262089986553','1610.9822661348','2022-04-18 17:58:18','2022-04-18 17:58:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12765','359','2415','42.41514','-2.95598','688','4.1108428971248','-0.32391533991208','78.420989328977','67.929999999999','4034.6314763883','79.170826264284','1611.3425526801','2022-04-18 17:58:21','2022-04-18 17:58:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12766','359','2418','42.41516','-2.95584','687','4.1191727080045','-0.5798485947826','78.289865186304','67.914999999999','4036.3201922413','78.851303698567','1611.6872646081','2022-04-18 17:58:24','2022-04-18 17:58:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12767','359','2421','42.41518','-2.95572','687','4.1145922114545','0.48510908892782','77.971458846872','67.779999999999','4037.8802098525','78.836815684795','1612.0060723747','2022-04-18 17:58:27','2022-04-18 17:58:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12768','359','2424','42.4152','-2.95558','687','4.1067819177014','0.065617948141518','78.340249213469','67.779999999999','4039.5288403238','79.011036046977','1612.3495969363','2022-04-18 17:58:30','2022-04-18 17:58:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12769','359','2427','42.41522','-2.95543','687','4.1088320870103','-0.35462398436892','77.994488018199','67.779999999999','4041.3148664367','78.928204551631','1612.7217479069','2022-04-18 17:58:33','2022-04-18 17:58:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12770','359','2430','42.41524','-2.95529','686','4.1067494881184','-0.11508286222361','78.562326878768','67.719999999999','4043.0630992589','78.77109652668','1613.080695594','2022-04-18 17:58:36','2022-04-18 17:58:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12771','359','2433','42.41527','-2.95514','685','4.1109408321447','-0.53567486017079','78.690439375738','67.719999999999','4044.8515345374','78.568411591452','1613.4490849738','2022-04-18 17:58:39','2022-04-18 17:58:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12772','359','2436','42.41529','-2.955','683','4.1117722449037','-0.62691765460665','77.839610068504','67.689999999999','4046.6383827709','78.1429106063','1613.8167397569','2022-04-18 17:58:42','2022-04-18 17:58:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12773','359','2439','42.41531','-2.95487','682','4.1084531493375','-0.88312341571306','78.429128910088','67.674999999999','4048.2022609809','77.730088884676','1614.1427138068','2022-04-18 17:58:45','2022-04-18 17:58:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12774','359','2442','42.41533','-2.95475','680','4.1039697382828','-0.31411743086174','78.684475731005','67.584999999999','4049.6895770842','77.38976355587','1614.4471666335','2022-04-18 17:58:48','2022-04-18 17:58:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12954','424','0','42.55654','-2.97265','525','0','0','0','100','3830','42.82','3945','2022-04-20 15:43:49','2022-04-20 15:43:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12955','424','1','42.55704','-2.97282','525','2.1521208069757','0.080922168042219','13.64909772385','99.4','3830.0159019299','42.823507955761','3945.0608237312','2022-04-20 15:46:25','2022-04-20 15:46:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12956','424','2','42.55706','-2.97281','525','2.1503302856618','0.92121562327758','14.345389693872','99.28','3830.0918213957','42.923979512556','3945.3691371249','2022-04-20 15:46:26','2022-04-20 15:46:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12957','424','3','42.55707','-2.9728','526','2.1563422422493','0.79574128524275','13.861157320174','99.28','3830.1660264652','43.1039527065','3945.6598736619','2022-04-20 15:46:27','2022-04-20 15:46:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12958','424','4','42.55709','-2.9728','527','2.1588363653735','0.67018895563722','14.514945431673','99.28','3830.2425008135','43.257223584106','3945.9563567408','2022-04-20 15:46:28','2022-04-20 15:46:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12959','424','5','42.55711','-2.97279','527','2.1492815503373','0.50252280784103','14.313825235454','99.28','3830.31139525','43.371526028276','3946.2254300063','2022-04-20 15:46:29','2022-04-20 15:46:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12960','424','6','42.55713','-2.97279','528','2.1483816047415','0.87194265599823','13.649852448468','99.235','3830.3894051919','43.515271284411','3946.5342674625','2022-04-20 15:46:30','2022-04-20 15:46:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12961','424','7','42.55714','-2.97278','529','2.1453942925518','1.2416284644191','14.407309776256','99.19','3830.4670436692','43.750074523217','3946.8446014818','2022-04-20 15:46:31','2022-04-20 15:46:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12962','424','8','42.55716','-2.97277','530','2.1443560651269','1.0743674788105','14.27342848272','99.19','3830.542520138','44.003094123663','3947.1475443889','2022-04-20 15:46:32','2022-04-20 15:46:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12963','424','9','42.55718','-2.97277','531','2.1470953795543','0.94903288455396','14.458049082382','99.19','3830.6211421491','44.230912008247','3947.4579713824','2022-04-20 15:46:33','2022-04-20 15:46:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12964','424','10','42.5572','-2.97276','532','2.1413631237669','0.82360842101484','14.191408311402','99.19','3830.6989640189','44.427960952169','3947.7694298655','2022-04-20 15:46:34','2022-04-20 15:46:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12965','424','11','42.55722','-2.97275','533','2.1446577274537','0.98612658437874','14.40306823892','99.16','3830.7761527754','44.605366817089','3948.079787936','2022-04-20 15:46:35','2022-04-20 15:46:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12966','424','12','42.55724','-2.97275','534','2.1505579118629','1.3558625942988','14.35226658271','99.115','3830.8552870886','44.857357763491','3948.3897382181','2022-04-20 15:46:36','2022-04-20 15:46:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12967','424','13','42.55726','-2.97274','535','2.153241756213','1.7258627376956','14.308345351405','99.07','3830.9328241145','45.199781247489','3948.7005222315','2022-04-20 15:46:37','2022-04-20 15:46:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12968','424','14','42.55728','-2.97274','537','2.1449686672132','2.2191271879294','14.061650135422','99.01','3831.0115942645','45.632696623238','3949.0120967435','2022-04-20 15:46:38','2022-04-20 15:46:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12969','424','15','42.5573','-2.97273','539','2.1602276123704','2.0945360472508','14.05338091452','99.01','3831.088818412','46.115053972029','3949.3233087146','2022-04-20 15:46:39','2022-04-20 15:46:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12970','424','16','42.55731','-2.97272','541','2.1577240968699','1.9698556566058','14.444614713837','99.01','3831.1655492089','46.566854418173','3949.6346549123','2022-04-20 15:46:40','2022-04-20 15:46:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12971','424','17','42.55733','-2.97272','543','2.1519253960298','1.8030862302774','14.358249500996','99.01','3831.2436868691','46.988171326628','3949.9464821502','2022-04-20 15:46:41','2022-04-20 15:46:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12972','424','18','42.55735','-2.97271','545','2.1469186564179','1.6782248460852','13.663537200931','99.01','3831.3214941346','47.378004217697','3950.2567901047','2022-04-20 15:46:42','2022-04-20 15:46:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12973','424','19','42.55737','-2.9727','547','2.1564841866804','1.5532740363873','13.86789540129','99.01','3831.3992836016','47.737220105943','3950.5681685718','2022-04-20 15:46:43','2022-04-20 15:46:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12974','424','20','42.55739','-2.9727','548','2.1600007916356','1.3862292418701','13.89675678503','99.01','3831.4768190214','48.064257999088','3950.8782431376','2022-04-20 15:46:44','2022-04-20 15:46:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12975','424','21','42.55741','-2.97269','550','2.1598611049686','1.5911368875423','14.369725555195','98.98','3831.5537354124','48.37501263119','3951.1850022803','2022-04-20 15:46:45','2022-04-20 15:46:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12976','424','22','42.55743','-2.97268','551','2.1591934668133','1.9612850858848','14.316563960944','98.935','3831.6317344408','48.768126336722','3951.4952217637','2022-04-20 15:46:46','2022-04-20 15:46:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12977','424','23','42.55745','-2.97268','554','2.1492070045288','2.4546948866169','14.279191391694','98.875','3831.7092442802','49.250806000465','3951.8046153074','2022-04-20 15:46:47','2022-04-20 15:46:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12978','424','24','42.55747','-2.97267','556','2.1502924806718','2.6603658668284','13.87900885941','98.845','3831.7866789123','49.822906828765','3952.1134311619','2022-04-20 15:46:48','2022-04-20 15:46:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12979','424','25','42.55748','-2.97267','559','2.1500487090803','2.5359852365873','13.807768174523','98.845','3831.8614939823','50.377337559894','3952.4125802839','2022-04-20 15:46:49','2022-04-20 15:46:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12980','424','26','42.5575','-2.97266','561','2.2215748844302','2.369487134571','343.03323341669','98.845','3831.920765501','50.89154896383','3952.7060179827','2022-04-20 15:46:50','2022-04-20 15:46:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12981','424','27','42.55752','-2.97267','563','2.4267663407341','2.2448954982645','346.23043182547','98.845','3831.8332508805','51.37373662236','3953.0181736718','2022-04-20 15:46:51','2022-04-20 15:46:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12982','424','28','42.55754','-2.97267','565','2.6789288845026','2.1202118986385','350.15951200363','98.845','3831.7588906159','51.824438395565','3953.3642378741','2022-04-20 15:46:52','2022-04-20 15:46:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12983','424','29','42.55757','-2.97268','567','2.8691680729193','1.9535400012493','353.12373108688','98.845','3831.6972033631','52.279146714972','3953.7699376809','2022-04-20 15:46:53','2022-04-20 15:46:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12984','424','30','42.55759','-2.97268','569','3.046837063384','1.8287701354738','355.89208715704','98.845','3831.6553526673','52.700313168018','3954.2064210946','2022-04-20 15:46:54','2022-04-20 15:46:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12985','424','31','42.55762','-2.97268','571','3.2670329096582','1.7039171139558','359.32307703357','98.845','3831.6345708969','53.09300922452','3954.6747867052','2022-04-20 15:46:55','2022-04-20 15:46:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12986','424','32','42.55765','-2.97268','572','3.4186743474162','1.5369750810094','1.6858838104121','98.845','3831.6369236679','53.455230047702','3955.1705414405','2022-04-20 15:46:56','2022-04-20 15:46:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12987','424','33','42.55768','-2.97268','574','3.5586440068948','1.4119407052931','3.8668263341614','98.845','3831.6621724952','53.785835071448','3955.6897275406','2022-04-20 15:46:57','2022-04-20 15:46:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12988','424','34','42.55772','-2.97268','575','3.7272539332292','1.2868169281013','6.4940282551971','98.845','3831.7100469755','54.08583131972','3956.2293076647','2022-04-20 15:46:58','2022-04-20 15:46:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12989','424','35','42.55775','-2.97267','576','3.8401578891658','1.1196000558035','8.2532454992695','98.845','3831.7800926619','54.353954187964','3956.7841407575','2022-04-20 15:46:59','2022-04-20 15:46:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12990','424','36','42.55778','-2.97267','577','3.9317020960226','0.99423732781514','9.6796450081387','98.845','3831.8633138563','54.572139803322','3957.31045429','2022-04-20 15:47:00','2022-04-20 15:47:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12991','424','37','42.55782','-2.97266','578','4.0471226322301','0.86883280986139','11.478074442534','98.845','3831.9705565244','54.776017604839','3957.8855392434','2022-04-20 15:47:01','2022-04-20 15:47:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12992','424','38','42.55785','-2.97265','579','4.1212070499867','0.70134806682448','12.63242358959','98.845','3832.0962884668','54.952428392561','3958.4798983192','2022-04-20 15:47:02','2022-04-20 15:47:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12993','424','39','42.55789','-2.97263','580','4.1836176673654','0.57577090132707','13.604876976143','98.845','3832.2368185872','55.097196096871','3959.0825515774','2022-04-20 15:47:03','2022-04-20 15:47:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12994','424','40','42.55793','-2.97264','580','4.2154867810105','0.45010398177982','341.85449656414','98.845','3832.1819494189','55.211234313239','3959.6840178555','2022-04-20 15:47:04','2022-04-20 15:47:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12995','424','41','42.55796','-2.97265','581','4.216000557825','0.28234752218241','342.16712103034','98.845','3831.9881565786','55.294616309683','3960.2815156127','2022-04-20 15:47:05','2022-04-20 15:47:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12996','424','42','42.558','-2.97267','581','4.2047246593471','0.15649795543115','342.16007073949','98.845','3831.7949427166','55.346120801246','3960.8749022136','2022-04-20 15:47:06','2022-04-20 15:47:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12997','424','43','42.55803','-2.97269','581','4.2233098711893','0.030558693000474','341.7428462454','98.845','3831.600103145','55.36691578941','3961.4718047181','2022-04-20 15:47:07','2022-04-20 15:47:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12998','424','44','42.55807','-2.9727','581','4.204137828704','-0.13747028638336','342.09177139638','98.845','3831.405686367','55.356993990589','3962.0683777249','2022-04-20 15:47:08','2022-04-20 15:47:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('12999','424','45','42.55811','-2.97272','581','4.213204279576','-0.2635901563333','341.5532805145','98.845','3831.2153204247','55.315953589764','3962.6565739961','2022-04-20 15:47:09','2022-04-20 15:47:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13000','424','46','42.55814','-2.97273','580','4.2159737421498','-0.38979691802956','341.59814166156','98.845','3831.0230552379','55.245163680417','3963.2375012166','2022-04-20 15:47:10','2022-04-20 15:47:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13001','424','47','42.55818','-2.97275','580','4.2076348919659','-0.55807544623403','341.85499908128','98.845','3830.8425446164','55.149802756698','3963.792973634','2022-04-20 15:47:11','2022-04-20 15:47:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13002','424','48','42.55821','-2.97274','580','4.1757695267196','-0.68442724934224','13.482590876922','98.845','3830.9147176882','55.029354382612','3964.3313819633','2022-04-20 15:47:12','2022-04-20 15:47:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13003','424','49','42.55824','-2.97273','579','4.1160116769996','-0.31572948276175','12.551471689609','98.8','3831.045399865','54.92587740039','3964.8941013969','2022-04-20 15:47:13','2022-04-20 15:47:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13004','424','50','42.55828','-2.97272','579','4.1069145157994','0.17621513557165','12.409723929553','98.74','3831.1650413075','54.906916136147','3965.4353657465','2022-04-20 15:47:14','2022-04-20 15:47:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13005','424','51','42.55831','-2.97271','579','4.1292633374604','0.54540813652857','12.757952936452','98.695','3831.2876185342','54.972994720776','3965.9831432836','2022-04-20 15:47:15','2022-04-20 15:47:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13006','424','52','42.55834','-2.9727','580','4.2102732455448','0.91486017870131','14.020211872027','98.65','3831.4209509251','55.127762383295','3966.5503081972','2022-04-20 15:47:16','2022-04-20 15:47:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13007','424','53','42.55838','-2.97271','581','4.2088711747548','1.4075974346294','342.08244200334','98.59','3831.331797764','55.380179930926','3967.1510727549','2022-04-20 15:47:17','2022-04-20 15:47:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13008','424','54','42.55842','-2.97272','583','4.2213437011837','1.7776018430602','341.75940390913','98.545','3831.1389407381','55.724063653361','3967.7451564834','2022-04-20 15:47:18','2022-04-20 15:47:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13009','424','55','42.55845','-2.97274','585','4.2195986259168','2.1478763309074','342.0500390775','98.5','3830.9455367932','56.160415650824','3968.3422791216','2022-04-20 15:47:19','2022-04-20 15:47:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13010','424','56','42.55849','-2.97276','587','4.2189529924176','2.1463184601781','341.50770713599','98.485','3830.7509311403','56.654163778202','3968.940211476','2022-04-20 15:47:20','2022-04-20 15:47:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13011','424','57','42.55852','-2.97277','589','4.2048919527686','2.0216801622698','341.57312934807','98.485','3830.5540412594','57.120375699316','3969.5361701339','2022-04-20 15:47:21','2022-04-20 15:47:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13012','424','58','42.55856','-2.97279','591','4.2156738242805','1.8969524473651','341.88429523159','98.485','3830.3601890093','57.555973530968','3970.1335123517','2022-04-20 15:47:22','2022-04-20 15:47:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13013','424','59','42.5586','-2.9728','593','4.2120447721146','1.730135666064','342.1037238591','98.485','3830.1660610474','57.961077309614','3970.7308572298','2022-04-20 15:47:23','2022-04-20 15:47:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13014','424','60','42.55863','-2.97282','594','4.2213156767797','1.6052268961393','341.65100900162','98.485','3829.9727970604','58.334686539471','3971.3288466684','2022-04-20 15:47:24','2022-04-20 15:47:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13015','424','61','42.55867','-2.97284','596','4.2158399867042','1.480228669902','341.92217907448','98.485','3829.7803642381','58.677668219019','3971.9269323637','2022-04-20 15:47:25','2022-04-20 15:47:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13016','424','62','42.55871','-2.97285','597','4.2139233677471','1.3131413379709','341.77242513035','98.485','3829.5860529767','58.99014239113','3972.524091335','2022-04-20 15:47:26','2022-04-20 15:47:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13017','424','63','42.55874','-2.97287','599','4.2193977410586','1.3529641603284','341.99077497033','98.47','3829.3949213076','59.27185569272','3973.1153507054','2022-04-20 15:47:27','2022-04-20 15:47:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13018','424','64','42.55878','-2.97288','600','4.2204951957181','1.7229628205744','341.68963876402','98.425','3829.1973355593','59.613771383852','3973.7114803018','2022-04-20 15:47:28','2022-04-20 15:47:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13019','424','65','42.55881','-2.9729','602','4.2164521235353','2.2162253870593','341.54821159172','98.365','3829.0012069574','60.046041812209','3974.3084867859','2022-04-20 15:47:29','2022-04-20 15:47:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13020','424','66','42.55885','-2.97292','604','4.209459589059','2.256677525309','342.28822269509','98.35','3828.8123602879','60.543216757652','3974.893690024','2022-04-20 15:47:30','2022-04-20 15:47:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13021','424','67','42.55889','-2.97293','606','4.2071345733694','2.1320735383581','341.94273977206','98.35','3828.6218346453','61.021175871846','3975.4792151782','2022-04-20 15:47:31','2022-04-20 15:47:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13022','424','68','42.55892','-2.97295','608','4.2085621831699','1.9653767584824','341.94636095534','98.35','3828.4308619133','61.467365065119','3976.0607356215','2022-04-20 15:47:32','2022-04-20 15:47:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13023','424','69','42.55896','-2.97296','610','4.214875022984','1.8405584412237','342.13688831872','98.35','3828.2450811758','61.871942971212','3976.6280525605','2022-04-20 15:47:33','2022-04-20 15:47:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13024','424','70','42.55899','-2.97298','612','4.2111400370166','1.7156960928021','342.20559092622','98.35','3828.0527010714','62.261445734824','3977.2157518944','2022-04-20 15:47:34','2022-04-20 15:47:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13025','424','71','42.55903','-2.97299','614','4.2194761223211','1.5487456711209','342.3608750737','98.35','3827.8640473055','62.620794470051','3977.8045947936','2022-04-20 15:47:35','2022-04-20 15:47:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13026','424','72','42.55906','-2.97301','615','4.207256485904','1.4237140459047','342.26650197455','98.35','3827.671990247','62.952341194586','3978.399124574','2022-04-20 15:47:36','2022-04-20 15:47:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13027','424','73','42.5591','-2.97303','617','4.2042324581256','1.2985935636225','341.92641560892','98.35','3827.4778386439','63.253465535518','3978.9937060372','2022-04-20 15:47:37','2022-04-20 15:47:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13028','424','74','42.55913','-2.97304','618','4.2173354834865','1.1313519161727','342.2425363474','98.35','3827.2902955372','63.513106026233','3979.5671306685','2022-04-20 15:47:38','2022-04-20 15:47:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13029','424','75','42.55917','-2.97306','619','4.2187837313334','1.006005062221','341.75636355716','98.35','3827.108096578','63.736726505212','3980.1225668556','2022-04-20 15:47:39','2022-04-20 15:47:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13030','424','76','42.5592','-2.97307','619','4.2067473950679','0.88051998063159','342.22719871569','98.35','3826.9430267781','63.913021381217','3980.6231812245','2022-04-20 15:47:40','2022-04-20 15:47:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13031','424','77','42.55923','-2.97308','620','4.2143082512159','0.7129812653493','341.66282862382','98.35','3826.7721198244','64.070953454423','3981.1514884084','2022-04-20 15:47:41','2022-04-20 15:47:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13032','424','78','42.55927','-2.9731','621','4.2185007058836','0.58740525292931','342.3464517671','98.35','3826.5801687851','64.21611594291','3981.7397617283','2022-04-20 15:47:42','2022-04-20 15:47:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13033','424','79','42.5593','-2.97312','621','4.2038949965116','0.46174589059005','341.94167309518','98.35','3826.3846162859','64.332741553748','3982.3366642462','2022-04-20 15:47:43','2022-04-20 15:47:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13034','424','80','42.55934','-2.97313','622','4.2170839519785','0.29399440213537','341.76563916955','98.35','3826.1902269351','64.417825542141','3982.9266971696','2022-04-20 15:47:44','2022-04-20 15:47:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13035','424','81','42.55938','-2.97315','622','4.2156871408638','0.16815277246701','342.26571073618','98.35','3825.9977956874','64.472047487611','3983.524470109','2022-04-20 15:47:45','2022-04-20 15:47:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13036','424','82','42.55941','-2.97316','622','4.2071926428026','0.042221080537865','341.56040694569','98.35','3825.8038977371','64.495434421607','3984.1212066829','2022-04-20 15:47:46','2022-04-20 15:47:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13037','424','83','42.55945','-2.97318','622','4.2129827603577','-0.12580045984283','341.91503520186','98.35','3825.6101331221','64.488059546935','3984.7187131665','2022-04-20 15:47:47','2022-04-20 15:47:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13038','424','84','42.55948','-2.9732','622','4.2223476521631','-0.25191422628035','342.18331669951','98.35','3825.4171145223','64.449108832446','3985.3128720903','2022-04-20 15:47:48','2022-04-20 15:47:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13039','424','85','42.55952','-2.97321','622','4.210911233762','-0.37811864049688','341.74117571856','98.35','3825.2255771817','64.379122640035','3985.9107107039','2022-04-20 15:47:49','2022-04-20 15:47:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13040','424','86','42.55956','-2.97323','621','4.2106717422911','-0.54640762077364','341.57009913259','98.35','3825.0316964185','64.280183194457','3986.4951657732','2022-04-20 15:47:50','2022-04-20 15:47:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13041','424','87','42.55959','-2.97324','621','4.2117766862481','-0.34274196409657','341.97031743342','98.32','3824.8352688416','64.165712603683','3987.0920984484','2022-04-20 15:47:51','2022-04-20 15:47:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13042','424','88','42.55963','-2.97326','620','4.2184917730825','0.026154834085495','341.53988603961','98.275','3824.6410292859','64.130378944363','3987.6887588969','2022-04-20 15:47:52','2022-04-20 15:47:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13043','424','89','42.55966','-2.97328','621','4.216701131518','0.51831473762926','342.29187812632','98.215','3824.4446015452','64.185125822398','3988.2822403216','2022-04-20 15:47:53','2022-04-20 15:47:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13044','424','90','42.5597','-2.97329','621','4.2223588188007','0.88774519174209','341.67014730974','98.17','3824.2528582231','64.332502286105','3988.8769338039','2022-04-20 15:47:54','2022-04-20 15:47:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13045','424','91','42.55974','-2.97331','622','4.2219613013271','1.2574412650105','341.62672103359','98.125','3824.0572036573','64.570819945808','3989.473691525','2022-04-20 15:47:55','2022-04-20 15:47:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13046','424','92','42.55977','-2.97332','624','4.2206280598874','1.0901851174824','341.78417713156','98.125','3823.8667689873','64.825495981102','3990.0524171327','2022-04-20 15:47:56','2022-04-20 15:47:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13047','424','93','42.55981','-2.97334','625','4.2053964270249','0.96484703969213','342.24622387519','98.125','3823.6757161798','65.052121192968','3990.6372684243','2022-04-20 15:47:57','2022-04-20 15:47:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13048','424','94','42.55984','-2.97335','625','4.2183884511146','0.83941554131366','341.90950787471','98.125','3823.4871966428','65.246761588068','3991.2151551116','2022-04-20 15:47:58','2022-04-20 15:47:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13049','424','95','42.55988','-2.97337','626','4.2228279923472','0.71389696445448','341.48972471908','98.125','3823.296384752','65.411588541571','3991.79309067','2022-04-20 15:47:59','2022-04-20 15:47:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13050','424','96','42.55991','-2.97339','627','4.2119685696084','0.54628675282491','342.22932490693','98.125','3823.108516021','65.545042096589','3992.3687755698','2022-04-20 15:48:00','2022-04-20 15:48:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13051','424','97','42.55995','-2.9734','628','4.2060790636734','0.91574798259268','342.12836438698','98.08','3822.9188399186','65.702955356341','3992.9472642229','2022-04-20 15:48:01','2022-04-20 15:48:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13052','424','98','42.55998','-2.97342','629','4.2036446761561','1.4084794653174','342.12946921963','98.02','3822.7245607884','65.95339630699','3993.5371605733','2022-04-20 15:48:02','2022-04-20 15:48:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13053','424','99','42.56002','-2.97343','630','4.2038397169245','1.7784430430295','342.17032813994','97.975','3822.5413644422','66.283300637055','3994.1073751507','2022-04-20 15:48:03','2022-04-20 15:48:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13054','424','100','42.56005','-2.97345','632','4.2122726112212','2.1486268019411','342.2265821629','97.93','3822.3570216221','66.688589370704','3994.6683400086','2022-04-20 15:48:04','2022-04-20 15:48:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13055','424','101','42.56009','-2.97346','634','4.220713566977','2.6420569507558','342.23498215723','97.87','3822.1773861316','67.178235696747','3995.2274388619','2022-04-20 15:48:05','2022-04-20 15:48:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13056','424','102','42.56012','-2.97348','637','4.2201795080786','3.0127170758285','342.03685848457','97.825','3821.9991986659','67.746620003547','3995.7736831774','2022-04-20 15:48:06','2022-04-20 15:48:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13057','424','103','42.56015','-2.97349','639','4.2146222715658','3.053479598595','342.29100462297','97.81','3821.828669489','68.350062658172','3996.300037171','2022-04-20 15:48:07','2022-04-20 15:48:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13058','424','104','42.56018','-2.9735','642','4.205671087342','2.887218243716','341.50745504285','97.81','3821.6532007394','68.945330218483','3996.8407792886','2022-04-20 15:48:08','2022-04-20 15:48:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13059','424','105','42.56022','-2.97352','645','4.2115029390467','2.7630704483796','342.22957008335','97.81','3821.4585596626','69.579477657768','3997.4376232859','2022-04-20 15:48:09','2022-04-20 15:48:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13060','424','106','42.56026','-2.97354','648','4.2134735230186','2.6388156068678','341.63273215086','97.81','3821.2627476392','70.176975228203','3998.0309884128','2022-04-20 15:48:10','2022-04-20 15:48:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13061','424','107','42.56029','-2.97355','650','4.206315339787','2.4724886012016','341.85983661471','97.81','3821.0680520625','70.749765640423','3998.6312860627','2022-04-20 15:48:11','2022-04-20 15:48:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13062','424','108','42.56033','-2.97357','653','4.2172887309933','2.3480540012369','341.5898419319','97.81','3820.8737771828','71.285718520439','3999.2255171171','2022-04-20 15:48:12','2022-04-20 15:48:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13063','424','109','42.56037','-2.97359','655','4.2102184302217','2.2235312028303','341.76184451801','97.81','3820.6789170674','71.791474512841','3999.819448067','2022-04-20 15:48:13','2022-04-20 15:48:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13064','424','110','42.5604','-2.9736','657','4.2123816177997','2.0569336414662','342.00851701289','97.81','3820.4825637624','72.271633583388','4000.4185798251','2022-04-20 15:48:14','2022-04-20 15:48:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13065','424','111','42.56044','-2.97362','659','4.2052832973382','1.9322371464214','342.12965933772','97.81','3820.28736167','72.717920295477','4001.0144789151','2022-04-20 15:48:15','2022-04-20 15:48:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13066','424','112','42.56047','-2.97363','661','4.2102934883014','1.8074451917717','341.5607151964','97.81','3820.0966125326','73.13152408371','4001.6097872706','2022-04-20 15:48:16','2022-04-20 15:48:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13067','424','113','42.56051','-2.97365','663','4.2191721786886','1.6405701337062','341.76019844205','97.81','3819.8986380229','73.516675390755','4002.2060303788','2022-04-20 15:48:17','2022-04-20 15:48:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13068','424','114','42.56055','-2.97367','664','4.2111927980028','1.5156031856322','341.7640158557','97.81','3819.701653959','73.870365912342','4002.8025375319','2022-04-20 15:48:18','2022-04-20 15:48:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13069','424','115','42.56058','-2.97368','666','4.2067202010965','1.3905416830822','341.50532958679','97.81','3819.5079489188','74.191683403003','4003.3960557173','2022-04-20 15:48:19','2022-04-20 15:48:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13070','424','116','42.56062','-2.9737','667','4.2037582281808','1.2233871951743','341.52355429399','97.81','3819.3125011658','74.481165088602','4003.9896524135','2022-04-20 15:48:20','2022-04-20 15:48:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13071','424','117','42.56066','-2.97371','668','4.2158750278061','1.0981566654128','341.91230450206','97.81','3819.115714906','74.744611991055','4004.588432599','2022-04-20 15:48:21','2022-04-20 15:48:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13072','424','118','42.56069','-2.97373','669','4.2057541800247','0.97282563533129','341.74926260998','97.81','3818.9223034018','74.973650157913','4005.1827321688','2022-04-20 15:48:22','2022-04-20 15:48:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13073','424','119','42.56073','-2.97375','670','4.2054578348174','0.80539896033963','341.99557715805','97.81','3818.7304821338','75.169941957122','4005.7700335081','2022-04-20 15:48:23','2022-04-20 15:48:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13074','424','120','42.56076','-2.97376','671','4.2196051865228','0.67988428535401','341.51824537955','97.81','3818.5361171831','75.336104812202','4006.3605986588','2022-04-20 15:48:24','2022-04-20 15:48:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13075','424','121','42.5608','-2.97378','671','4.2098210516128','0.55427504088168','341.52758856726','97.81','3818.3451586216','75.469889497087','4006.9421664089','2022-04-20 15:48:25','2022-04-20 15:48:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13076','424','122','42.56083','-2.97379','672','4.2201006596163','0.38657263209901','341.87440206615','97.81','3818.1584367428','75.571777108178','4007.5127768884','2022-04-20 15:48:26','2022-04-20 15:48:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13077','424','123','42.56087','-2.97381','672','4.2194169596738','0.26078316474288','341.64465623788','97.81','3817.9695672054','75.643858093407','4008.0894962562','2022-04-20 15:48:27','2022-04-20 15:48:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13078','424','124','42.5609','-2.97382','672','4.2234008239135','0.13490193452201','341.61422481301','97.81','3817.7880038491','75.684521823923','4008.6445884188','2022-04-20 15:48:28','2022-04-20 15:48:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13079','424','125','42.56094','-2.97384','672','4.2153577979356','0.0089391360208438','342.24572113381','97.81','3817.5993872453','75.697258664343','4009.2211641936','2022-04-20 15:48:29','2022-04-20 15:48:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13080','424','126','42.56097','-2.97385','672','4.208142667931','-0.15911100546704','341.96967660179','97.81','3817.4178769236','75.680091503084','4009.7728764259','2022-04-20 15:48:30','2022-04-20 15:48:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13081','424','127','42.561','-2.97387','672','4.2053390811765','-0.28524087274012','342.14504808591','97.81','3817.2441362332','75.635628274862','4010.3068271424','2022-04-20 15:48:31','2022-04-20 15:48:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13082','424','128','42.56104','-2.97388','672','4.2166724622827','-0.41147391975963','341.97799584016','97.81','3817.0501247021','75.555838944039','4010.9009710445','2022-04-20 15:48:32','2022-04-20 15:48:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13083','424','129','42.56108','-2.9739','671','4.207761181675','-0.57980039273592','341.51396405053','97.81','3816.8544540086','75.444062958383','4011.4981271609','2022-04-20 15:48:33','2022-04-20 15:48:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13084','424','130','42.56111','-2.97392','671','4.2124771254245','-0.70621508649725','342.23759589853','97.81','3816.663055178','75.302082435383','4012.0926838253','2022-04-20 15:48:34','2022-04-20 15:48:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13085','424','131','42.56115','-2.97393','670','4.2141262358316','-0.87472818819408','341.88644957787','97.81','3816.467619457','75.126409555632','4012.6957464126','2022-04-20 15:48:35','2022-04-20 15:48:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13086','424','132','42.56118','-2.97395','669','4.2100122637332','-0.83631270137811','341.52584351295','97.795','3816.2720729538','74.926287211613','4013.2859321001','2022-04-20 15:48:36','2022-04-20 15:48:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13087','424','133','42.56122','-2.97396','668','4.2218771904749','-0.4677381048534','341.60536177383','97.75','3816.0790143727','74.780639956845','4013.8833547929','2022-04-20 15:48:37','2022-04-20 15:48:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13088','424','134','42.56126','-2.97398','668','4.2172796136104','-0.09889932872302','341.72009919525','97.69','3815.8833075533','74.725441033053','4014.4807426743','2022-04-20 15:48:38','2022-04-20 15:48:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13089','424','135','42.56129','-2.974','668','4.2118642896264','0.39320891276126','341.62028797867','97.645','3815.6904601324','74.762500145058','4015.0754455038','2022-04-20 15:48:39','2022-04-20 15:48:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13090','424','136','42.56133','-2.97401','669','4.2144614526769','0.76258215719516','342.11997419315','97.6','3815.4941456346','74.890289479919','4015.6721453205','2022-04-20 15:48:40','2022-04-20 15:48:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13091','424','137','42.56137','-2.97403','670','4.2057937178896','1.1322201000044','341.856619338','97.54','3815.2999299116','75.108704759195','4016.268858193','2022-04-20 15:48:41','2022-04-20 15:48:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13092','424','138','42.5614','-2.97404','671','4.20534658129','1.4601282069785','342.0228057037','97.51','3815.1021689226','75.419617329275','4016.8710876851','2022-04-20 15:48:42','2022-04-20 15:48:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13093','424','139','42.56144','-2.97406','673','4.2082121401947','1.3350082231707','341.50758644029','97.51','3814.9098373648','75.720912335055','4017.4562493','2022-04-20 15:48:43','2022-04-20 15:48:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13094','424','140','42.56147','-2.97408','674','4.2075286509252','1.2098227702701','342.24335317771','97.51','3814.7164730201','75.999792400209','4018.0491870915','2022-04-20 15:48:44','2022-04-20 15:48:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13095','424','141','42.56151','-2.97409','675','4.213400922942','1.0425561963749','342.18583618603','97.51','3814.5208115835','76.250898714408','4018.6520870824','2022-04-20 15:48:45','2022-04-20 15:48:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13096','424','142','42.56155','-2.97411','676','4.209333433942','1.0822079461959','342.14668348919','97.495','3814.3274553764','76.474041160914','4019.2434231956','2022-04-20 15:48:46','2022-04-20 15:48:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13097','424','143','42.56158','-2.97412','677','4.2200085086636','1.5750559021233','341.64676568812','97.435','3814.1321208525','76.764359553152','4019.8394228916','2022-04-20 15:48:47','2022-04-20 15:48:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13098','424','144','42.56162','-2.97414','679','4.2103409747622','1.9451646219238','342.14039020716','97.39','3813.9385774189','77.143956816982','4020.433764754','2022-04-20 15:48:48','2022-04-20 15:48:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13099','424','145','42.56166','-2.97416','681','4.2118874780699','2.3155412328218','341.6254428923','97.345','3813.7459519334','77.615273131562','4021.0283645401','2022-04-20 15:48:49','2022-04-20 15:48:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13100','424','146','42.56169','-2.97417','684','4.2150887696589','2.809190312568','341.555519666','97.285','3813.5493195304','78.179875801436','4021.6245240922','2022-04-20 15:48:50','2022-04-20 15:48:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13101','424','147','42.56173','-2.97419','687','4.2106986002102','3.1801021836778','342.34473510353','97.24','3813.3572803658','78.834451503774','4022.2187954231','2022-04-20 15:48:51','2022-04-20 15:48:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13102','424','148','42.56176','-2.9742','690','4.2222691589143','3.2211702809607','342.1679945342','97.225','3813.1687844786','79.542515046598','4022.8040997638','2022-04-20 15:48:52','2022-04-20 15:48:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13103','424','149','42.5618','-2.97422','693','4.1677418773479','3.0551310302721','343.94347925804','97.225','3812.9838732244','80.213825393326','4023.3814443733','2022-04-20 15:48:53','2022-04-20 15:48:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13104','424','150','42.56183','-2.97423','696','3.9203152353688','2.9310334327959','354.79547165023','97.225','3812.8746924932','80.865159294309','4023.95758248','2022-04-20 15:48:54','2022-04-20 15:48:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13105','424','151','42.56187','-2.97423','699','3.6085069346455','2.8068399451466','8.4712071337111','97.225','3812.8835707746','81.483662855915','4024.5027429267','2022-04-20 15:48:55','2022-04-20 15:48:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13106','424','152','42.5619','-2.97422','701','3.3899928928191','2.6405419214502','18.055109257267','97.225','3812.9903612432','82.066375952286','4024.9941594065','2022-04-20 15:48:56','2022-04-20 15:48:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13107','424','153','42.56192','-2.9742','704','3.1800795567663','2.516148126135','27.261789296424','97.225','3813.1715922631','82.616299299243','4025.4272196838','2022-04-20 15:48:57','2022-04-20 15:48:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13108','424','154','42.56195','-2.97418','706','2.9200302489572','2.3916535888614','38.667404663331','97.225','3813.4036119188','83.131731179786','4025.7908220031','2022-04-20 15:48:58','2022-04-20 15:48:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13109','424','155','42.56196','-2.97416','708','2.7400090063805','2.2250373739034','46.563034411405','97.225','3813.6662580695','83.605503737513','4026.083508816','2022-04-20 15:48:59','2022-04-20 15:48:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13110','424','156','42.56198','-2.97414','710','2.5820101479356','2.1002854529916','53.492774863378','97.225','3813.9349325456','84.032814052306','4026.3083961181','2022-04-20 15:49:00','2022-04-20 15:49:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13111','424','157','42.56199','-2.97411','712','2.353579914401','1.9756153476305','63.021192895606','97.225','3814.2493341381','84.488135916193','4026.5049486818','2022-04-20 15:49:01','2022-04-20 15:49:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13112','424','158','42.562','-2.97409','714','2.3588012598279','1.8088429712993','63.285839712235','97.225','3814.5616500251','84.908442819277','4026.662069059','2022-04-20 15:49:02','2022-04-20 15:49:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13113','424','159','42.56201','-2.97406','716','2.3526360300239','1.6839847808872','63.556837457916','97.225','3814.8763344602','85.299369178851','4026.8194178217','2022-04-20 15:49:03','2022-04-20 15:49:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13114','424','160','42.56202','-2.97404','718','2.359521227563','2.0541992578063','63.779182257045','97.18','3815.1900706172','85.715174971506','4026.9781973712','2022-04-20 15:49:04','2022-04-20 15:49:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13115','424','161','42.56203','-2.97401','720','2.3563251741248','2.5476785802912','63.630120800025','97.12','3815.5037929163','86.221657102829','4027.1346613411','2022-04-20 15:49:05','2022-04-20 15:49:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13116','424','162','42.56204','-2.97399','722','2.3492542000124','2.4233003078468','63.732342270221','97.12','3815.8179086136','86.776895083195','4027.2917237919','2022-04-20 15:49:06','2022-04-20 15:49:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13117','424','163','42.56205','-2.97396','725','2.3566083718579','2.5508667440603','63.543391098783','97.09','3816.1313523251','87.313202724116','4027.4487082993','2022-04-20 15:49:07','2022-04-20 15:49:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13118','424','164','42.56206','-2.97393','728','2.3580162145931','3.3927712407174','63.397972291775','96.97','3816.4450530552','87.9652536027','4027.6059133519','2022-04-20 15:49:08','2022-04-20 15:49:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13119','424','165','42.56206','-2.97391','731','2.3517526232931','4.025140759945','63.418748369382','96.88','3816.7585672489','88.776516299557','4027.7632306504','2022-04-20 15:49:09','2022-04-20 15:49:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13120','424','166','42.56207','-2.97388','735','2.3654179153517','4.1538459012194','63.757458355537','96.85','3817.0730067306','89.702687389506','4027.9193559375','2022-04-20 15:49:10','2022-04-20 15:49:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13121','424','167','42.56208','-2.97386','740','2.3541754530289','3.988494425271','63.336558885903','96.85','3817.3872612216','90.609474192401','4028.0772209198','2022-04-20 15:49:11','2022-04-20 15:49:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13122','424','168','42.56209','-2.97383','744','2.3498870324917','3.8650520489905','63.403330795191','96.85','3817.7010694482','91.485139049698','4028.2334521577','2022-04-20 15:49:12','2022-04-20 15:49:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13123','424','169','42.5621','-2.9738','747','2.3655589029303','3.741521578122','63.030366694135','96.85','3818.0155954476','92.330642576274','4028.3903944457','2022-04-20 15:49:13','2022-04-20 15:49:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13124','424','170','42.56211','-2.97378','751','2.3563764499245','3.5759025456172','63.417865724647','96.85','3818.3299469368','93.145824866738','4028.5483812739','2022-04-20 15:49:14','2022-04-20 15:49:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13125','424','171','42.56212','-2.97375','754','2.353486673657','3.4521921662059','63.152308032708','96.85','3818.643409802','93.929732315963','4028.7047681836','2022-04-20 15:49:15','2022-04-20 15:49:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13126','424','172','42.56213','-2.97373','758','2.3480096708062','3.3283932452535','63.45182422728','96.85','3818.9568652701','94.683325409184','4028.8620996216','2022-04-20 15:49:16','2022-04-20 15:49:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13127','424','173','42.56214','-2.9737','761','2.3620300995778','3.1625055883789','63.719717545394','96.85','3819.2706298929','95.406537595292','4029.0185258898','2022-04-20 15:49:17','2022-04-20 15:49:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13128','424','174','42.56215','-2.97368','764','2.3641218444889','3.0385266828906','63.744450077808','96.85','3819.5850736221','96.098508593095','4029.1752826536','2022-04-20 15:49:18','2022-04-20 15:49:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13129','424','175','42.56216','-2.97365','767','2.3616955401717','2.9144494626161','63.63139793677','96.85','3819.8968587677','96.756819126049','4029.3321464503','2022-04-20 15:49:19','2022-04-20 15:49:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13130','424','176','42.56217','-2.97362','770','2.3471848059414','2.7482560052603','63.001003741593','96.85','3820.2050005648','97.375333059359','4029.4857850438','2022-04-20 15:49:20','2022-04-20 15:49:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13131','424','177','42.56218','-2.9736','773','2.3555545911016','2.6239727146976','63.141543462293','96.85','3820.5150184305','97.963090403412','4029.6416920229','2022-04-20 15:49:21','2022-04-20 15:49:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13132','424','178','42.56219','-2.97357','775','2.3635618439196','2.4996022620137','63.580446769122','96.85','3820.8238711204','98.521005669459','4029.7962976241','2022-04-20 15:49:22','2022-04-20 15:49:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13133','424','179','42.5622','-2.97355','777','2.357961010414','2.3330902023903','63.774921955715','96.85','3821.1262127437','99.030438346208','4029.9445625342','2022-04-20 15:49:23','2022-04-20 15:49:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13134','424','180','42.56221','-2.97352','780','2.3648924374325','2.2084909383689','63.036424947134','96.85','3821.4253416101','99.510014470497','4030.0943075422','2022-04-20 15:49:24','2022-04-20 15:49:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13135','424','181','42.56222','-2.9735','781','2.3606103320294','2.0837170120091','63.343592794686','96.85','3821.7033801664','99.929790683471','4030.2330929039','2022-04-20 15:49:25','2022-04-20 15:49:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13136','424','182','42.56222','-2.97348','783','2.3566902097775','1.9169748402898','63.161968296021','96.85','3822.0073299908','100.36043887205','4030.3845745286','2022-04-20 15:49:26','2022-04-20 15:49:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13137','424','183','42.56223','-2.97345','785','2.3535503927752','1.7921872971971','63.733681801734','96.85','3822.322928452','100.77555306442','4030.5411253495','2022-04-20 15:49:27','2022-04-20 15:49:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13138','424','184','42.56224','-2.97342','787','2.3659235096825','1.667304417615','63.441981201501','96.85','3822.6361773116','101.15802648448','4030.6993753656','2022-04-20 15:49:28','2022-04-20 15:49:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13139','424','185','42.56225','-2.9734','789','2.3544643056554','1.5003279053754','63.048852026015','96.85','3822.9473765799','101.50844248073','4030.855100505','2022-04-20 15:49:29','2022-04-20 15:49:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13140','424','186','42.56226','-2.97337','790','2.3614252348281','1.3752651236467','63.351606834212','96.85','3823.2615929555','101.82932201334','4031.0114926991','2022-04-20 15:49:30','2022-04-20 15:49:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13141','424','187','42.56227','-2.97335','791','2.3592253618192','1.2501217187126','63.711780543243','96.85','3823.5780036227','102.12259822534','4031.1676548773','2022-04-20 15:49:31','2022-04-20 15:49:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13142','424','188','42.56228','-2.97332','793','2.3492116311913','1.08288437282','63.071961920736','96.85','3823.8932643116','102.38371145908','4031.3239530904','2022-04-20 15:49:32','2022-04-20 15:49:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13143','424','189','42.56229','-2.9733','794','2.3648922568803','0.9575515199061','63.58456702156','96.85','3824.2052290928','102.61212553481','4031.4805577489','2022-04-20 15:49:33','2022-04-20 15:49:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13144','424','190','42.5623','-2.97327','794','2.3528001998589','0.83213542788518','63.726151625883','96.85','3824.5217200167','102.81204067216','4031.6383711537','2022-04-20 15:49:34','2022-04-20 15:49:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13145','424','191','42.56231','-2.97324','795','2.3531502934849','0.66462428064144','63.829825785983','96.85','3824.8344493412','102.9794113357','4031.7933833442','2022-04-20 15:49:35','2022-04-20 15:49:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13146','424','192','42.56232','-2.97322','796','2.3637460755959','0.53902137443678','63.447979263719','96.85','3825.1482158348','103.11536608111','4031.9500758355','2022-04-20 15:49:36','2022-04-20 15:49:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13147','424','193','42.56233','-2.97319','796','2.3600364206746','0.41332924195033','63.534543824667','96.85','3825.4602162704','103.22077203284','4032.1066937601','2022-04-20 15:49:37','2022-04-20 15:49:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13148','424','194','42.56234','-2.97317','797','2.3547720898319','0.24554768850483','63.638050298649','96.85','3825.7724738168','103.29556253838','4032.2631411613','2022-04-20 15:49:38','2022-04-20 15:49:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13149','424','195','42.56235','-2.97314','797','2.350805411952','0.11967445339603','63.753239295876','96.85','3826.0873565194','103.3389635905','4032.4186206122','2022-04-20 15:49:39','2022-04-20 15:49:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13150','424','196','42.56236','-2.97311','797','2.3641685403295','-0.006288591670512','63.440189237843','96.85','3826.4013671587','103.35161601325','4032.575481077','2022-04-20 15:49:40','2022-04-20 15:49:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13151','424','197','42.56237','-2.97309','797','2.362941443033','-0.17434121236412','63.202781179206','96.85','3826.7156189834','103.33360003545','4032.7337604294','2022-04-20 15:49:41','2022-04-20 15:49:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13152','424','198','42.56238','-2.97306','797','2.3650554703964','-0.30048635122615','63.09099417069','96.85','3827.0303312422','103.28390820629','4032.8913361762','2022-04-20 15:49:42','2022-04-20 15:49:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13153','424','199','42.56239','-2.97304','796','2.357071568139','-0.42672231589352','63.544630914066','96.85','3827.3449035184','103.20311994757','4033.0483264513','2022-04-20 15:49:43','2022-04-20 15:49:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13154','424','200','42.5624','-2.97301','796','2.3542631045467','-0.59504846314344','63.106415433034','96.85','3827.6589347798','103.09145548228','4033.2050294808','2022-04-20 15:49:44','2022-04-20 15:49:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13155','424','201','42.56241','-2.97299','795','2.3523336947961','-0.72146550974478','62.985648121091','96.85','3827.9723945281','102.94866940712','4033.363676369','2022-04-20 15:49:45','2022-04-20 15:49:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13156','424','202','42.56241','-2.97296','794','2.3607164898921','-0.84796982851617','63.611324012445','96.85','3828.2839374819','102.7760035761','4033.5191018495','2022-04-20 15:49:46','2022-04-20 15:49:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13157','424','203','42.56242','-2.97293','793','2.3492003644821','-1.0165668463296','63.846396437264','96.85','3828.5970911128','102.57159996723','4033.6745464201','2022-04-20 15:49:47','2022-04-20 15:49:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13158','424','204','42.56243','-2.97291','792','2.3610091223134','-1.1432527494386','63.336528834676','96.85','3828.9089336967','102.33676430964','4033.8302853293','2022-04-20 15:49:48','2022-04-20 15:49:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13159','424','205','42.56244','-2.97288','791','2.3513426457706','-0.93991839978771','63.845565243667','96.82','3829.2071711599','102.10886267833','4033.9776302195','2022-04-20 15:49:49','2022-04-20 15:49:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13160','424','206','42.56245','-2.97286','791','2.3647721058018','-0.44838327930467','63.141892320497','96.76','3829.5201778594','101.94969983793','4034.1328856696','2022-04-20 15:49:50','2022-04-20 15:49:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13161','424','207','42.56246','-2.97283','790','2.3469048814481','-0.0795782706855','63.171396175342','96.715','3829.8339026029','101.88293978313','4034.2895411183','2022-04-20 15:49:51','2022-04-20 15:49:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13162','424','208','42.56247','-2.97281','790','2.3634699320447','0.2894894679187','63.666828194241','96.67','3830.1470059479','101.90613174633','4034.4471634671','2022-04-20 15:49:52','2022-04-20 15:49:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13163','424','209','42.56248','-2.97278','791','2.3646283702181','0.78182130729132','63.085692659807','96.61','3830.4619372811','102.01974504865','4034.6040284943','2022-04-20 15:49:53','2022-04-20 15:49:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13164','424','210','42.56249','-2.97275','792','2.3505673731294','1.1514254074512','63.08815234323','96.565','3830.7754592496','102.22657347155','4034.7625139338','2022-04-20 15:49:54','2022-04-20 15:49:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13165','424','211','42.5625','-2.97273','793','2.3566000774277','1.5212927566539','63.204054795275','96.52','3831.0889628895','102.52353162454','4034.9200816907','2022-04-20 15:49:55','2022-04-20 15:49:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13166','424','212','42.56251','-2.9727','795','2.3515454601021','1.849424326515','62.969857411964','96.475','3831.4020345617','102.91095216392','4035.0772546422','2022-04-20 15:49:56','2022-04-20 15:49:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13167','424','213','42.56252','-2.97268','797','2.3488397594534','1.7245927689468','63.73646426822','96.475','3831.7159165275','103.31099692715','4035.2339826836','2022-04-20 15:49:57','2022-04-20 15:49:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13168','424','214','42.56253','-2.97265','798','2.3480198126974','1.5996722144249','63.537181732764','96.475','3832.0284221633','103.68057141275','4035.3921913096','2022-04-20 15:49:58','2022-04-20 15:49:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13169','424','215','42.56254','-2.97263','800','2.3641669878999','1.4326621953417','63.248479844587','96.475','3832.3421391556','104.01951552389','4035.5489633614','2022-04-20 15:49:59','2022-04-20 15:49:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13170','424','216','42.56255','-2.9726','801','2.3558245731409','1.3075601985587','63.422613942245','96.475','3832.6562599837','104.3269688263','4035.7065316165','2022-04-20 15:50:00','2022-04-20 15:50:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13171','424','217','42.56256','-2.97257','803','2.2973553040685','1.1823687564114','70.016607738461','96.475','3832.9742436756','104.60379832677','4035.8452627026','2022-04-20 15:50:01','2022-04-20 15:50:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13172','424','218','42.56256','-2.97255','804','2.2586092928528','1.0150876737452','74.386269983906','96.475','3833.2970779588','104.84993720937','4035.9517097062','2022-04-20 15:50:02','2022-04-20 15:50:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13173','424','219','42.56257','-2.97252','805','2.2242321826458','0.88971443730704','78.263220303842','96.475','3833.6215206964','105.06452500068','4036.030692258','2022-04-20 15:50:03','2022-04-20 15:50:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13174','424','220','42.56257','-2.97249','805','2.1851802519795','0.76425157931819','82.667383253533','96.475','3833.9455105692','105.24842866835','4036.0860686496','2022-04-20 15:50:04','2022-04-20 15:50:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13175','424','221','42.56257','-2.97247','806','2.1609909113087','0.59669917734221','85.395386610654','96.475','3834.2677256533','105.40167476817','4036.1212774574','2022-04-20 15:50:05','2022-04-20 15:50:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13176','424','222','42.56257','-2.97244','807','2.1411952471021','0.47105417252357','87.627883938589','96.475','3834.5876368259','105.52321602635','4036.1407137423','2022-04-20 15:50:06','2022-04-20 15:50:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13177','424','223','42.56257','-2.97241','807','2.1216653499','0.34531824846487','89.830408838157','96.475','3834.9036198916','105.6136288653','4036.1479433885','2022-04-20 15:50:07','2022-04-20 15:50:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13178','424','224','42.56257','-2.97239','807','2.1122129789922','0.17749144991041','90.896419686488','96.475','3835.21444626','105.67292860432','4036.1464316222','2022-04-20 15:50:08','2022-04-20 15:50:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13179','424','225','42.56257','-2.97236','807','2.1070273121757','0.051573840753052','91.481244079882','96.475','3835.527135464','105.7011371187','4036.1397989092','2022-04-20 15:50:09','2022-04-20 15:50:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13180','424','226','42.56257','-2.97234','807','2.1069519686296','-0.074433607294318','91.489741105473','96.475','3835.8393182774','105.69858709804','4036.1312606353','2022-04-20 15:50:10','2022-04-20 15:50:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13181','424','227','42.56257','-2.97231','807','2.1119262674042','-0.24252965072486','90.928754183955','96.475','3836.1487419417','105.66570428722','4036.1242271231','2022-04-20 15:50:11','2022-04-20 15:50:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13182','424','228','42.56257','-2.97229','807','2.1211585305594','-0.36871608752709','89.887566446598','96.475','3836.4577703164','105.60187310104','4036.1218287529','2022-04-20 15:50:12','2022-04-20 15:50:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13183','424','229','42.56257','-2.97226','807','2.1387626728328','-0.49496578960996','87.902222576556','96.475','3836.7463406952','105.51638150308','4036.1264497413','2022-04-20 15:50:13','2022-04-20 15:50:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13184','424','230','42.56257','-2.97224','806','2.1579335869607','-0.66332726974528','85.740182742086','96.475','3837.0592994386','105.39261996276','4036.1423171694','2022-04-20 15:50:14','2022-04-20 15:50:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13185','424','231','42.56258','-2.97221','805','2.1814093256174','-0.78977996201312','83.092657340799','96.475','3837.3729637439','105.23762972432','4036.172753755','2022-04-20 15:50:15','2022-04-20 15:50:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13186','424','232','42.56258','-2.97219','805','2.22041181845','-0.91633388861203','78.694069845935','96.475','3837.6966072274','105.04797944368','4036.2227770977','2022-04-20 15:50:16','2022-04-20 15:50:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13187','424','233','42.56258','-2.97216','804','2.2544421539548','-1.084971977389','74.856227766473','96.475','3838.0178584058','104.8295141888','4036.2956377081','2022-04-20 15:50:17','2022-04-20 15:50:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13188','424','234','42.56259','-2.97213','802','2.293263300075','-1.2117094647157','70.47809202543','96.475','3838.3412212874','104.57701741621','4036.3961804832','2022-04-20 15:50:18','2022-04-20 15:50:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13189','424','235','42.5626','-2.97211','801','2.3518729032274','-1.3385374597907','63.868271760578','96.475','3838.6605682494','104.29353310861','4036.5276878264','2022-04-20 15:50:19','2022-04-20 15:50:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13190','424','236','42.56261','-2.97208','800','2.3642418870775','-1.5074558855469','63.200222500685','96.475','3838.9751926502','103.97908765185','4036.6838815494','2022-04-20 15:50:20','2022-04-20 15:50:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13191','424','237','42.56262','-2.97205','798','2.3508464197483','-1.6344573244723','63.190761944369','96.475','3839.2883474435','103.63622061204','4036.8399752292','2022-04-20 15:50:21','2022-04-20 15:50:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13192','424','238','42.56263','-2.97203','796','2.3635809983141','-1.7615544730696','63.319013559091','96.475','3839.6028481204','103.26058503181','4036.995581272','2022-04-20 15:50:22','2022-04-20 15:50:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13193','424','239','42.56264','-2.972','795','2.3609440333343','-1.7657476737051','63.606333406911','96.46','3839.9165161676','102.85206369372','4037.1542499147','2022-04-20 15:50:23','2022-04-20 15:50:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13194','424','240','42.56265','-2.97198','793','2.3496246065553','-1.3977991708913','63.600888931151','96.415','3840.2300476327','102.49205798746','4037.3111164336','2022-04-20 15:50:24','2022-04-20 15:50:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13195','424','241','42.56266','-2.97195','792','2.359407983733','-1.0295872961381','63.72490835568','96.37','3840.543873644','102.22222408793','4037.4678306538','2022-04-20 15:50:25','2022-04-20 15:50:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13196','424','242','42.56266','-2.97193','791','2.3612612713687','-0.53811267569101','63.140884012215','96.31','3840.857853675','102.04234758472','4037.624245471','2022-04-20 15:50:26','2022-04-20 15:50:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13197','424','243','42.56267','-2.9719','791','2.349065883932','-0.16936675043814','63.135929917836','96.265','3841.1723946797','101.95535889851','4037.7812603936','2022-04-20 15:50:27','2022-04-20 15:50:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13198','424','244','42.56268','-2.97187','791','2.3658410229049','0.1996430647277','63.482866857495','96.22','3841.4860774933','101.95871935991','4037.9388365069','2022-04-20 15:50:28','2022-04-20 15:50:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13199','424','245','42.56269','-2.97185','791','2.3504245274682','0.69191614389757','63.38722523839','96.16','3841.8003241628','102.05221467374','4038.0949343347','2022-04-20 15:50:29','2022-04-20 15:50:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13200','424','246','42.5627','-2.97182','792','2.3592124424531','1.0614610465199','63.674763658195','96.115','3842.113610115','102.23877537593','4038.2526366994','2022-04-20 15:50:30','2022-04-20 15:50:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13201','424','247','42.56271','-2.9718','793','2.3476480555199','1.1011917728531','63.138973103205','96.1','3842.4271873569','102.48895735749','4038.4095570452','2022-04-20 15:50:31','2022-04-20 15:50:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13202','424','248','42.56272','-2.97177','794','2.3631254255041','0.93385451972155','63.759597307094','96.1','3842.7388045121','102.71586491139','4038.5670489201','2022-04-20 15:50:32','2022-04-20 15:50:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13203','424','249','42.56273','-2.97175','795','2.3567496783296','0.80838945337871','63.056850158626','96.1','3843.0310857906','102.89901249521','4038.7129379701','2022-04-20 15:50:33','2022-04-20 15:50:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13204','424','250','42.56274','-2.97172','796','2.3624621748274','0.68286919929407','63.408340376963','96.1','3843.34217735','103.06326520967','4038.8695776555','2022-04-20 15:50:34','2022-04-20 15:50:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13205','424','251','42.56275','-2.97169','796','2.3561534088379','0.51526157966643','63.781305879046','96.1','3843.6553736022','103.19760619976','4039.0263235169','2022-04-20 15:50:35','2022-04-20 15:50:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13206','424','252','42.56276','-2.97167','797','2.3616545822667','0.38956213867356','63.358616572248','96.1','3843.9677811099','103.30050990607','4039.1819375734','2022-04-20 15:50:36','2022-04-20 15:50:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13207','424','253','42.56277','-2.97164','797','2.3596533435812','0.26377299975562','63.751504871347','96.1','3844.2795883121','103.37270334013','4039.3391808498','2022-04-20 15:50:37','2022-04-20 15:50:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13208','424','254','42.56278','-2.97162','797','2.3617410355936','0.42592679595069','63.256144181377','96.07','3844.5922510354','103.42535921839','4039.4953714433','2022-04-20 15:50:38','2022-04-20 15:50:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13209','424','255','42.56279','-2.97159','798','2.3468730058212','0.79529932201786','63.541881483092','96.025','3844.9055303476','103.55290260288','4039.6529844292','2022-04-20 15:50:39','2022-04-20 15:50:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13210','424','256','42.5628','-2.97157','799','2.3465394060158','1.1649357455597','63.282697588548','95.98','3845.2190850245','103.7707977239','4039.8088380871','2022-04-20 15:50:40','2022-04-20 15:50:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13211','424','257','42.56281','-2.97154','800','2.3622741557306','0.99761971120241','63.430218766122','95.98','3845.5221902963','104.00497004267','4039.9611587664','2022-04-20 15:50:41','2022-04-20 15:50:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13212','424','258','42.56282','-2.97152','801','2.3510759335788','0.87223215998203','63.511223138963','95.98','3845.8346958233','104.21465681916','4040.1166525538','2022-04-20 15:50:42','2022-04-20 15:50:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13213','424','259','42.56283','-2.97149','802','2.3340257610145','0.74675511245481','65.881020455733','95.98','3846.1479838755','104.3937023523','4040.2696260497','2022-04-20 15:50:43','2022-04-20 15:50:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13214','424','260','42.56283','-2.97146','802','2.3104543683605','0.57919120908663','68.53933343611','95.98','3846.4666858251','104.54301067','4040.4052230126','2022-04-20 15:50:44','2022-04-20 15:50:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13215','424','261','42.56284','-2.97144','803','2.291260751037','0.45353496819289','70.703933670835','95.98','3846.7880764047','104.66070498384','4040.5245080477','2022-04-20 15:50:45','2022-04-20 15:50:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13216','424','262','42.56285','-2.97141','803','2.2724862625435','0.32778864908787','72.821265777382','95.98','3847.1109939207','104.74755882516','4040.6311481062','2022-04-20 15:50:46','2022-04-20 15:50:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13217','424','263','42.56285','-2.97138','803','2.2621996535621','0.48998488426431','73.981359564826','95.95','3847.4347199872','104.81474472372','4040.7284952424','2022-04-20 15:50:47','2022-04-20 15:50:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13218','424','264','42.56286','-2.97136','804','2.2422177199302','0.85939822098929','76.234863815794','95.905','3847.7590046204','104.95626063223','4040.8154139221','2022-04-20 15:50:48','2022-04-20 15:50:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13219','424','265','42.56286','-2.97133','805','2.2052214967082','0.73391553436908','80.407190069893','95.905','3848.0834768562','105.13337548436','4040.8836035143','2022-04-20 15:50:49','2022-04-20 15:50:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13220','424','266','42.56287','-2.9713','806','2.1822234926358','0.56634117943611','83.000837956808','95.905','3848.4054171786','105.27910545395','4040.9319840794','2022-04-20 15:50:50','2022-04-20 15:50:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13221','424','267','42.56287','-2.97128','806','2.1634777174855','0.44067659167868','85.114931856179','95.905','3848.7274275149','105.39394201543','4040.9654082117','2022-04-20 15:50:51','2022-04-20 15:50:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13222','424','268','42.56287','-2.97125','806','2.1453698511628','0.31492076144059','87.157084256727','95.905','3849.0477585619','105.47753948839','4040.9872301477','2022-04-20 15:50:52','2022-04-20 15:50:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13223','424','269','42.56287','-2.97123','807','2.1368494874696','0.14707635583125','88.117986047119','95.905','3849.3666217836','105.53081102276','4041.0007928871','2022-04-20 15:50:53','2022-04-20 15:50:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13224','424','270','42.56287','-2.9712','807','2.1327156995937','0.021139430466317','88.584182598584','95.905','3849.6845724647','105.55240616238','4041.0097834181','2022-04-20 15:50:54','2022-04-20 15:50:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13225','424','271','42.56287','-2.97117','807','2.133900786047','-0.10488550970424','88.450532001531','95.905','3849.9847903979','105.54386728673','4041.0171070303','2022-04-20 15:50:55','2022-04-20 15:50:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13226','424','272','42.56287','-2.97115','807','2.140004097061','-0.2730024682078','87.76221836941','95.905','3850.3029312533','105.50382369058','4041.0270222569','2022-04-20 15:50:56','2022-04-20 15:50:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13227','424','273','42.56287','-2.97112','806','2.1504130491203','-0.3992107588092','86.58832708612','95.905','3850.6189735149','105.43251032327','4041.0424066341','2022-04-20 15:50:57','2022-04-20 15:50:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13228','424','274','42.56287','-2.9711','806','2.1712738777913','-0.52551098732428','84.235703613603','95.905','3850.9397361729','105.32971976898','4041.066931142','2022-04-20 15:50:58','2022-04-20 15:50:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13229','424','275','42.56288','-2.97107','805','2.1919194983395','-0.69389918712856','81.907350686096','95.905','3851.2606295497','105.19681009833','4041.1043017847','2022-04-20 15:50:59','2022-04-20 15:50:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13230','424','276','42.56288','-2.97104','804','2.217103060409','-0.82038264926104','79.067221936626','95.905','3851.5845518506','105.0312850463','4041.1583305969','2022-04-20 15:51:00','2022-04-20 15:51:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13231','424','277','42.56288','-2.97102','804','2.2575357930753','-0.94695645413773','74.507336160814','95.905','3851.9090651764','104.83482895246','4041.2324954857','2022-04-20 15:51:01','2022-04-20 15:51:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13232','424','278','42.56289','-2.97099','803','2.2929965364805','-1.1156205245568','70.508176846312','95.905','3852.2325784945','104.60746824874','4041.3315616124','2022-04-20 15:51:02','2022-04-20 15:51:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13233','424','279','42.5629','-2.97096','802','2.3281493744311','-0.74723074555391','66.543742211792','95.86','3852.5432961891','104.39854420792','4041.4531478345','2022-04-20 15:51:03','2022-04-20 15:51:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13234','424','280','42.56291','-2.97094','801','2.3551944650172','-0.378596287654','63.493675700402','95.815','3852.8595360291','104.27339195489','4041.6006213306','2022-04-20 15:51:04','2022-04-20 15:51:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13235','424','281','42.56292','-2.97091','801','2.3639641527595','0.11330119035378','63.17178163337','95.755','3853.1734641512','104.23829105049','4041.7581702483','2022-04-20 15:51:05','2022-04-20 15:51:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13236','424','282','42.56293','-2.97089','801','2.3543202048041','0.48247064736956','63.592272219789','95.71','3853.4870016865','104.29630879266','4041.9151918157','2022-04-20 15:51:06','2022-04-20 15:51:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13237','424','283','42.56293','-2.97086','802','2.3251363197111','0.85190386995574','66.883545743571','95.665','3853.8029795595','104.44463311074','4042.0638328034','2022-04-20 15:51:07','2022-04-20 15:51:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13238','424','284','42.56294','-2.97083','803','2.2882523372368','1.3446006314953','71.043213813205','95.605','3854.1231782865','104.68318641685','4042.1905937985','2022-04-20 15:51:08','2022-04-20 15:51:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13239','424','285','42.56295','-2.97081','804','2.2384619884437','1.7145698912253','76.658424269257','95.56','3854.4468953503','105.01503612434','4042.2851804466','2022-04-20 15:51:09','2022-04-20 15:51:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13240','424','286','42.56295','-2.97078','806','2.1520223162006','2.0848034360456','86.406838633938','95.515','3854.7705014763','105.437370278','4042.3381158425','2022-04-20 15:51:10','2022-04-20 15:51:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13241','424','287','42.56295','-2.97075','809','2.0734768241716','2.24826889377','95.264970356419','95.485','3855.0863121048','105.93910547044','4042.3394403863','2022-04-20 15:51:11','2022-04-20 15:51:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13242','424','288','42.56295','-2.97073','811','1.9982905857631','2.1236460985942','103.74425524388','95.485','3855.3778119239','106.41062513012','4042.2913016482','2022-04-20 15:51:12','2022-04-20 15:51:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13243','424','289','42.56294','-2.97071','813','1.9039456833079','1.9989646006846','114.38419843736','95.485','3855.6539267916','106.86204647724','4042.199853477','2022-04-20 15:51:13','2022-04-20 15:51:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13244','424','290','42.56293','-2.97069','815','1.8367301376368','1.8322140823854','121.96457182318','95.485','3855.9022037792','107.28983701062','4042.0714645041','2022-04-20 15:51:14','2022-04-20 15:51:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13245','424','291','42.56293','-2.97067','816','1.7738749895538','1.7073714820791','129.05319227448','95.485','3856.121087041','107.68610102313','4041.9154685446','2022-04-20 15:51:15','2022-04-20 15:51:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13246','424','292','42.56291','-2.97065','818','1.6968427101819','1.5824396048665','137.74066828274','95.485','3856.3105775022','108.05179890946','4041.7389806531','2022-04-20 15:51:16','2022-04-20 15:51:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13247','424','293','42.5629','-2.97064','819','1.6470143601744','1.4153703925069','143.36016440502','95.485','3856.4632463172','108.37047675878','4041.5573349765','2022-04-20 15:51:17','2022-04-20 15:51:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13248','424','294','42.56289','-2.97063','821','1.5986705534991','1.2902531109814','148.81223805602','95.485','3856.5975302397','108.67269695677','4041.3578084108','2022-04-20 15:51:18','2022-04-20 15:51:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13249','424','295','42.56288','-2.97062','822','1.5766796604009','1.1650504267917','150.49054616141','95.485','3856.7144987206','108.94567746986','4041.1528991705','2022-04-20 15:51:19','2022-04-20 15:51:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13250','424','296','42.56287','-2.97061','823','1.5744044547942','0.99775823130368','150.52302585022','95.485','3856.8302499866','109.18801160692','4040.9476685531','2022-04-20 15:51:20','2022-04-20 15:51:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13251','424','297','42.56285','-2.9706','824','1.5877896970864','0.87237373838205','151.0356619059','95.485','3856.9462586166','109.39874546657','4040.7422867186','2022-04-20 15:51:21','2022-04-20 15:51:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13252','424','298','42.56284','-2.97059','825','1.5845602051552','0.74689934375643','151.10623385807','95.485','3857.0612280664','109.57869928528','4040.5356399917','2022-04-20 15:51:22','2022-04-20 15:51:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13253','424','299','42.56283','-2.97058','826','1.5851269587009','0.90936768000851','150.66319602413','95.455','3857.1763835954','109.73904562325','4040.3292522913','2022-04-20 15:51:23','2022-04-20 15:51:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13254','424','300','42.56282','-2.97057','827','1.5825453052772','1.2790542298759','150.30660623841','95.41','3857.2924146629','109.97410271435','4040.1231136585','2022-04-20 15:51:24','2022-04-20 15:51:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13255','424','301','42.5628','-2.97056','828','1.5725542780929','1.6490007255981','150.50597756365','95.365','3857.4076370314','110.29815860857','4039.9173653844','2022-04-20 15:51:25','2022-04-20 15:51:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13256','424','302','42.56279','-2.97055','830','1.5791429031331','2.1422152492736','150.29248953939','95.305','3857.5233839963','110.71398040945','4039.7117850398','2022-04-20 15:51:26','2022-04-20 15:51:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13257','424','303','42.56278','-2.97054','832','1.5756062083711','2.5127018083954','150.48734222414','95.26','3857.6389374242','111.22294017989','4039.5071851545','2022-04-20 15:51:27','2022-04-20 15:51:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13258','424','304','42.56277','-2.97054','835','1.5837772589369','2.8834533882848','150.86109348609','95.215','3857.7532813432','111.82263627365','4039.3021721488','2022-04-20 15:51:28','2022-04-20 15:51:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13259','424','305','42.56275','-2.97053','838','1.5835429318294','3.2124591964892','151.03984150696','95.17','3857.8669523041','112.5093736313','4039.0974538277','2022-04-20 15:51:29','2022-04-20 15:51:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13260','424','306','42.56274','-2.97052','841','1.5773594454741','3.0885134208806','150.70255516596','95.17','3857.9823103687','113.2126874514','4038.8918865358','2022-04-20 15:51:30','2022-04-20 15:51:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13261','424','307','42.56273','-2.97051','844','1.5750485553538','2.9644687803483','151.1736295714','95.17','3858.0962047646','113.88215245369','4038.6870478207','2022-04-20 15:51:31','2022-04-20 15:51:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13262','424','308','42.56272','-2.9705','847','1.5760948069851','2.7983454148258','150.44169876385','95.17','3858.2111236663','114.52466403559','4038.48199795','2022-04-20 15:51:32','2022-04-20 15:51:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13263','424','309','42.5627','-2.97049','850','1.5818882176057','2.67413064752','151.06749415222','95.17','3858.3266709948','115.13588198777','4038.2769295747','2022-04-20 15:51:33','2022-04-20 15:51:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13264','424','310','42.56269','-2.97048','852','1.591296868279','2.5498181868279','150.79655525313','95.17','3858.4419360543','115.71365222661','4038.0719077761','2022-04-20 15:51:34','2022-04-20 15:51:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13265','424','311','42.56268','-2.97047','855','1.5852444493595','2.3834093222825','150.39218471632','95.17','3858.5566800386','116.25841625507','4037.8670853216','2022-04-20 15:51:35','2022-04-20 15:51:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13266','424','312','42.56267','-2.97046','857','1.5853467827263','2.258902072082','150.94119179996','95.17','3858.6716681894','116.76949555504','4037.6635844084','2022-04-20 15:51:36','2022-04-20 15:51:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13267','424','313','42.56265','-2.97045','859','1.5817933122417','2.1342788491237','150.80353287039','95.17','3858.7831611399','117.24086875294','4037.464197423','2022-04-20 15:51:37','2022-04-20 15:51:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13268','424','314','42.56264','-2.97044','861','1.5784532067121','1.9675560036602','150.67103963229','95.17','3858.8939018488','117.67813375656','4037.2668590181','2022-04-20 15:51:38','2022-04-20 15:51:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13269','424','315','42.56263','-2.97043','863','1.585376142493','1.8427514061646','150.3182544501','95.17','3859.0050691168','118.08740895817','4037.0697291076','2022-04-20 15:51:39','2022-04-20 15:51:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13270','424','316','42.56262','-2.97042','865','1.5870159715363','1.7178383541949','150.63228028272','95.17','3859.1135373965','118.45955212548','4036.8765851992','2022-04-20 15:51:40','2022-04-20 15:51:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13271','424','317','42.56261','-2.97041','866','1.5857460591298','1.5508464296941','150.6832896697','95.17','3859.2239833364','118.80469135819','4036.6824924316','2022-04-20 15:51:41','2022-04-20 15:51:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13272','424','318','42.5626','-2.97041','868','1.5815528285238','1.4257577482414','150.60555506996','95.17','3859.3321561474','119.11670348868','4036.4888930972','2022-04-20 15:51:42','2022-04-20 15:51:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13273','424','319','42.56258','-2.9704','869','1.5855466138396','1.3005631180541','151.05907884408','95.17','3859.437700546','119.39244148589','4036.3014238582','2022-04-20 15:51:43','2022-04-20 15:51:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13274','424','320','42.56257','-2.97039','870','1.5741369532342','1.1332692665558','150.46055509475','95.17','3859.5410261034','119.63420864746','4036.1170810951','2022-04-20 15:51:44','2022-04-20 15:51:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13275','424','321','42.56256','-2.97038','871','1.5902706180252','1.0079727961927','150.38479791591','95.17','3859.6560627896','119.87507917676','4035.9116177128','2022-04-20 15:51:45','2022-04-20 15:51:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13276','424','322','42.56255','-2.97037','872','1.5799738575319','0.88258388851348','150.98449277605','95.17','3859.7709158169','120.08430153647','4035.7071346016','2022-04-20 15:51:46','2022-04-20 15:51:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13277','424','323','42.56254','-2.97036','873','1.58994872064','0.715108077653','150.37629167555','95.17','3859.8851534065','120.26377047264','4035.501272147','2022-04-20 15:51:47','2022-04-20 15:51:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13278','424','324','42.56252','-2.97035','874','1.5747056255186','0.58953793610914','150.53137997938','95.17','3860.000567536','120.41094299875','4035.2974611133','2022-04-20 15:51:48','2022-04-20 15:51:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13279','424','325','42.56251','-2.97034','874','1.587563278743','0.4638733891794','150.90372129916','95.17','3860.1145369163','120.52579353859','4035.0958970146','2022-04-20 15:51:49','2022-04-20 15:51:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13280','424','326','42.5625','-2.97033','875','1.5819747651296','0.29612107964009','150.2850637961','95.17','3860.2302881378','120.61059640864','4034.8937130388','2022-04-20 15:51:50','2022-04-20 15:51:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13281','424','327','42.56249','-2.97032','875','1.579720209577','0.17028083140313','151.09153635221','95.17','3860.3454055727','120.66529132084','4034.6889419523','2022-04-20 15:51:51','2022-04-20 15:51:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13282','424','328','42.56247','-2.97031','875','1.5780621863768','0.044350658156588','150.59343058131','95.17','3860.4608771128','120.68919821286','4034.4840753686','2022-04-20 15:51:52','2022-04-20 15:51:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13283','424','329','42.56246','-2.9703','875','1.5893780869248','-0.1236696353784','150.29900308789','95.17','3860.5762047309','120.68225022623','4034.2780237051','2022-04-20 15:51:53','2022-04-20 15:51:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13284','424','330','42.56245','-2.97029','875','1.5900006669646','-0.24978256282083','150.73058443552','95.17','3860.6916738853','120.64358676217','4034.072149929','2022-04-20 15:51:54','2022-04-20 15:51:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13285','424','331','42.56244','-2.97028','874','1.5810553534626','-0.37598559239431','150.8037801903','95.17','3860.8075924878','120.57407463608','4033.8674842611','2022-04-20 15:51:55','2022-04-20 15:51:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13286','424','332','42.56242','-2.97027','874','1.5716882164616','-0.54427307848017','151.14504228973','95.17','3860.9216158161','120.47564676319','4033.6637541172','2022-04-20 15:51:56','2022-04-20 15:51:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13287','424','333','42.56241','-2.97026','873','1.5885581498898','-0.67065894022114','150.40256922722','95.17','3861.037421052','120.34353758554','4033.4586773115','2022-04-20 15:51:57','2022-04-20 15:51:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13288','424','334','42.5624','-2.97026','873','1.5910043354712','-0.79713535420281','150.28201176873','95.17','3861.1532017873','120.18042563983','4033.2530666751','2022-04-20 15:51:58','2022-04-20 15:51:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13289','424','335','42.56239','-2.97025','872','1.5838689626541','-0.96569447401589','150.97473903541','95.17','3861.2685141726','119.98899733567','4033.0504252644','2022-04-20 15:51:59','2022-04-20 15:51:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13290','424','336','42.56237','-2.97024','871','1.5810429436933','-1.0923508004275','151.15768811197','95.17','3861.3826517579','119.76428798178','4032.8461991139','2022-04-20 15:52:00','2022-04-20 15:52:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13291','424','337','42.56236','-2.97023','870','1.5910379511805','-1.219093348725','151.02745927556','95.17','3861.4972515893','119.5100584624','4032.642752739','2022-04-20 15:52:01','2022-04-20 15:52:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13292','424','338','42.56235','-2.97022','868','1.585583795382','-1.3879255850321','150.44815341495','95.17','3861.6111873','119.22512206557','4032.4385333952','2022-04-20 15:52:02','2022-04-20 15:52:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13293','424','339','42.56234','-2.97021','867','1.5741995366559','-1.5148504312815','150.44298014781','95.17','3861.7256542476','118.90847839636','4032.2347205938','2022-04-20 15:52:03','2022-04-20 15:52:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13294','424','340','42.56232','-2.9702','865','1.5856027592365','-1.6418702766503','150.58397514795','95.17','3861.8405922059','118.55930946173','4032.0301511361','2022-04-20 15:52:04','2022-04-20 15:52:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13295','424','341','42.56231','-2.97019','864','1.5734311919997','-1.8109635800627','150.94147892584','95.17','3861.9544857314','118.18499037433','4031.8283156222','2022-04-20 15:52:05','2022-04-20 15:52:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13296','424','342','42.5623','-2.97018','862','1.5736308385244','-1.9381720967593','151.08137791636','95.17','3862.0685415212','117.77122520922','4031.62236361','2022-04-20 15:52:06','2022-04-20 15:52:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13297','424','343','42.56229','-2.97017','860','1.588188791072','-2.0654648575577','150.91008479371','95.17','3862.1820339635','117.32861702122','4031.4172784431','2022-04-20 15:52:07','2022-04-20 15:52:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13298','424','344','42.56228','-2.97016','858','1.5799923136083','-2.2347920723252','150.85597155299','95.17','3862.292429576','116.87421267663','4031.2207027475','2022-04-20 15:52:08','2022-04-20 15:52:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13299','424','345','42.56226','-2.97015','855','1.5795991941171','-2.3622758910053','150.59207009723','95.17','3862.4073588712','116.36619116321','4031.015881246','2022-04-20 15:52:09','2022-04-20 15:52:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13300','424','346','42.56225','-2.97014','853','1.5910934947515','-2.4898507022658','150.70312408406','95.17','3862.5225260685','115.82701612071','4030.8097712085','2022-04-20 15:52:10','2022-04-20 15:52:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13301','424','347','42.56224','-2.97013','851','1.5756313844607','-2.2874132407021','150.73616648024','95.125','3862.6370741278','115.29204297888','4030.6047373943','2022-04-20 15:52:11','2022-04-20 15:52:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13302','424','348','42.56223','-2.97012','849','1.5830679094906','-1.7967256927725','150.35047762174','95.08','3862.7529843702','114.84269300371','4030.3999336337','2022-04-20 15:52:12','2022-04-20 15:52:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13303','424','349','42.56221','-2.97011','847','1.5875905278062','-1.7588480813762','150.32087103753','95.065','3862.8679499115','114.45841589174','4030.1949689983','2022-04-20 15:52:13','2022-04-20 15:52:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13304','424','350','42.5622','-2.9701','845','1.5889398918722','-1.886039251216','150.59555825194','95.065','3862.984372746','114.05058984608','4029.9893274754','2022-04-20 15:52:14','2022-04-20 15:52:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13305','424','351','42.56219','-2.9701','843','1.5846297277762','-2.0553236790928','151.13039791903','95.065','3863.0990560761','113.61083463703','4029.7832885392','2022-04-20 15:52:15','2022-04-20 15:52:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13306','424','352','42.56218','-2.97009','841','1.5744604458631','-2.1827134162909','150.70854842957','95.065','3863.2149520399','113.13502421351','4029.5747602494','2022-04-20 15:52:16','2022-04-20 15:52:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13307','424','353','42.56216','-2.97008','839','1.5749059592436','-2.3521807305438','150.55902868197','95.065','3863.3296591864','112.63265339325','4029.3691974801','2022-04-20 15:52:17','2022-04-20 15:52:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13308','424','354','42.56215','-2.97007','836','1.5855481719808','-2.4797416185772','150.57756934995','95.065','3863.4446713577','112.09824530712','4029.1637584846','2022-04-20 15:52:18','2022-04-20 15:52:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13309','424','355','42.56214','-2.97006','834','1.5729273386385','-2.6073935493319','150.97114893406','95.065','3863.5599357166','111.53266652495','4028.9584107072','2022-04-20 15:52:19','2022-04-20 15:52:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13310','424','356','42.56213','-2.97005','831','1.5827208193143','-2.6121367187601','150.87944585302','95.05','3863.6746175916','110.93584995772','4028.7528083725','2022-04-20 15:52:20','2022-04-20 15:52:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13311','424','357','42.56211','-2.97004','829','1.5911032275703','-2.2447283116899','151.11606000932','95.005','3863.7901654291','110.39092930143','4028.5474520903','2022-04-20 15:52:21','2022-04-20 15:52:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13312','424','358','42.5621','-2.97003','826','1.5833902300622','-1.8770600742365','150.39296105387','94.96','3863.9054114832','109.93496791376','4028.3428389103','2022-04-20 15:52:22','2022-04-20 15:52:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13313','424','359','42.56209','-2.97002','825','1.5845643464317','-1.7161670218072','150.70536319981','94.93','3864.0206863772','109.555977416','4028.1377601128','2022-04-20 15:52:23','2022-04-20 15:52:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13314','424','360','42.56208','-2.97001','823','1.5790391679017','-1.8433147808538','150.68855989609','94.93','3864.1366172652','109.16301411415','4027.9322423865','2022-04-20 15:52:24','2022-04-20 15:52:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13315','424','361','42.56206','-2.97','821','1.5907413245999','-1.9705533142161','150.59804958927','94.93','3864.2515088555','108.73897201145','4027.7270301772','2022-04-20 15:52:25','2022-04-20 15:52:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13316','424','362','42.56205','-2.96999','819','1.6486294481726','-2.1398828177791','143.17801948669','94.93','3864.3790510974','108.28378404191','4027.5241781709','2022-04-20 15:52:26','2022-04-20 15:52:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13317','424','363','42.56204','-2.96998','817','1.7241992643607','-2.2673059420315','134.65547581492','94.93','3864.5438712971','107.79654274608','4027.3350084825','2022-04-20 15:52:27','2022-04-20 15:52:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13318','424','364','42.56203','-2.96996','815','1.8292100739336','-2.2297753999515','122.8126626954','94.915','3864.746861391','107.29343798912','4027.1697201671','2022-04-20 15:52:28','2022-04-20 15:52:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13319','424','365','42.56202','-2.96994','813','1.8984619972619','-1.7390578421979','115.00263257107','94.855','3864.9848307007','106.85436260908','4027.034471785','2022-04-20 15:52:29','2022-04-20 15:52:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13320','424','366','42.56201','-2.96992','811','1.9558522410051','-1.3710807030678','108.53032810738','94.81','3865.2489121754','106.50416124409','4026.9294938298','2022-04-20 15:52:30','2022-04-20 15:52:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13321','424','367','42.56201','-2.9699','810','2.0138709476282','-1.1678726398017','101.98714743133','94.78','3865.5337005755','106.23302238899','4026.850931648','2022-04-20 15:52:31','2022-04-20 15:52:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13322','424','368','42.56201','-2.96987','809','2.056562641819','-1.3366727565021','97.172502557013','94.78','3865.8284921846','105.95908292287','4026.7984038917','2022-04-20 15:52:32','2022-04-20 15:52:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13323','424','369','42.562','-2.96985','807','2.1033466140219','-1.4635562316136','91.896342492716','94.78','3866.1310602798','105.65660367171','4026.7742083829','2022-04-20 15:52:33','2022-04-20 15:52:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13324','424','370','42.56201','-2.96982','806','2.1722258421686','-1.5905286604305','84.128343844998','94.78','3866.4423520938','105.32366895007','4026.7824684015','2022-04-20 15:52:34','2022-04-20 15:52:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13325','424','371','42.56201','-2.96979','804','2.2282119820453','-1.7595792198217','77.814390124044','94.78','3866.7575459773','104.96398432079','4026.8287963664','2022-04-20 15:52:35','2022-04-20 15:52:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13326','424','372','42.56201','-2.96977','802','2.2873956236977','-1.8866848064466','71.139831469826','94.78','3867.0668683097','104.58545977603','4026.9136445061','2022-04-20 15:52:36','2022-04-20 15:52:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13327','424','373','42.56202','-2.96975','801','2.3659603010336','-1.848785024068','63.228377849045','94.765','3867.3505095766','104.20877344057','4027.0326659857','2022-04-20 15:52:37','2022-04-20 15:52:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13328','424','374','42.56203','-2.96972','799','2.3559388115211','-1.3578409235755','63.650188796','94.705','3867.6648062532','103.84726049222','4027.190044585','2022-04-20 15:52:38','2022-04-20 15:52:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13329','424','375','42.56204','-2.96969','798','2.359914092236','-0.98961704034961','63.599042821363','94.66','3867.9767629556','103.5815379862','4027.344589479','2022-04-20 15:52:39','2022-04-20 15:52:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13330','424','376','42.56205','-2.96967','797','2.3620547956947','-0.62113922790231','63.648906281853','94.615','3868.2908798048','103.4027543421','4027.5020601005','2022-04-20 15:52:40','2022-04-20 15:52:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13331','424','377','42.56206','-2.96964','797','2.3530209657649','-0.6244953500706','63.005445598134','94.6','3868.6055181191','103.28082723246','4027.6584148125','2022-04-20 15:52:41','2022-04-20 15:52:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13332','424','378','42.56207','-2.96962','796','2.3484363975437','-0.7509341394249','63.135397708494','94.6','3868.9182970175','103.13059699555','4027.8166012186','2022-04-20 15:52:42','2022-04-20 15:52:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13333','424','379','42.56208','-2.96959','795','2.355524539023','-0.87746310615144','63.503904205836','94.6','3869.2321422023','102.94949233595','4027.9739679872','2022-04-20 15:52:43','2022-04-20 15:52:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13334','424','380','42.56209','-2.96956','794','2.3485884379381','-1.0460825821727','63.083045525626','94.6','3869.5461216906','102.73739961192','4028.1315194114','2022-04-20 15:52:44','2022-04-20 15:52:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13335','424','381','42.5621','-2.96954','793','2.3474919150636','-1.1727952176779','63.689604560226','94.6','3869.8597479571','102.49341146653','4028.287535872','2022-04-20 15:52:45','2022-04-20 15:52:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13336','424','382','42.56211','-2.96951','792','2.3509722974775','-1.2995982084348','63.206059920987','94.6','3870.1738203388','102.21848799707','4028.4434139404','2022-04-20 15:52:46','2022-04-20 15:52:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13337','424','383','42.56212','-2.96949','790','2.3608823125445','-1.303487391434','63.333097197784','94.585','3870.4869746418','101.91405451132','4028.5995506656','2022-04-20 15:52:47','2022-04-20 15:52:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13338','424','384','42.56213','-2.96946','789','2.3543099099819','-0.93523702515326','63.047575052891','94.54','3870.8010960674','101.65739912501','4028.7562194955','2022-04-20 15:52:48','2022-04-20 15:52:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13339','424','385','42.56213','-2.96944','789','2.3628565807388','-0.56672349007178','63.071782533863','94.495','3871.1143260026','101.49084599595','4028.9137563625','2022-04-20 15:52:49','2022-04-20 15:52:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13340','424','386','42.56214','-2.96941','788','2.3513772555435','-0.074947013274693','63.371282988637','94.435','3871.4278221968','101.41431737601','4029.0715926226','2022-04-20 15:52:50','2022-04-20 15:52:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13341','424','387','42.56215','-2.96938','788','2.351688783285','0.29410080805067','63.109754244154','94.39','3871.7410999403','101.43069017305','4029.2277916205','2022-04-20 15:52:51','2022-04-20 15:52:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13342','424','388','42.56216','-2.96936','789','2.3622496296321','0.66341287166462','63.062601614781','94.345','3872.0549568679','101.53753276208','4029.3846063691','2022-04-20 15:52:52','2022-04-20 15:52:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13343','424','389','42.56217','-2.96933','789','2.3623226655303','0.49579442324514','63.846613151481','94.345','3872.3683365512','101.66816625119','4029.5419499366','2022-04-20 15:52:53','2022-04-20 15:52:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13344','424','390','42.56218','-2.96931','790','2.3624093294179','0.37008332917887','63.693573848849','94.345','3872.683767187','101.76708024362','4029.6985326477','2022-04-20 15:52:54','2022-04-20 15:52:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13345','424','391','42.56219','-2.96928','790','2.3648719340289','0.24427761008605','62.983688189029','94.345','3872.9928432146','101.83359705044','4029.8528992444','2022-04-20 15:52:55','2022-04-20 15:52:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13346','424','392','42.5622','-2.96926','790','2.3535133841171','0.076385593840894','63.341029594836','94.345','3873.3033420929','101.87056792248','4030.010007822','2022-04-20 15:52:56','2022-04-20 15:52:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13347','424','393','42.56221','-2.96923','790','2.3608420115325','-0.049597734252343','63.746766861352','94.345','3873.6086256327','101.87627595637','4030.1596166282','2022-04-20 15:52:57','2022-04-20 15:52:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13348','424','394','42.56222','-2.96921','790','2.3572274290378','-0.17566757031461','63.127456836126','94.345','3873.9086681089','101.85236587724','4030.3082634935','2022-04-20 15:52:58','2022-04-20 15:52:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13349','424','395','42.56223','-2.96918','790','2.3548961798051','-0.34382220692724','63.335974930397','94.345','3874.2085452436','101.79942226154','4030.4586403105','2022-04-20 15:52:59','2022-04-20 15:52:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13350','424','396','42.56224','-2.96916','790','2.3576112402025','-0.47006434910687','63.560538862585','94.345','3874.5135012498','101.71651898083','4030.6090911154','2022-04-20 15:53:00','2022-04-20 15:53:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13351','424','397','42.56225','-2.96913','789','2.3465788111727','-0.59638856593901','63.094262126229','94.345','3874.8091350734','101.60551544114','4030.7559212566','2022-04-20 15:53:01','2022-04-20 15:53:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13352','424','398','42.56226','-2.96911','788','2.3629466409172','-0.7648063921793','63.337046210533','94.345','3875.1149038749','101.46246243758','4030.906617523','2022-04-20 15:53:02','2022-04-20 15:53:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13353','424','399','42.56227','-2.96908','788','2.3583528469078','-0.89129798999135','63.301738455017','94.345','3875.408855771','101.29415193723','4031.0530564104','2022-04-20 15:53:03','2022-04-20 15:53:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13354','424','400','42.56227','-2.96906','787','2.3497873486305','-1.0179007574442','63.299940355261','94.345','3875.7155346513','101.08777979909','4031.2053907762','2022-04-20 15:53:04','2022-04-20 15:53:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13355','424','401','42.56228','-2.96903','786','2.3577348768602','-1.1866113197388','63.634705573794','94.345','3876.0294010102','100.8445014679','4031.3626398378','2022-04-20 15:53:05','2022-04-20 15:53:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13356','424','402','42.56229','-2.96901','784','2.3500301307298','-1.313410972766','63.499278922764','94.345','3876.3419265526','100.57072075159','4031.5196672871','2022-04-20 15:53:06','2022-04-20 15:53:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13357','424','403','42.5623','-2.96898','783','2.3614399283001','-1.4402962221063','63.794767764214','94.345','3876.653874314','100.26763404995','4031.675037427','2022-04-20 15:53:07','2022-04-20 15:53:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13358','424','404','42.56231','-2.96895','781','2.3650964679707','-1.6092807462987','63.227639739056','94.345','3876.9676851827','99.930558181499','4031.8322266767','2022-04-20 15:53:08','2022-04-20 15:53:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13359','424','405','42.56232','-2.96893','780','2.3599697867133','-1.7363588035386','63.030279328448','94.345','3877.2819806975','99.5614589931','4031.9896601217','2022-04-20 15:53:09','2022-04-20 15:53:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13360','424','406','42.56233','-2.9689','778','2.3637076866176','-1.8635274533403','63.845568762006','94.345','3877.5962679027','99.16134323172','4032.1463808842','2022-04-20 15:53:10','2022-04-20 15:53:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13361','424','407','42.56234','-2.96888','776','2.3524271453636','-2.0327868915595','63.641994305889','94.345','3877.9103603992','98.730143841441','4032.3026091238','2022-04-20 15:53:11','2022-04-20 15:53:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13362','424','408','42.56235','-2.96885','774','2.3500635208577','-2.1601469184456','63.017198107807','94.345','3878.2254937868','98.264505467778','4032.4614036821','2022-04-20 15:53:12','2022-04-20 15:53:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13363','424','409','42.56236','-2.96883','772','2.3613299621497','-2.2875838260293','63.629338816611','94.345','3878.5369838312','97.772545112317','4032.6186253933','2022-04-20 15:53:13','2022-04-20 15:53:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13364','424','410','42.56237','-2.9688','769','2.359525005123','-2.457118714254','63.244689872166','94.345','3878.8507755931','97.247038694796','4032.7766905611','2022-04-20 15:53:14','2022-04-20 15:53:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13365','424','411','42.56238','-2.96877','767','2.3606574854818','-2.5847474930206','63.851606381229','94.345','3879.1645641421','96.689386560397','4032.933633216','2022-04-20 15:53:15','2022-04-20 15:53:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13366','424','412','42.56239','-2.96875','764','2.3531495973604','-2.7124672220756','63.665164281817','94.345','3879.4790024369','96.100595376589','4033.0914736044','2022-04-20 15:53:16','2022-04-20 15:53:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13367','424','413','42.5624','-2.96872','762','2.3510968992973','-2.5522464874158','63.09680902626','94.315','3879.7932836796','95.491420493547','4033.2467959296','2022-04-20 15:53:17','2022-04-20 15:53:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13368','424','414','42.56241','-2.9687','759','2.3592701864894','-2.1847926786216','63.127894028012','94.27','3880.1049415956','94.962044224784','4033.4036938838','2022-04-20 15:53:18','2022-04-20 15:53:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13369','424','415','42.56242','-2.96867','757','2.3620899623382','-1.8170865032182','63.230449312698','94.225','3880.4189800269','94.519071819547','4033.5602741755','2022-04-20 15:53:19','2022-04-20 15:53:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13370','424','416','42.56243','-2.96864','756','2.3654486833962','-1.326113201839','63.602795244763','94.165','3880.7328237891','94.167556506962','4033.7170751837','2022-04-20 15:53:20','2022-04-20 15:53:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13371','424','417','42.56244','-2.96862','754','2.3645319578343','-0.95787522138648','63.480791208145','94.12','3881.0473009603','93.906660530275','4033.8733722917','2022-04-20 15:53:21','2022-04-20 15:53:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13372','424','418','42.56245','-2.96859','754','2.3525211586714','-0.7543994191511','63.027123747204','94.09','3881.362936915','93.727188641098','4034.0292575307','2022-04-20 15:53:22','2022-04-20 15:53:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13373','424','419','42.56246','-2.96857','753','2.3616836540938','-0.92293555212903','63.731845445044','94.09','3881.6744572232','93.543630440563','4034.1874094547','2022-04-20 15:53:23','2022-04-20 15:53:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13374','424','420','42.56247','-2.96854','752','2.3610616904151','-1.0495612444914','63.279386786865','94.09','3881.9873672975','93.32940940052','4034.3427115722','2022-04-20 15:53:24','2022-04-20 15:53:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13375','424','421','42.56247','-2.96852','751','2.3576632153529','-1.1762837781548','63.654312595279','94.09','3882.3015862038','93.082032379274','4034.5012395231','2022-04-20 15:53:25','2022-04-20 15:53:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13376','424','422','42.56248','-2.96849','749','2.3633139864353','-1.3450887580502','63.151931177837','94.09','3882.6131918683','92.806427879724','4034.6561946419','2022-04-20 15:53:26','2022-04-20 15:53:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13377','424','423','42.56249','-2.96846','748','2.355942964472','-1.4719721293602','63.230413613674','94.09','3882.9202783419','92.503984167556','4034.810275795','2022-04-20 15:53:27','2022-04-20 15:53:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13378','424','424','42.5625','-2.96844','747','2.3611405160325','-1.5989541519687','63.699738075143','94.09','3883.2289798259','92.167764777355','4034.9647435689','2022-04-20 15:53:28','2022-04-20 15:53:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13379','424','425','42.56251','-2.96842','745','2.3650777655565','-1.7679375798762','63.143842467128','94.09','3883.513379472','91.831064248798','4035.1062793308','2022-04-20 15:53:29','2022-04-20 15:53:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13380','424','426','42.56252','-2.96839','743','2.3481465638416','-1.8951188306015','63.087399488247','94.09','3883.827060696','91.42663425391','4035.2638428763','2022-04-20 15:53:30','2022-04-20 15:53:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13381','424','427','42.56253','-2.96836','741','2.3499825326237','-2.022384447607','63.10428115638','94.09','3884.1389937307','90.99331940542','4035.4201249747','2022-04-20 15:53:31','2022-04-20 15:53:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13382','424','428','42.56254','-2.96834','739','2.3650342854871','-2.1917472093722','63.261371989001','94.09','3884.4530471745','90.52674467922','4035.5778392759','2022-04-20 15:53:32','2022-04-20 15:53:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13383','424','429','42.56255','-2.96831','737','2.3645496285274','-2.3192037498286','63.349590415597','94.09','3884.7674630445','90.028062530967','4035.735877795','2022-04-20 15:53:33','2022-04-20 15:53:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13384','424','430','42.56256','-2.96829','735','2.3640835483961','-2.4467509923223','63.48575678749','94.09','3885.0810442863','89.498326328137','4035.8951767212','2022-04-20 15:53:34','2022-04-20 15:53:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13385','424','431','42.56257','-2.96826','732','2.3477055957293','-2.6163894055684','63.40750290026','94.09','3885.3947715112','88.937375594712','4036.052128964','2022-04-20 15:53:35','2022-04-20 15:53:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13386','424','432','42.56258','-2.96824','729','2.3540898775703','-2.7441217765578','63.601368132294','94.09','3885.7087252495','88.344256136366','4036.2087391693','2022-04-20 15:53:36','2022-04-20 15:53:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13387','424','433','42.56259','-2.96821','727','2.3559542891102','-2.5418440624245','63.164812576379','94.06','3886.023099156','87.754589565721','4036.3643375133','2022-04-20 15:53:37','2022-04-20 15:53:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13388','424','434','42.5626','-2.96818','724','2.3589260043251','-2.0513434852499','62.982738352355','94','3886.3355275183','87.241225592595','4036.5214997178','2022-04-20 15:53:38','2022-04-20 15:53:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13389','424','435','42.56261','-2.96816','722','2.3622560183727','-1.6835804940165','63.266213916107','93.955','3886.648635419','86.817705472425','4036.6800113041','2022-04-20 15:53:39','2022-04-20 15:53:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13390','424','436','42.56262','-2.96813','721','2.3650311526719','-1.3155546509002','63.191219684655','93.91','3886.9623778617','86.484179104964','4036.838381845','2022-04-20 15:53:40','2022-04-20 15:53:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13391','424','437','42.56263','-2.96811','720','2.3540470001585','-0.8242653837889','63.517237317874','93.85','3887.2765873353','86.240842366709','4036.9947913128','2022-04-20 15:53:41','2022-04-20 15:53:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13392','424','438','42.56264','-2.96808','719','2.3605449211114','-0.78575837331558','63.088296318666','93.835','3887.5906342381','86.072055378917','4037.1513229283','2022-04-20 15:53:42','2022-04-20 15:53:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13393','424','439','42.56265','-2.96806','718','2.3498575890579','-0.91229542310408','63.103272477087','93.835','3887.8992104928','85.888183285925','4037.30409045','2022-04-20 15:53:43','2022-04-20 15:53:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13394','424','440','42.56265','-2.96803','717','2.3577157136724','-1.0809121767185','63.239033682726','93.835','3888.2077689945','85.677022644252','4037.4558841316','2022-04-20 15:53:44','2022-04-20 15:53:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13395','424','441','42.56266','-2.968','716','2.362424859562','-1.207646890563','63.225461974925','93.835','3888.5210436898','85.425475440951','4037.6136819625','2022-04-20 15:53:45','2022-04-20 15:53:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13396','424','442','42.56267','-2.96798','715','2.3484159674636','-1.3344721103192','63.039245771484','93.835','3888.834841267','85.142941331425','4037.7717577793','2022-04-20 15:53:46','2022-04-20 15:53:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13397','424','443','42.56268','-2.96795','714','2.3613801783393','-1.5033877589982','63.097759211796','93.835','3889.1479710369','84.829446674781','4037.9302501495','2022-04-20 15:53:47','2022-04-20 15:53:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13398','424','444','42.56269','-2.96793','712','2.3569730383934','-1.6303917389393','63.298389663319','93.835','3889.4605227698','84.485709656269','4038.086585788','2022-04-20 15:53:48','2022-04-20 15:53:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13399','424','445','42.5627','-2.9679','710','2.5117310822097','-1.7574859871163','56.575174885007','93.835','3889.7729098797','84.111067105662','4038.2596338907','2022-04-20 15:53:49','2022-04-20 15:53:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13400','424','446','42.56272','-2.96788','709','2.6577424033618','-1.9266288208012','50.171201029798','93.835','3890.0716923235','83.719790121513','4038.4751684707','2022-04-20 15:53:50','2022-04-20 15:53:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13401','424','447','42.56273','-2.96785','707','2.820304313978','-2.0538999503967','43.041327693782','93.835','3890.3665222178','83.284587903393','4038.7534560209','2022-04-20 15:53:51','2022-04-20 15:53:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13402','424','448','42.56275','-2.96783','705','3.0518295848757','-2.1812608346121','32.886760431802','93.835','3890.6349697913','82.818656002153','4039.0900338518','2022-04-20 15:53:52','2022-04-20 15:53:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13403','424','449','42.56278','-2.96781','702','3.236941050964','-2.3506970857814','24.767876363256','93.835','3890.8608013939','82.326920386189','4039.4856956288','2022-04-20 15:53:53','2022-04-20 15:53:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13404','424','450','42.5628','-2.9678','700','3.4227865744946','-2.4781725948154','16.616796951008','93.835','3891.0262212269','81.821743882755','4039.9237181796','2022-04-20 15:53:54','2022-04-20 15:53:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13405','424','451','42.56284','-2.96779','698','3.7022267658352','-2.605806858281','4.3607084140381','93.835','3891.1275827041','81.262213927884','4040.4360960851','2022-04-20 15:53:55','2022-04-20 15:53:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13406','424','452','42.56287','-2.96779','695','3.9259925761676','-2.7755484513926','354.54646669804','93.835','3891.1325194894','80.665937051098','4040.9997796466','2022-04-20 15:53:56','2022-04-20 15:53:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13407','424','453','42.56291','-2.9678','692','4.1573591414889','-2.5733312909598','344.39886017276','93.805','3891.022800273','80.055538444276','4041.5905831439','2022-04-20 15:53:57','2022-04-20 15:53:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13408','424','454','42.56294','-2.96781','690','4.2048860085425','-2.2058829947066','342.29092571962','93.76','3890.8315589221','79.524274822631','4042.187526989','2022-04-20 15:53:58','2022-04-20 15:53:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13409','424','455','42.56298','-2.96783','688','4.2123394104715','-1.7151720491667','342.18685307675','93.7','3890.6382335387','79.082935589974','4042.7844321664','2022-04-20 15:53:59','2022-04-20 15:53:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13410','424','456','42.56301','-2.96785','686','4.2106650097197','-1.3471902950033','341.98784162571','93.655','3890.4436197174','78.734314294203','4043.3810561686','2022-04-20 15:54:00','2022-04-20 15:54:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13411','424','457','42.56305','-2.96786','685','4.2197370874544','-0.97894554675488','341.59538883056','93.61','3890.2498436828','78.475735437498','4043.9775166159','2022-04-20 15:54:01','2022-04-20 15:54:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13412','424','458','42.56309','-2.96788','684','4.2080276482886','-0.48743803145922','341.70189325645','93.55','3890.0542737744','78.307121287944','4044.5747956766','2022-04-20 15:54:02','2022-04-20 15:54:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13413','424','459','42.56312','-2.96789','684','4.2078341135009','-0.61378539187888','342.17144660979','93.55','3889.8624663187','78.188193976635','4045.1689814492','2022-04-20 15:54:03','2022-04-20 15:54:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13414','424','460','42.56316','-2.96791','683','4.2132578806245','-0.74022019284172','341.91444672821','93.55','3889.671552712','78.039329262811','4045.7600511968','2022-04-20 15:54:04','2022-04-20 15:54:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13415','424','461','42.5632','-2.96793','682','4.2096550504568','-0.90874997570721','341.92410206666','93.55','3889.4761412206','77.857945178141','4046.3558103214','2022-04-20 15:54:05','2022-04-20 15:54:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13416','424','462','42.56323','-2.96794','681','4.2049827638202','-1.0353728598934','341.99735354695','93.55','3889.2825112247','77.644685585701','4046.9523429381','2022-04-20 15:54:06','2022-04-20 15:54:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13417','424','463','42.56327','-2.96796','680','4.2177271234805','-1.162086313785','342.05832220112','93.55','3889.0871225065','77.400417245759','4047.5498746999','2022-04-20 15:54:07','2022-04-20 15:54:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13418','424','464','42.5633','-2.96797','679','4.211966164061','-1.3308862120802','341.61023846562','93.55','3888.8915801983','77.126552556014','4048.1426001586','2022-04-20 15:54:08','2022-04-20 15:54:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13419','424','465','42.56334','-2.96799','678','4.2145585235206','-1.4577788387658','341.57661945418','93.55','3888.6961801363','76.820940040243','4048.7389897343','2022-04-20 15:54:09','2022-04-20 15:54:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13420','424','466','42.56338','-2.96801','676','4.2038271130032','-1.5847666706334','342.08805830528','93.55','3888.5027952644','76.482731708541','4049.3357424026','2022-04-20 15:54:10','2022-04-20 15:54:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13421','424','467','42.56341','-2.96802','674','4.2042496011101','-1.7538450370056','341.858390805','93.55','3888.3085353413','76.113526681143','4049.9318364635','2022-04-20 15:54:11','2022-04-20 15:54:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13422','424','468','42.56345','-2.96804','673','4.2041747452671','-1.8810168610364','341.63614734186','93.55','3888.1145635816','75.712324145028','4050.5283074667','2022-04-20 15:54:12','2022-04-20 15:54:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13423','424','469','42.56349','-2.96805','671','4.2135170029316','-2.0082796113419','341.95549961433','93.55','3887.9191866578','75.279990781214','4051.1242361357','2022-04-20 15:54:13','2022-04-20 15:54:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13424','424','470','42.56352','-2.96807','669','4.2219310935099','-2.177619889144','341.98384666337','93.55','3887.7233503925','74.821113988126','4051.7152062856','2022-04-20 15:54:14','2022-04-20 15:54:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13425','424','471','42.56356','-2.96809','666','4.2162562608365','-2.3050307883226','342.24729665545','93.55','3887.5320701501','74.338058244464','4052.297703158','2022-04-20 15:54:15','2022-04-20 15:54:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13426','424','472','42.56359','-2.9681','664','4.2231783066084','-1.9373731686939','342.18675523953','93.505','3887.3408109226','73.87846158555','4052.8799254191','2022-04-20 15:54:16','2022-04-20 15:54:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13427','424','473','42.56363','-2.96812','663','4.2124322363235','-1.7764851144777','341.5309357652','93.475','3887.1517543195','73.497759827654','4053.4592875982','2022-04-20 15:54:17','2022-04-20 15:54:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13428','424','474','42.56366','-2.96813','661','4.2129011084387','-1.903624381715','342.03873995071','93.475','3886.9635833782','73.107703903805','4054.0317400432','2022-04-20 15:54:18','2022-04-20 15:54:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13429','424','475','42.5637','-2.96815','659','4.2059245868531','-2.0308508403606','341.56712843511','93.475','3886.7790586594','72.687795874849','4054.60816296','2022-04-20 15:54:19','2022-04-20 15:54:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13430','424','476','42.56373','-2.96816','657','4.2134785882423','-2.2001646817725','342.02342358533','93.475','3886.5930466514','72.237970224712','4055.1807576887','2022-04-20 15:54:20','2022-04-20 15:54:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13431','424','477','42.56377','-2.96818','655','4.2098575783925','-2.3275762453276','342.34326463242','93.475','3886.4085308967','71.754687015543','4055.7578783036','2022-04-20 15:54:21','2022-04-20 15:54:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13432','424','478','42.5638','-2.96819','652','4.2067036457994','-2.455129199073','341.61861246266','93.475','3886.2165708057','71.222995426417','4056.3551948584','2022-04-20 15:54:22','2022-04-20 15:54:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13433','424','479','42.56384','-2.96821','650','4.2197657436481','-2.129660920868','341.50576624026','93.43','3886.0226965049','70.698573113303','4056.9459592642','2022-04-20 15:54:23','2022-04-20 15:54:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13434','424','480','42.56388','-2.96823','648','4.2097687472883','-1.7619492009516','342.09654896166','93.385','3885.8256500414','70.257499007325','4057.5423095058','2022-04-20 15:54:24','2022-04-20 15:54:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13435','424','481','42.56391','-2.96824','646','4.2047250429101','-1.3939738634474','341.53123094937','93.34','3885.6307417046','69.906680811793','4058.1395753439','2022-04-20 15:54:25','2022-04-20 15:54:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13436','424','482','42.56395','-2.96826','645','4.2193788073117','-0.90273633347712','342.27173349961','93.28','3885.4350615199','69.64563060152','4058.7356128726','2022-04-20 15:54:26','2022-04-20 15:54:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13437','424','483','42.56398','-2.96827','644','4.2202619893835','-1.0293554478413','341.51935311014','93.28','3885.2409412074','69.433661699614','4059.3329632716','2022-04-20 15:54:27','2022-04-20 15:54:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13438','424','484','42.56402','-2.96829','643','4.211912871856','-1.1560649930634','341.80623024396','93.28','3885.0443168197','69.190731587981','4059.9288552579','2022-04-20 15:54:28','2022-04-20 15:54:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13439','424','485','42.56406','-2.96831','642','4.2052176276025','-1.3248647555835','341.58820877364','93.28','3884.8486618357','68.916913384119','4060.5252714523','2022-04-20 15:54:29','2022-04-20 15:54:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13440','424','486','42.56409','-2.96832','641','4.2122141750623','-1.4517579312618','341.72354032352','93.28','3884.6506172087','68.611112907337','4061.1209997186','2022-04-20 15:54:30','2022-04-20 15:54:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13441','424','487','42.56413','-2.96834','639','4.2160652303018','-1.5787418521894','341.68359271198','93.28','3884.4550716323','68.274243581306','4061.7183542275','2022-04-20 15:54:31','2022-04-20 15:54:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13442','424','488','42.56417','-2.96835','637','4.2198314926534','-1.7478161686384','341.73671379378','93.28','3884.2590130702','67.906425143902','4062.3148958956','2022-04-20 15:54:32','2022-04-20 15:54:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13443','424','489','42.5642','-2.96837','636','4.2090078252493','-1.8749839401596','341.55519730515','93.28','3884.0625075195','67.506610083288','4062.9110662625','2022-04-20 15:54:33','2022-04-20 15:54:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13444','424','490','42.56424','-2.96839','634','4.2078302834177','-2.0022427717217','342.30355405432','93.28','3883.865100687','67.075618396833','4063.5080711682','2022-04-20 15:54:34','2022-04-20 15:54:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13445','424','491','42.56427','-2.9684','632','4.2058049221156','-1.8415466122546','342.02721516007','93.25','3883.6712676828','66.629216791536','4064.0993386633','2022-04-20 15:54:35','2022-04-20 15:54:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13446','424','492','42.56431','-2.96842','630','4.2110958115519','-1.4736473454691','341.9351605426','93.205','3883.475838065','66.252353930178','4064.6957875823','2022-04-20 15:54:36','2022-04-20 15:54:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13447','424','493','42.56435','-2.96843','629','4.221957265297','-1.1054847386469','341.59918457326','93.16','3883.2818062668','65.96565195289','4065.2933749327','2022-04-20 15:54:37','2022-04-20 15:54:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13448','424','494','42.56438','-2.96845','628','4.2130384660935','-1.2742517826791','341.58670121736','93.16','3883.0857998946','65.703035721346','4065.8910335338','2022-04-20 15:54:38','2022-04-20 15:54:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13449','424','495','42.56442','-2.96847','626','4.2046558394357','-1.4011120821473','341.56887165644','93.16','3882.8893516269','65.408491216887','4066.4873175111','2022-04-20 15:54:39','2022-04-20 15:54:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13450','424','496','42.56446','-2.96848','625','4.2223143085349','-1.5280631055633','341.89282555198','93.16','3882.6952832814','65.08288515626','4067.0844715356','2022-04-20 15:54:40','2022-04-20 15:54:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13451','424','497','42.56449','-2.9685','623','4.2181372480234','-1.6970995386715','342.30508711931','93.16','3882.5019264693','64.72803700451','4067.6815846938','2022-04-20 15:54:41','2022-04-20 15:54:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13452','424','498','42.56453','-2.96851','621','4.2128602286098','-1.8242234758808','341.74640086785','93.16','3882.3112487381','64.343229689651','4068.2733055517','2022-04-20 15:54:42','2022-04-20 15:54:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13453','424','499','42.56456','-2.96853','620','4.2194862956522','-1.9514493354819','342.10955883469','93.16','3882.1149103331','63.923526758171','4068.8701210799','2022-04-20 15:54:43','2022-04-20 15:54:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13454','424','500','42.5646','-2.96855','617','4.2097673925968','-2.1207595442252','341.90745547561','93.16','3881.9208471705','63.47494484073','4069.465064627','2022-04-20 15:54:44','2022-04-20 15:54:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13455','424','501','42.56464','-2.96856','615','4.2163321181479','-2.2481555119254','341.55235251596','93.16','3881.7261550674','62.997001252845','4070.0558273776','2022-04-20 15:54:45','2022-04-20 15:54:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13456','424','502','42.56467','-2.96858','613','4.2149719604217','-2.2105757790711','342.27627395463','93.145','3881.5373613924','62.510738157177','4070.6279701846','2022-04-20 15:54:46','2022-04-20 15:54:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13457','424','503','42.5647','-2.96859','611','4.2132182107106','-1.7197669586363','342.26832172812','93.085','3881.3601944944','62.102908781787','4071.1779976993','2022-04-20 15:54:47','2022-04-20 15:54:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13458','424','504','42.56474','-2.96861','610','4.2199791526788','-1.351788189143','341.84610196266','93.04','3881.165590985','61.753265611411','4071.7754329821','2022-04-20 15:54:48','2022-04-20 15:54:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13459','424','505','42.56478','-2.96862','609','4.2034991613519','-0.98354642750219','341.92044208451','92.995','3880.9746301877','61.49366421677','4072.3730863323','2022-04-20 15:54:49','2022-04-20 15:54:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13460','424','506','42.56481','-2.96864','608','4.2222665680098','-1.1522342652999','341.90534784734','92.995','3880.7805594445','61.258166171325','4072.9695872321','2022-04-20 15:54:50','2022-04-20 15:54:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13461','424','507','42.56485','-2.96866','606','4.2124924766692','-1.2790075473828','341.51712878169','92.995','3880.5872585922','60.99341419094','4073.5601822231','2022-04-20 15:54:51','2022-04-20 15:54:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13462','424','508','42.56489','-2.96867','605','4.2125223415366','-1.4058792565922','342.37922622476','92.995','3880.3919187557','60.694963283326','4074.1565214591','2022-04-20 15:54:52','2022-04-20 15:54:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13463','424','509','42.56492','-2.96869','604','4.2101095472364','-1.5748414248507','342.38746186123','92.995','3880.1987219742','60.365541514096','4074.7544390462','2022-04-20 15:54:53','2022-04-20 15:54:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13464','424','510','42.56496','-2.9687','602','4.2199229583514','-1.7018971117152','341.59044398722','92.995','3880.0037170948','60.004101369261','4075.3513141321','2022-04-20 15:54:54','2022-04-20 15:54:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13465','424','511','42.56499','-2.96872','600','4.2122176917614','-1.8290433766374','341.75669809499','92.995','3879.8090834443','59.611649617355','4075.9486619374','2022-04-20 15:54:55','2022-04-20 15:54:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13466','424','512','42.56503','-2.96874','598','4.2210699893892','-1.9982804153298','342.16131790656','92.995','3879.6130050788','59.188119251327','4076.5456372625','2022-04-20 15:54:56','2022-04-20 15:54:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13467','424','513','42.56507','-2.96875','596','4.2080083032497','-2.1256110147481','342.10870464674','92.995','3879.4200620531','58.732556089018','4077.1434540007','2022-04-20 15:54:57','2022-04-20 15:54:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13468','424','514','42.5651','-2.96877','594','4.2233895036933','-2.253025601396','342.13786345054','92.995','3879.2272805229','58.248237850275','4077.7416680155','2022-04-20 15:54:58','2022-04-20 15:54:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13469','424','515','42.56514','-2.96878','592','4.2094903735599','-1.7623306384617','342.28203333284','92.935','3879.0376530972','57.801426582788','4078.3341026102','2022-04-20 15:54:59','2022-04-20 15:54:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13470','424','516','42.56518','-2.9688','590','4.2057004423521','-1.394379916158','342.19086180296','92.89','3878.8455493053','57.44218077303','4078.9311729913','2022-04-20 15:55:00','2022-04-20 15:55:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13471','424','517','42.56521','-2.96882','589','4.2092730354815','-1.0261662197954','342.16337469325','92.845','3878.6507172599','57.172970545921','4079.5279401924','2022-04-20 15:55:01','2022-04-20 15:55:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13472','424','518','42.56525','-2.96883','588','4.2116130022763','-0.53468937723344','342.13051968792','92.785','3878.4554908714','56.993854837909','4080.1248775022','2022-04-20 15:55:02','2022-04-20 15:55:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13473','424','519','42.56529','-2.96885','588','4.2139245786612','-0.66106915021091','342.32276066917','92.785','3878.2630613587','56.863830296935','4080.7224492944','2022-04-20 15:55:03','2022-04-20 15:55:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13474','424','520','42.56532','-2.96886','587','4.2157838208819','-0.78753691449262','341.72595796943','92.785','3878.071293377','56.703679786966','4081.317079274','2022-04-20 15:55:04','2022-04-20 15:55:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13475','424','521','42.56536','-2.96888','586','4.2180439330207','-0.95609487379271','342.22066180432','92.785','3877.8754702323','56.512648812726','4081.9105193687','2022-04-20 15:55:05','2022-04-20 15:55:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13476','424','522','42.56539','-2.9689','585','4.2137754736493','-1.0827352680655','341.90017670419','92.785','3877.6841886127','56.293394215099','4082.4988754164','2022-04-20 15:55:06','2022-04-20 15:55:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13477','424','523','42.56543','-2.96891','584','4.2043704199859','-1.2094683881522','342.22967466312','92.785','3877.4904987695','56.042392673648','4083.0890135759','2022-04-20 15:55:07','2022-04-20 15:55:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13478','424','524','42.56546','-2.96893','583','4.2053392604958','-1.3782696312451','341.50556495666','92.785','3877.3043295725','55.768067559569','4083.6618497896','2022-04-20 15:55:08','2022-04-20 15:55:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13479','424','525','42.5655','-2.96894','581','4.2220859942385','-1.5051744257418','342.29796827057','92.785','3877.1134589325','55.458289096942','4084.2432734144','2022-04-20 15:55:09','2022-04-20 15:55:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13480','424','526','42.56553','-2.96896','580','4.2086854030749','-1.632141552003','13.995470844745','92.785','3876.9264765613','55.127169834554','4084.8095926292','2022-04-20 15:55:10','2022-04-20 15:55:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13481','424','527','42.56557','-2.96895','578','4.0514894167882','-1.8012453886018','11.546115660684','92.785','3877.0637328736','54.749244453913','4085.4086113337','2022-04-20 15:55:11','2022-04-20 15:55:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13482','424','528','42.5656','-2.96894','577','3.9019574655563','-1.4332676763137','9.2161779276382','92.74','3877.1660528215','54.399239323557','4085.9649872743','2022-04-20 15:55:12','2022-04-20 15:55:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13483','424','529','42.56564','-2.96893','575','3.7425914809615','-1.0650788404007','6.7330108331644','92.695','3877.245719318','54.121517515184','4086.5294395291','2022-04-20 15:55:13','2022-04-20 15:55:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13484','424','530','42.56567','-2.96893','575','3.6593950657656','-0.90365941982226','5.4366827546353','92.665','3877.3055421938','53.922741990693','4087.0788886424','2022-04-20 15:55:14','2022-04-20 15:55:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13485','424','531','42.5657','-2.96892','574','3.5733890242623','-1.0302757886653','4.0965763779211','92.665','3877.3503353863','53.71171308491','4087.613396335','2022-04-20 15:55:15','2022-04-20 15:55:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13486','424','532','42.56574','-2.96892','573','3.4409050515847','-1.1569823116609','2.032272365151','92.665','3877.379674168','53.469817706229','4088.1339132936','2022-04-20 15:55:16','2022-04-20 15:55:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13487','424','533','42.56577','-2.96892','571','3.3269724687194','-1.3257790475864','0.25702753182708','92.665','3877.3915837865','53.197035730862','4088.6374319454','2022-04-20 15:55:17','2022-04-20 15:55:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13488','424','534','42.5658','-2.96892','570','3.2012778208384','-1.4526728170715','358.29851163922','92.665','3877.3857119787','52.89103194984','4089.1239824108','2022-04-20 15:55:18','2022-04-20 15:55:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13489','424','535','42.56582','-2.96892','568','3.0153259869487','-1.5796574686792','355.40109613211','92.665','3877.3618091595','52.553912457641','4089.588368059','2022-04-20 15:55:19','2022-04-20 15:55:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13490','424','536','42.56585','-2.96893','567','2.8742184130597','-1.2536362087524','353.20242315209','92.62','3877.3197912993','52.218816923478','4090.0272272518','2022-04-20 15:55:20','2022-04-20 15:55:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13491','424','537','42.56588','-2.96893','566','2.7655988544366','-0.88535505903627','351.50996340621','92.575','3877.263807983','51.972700997016','4090.4434361329','2022-04-20 15:55:21','2022-04-20 15:55:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13492','424','538','42.5659','-2.96894','565','2.6739779350483','-0.51681072054974','350.08236859814','92.53','3877.1989685199','51.816694164925','4090.8434322787','2022-04-20 15:55:22','2022-04-20 15:55:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13493','424','539','42.56592','-2.96894','565','2.6452237221615','-0.025002621510559','349.63433374648','92.47','3877.1292647057','51.750992190789','4091.2337237716','2022-04-20 15:55:23','2022-04-20 15:55:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13494','424','540','42.56595','-2.96895','565','2.6506402595268','0.17906588468232','349.71873172755','92.44','3877.0583690454','51.774446956691','4091.621533809','2022-04-20 15:55:24','2022-04-20 15:55:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13495','424','541','42.56597','-2.96895','565','2.6666015265856','0.053140972530906','349.96743281171','92.44','3876.9885879833','51.800155112945','4092.0097215805','2022-04-20 15:55:25','2022-04-20 15:55:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13496','424','542','42.566','-2.96896','565','2.6649722826388','-0.11487361116855','349.94204668576','92.44','3876.9193741791','51.79516202776','4092.4010351321','2022-04-20 15:55:26','2022-04-20 15:55:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13497','424','543','42.56602','-2.96896','565','2.6516682856517','-0.24098082506657','349.73474995536','92.44','3876.8495569769','51.758454734974','4092.7910998224','2022-04-20 15:55:27','2022-04-20 15:55:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13498','424','544','42.56604','-2.96897','565','2.6157161782857','-0.36717813738435','349.17456083962','92.44','3876.7780405942','51.690900050807','4093.1775886005','2022-04-20 15:55:28','2022-04-20 15:55:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13499','424','545','42.56607','-2.96898','564','2.575072321473','-0.5354641413623','348.54126705308','92.44','3876.7040870287','51.592979613716','4093.5560572391','2022-04-20 15:55:29','2022-04-20 15:55:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13500','424','546','42.56609','-2.96898','563','2.5229854295002','-0.66184455399363','347.72967318298','92.44','3876.6260898268','51.46273607164','4093.9279904802','2022-04-20 15:55:30','2022-04-20 15:55:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13501','424','547','42.56611','-2.96899','563','2.434948125999','-0.78831524250367','346.3579166209','92.44','3876.5437314061','51.30158438079','4094.289143967','2022-04-20 15:55:31','2022-04-20 15:55:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13502','424','548','42.56613','-2.969','562','2.3820220562717','-0.29667701726598','345.53324707099','92.38','3876.4572500532','51.177721967727','4094.6326856331','2022-04-20 15:55:32','2022-04-20 15:55:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13503','424','549','42.56615','-2.969','562','2.3624656465758','0.072227028424353','345.22852813635','92.335','3876.3683568163','51.144869669618','4094.9709591242','2022-04-20 15:55:33','2022-04-20 15:55:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13504','424','550','42.56617','-2.96901','562','2.3891778514681','0.44139250495133','345.6447453635','92.29','3876.2798374532','51.201524594372','4095.3090137014','2022-04-20 15:55:34','2022-04-20 15:55:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13505','424','551','42.56619','-2.96902','563','2.4451902254834','0.60378444195604','346.51750427997','92.26','3876.1936399403','51.335713786737','4095.6521505735','2022-04-20 15:55:35','2022-04-20 15:55:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13506','424','552','42.56621','-2.96902','563','2.4970318168014','0.47813632955869','347.32527598868','92.26','3876.1115983263','51.456191089558','4096.0037416687','2022-04-20 15:55:36','2022-04-20 15:55:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13507','424','553','42.56624','-2.96903','564','2.5491328443106','0.35240018623303','348.13709011218','92.26','3876.0328457393','51.546528857116','4096.3636418658','2022-04-20 15:55:37','2022-04-20 15:55:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13508','424','554','42.56626','-2.96904','564','2.5740003657176','0.18456971490979','348.52456433408','92.26','3875.958973147','51.604571134176','4096.718443357','2022-04-20 15:55:38','2022-04-20 15:55:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13509','424','555','42.56628','-2.96904','564','2.5875289495967','0.058652648015317','348.7353604736','92.26','3875.8869879044','51.632965305477','4097.0767123947','2022-04-20 15:55:39','2022-04-20 15:55:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13510','424','556','42.5663','-2.96905','564','2.5882872318058','-0.067351857631144','348.74717567642','92.26','3875.8159630796','51.631422687525','4097.4344153559','2022-04-20 15:55:40','2022-04-20 15:55:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13511','424','557','42.56632','-2.96906','564','2.575473673344','-0.23544470863861','348.54752073238','92.26','3875.7403873585','51.59963288061','4097.8119918996','2022-04-20 15:55:41','2022-04-20 15:55:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13512','424','558','42.56635','-2.96906','564','2.5509788238625','-0.36163024068395','348.16585331213','92.26','3875.663371297','51.536111460019','4098.1862534295','2022-04-20 15:55:42','2022-04-20 15:55:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13513','424','559','42.56637','-2.96907','563','2.5004901685711','-0.48790185171147','347.37916242711','92.26','3875.5847775498','51.443118800531','4098.5493541176','2022-04-20 15:55:43','2022-04-20 15:55:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13514','424','560','42.56639','-2.96907','563','2.4486404192119','-0.65626746587395','346.57126360357','92.26','3875.5025231531','51.317941875183','4098.9097573514','2022-04-20 15:55:44','2022-04-20 15:55:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13515','424','561','42.56641','-2.96908','562','2.3850648963333','-0.78272593830388','345.58065919807','92.26','3875.4159682475','51.160972657287','4099.2595802402','2022-04-20 15:55:45','2022-04-20 15:55:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13516','424','562','42.56643','-2.96909','561','2.2820455973865','-0.90927487369748','343.97546010938','92.26','3875.3251118023','50.973031237512','4099.5964614631','2022-04-20 15:55:46','2022-04-20 15:55:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13517','424','563','42.56645','-2.9691','560','2.1910832825679','-1.0779141948685','342.55812737323','92.26','3875.2292060075','50.754144042439','4099.9191089669','2022-04-20 15:55:47','2022-04-20 15:55:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13518','424','564','42.56647','-2.9691','559','2.1478653483044','-0.87459688606821','14.517317212141','92.23','3875.2188003357','50.52040806034','4100.228287868','2022-04-20 15:55:48','2022-04-20 15:55:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13519','424','565','42.56649','-2.96909','559','2.1587592445127','-0.50604431598751','13.929684817742','92.185','3875.2956799158','50.367219515273','4100.5379272267','2022-04-20 15:55:49','2022-04-20 15:55:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13520','424','566','42.56651','-2.96909','558','2.1483683371401','-0.014230422034944','14.496808572633','92.125','3875.3741651327','50.303501571063','4100.8488820149','2022-04-20 15:55:50','2022-04-20 15:55:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13521','424','567','42.56653','-2.96908','558','2.160014825757','0.35485459759815','13.857485083135','92.08','3875.4526052961','50.332610115966','4101.1598602457','2022-04-20 15:55:51','2022-04-20 15:55:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13522','424','568','42.56655','-2.96907','559','2.1613439476084','0.72420372756326','13.852609076078','92.035','3875.5307266418','50.452143274318','4101.4707614333','2022-04-20 15:55:52','2022-04-20 15:55:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13523','424','569','42.56657','-2.96907','560','2.1428507045607','0.76372136903723','14.019302988791','92.02','3875.6080268093','50.629370457492','4101.7826475108','2022-04-20 15:55:53','2022-04-20 15:55:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13524','424','570','42.56658','-2.96907','560','2.1808854031804','0.5961621269264','342.39922873126','92.02','3875.5998266392','50.780274670325','4102.0950366122','2022-04-20 15:55:54','2022-04-20 15:55:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13525','424','571','42.5666','-2.96907','561','2.2485577389046','0.47050831626666','343.4536677805','92.02','3875.5028775565','50.89880103404','4102.410260708','2022-04-20 15:55:55','2022-04-20 15:55:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13526','424','572','42.56662','-2.96908','561','2.285668978926','0.34476218968206','344.03191796538','92.02','3875.4090982959','50.985720789426','4102.7307850778','2022-04-20 15:55:56','2022-04-20 15:55:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13527','424','573','42.56664','-2.96909','562','2.3111497755463','0.17692808621668','344.42894795813','92.02','3875.3151180701','51.04251951404','4103.063788819','2022-04-20 15:55:57','2022-04-20 15:55:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13528','424','574','42.56666','-2.9691','562','2.3269387703205','0.051001957944764','344.67496477519','92.02','3875.2231265872','51.067811301779','4103.3970679734','2022-04-20 15:55:58','2022-04-20 15:55:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13529','424','575','42.56668','-2.96911','562','2.3251109646513','-0.075013937319588','344.64648475228','92.02','3875.1324012463','51.062369170365','4103.7281556764','2022-04-20 15:55:59','2022-04-20 15:55:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13530','424','576','42.5667','-2.96911','562','2.3116082941592','-0.2431227851723','344.43609238318','92.02','3875.0394434638','51.025102453341','4104.062954492','2022-04-20 15:56:00','2022-04-20 15:56:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13531','424','577','42.56672','-2.96912','561','2.2798882858559','-0.20429436477117','343.94184587847','92.005','3874.9481931646','50.966357993077','4104.3825640809','2022-04-20 15:56:01','2022-04-20 15:56:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13532','424','578','42.56674','-2.96913','561','2.2801842809439','0.2877176602139','343.94645793709','91.945','3874.85505675','50.970475039991','4104.7054298854','2022-04-20 15:56:02','2022-04-20 15:56:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13533','424','579','42.56676','-2.96914','561','2.3022072898199','0.16186981118596','344.2896102798','91.945','3874.7621023295','51.022567636027','4105.0305744535','2022-04-20 15:56:03','2022-04-20 15:56:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13534','424','580','42.56678','-2.96914','562','2.3159101442228','0.035932499947133','344.50312182205','91.945','3874.6719224041','51.044030662307','4105.3538935995','2022-04-20 15:56:04','2022-04-20 15:56:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13535','424','581','42.5668','-2.96915','562','2.3127610649487','-0.13209318287301','344.45405432467','91.945','3874.5810723164','51.035237522463','4105.6813840238','2022-04-20 15:56:05','2022-04-20 15:56:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13536','424','582','42.56682','-2.96916','561','2.2984440678948','-0.25820549721526','344.23097349556','91.945','3874.4934884138','50.996783968201','4105.9941503702','2022-04-20 15:56:06','2022-04-20 15:56:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13537','424','583','42.56684','-2.96917','561','2.2634571005855','-0.38439784794464','343.68582274599','91.945','3874.407240591','50.930928004831','4106.2952517602','2022-04-20 15:56:07','2022-04-20 15:56:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13538','424','584','42.56686','-2.96917','561','2.2212150017859','-0.5526970485571','343.0276258917','91.945','3874.3117771454','50.828489378065','4106.6162755052','2022-04-20 15:56:08','2022-04-20 15:56:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13539','424','585','42.56688','-2.96918','560','2.1672744122408','-0.67908920061546','342.18714856302','91.945','3874.214090972','50.69422655684','4106.9284689854','2022-04-20 15:56:09','2022-04-20 15:56:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13540','424','586','42.5669','-2.96918','559','2.1560637882848','-0.80557149975234','14.400077390112','91.945','3874.2731236089','50.52909968472','4107.2388073747','2022-04-20 15:56:10','2022-04-20 15:56:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13541','424','587','42.56692','-2.96917','558','2.1509656302652','-0.97413849780443','14.026764104907','91.945','3874.3500105758','50.334974073291','4107.5467827383','2022-04-20 15:56:11','2022-04-20 15:56:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13542','424','588','42.56693','-2.96916','557','2.1474039324673','-1.100804401319','13.990662114285','91.945','3874.4275180443','50.10698576462','4107.8571521498','2022-04-20 15:56:12','2022-04-20 15:56:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13543','424','589','42.56695','-2.96916','556','2.148862873749','-0.73239881172025','14.435778765965','91.9','3874.5054196796','49.903474866895','4108.168718252','2022-04-20 15:56:13','2022-04-20 15:56:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13544','424','590','42.56697','-2.96915','556','2.1609478507572','-0.57076223326139','14.470636346186','91.87','3874.5837852156','49.779048638936','4108.4805019691','2022-04-20 15:56:14','2022-04-20 15:56:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13545','424','591','42.56699','-2.96914','555','2.1450667626278','-0.69716611973892','13.667335951323','91.87','3874.6628381223','49.640768253124','4108.7918293632','2022-04-20 15:56:15','2022-04-20 15:56:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13546','424','592','42.56701','-2.96914','555','2.1450098171239','-0.82366016091717','13.911669627219','91.87','3874.7399236838','49.471621206768','4109.102836044','2022-04-20 15:56:16','2022-04-20 15:56:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13547','424','593','42.56703','-2.96913','554','2.1490949828034','-0.99224455231368','14.139626831866','91.87','3874.817744736','49.271540559675','4109.4136902013','2022-04-20 15:56:17','2022-04-20 15:56:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13548','424','594','42.56705','-2.96912','553','2.1511528078144','-1.1189222167948','14.483154897415','91.87','3874.8976085896','49.039525597272','4109.7244047247','2022-04-20 15:56:18','2022-04-20 15:56:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13549','424','595','42.56707','-2.96912','551','2.1515232620734','-1.2456902138118','14.133255542768','91.87','3874.9758948048','48.776583088104','4110.0354545366','2022-04-20 15:56:19','2022-04-20 15:56:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13550','424','596','42.56709','-2.96911','550','2.1563670596601','-1.084516193663','13.876981732785','91.84','3875.0532507566','48.493788741546','4110.3463232283','2022-04-20 15:56:20','2022-04-20 15:56:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13551','424','597','42.56711','-2.96911','549','2.1547141843229','-0.71612359247781','14.007021316209','91.795','3875.1300577911','48.285830943679','4110.6582922405','2022-04-20 15:56:21','2022-04-20 15:56:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13552','424','598','42.56712','-2.9691','549','2.1500744664977','-0.3474666021228','13.982347697259','91.75','3875.2072132677','48.168393226183','4110.9671257006','2022-04-20 15:56:22','2022-04-20 15:56:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13553','424','599','42.56714','-2.96909','548','2.1416202428186','-0.1855801235352','13.713687861138','91.72','3875.2858539576','48.129526402019','4111.2775369418','2022-04-20 15:56:23','2022-04-20 15:56:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13554','424','600','42.56716','-2.96909','548','2.1463527824881','-0.31173233250615','14.093379188672','91.72','3875.3630938639','48.077413948647','4111.5855298861','2022-04-20 15:56:24','2022-04-20 15:56:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13555','424','601','42.56718','-2.96908','548','2.1585752571561','-0.43797357660441','13.828724859845','91.72','3875.4404784002','47.994818147997','4111.8935355781','2022-04-20 15:56:25','2022-04-20 15:56:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13556','424','602','42.5672','-2.96907','547','2.1518272743245','-0.60630418633453','14.519258959362','91.72','3875.5178965697','47.881625843779','4112.2012110584','2022-04-20 15:56:26','2022-04-20 15:56:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13557','424','603','42.56722','-2.96907','547','2.1482327462995','-0.73272497727622','14.228274041444','91.72','3875.5949297464','47.737557802383','4112.5072141415','2022-04-20 15:56:27','2022-04-20 15:56:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13558','424','604','42.56724','-2.96906','546','2.1524559283985','-0.8592372186208','14.411500720116','91.72','3875.6727821266','47.562179485207','4112.8143584988','2022-04-20 15:56:28','2022-04-20 15:56:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13559','424','605','42.56726','-2.96905','545','2.1607883839987','-1.0278448558368','13.628190099776','91.72','3875.7510066587','47.354140064892','4113.1251640265','2022-04-20 15:56:29','2022-04-20 15:56:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13560','424','606','42.56727','-2.96905','544','2.145251318233','-0.82448404459044','13.926240272128','91.69','3875.8279483719','47.135298206141','4113.4332659054','2022-04-20 15:56:30','2022-04-20 15:56:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13561','424','607','42.56729','-2.96904','543','2.1516410965432','-0.45589401070486','14.407227517814','91.645','3875.9047338345','46.994936308363','4113.7413625445','2022-04-20 15:56:31','2022-04-20 15:56:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13562','424','608','42.56731','-2.96904','543','2.1415151353764','0.035955421126063','13.630084301007','91.585','3875.9829316864','46.943385623529','4114.0490915378','2022-04-20 15:56:32','2022-04-20 15:56:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13563','424','609','42.56733','-2.96903','543','2.1477275021871','-0.090052318313252','13.693341524885','91.585','3876.0553503942','46.940735837726','4114.3383972773','2022-04-20 15:56:33','2022-04-20 15:56:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13564','424','610','42.56735','-2.96902','543','2.1552812851264','-0.21615186629047','13.832524153189','91.585','3876.1337686605','46.906653159888','4114.6487521368','2022-04-20 15:56:34','2022-04-20 15:56:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13565','424','611','42.56737','-2.96902','543','2.1534253991498','-0.3843408059875','13.813112326781','91.585','3876.2109918263','46.841965046632','4114.9586608654','2022-04-20 15:56:35','2022-04-20 15:56:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13566','424','612','42.56739','-2.96901','542','2.1508050837716','-0.51062360058554','14.185821577628','91.585','3876.2899505577','46.745143419025','4115.2696977768','2022-04-20 15:56:36','2022-04-20 15:56:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13567','424','613','42.5674','-2.969','542','2.1577775868208','-0.6369942666369','13.748717106759','91.585','3876.3656753651','46.618236856308','4115.5789850055','2022-04-20 15:56:37','2022-04-20 15:56:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13568','424','614','42.56742','-2.969','541','2.1479430372847','-0.8054572709412','13.855860782375','91.585','3876.4434777317','46.459716040698','4115.8902268984','2022-04-20 15:56:38','2022-04-20 15:56:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13569','424','615','42.56744','-2.96899','540','2.1454771315164','-0.93199943067085','14.134121889201','91.585','3876.5195738507','46.274094434724','4116.1947042861','2022-04-20 15:56:39','2022-04-20 15:56:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13570','424','616','42.56746','-2.96898','539','2.1526480213513','-1.0586458737113','13.842866824201','91.585','3876.5968382928','46.052768893969','4116.5058689925','2022-04-20 15:56:40','2022-04-20 15:56:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13571','424','617','42.56748','-2.96898','538','2.145711627059','-0.56718892995754','13.996200811688','91.525','3876.6752733484','45.866840343686','4116.8166024358','2022-04-20 15:56:41','2022-04-20 15:56:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13572','424','618','42.5675','-2.96897','538','2.1612673960512','-0.19845964939084','13.62838625133','91.48','3876.7519455546','45.774152943224','4117.1259805775','2022-04-20 15:56:42','2022-04-20 15:56:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13573','424','619','42.56752','-2.96897','538','2.1592111865158','0.17053086863957','13.871782993029','91.435','3876.8295037904','45.77090655968','4117.4364444699','2022-04-20 15:56:43','2022-04-20 15:56:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13574','424','620','42.56754','-2.96896','538','2.1590573663571','0.66278679031716','14.366794749484','91.375','3876.9073418308','45.858527587579','4117.7493529634','2022-04-20 15:56:44','2022-04-20 15:56:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13575','424','621','42.56756','-2.96895','539','2.1524114422096','0.53718054324023','13.751777859854','91.375','3876.9858306807','45.993338503884','4118.0572417413','2022-04-20 15:56:45','2022-04-20 15:56:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13576','424','622','42.56757','-2.96895','539','2.1554901883844','0.41148869337831','14.473828749486','91.375','3877.0632459686','46.09884121901','4118.3687402097','2022-04-20 15:56:46','2022-04-20 15:56:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13577','424','623','42.56759','-2.96894','540','2.1522082274923','0.24370701436898','14.250077004578','91.375','3877.1410082872','46.173588734712','4118.679423477','2022-04-20 15:56:47','2022-04-20 15:56:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13578','424','624','42.56761','-2.96893','540','2.141899148892','0.11783258363211','13.972620651196','91.375','3877.2190047374','46.216580434408','4118.9900281737','2022-04-20 15:56:48','2022-04-20 15:56:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13579','424','625','42.56763','-2.96893','540','2.1553165597631','-0.0081316578391295','13.955319023947','91.375','3877.2966258536','46.22882323883','4119.300230175','2022-04-20 15:56:49','2022-04-20 15:56:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13580','424','626','42.56765','-2.96892','540','2.1485575153555','-0.17618590539244','14.219160090946','91.375','3877.3750164715','46.210250265931','4119.6114417575','2022-04-20 15:56:50','2022-04-20 15:56:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13581','424','627','42.56767','-2.96891','540','2.1608510477689','-0.30233223649993','13.658848841722','91.375','3877.4524754718','46.160150242467','4119.922973383','2022-04-20 15:56:51','2022-04-20 15:56:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13582','424','628','42.56769','-2.96891','539','2.1441869785255','-0.42856675366474','13.776116643967','91.375','3877.528893881','46.079857571548','4120.231262766','2022-04-20 15:56:52','2022-04-20 15:56:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13583','424','629','42.56771','-2.9689','539','2.1528257021537','-0.59689076861212','14.169397029873','91.375','3877.6051204036','45.968923152034','4120.5407683586','2022-04-20 15:56:53','2022-04-20 15:56:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13584','424','630','42.56773','-2.9689','538','2.1477154215348','-0.72331121794201','13.953289446166','91.375','3877.6837807176','45.824972069769','4120.8516910698','2022-04-20 15:56:54','2022-04-20 15:56:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13585','424','631','42.56774','-2.96889','538','2.1595155653095','-0.35465457268546','13.869999970655','91.33','3877.7608604361','45.707416199401','4121.1569505587','2022-04-20 15:56:55','2022-04-20 15:56:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13586','424','632','42.56776','-2.96888','537','2.1452105971461','0.13725836447137','14.310269595189','91.27','3877.8374719807','45.677608111703','4121.4668557883','2022-04-20 15:56:56','2022-04-20 15:56:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13587','424','633','42.56778','-2.96888','538','2.1564007524768','0.50644213811768','14.464959874599','91.225','3877.9161278652','45.7405275015','4121.7762170155','2022-04-20 15:56:57','2022-04-20 15:56:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13588','424','634','42.5678','-2.96887','538','2.1500661806606','0.38073032182108','14.500317066152','91.225','3877.9935687214','45.839194220763','4122.0875757214','2022-04-20 15:56:58','2022-04-20 15:56:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13589','424','635','42.56782','-2.96886','538','2.1561415966394','0.2549209507747','13.785246469489','91.225','3878.0686474417','45.904460692209','4122.3876257081','2022-04-20 15:56:59','2022-04-20 15:56:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13590','424','636','42.56784','-2.96886','539','2.1454251893726','0.087019878096465','14.094876700964','91.225','3878.1424914887','45.938330873518','4122.6835582553','2022-04-20 15:57:00','2022-04-20 15:57:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13591','424','637','42.56786','-2.96885','539','2.1589942401753','-0.038964378072013','13.662609832965','91.225','3878.2209616241','45.94372115821','4122.9944370358','2022-04-20 15:57:01','2022-04-20 15:57:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13592','424','638','42.56787','-2.96884','539','2.1582932393006','-0.2070386533233','14.068641276061','91.225','3878.2977673578','45.91829121446','4123.3062549858','2022-04-20 15:57:02','2022-04-20 15:57:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13593','424','639','42.56789','-2.96884','538','2.1597684149695','-0.33320506130047','13.700664755798','91.225','3878.374711308','45.861317385018','4123.6164924621','2022-04-20 15:57:03','2022-04-20 15:57:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13594','424','640','42.56791','-2.96883','538','2.1571598917222','-0.45946227872914','13.697202367774','91.225','3878.4519602226','45.773252725133','4123.9274905726','2022-04-20 15:57:04','2022-04-20 15:57:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13595','424','641','42.56793','-2.96883','537','2.159756898096','-0.13271418388181','13.709504834103','91.18','3878.5301291387','45.687006852501','4124.2388337323','2022-04-20 15:57:05','2022-04-20 15:57:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13596','424','642','42.56795','-2.96882','538','2.1490421995554','0.23629587071635','13.63116307322','91.135','3878.6070876809','45.690449289398','4124.5504225016','2022-04-20 15:57:06','2022-04-20 15:57:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13597','424','643','42.56797','-2.96881','538','2.1433258737139','0.60556878848918','14.332938310865','91.09','3878.6859313276','45.783889345013','4124.8612724705','2022-04-20 15:57:07','2022-04-20 15:57:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13598','424','644','42.56799','-2.96881','539','2.1469831809745','0.7680739307104','13.845578959133','91.06','3878.763909071','45.956837104171','4125.1718434443','2022-04-20 15:57:08','2022-04-20 15:57:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13599','424','645','42.56801','-2.9688','539','2.1478089709239','0.64253997131149','13.811649653751','91.06','3878.8411830426','46.116397470038','4125.4825418538','2022-04-20 15:57:09','2022-04-20 15:57:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13600','424','646','42.56803','-2.96879','540','2.1445687549744','0.51691655870677','14.322198733707','91.06','3878.9193272256','46.245331349257','4125.7923512187','2022-04-20 15:57:10','2022-04-20 15:57:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13601','424','647','42.56804','-2.96879','540','2.1451210889393','0.3492032249924','14.470411026331','91.06','3878.9976178375','46.343478543539','4126.1030381658','2022-04-20 15:57:11','2022-04-20 15:57:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13602','424','648','42.56806','-2.96878','541','2.1521665648603','0.22339718398915','13.993887087751','91.06','3879.0768382877','46.409885136468','4126.4136451327','2022-04-20 15:57:12','2022-04-20 15:57:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13603','424','649','42.56808','-2.96877','541','2.1598793380576','0.097501513046797','13.65816039285','91.06','3879.1545763646','46.445604733794','4126.7251820999','2022-04-20 15:57:13','2022-04-20 15:57:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13604','424','650','42.5681','-2.96877','541','2.1474720887151','-0.070484255853295','14.286729873024','91.06','3879.231491923','46.450477097925','4127.0373374342','2022-04-20 15:57:14','2022-04-20 15:57:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13605','424','651','42.56812','-2.96876','541','2.1469516788436','-0.031552354958597','13.641206339575','91.045','3879.3087703277','46.427161708382','4127.3463880537','2022-04-20 15:57:15','2022-04-20 15:57:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13606','424','652','42.56814','-2.96876','541','2.1468841740888','0.33754657935355','13.889600886052','91','3879.3853040262','46.461034283016','4127.6579718597','2022-04-20 15:57:16','2022-04-20 15:57:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13607','424','653','42.56816','-2.96875','541','2.1469086590807','0.92586334830866','13.981158745975','90.91','3879.4631543127','46.569487860355','4127.9685241194','2022-04-20 15:57:17','2022-04-20 15:57:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13608','424','654','42.56818','-2.96874','543','2.143091925083','1.3046121894125','13.940646561991','90.85','3879.5397183075','46.825871875465','4128.2789387393','2022-04-20 15:57:18','2022-04-20 15:57:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13609','424','655','42.5682','-2.96874','544','2.1414036942687','1.1794188323568','14.143171102213','90.85','3879.6177040928','47.102045760328','4128.5903172621','2022-04-20 15:57:19','2022-04-20 15:57:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13610','424','656','42.56821','-2.96873','545','2.1564970370637','1.0121324110689','14.006515765072','90.85','3879.6951511726','47.346356835634','4128.8992335128','2022-04-20 15:57:20','2022-04-20 15:57:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13611','424','657','42.56823','-2.96872','546','2.1529095420573','0.88674532967665','13.89646725157','90.85','3879.7719734649','47.55620446923','4129.2040072269','2022-04-20 15:57:21','2022-04-20 15:57:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13612','424','658','42.56825','-2.96872','547','2.1525314665603','1.2564349915404','13.855723809926','90.805','3879.8487155459','47.79232702819','4129.5139054624','2022-04-20 15:57:22','2022-04-20 15:57:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13613','424','659','42.56827','-2.96871','548','2.1468797364043','1.7493843589284','14.413019555869','90.745','3879.9258119122','48.117366107205','4129.8219332917','2022-04-20 15:57:23','2022-04-20 15:57:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13614','424','660','42.56829','-2.9687','550','2.1522898292684','2.1195975021547','14.083395104607','90.7','3880.0028551557','48.532715277629','4130.1298940844','2022-04-20 15:57:24','2022-04-20 15:57:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13615','424','661','42.56831','-2.9687','552','2.1592032428009','2.4900135946473','13.677086804394','90.655','3880.0759005696','49.017549079015','4130.4231676633','2022-04-20 15:57:25','2022-04-20 15:57:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13616','424','662','42.56833','-2.96869','555','2.1562739125929','2.9837740071924','14.121724657115','90.595','3880.1532413092','49.620269247856','4130.7348443142','2022-04-20 15:57:26','2022-04-20 15:57:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13617','424','663','42.56834','-2.96869','558','2.1498225794989','3.1897764442896','13.65024156957','90.565','3880.2299111435','50.305852424761','4131.0431652546','2022-04-20 15:57:27','2022-04-20 15:57:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13618','424','664','42.56836','-2.96868','561','2.2976394799721','3.0658074778629','344.21843677852','90.565','3880.256737931','51.001226302675','4131.3556243955','2022-04-20 15:57:28','2022-04-20 15:57:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13619','424','665','42.56838','-2.96869','564','2.5756718459701','2.8997499378654','348.55060856663','90.565','3880.1698405303','51.666274858428','4131.7034790513','2022-04-20 15:57:29','2022-04-20 15:57:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13620','424','666','42.56841','-2.9687','567','2.8421496317242','2.7756009024168','352.70274222724','90.565','3880.1043279428','52.299997715094','4132.1014534021','2022-04-20 15:57:30','2022-04-20 15:57:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13621','424','667','42.56844','-2.9687','570','3.1781130822766','2.6513540231231','357.93756939239','90.565','3880.0663751904','52.900221345081','4132.5435330237','2022-04-20 15:57:31','2022-04-20 15:57:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13622','424','668','42.56847','-2.9687','573','3.4176969492202','2.4850274071796','1.6706544435895','90.565','3880.0615661035','53.473145188325','4133.0310223883','2022-04-20 15:57:32','2022-04-20 15:57:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13623','424','669','42.5685','-2.9687','575','3.6456821040861','2.3606089846148','5.2230137254707','90.565','3880.0932753513','54.014636795756','4133.5560574454','2022-04-20 15:57:33','2022-04-20 15:57:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13624','424','670','42.56853','-2.96869','577','3.9316971903324','2.2361014242744','9.6795685699411','90.565','3880.1642573515','54.525609911782','4134.1139235827','2022-04-20 15:57:34','2022-04-20 15:57:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13625','424','671','42.56857','-2.96868','579','4.1327150710845','2.0695049405143','12.811736253989','90.565','3880.2775645104','55.00613792631','4134.7006680613','2022-04-20 15:57:35','2022-04-20 15:57:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13626','424','672','42.5686','-2.96868','581','4.2194282853327','1.9448166112269','342.09426888954','90.565','3880.256530442','55.455220384611','4135.3017519005','2022-04-20 15:57:36','2022-04-20 15:57:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13627','424','673','42.56864','-2.9687','583','4.2203477351931','1.8200389688434','342.33381043141','90.565','3880.0653620213','55.873724326232','4135.899720739','2022-04-20 15:57:37','2022-04-20 15:57:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13628','424','674','42.56868','-2.96872','585','4.2116184564619','1.6531722276056','342.36922891068','90.565','3879.8712013172','56.261723102089','4136.4972574971','2022-04-20 15:57:38','2022-04-20 15:57:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13629','424','675','42.56871','-2.96873','587','4.2165324028286','1.5282134652922','342.27862587779','90.565','3879.6761187897','56.618216218439','4137.0940176818','2022-04-20 15:57:39','2022-04-20 15:57:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13630','424','676','42.56875','-2.96875','588','4.2068193902688','1.8983259604552','341.70813442987','90.52','3879.4830065997','56.99910606971','4137.6919716352','2022-04-20 15:57:40','2022-04-20 15:57:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13631','424','677','42.56879','-2.96876','591','4.2073226716978','2.3917024358789','342.1032732457','90.46','3879.286933004','57.470376001349','4138.2882492905','2022-04-20 15:57:41','2022-04-20 15:57:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13632','424','678','42.56882','-2.96878','593','4.2068869019668','2.762351451477','342.16821568635','90.415','3879.0927142249','58.034956708581','4138.8849417995','2022-04-20 15:57:42','2022-04-20 15:57:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13633','424','679','42.56886','-2.9688','596','4.2193913023088','3.1332655931593','341.90807393825','90.37','3878.8990040173','58.690309796768','4139.4819073075','2022-04-20 15:57:43','2022-04-20 15:57:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13634','424','680','42.56889','-2.96881','599','4.212860442425','2.9672216057843','341.95850772032','90.37','3878.7087230209','59.359998423378','4140.071026652','2022-04-20 15:57:44','2022-04-20 15:57:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13635','424','681','42.56893','-2.96883','602','4.2208891752576','2.8431163972241','341.83698783059','90.37','3878.5124152763','60.008726484149','4140.6676104914','2022-04-20 15:57:45','2022-04-20 15:57:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13636','424','682','42.56897','-2.96884','605','4.2068158075325','2.7189130175062','341.65378594096','90.37','3878.3162047312','60.623843254813','4141.2610077684','2022-04-20 15:57:46','2022-04-20 15:57:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13637','424','683','42.569','-2.96886','607','4.2113307460778','2.5525873466692','341.76059543937','90.37','3878.1238196754','61.197090678317','4141.8423104965','2022-04-20 15:57:47','2022-04-20 15:57:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13638','424','684','42.56904','-2.96887','610','4.2173142073879','2.4281316534069','342.27258517743','90.37','3877.9353416147','61.725821753496','4142.4095980052','2022-04-20 15:57:48','2022-04-20 15:57:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13639','424','685','42.56907','-2.96889','612','4.2141225390787','2.3035157783759','342.32436374745','90.37','3877.7590556993','62.199710693531','4142.9459023993','2022-04-20 15:57:49','2022-04-20 15:57:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13640','424','686','42.5691','-2.9689','614','4.2213848643603','2.1368960041517','341.91607224366','90.37','3877.5709449401','62.672264649669','4143.5185202624','2022-04-20 15:57:50','2022-04-20 15:57:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13641','424','687','42.56914','-2.96892','616','4.2216958192122','2.0122381101917','342.24377342953','90.37','3877.3779089242','63.131767384571','4144.1095642465','2022-04-20 15:57:51','2022-04-20 15:57:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13642','424','688','42.56918','-2.96894','618','4.218128474012','1.8874977246669','341.49108191651','90.37','3877.1849450468','63.563027120417','4144.7045328687','2022-04-20 15:57:52','2022-04-20 15:57:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13643','424','689','42.56921','-2.96895','620','4.2129627335984','1.7206748019303','342.12334783134','90.37','3876.991477112','63.966028228824','4145.302616162','2022-04-20 15:57:53','2022-04-20 15:57:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13644','424','690','42.56925','-2.96897','621','4.2231898037705','1.5957598865808','341.90743565345','90.37','3876.7971250782','64.337533422637','4145.9001698122','2022-04-20 15:57:54','2022-04-20 15:57:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13645','424','691','42.56928','-2.96898','623','4.2182785288147','1.470755510954','342.36693284057','90.37','3876.6018472572','64.67840970869','4146.4976964726','2022-04-20 15:57:55','2022-04-20 15:57:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13646','424','692','42.56932','-2.969','624','4.2083729987155','1.6336938986595','341.97082671324','90.34','3876.4109878763','64.999689625656','4147.0962001343','2022-04-20 15:57:56','2022-04-20 15:57:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13647','424','693','42.56936','-2.96902','626','4.2186289289352','2.0038501428719','341.69506899974','90.295','3876.2154868122','65.395558030964','4147.6928866749','2022-04-20 15:57:57','2022-04-20 15:57:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13648','424','694','42.56939','-2.96903','628','4.2232567631895','2.374271592537','342.25769900467','90.25','3876.0226928539','65.882225990992','4148.2904857783','2022-04-20 15:57:58','2022-04-20 15:57:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13649','424','695','42.56943','-2.96905','631','4.2071868649759','2.8679568235644','341.88183666604','90.19','3875.8302142529','66.459205933685','4148.8888163857','2022-04-20 15:57:59','2022-04-20 15:57:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13650','424','696','42.56947','-2.96906','634','4.2179721112583','3.2389147954512','341.85564956268','90.145','3875.635563308','67.129565361364','4149.4858699734','2022-04-20 15:58:00','2022-04-20 15:58:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13651','424','697','42.5695','-2.96908','637','4.2219440204506','3.6101384935608','341.66945599697','90.1','3875.4408863522','67.890902642119','4150.0828194816','2022-04-20 15:58:01','2022-04-20 15:58:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13652','424','698','42.56954','-2.9691','641','4.2081953271337','3.6095305860789','342.19345303105','90.085','3875.2464824934','68.709893855494','4150.6799277198','2022-04-20 15:58:02','2022-04-20 15:58:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13653','424','699','42.56958','-2.96911','645','4.2160386438172','3.4858427320599','341.93330840954','90.085','3875.0535267021','69.501513422159','4151.2772592615','2022-04-20 15:58:03','2022-04-20 15:58:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13654','424','700','42.56961','-2.96913','648','4.2078413170949','3.3620660784149','341.78425770372','90.085','3874.8571198627','70.262730271113','4151.8732566797','2022-04-20 15:58:04','2022-04-20 15:58:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13655','424','701','42.56965','-2.96914','651','4.2226633356409','3.1962011125605','341.92700606944','90.085','3874.6618797566','70.993711281415','4152.4701813526','2022-04-20 15:58:05','2022-04-20 15:58:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13656','424','702','42.56968','-2.96916','654','4.2070753672298','3.0722343923498','342.14824012046','90.085','3874.4669668143','71.689854206156','4153.0671335764','2022-04-20 15:58:06','2022-04-20 15:58:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13657','424','703','42.56972','-2.96918','657','4.2221802703173','2.9481890753222','341.98960599246','90.085','3874.2718018207','72.359087593777','4153.6635341895','2022-04-20 15:58:07','2022-04-20 15:58:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13658','424','704','42.56976','-2.96919','660','4.2085923566454','2.7820552715724','341.5282105542','90.085','3874.0779456787','72.99802539398','4154.2619661488','2022-04-20 15:58:08','2022-04-20 15:58:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13659','424','705','42.56979','-2.96921','663','4.2152896470984','2.6578211571564','342.32169392559','90.085','3873.8826733333','73.602619391172','4154.8553106468','2022-04-20 15:58:09','2022-04-20 15:58:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13660','424','706','42.56983','-2.96922','666','4.2187333104334','2.5334558002331','342.27854753586','90.085','3873.6924023364','74.162279315135','4155.4375369572','2022-04-20 15:58:10','2022-04-20 15:58:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13661','424','707','42.56986','-2.96924','668','4.2120180715792','2.3669888030462','341.50861461452','90.085','3873.5055187811','74.687140216019','4156.0106045042','2022-04-20 15:58:11','2022-04-20 15:58:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13662','424','708','42.5699','-2.96925','670','4.2064555124992','2.2423354970473','342.19362461494','90.085','3873.3311534442','75.14821375133','4156.5444414118','2022-04-20 15:58:12','2022-04-20 15:58:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13663','424','709','42.56993','-2.96927','672','4.2234373687278','2.4477221654033','341.58131306825','90.055','3873.1480128497','75.622973481907','4157.1000598218','2022-04-20 15:58:13','2022-04-20 15:58:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13664','424','710','42.56996','-2.96928','675','4.2153649726258','2.9413449375114','342.35047952168','89.995','3872.9649681945','76.178569090289','4157.6583980182','2022-04-20 15:58:14','2022-04-20 15:58:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13665','424','711','42.57','-2.9693','678','4.2162491831574','3.3122414705405','341.97225207361','89.95','3872.7818427017','76.827893426637','4158.2257832135','2022-04-20 15:58:15','2022-04-20 15:58:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13666','424','712','42.57003','-2.96931','681','4.2189059404098','3.6833334366259','341.99642111576','89.905','3872.6002033639','77.544129036102','4158.7745859605','2022-04-20 15:58:16','2022-04-20 15:58:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13667','424','713','42.57006','-2.96933','684','4.2197818066673','3.682493125164','341.62351879664','89.89','3872.4255489331','78.283551078969','4159.3027174335','2022-04-20 15:58:17','2022-04-20 15:58:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13668','424','714','42.5701','-2.96934','687','4.2080186168855','3.558604433356','341.50598197282','89.89','3872.2497749452','79.006408930369','4159.8363112747','2022-04-20 15:58:18','2022-04-20 15:58:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13669','424','715','42.57013','-2.96936','690','4.2045882927924','3.4345113735379','341.70438939962','89.89','3872.0817355282','79.659296409264','4160.3402948903','2022-04-20 15:58:19','2022-04-20 15:58:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13670','424','716','42.57016','-2.96937','693','4.1315869117199','3.2683546723354','345.52921557486','89.89','3871.9183703923','80.290394708107','4160.843596963','2022-04-20 15:58:20','2022-04-20 15:58:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13671','424','717','42.57019','-2.96938','696','3.9044144381964','3.1440998633629','355.49287160912','89.89','3871.8341393877','80.887903419162','4161.3387837667','2022-04-20 15:58:21','2022-04-20 15:58:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13672','424','718','42.57021','-2.96938','698','3.6213117273024','3.0197406131292','7.9095961795095','89.89','3871.8424823558','81.449654117297','4161.7995906865','2022-04-20 15:58:22','2022-04-20 15:58:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13673','424','719','42.57024','-2.96937','701','3.4253817063355','2.8532989075826','16.502975938165','89.89','3871.9273013624','81.983174228042','4162.2208186153','2022-04-20 15:58:23','2022-04-20 15:58:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13674','424','720','42.57027','-2.96935','704','3.1892093510607','2.7291196994355','26.861361689144','89.89','3872.1080759124','82.606566725494','4162.6784329622','2022-04-20 15:58:24','2022-04-20 15:58:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13675','424','721','42.57029','-2.96933','706','2.8905129059637','2.60485150887','39.962018610485','89.89','3872.353344571','83.199493921826','4163.0611389537','2022-04-20 15:58:25','2022-04-20 15:58:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13676','424','722','42.57031','-2.96931','709','2.6786094671116','2.4384945503967','49.255983431365','89.89','3872.6411154734','83.762029259993','4163.363940228','2022-04-20 15:58:26','2022-04-20 15:58:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13677','424','723','42.57032','-2.96929','711','2.4793050048482','2.3140306030644','57.99736427424','89.89','3872.9467191432','84.287934352993','4163.5896912342','2022-04-20 15:58:27','2022-04-20 15:58:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13678','424','724','42.57033','-2.96926','714','2.3574272575566','2.6846535335112','63.518363466501','89.845','3873.2613156565','84.843584172494','4163.7554714765','2022-04-20 15:58:28','2022-04-20 15:58:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13679','424','725','42.57034','-2.96923','717','2.3493314453472','3.1785407756979','63.008048427251','89.785','3873.5759682178','85.489727562334','4163.9116507342','2022-04-20 15:58:29','2022-04-20 15:58:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13680','424','726','42.57035','-2.96921','720','2.3521978933368','3.5497008898327','63.669822480334','89.74','3873.8899899488','86.229295318559','4164.0682712781','2022-04-20 15:58:30','2022-04-20 15:58:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13681','424','727','42.57036','-2.96918','724','2.3501994304025','3.9211268615209','63.535981796785','89.695','3874.2035768209','87.059885892136','4164.2263796659','2022-04-20 15:58:31','2022-04-20 15:58:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13682','424','728','42.57037','-2.96916','728','2.3656444382799','4.4158172671712','63.838036960036','89.635','3874.5179059864','87.981011881786','4164.3836301004','2022-04-20 15:58:32','2022-04-20 15:58:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13683','424','729','42.57038','-2.96913','732','2.3469701201014','4.7877810664723','63.00949679506','89.59','3874.8319830517','88.995740855485','4164.5407846354','2022-04-20 15:58:33','2022-04-20 15:58:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13684','424','730','42.57039','-2.9691','737','2.3487127464043','4.829935699687','63.282427864174','89.575','3875.1455272546','90.075806473668','4164.6984062752','2022-04-20 15:58:34','2022-04-20 15:58:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13685','424','731','42.5704','-2.96908','742','2.3610978617144','4.6650240666283','62.958051547609','89.575','3875.4591529414','91.133184217027','4164.8545160106','2022-04-20 15:58:35','2022-04-20 15:58:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13686','424','732','42.57041','-2.96905','747','2.3547325352689','4.5420215460286','63.766983303992','89.575','3875.7723612665','92.159444394103','4165.0128607425','2022-04-20 15:58:36','2022-04-20 15:58:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13687','424','733','42.57042','-2.96903','751','2.3493154326896','4.4189309437647','63.011618349842','89.575','3876.0863658262','93.155547665231','4165.1686142376','2022-04-20 15:58:37','2022-04-20 15:58:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13688','424','734','42.57043','-2.969','755','2.3585379444577','4.2537523385071','63.42303631183','89.575','3876.399176397','94.121520965196','4165.3269886922','2022-04-20 15:58:38','2022-04-20 15:58:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13689','424','735','42.57044','-2.96898','760','2.3537198552911','4.130482672294','63.836773948034','89.575','3876.7132513237','95.05631732622','4165.4839164058','2022-04-20 15:58:39','2022-04-20 15:58:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13690','424','736','42.57045','-2.96895','764','2.3646951134203','4.0071116044483','63.640731745858','89.575','3877.0255018375','95.956396365275','4165.6392648586','2022-04-20 15:58:40','2022-04-20 15:58:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13691','424','737','42.57046','-2.96892','768','2.3585005615328','3.8416398702227','63.4108123849','89.575','3877.3375693759','96.822009814043','4165.7961189487','2022-04-20 15:58:41','2022-04-20 15:58:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13692','424','738','42.57047','-2.9689','771','2.3633791041618','3.7180656154727','63.621669600046','89.575','3877.6477215332','97.65252286094','4165.9508286039','2022-04-20 15:58:42','2022-04-20 15:58:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13693','424','739','42.57048','-2.96887','775','2.3558368771771','3.5944161913804','63.79642362586','89.575','3877.9591422066','98.457299850248','4166.105555693','2022-04-20 15:58:43','2022-04-20 15:58:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13694','424','740','42.57049','-2.96885','778','2.353263852651','3.5936221812687','63.128214584063','89.56','3878.2671736831','99.212574289544','4166.2560807624','2022-04-20 15:58:44','2022-04-20 15:58:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13695','424','741','42.5705','-2.96882','782','2.3482891333706','3.9649436449685','63.247229057866','89.515','3878.5666807106','100.00738400445','4166.4069049114','2022-04-20 15:58:45','2022-04-20 15:58:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13696','424','742','42.5705','-2.9688','786','2.3563570799753','4.3365174175864','63.389484293475','89.47','3878.8659877102','100.88857783094','4166.5580143381','2022-04-20 15:58:46','2022-04-20 15:58:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13697','424','743','42.57051','-2.96877','790','2.3626393897162','4.1711040409089','63.108622210694','89.47','3879.1611032736','101.77417140959','4166.7051545655','2022-04-20 15:58:47','2022-04-20 15:58:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13698','424','744','42.57052','-2.96875','794','2.3473520545555','4.0476599576847','63.078653366472','89.47','3879.4597526949','102.64925185305','4166.8556638764','2022-04-20 15:58:48','2022-04-20 15:58:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13699','424','745','42.57053','-2.96873','797','2.3619530927204','3.9240670037218','63.329630120252','89.47','3879.7511565085','103.47336276839','4167.0013229591','2022-04-20 15:58:49','2022-04-20 15:58:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13700','424','746','42.57054','-2.9687','801','2.359071674502','3.7583913420184','63.324009812739','89.47','3880.0456340058','104.26915667162','4167.147569126','2022-04-20 15:58:50','2022-04-20 15:58:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13701','424','747','42.57055','-2.96868','804','2.2578035783733','3.6344748796689','74.477136115186','89.47','3880.3221365447','104.98250660088','4167.2561917697','2022-04-20 15:58:51','2022-04-20 15:58:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13702','424','748','42.57055','-2.96865','808','2.092633629602','3.5107949078844','93.104521659734','89.47','3880.6439253446','105.77682484271','4167.2976162902','2022-04-20 15:58:52','2022-04-20 15:58:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13703','424','749','42.57055','-2.96863','811','1.9714155642528','3.6750585598008','106.77514186044','89.44','3880.9446548115','106.55184128365','4167.2536662862','2022-04-20 15:58:53','2022-04-20 15:58:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13704','424','750','42.57054','-2.96861','815','1.8404291998134','4.0465280538521','121.54740236935','89.395','3881.202407107','107.39733279964','4167.1398006362','2022-04-20 15:58:54','2022-04-20 15:58:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13705','424','751','42.57053','-2.96859','819','1.6456463779922','4.4182890922991','143.51444144946','89.35','3881.4004652747','108.3426416499','4166.9684710776','2022-04-20 15:58:55','2022-04-20 15:58:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13706','424','752','42.57052','-2.96858','824','1.590781416657','4.7483028341687','150.75366043888','89.305','3881.5268963021','109.37446967994','4166.7660242145','2022-04-20 15:58:56','2022-04-20 15:58:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13707','424','753','42.5705','-2.96857','829','1.5847531748914','4.6253545445673','150.5924006087','89.305','3881.6421491863','110.41929716189','4166.5599908374','2022-04-20 15:58:57','2022-04-20 15:58:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13708','424','754','42.57049','-2.96856','833','1.5788623558137','4.5023182084566','150.29104549637','89.305','3881.7585176431','111.43397977406','4166.3547671496','2022-04-20 15:58:58','2022-04-20 15:58:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13709','424','755','42.57048','-2.96855','838','1.5846363477796','4.3371936317779','151.1734135022','89.305','3881.8747057273','112.41845107572','4166.1494054813','2022-04-20 15:58:59','2022-04-20 15:58:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13710','424','756','42.57047','-2.96854','842','1.5842049114209','4.2139784385315','150.51705863453','89.305','3881.9894549857','113.37189758539','4165.9436096576','2022-04-20 15:59:00','2022-04-20 15:59:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13711','424','757','42.57045','-2.96853','846','1.5879939734609','4.0906748890077','150.99721710281','89.305','3882.1037555808','114.29509316862','4165.7377735663','2022-04-20 15:59:01','2022-04-20 15:59:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13712','424','758','42.57044','-2.96852','850','1.5895601216696','3.9252829253448','151.11137702635','89.305','3882.2191318714','115.18801801504','4165.53193574','2022-04-20 15:59:02','2022-04-20 15:59:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13713','424','759','42.57043','-2.96851','854','1.5770113191213','3.8018000350322','150.99662513528','89.305','3882.3339838509','116.04981190532','4165.3257872627','2022-04-20 15:59:03','2022-04-20 15:59:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13714','424','760','42.57042','-2.9685','858','1.5877266813618','3.6782286145476','150.73578986567','89.305','3882.4492953699','116.88129533212','4165.1200911404','2022-04-20 15:59:04','2022-04-20 15:59:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13715','424','761','42.5704','-2.96849','861','1.5907071931081','3.5125687423332','150.66185050412','89.305','3882.5642551813','117.682495152','4164.9147102616','2022-04-20 15:59:05','2022-04-20 15:59:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13716','424','762','42.57039','-2.96848','865','1.5835777587379','3.3888177694463','151.03444339552','89.305','3882.6797677872','118.45250443484','4164.7084432196','2022-04-20 15:59:06','2022-04-20 15:59:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13717','424','763','42.57038','-2.96848','868','1.5810185384277','3.264988829238','151.06809893084','89.305','3882.7950104889','119.19581970366','4164.5027483688','2022-04-20 15:59:07','2022-04-20 15:59:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13718','424','764','42.57037','-2.96847','871','1.5736485169167','3.0990499255748','150.65846588114','89.305','3882.9102598725','119.90148630187','4164.2981090777','2022-04-20 15:59:08','2022-04-20 15:59:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13719','424','765','42.57035','-2.96846','874','1.5797365249329','2.975030347456','150.34705640539','89.305','3883.0249836995','120.57953203263','4164.0927960606','2022-04-20 15:59:09','2022-04-20 15:59:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13720','424','766','42.57034','-2.96845','877','1.5842018144049','2.8508558704189','150.5741465332','89.305','3883.1372119855','121.20454434096','4163.8915546479','2022-04-20 15:59:10','2022-04-20 15:59:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13721','424','767','42.57033','-2.96844','880','1.5779253682832','3.344793102361','150.5918630535','89.245','3883.2496276846','121.86780294276','4163.6923263206','2022-04-20 15:59:11','2022-04-20 15:59:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13722','424','768','42.57032','-2.96843','884','1.5761708948251','3.7160282077311','150.73196185893','89.2','3883.3632705596','122.63304577734','4163.4902729358','2022-04-20 15:59:12','2022-04-20 15:59:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13723','424','769','42.57031','-2.96842','887','1.5798643262718','4.0874370982651','151.07631881574','89.155','3883.4749853515','123.45778820115','4163.2947773','2022-04-20 15:59:13','2022-04-20 15:59:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13724','424','770','42.57029','-2.96841','891','1.584622248076','4.2520522670134','151.16892062738','89.125','3883.5838318437','124.35315500249','4163.0999077628','2022-04-20 15:59:14','2022-04-20 15:59:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13725','424','771','42.57028','-2.9684','895','1.5903436050386','4.1286038246228','150.70719723272','89.125','3883.692152004','125.22674297903','4162.9072153647','2022-04-20 15:59:15','2022-04-20 15:59:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13726','424','772','42.57027','-2.96839','899','1.5720058794316','4.0051388791667','151.07829058401','89.125','3883.8035525625','126.09468072861','4162.7107177053','2022-04-20 15:59:16','2022-04-20 15:59:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13727','424','773','42.57026','-2.96838','903','1.58035172151','3.839562327458','150.98868962882','89.125','3883.9139509104','126.92440735567','4162.514378128','2022-04-20 15:59:17','2022-04-20 15:59:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13728','424','774','42.57025','-2.96837','907','1.5820073074014','3.7160362306527','150.40540096774','89.125','3884.029197261','127.77140844946','4162.3095242516','2022-04-20 15:59:18','2022-04-20 15:59:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13729','424','775','42.57023','-2.96836','910','1.5861740739173','3.5923859107059','150.72873990786','89.125','3884.1436493246','128.57587872113','4162.1060973251','2022-04-20 15:59:19','2022-04-20 15:59:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13730','424','776','42.57022','-2.96835','914','1.5761263197726','3.426670687763','151.09305035228','89.125','3884.2588881919','129.35812786917','4161.8990039022','2022-04-20 15:59:20','2022-04-20 15:59:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13731','424','777','42.57021','-2.96835','917','1.5722846243382','3.302875051691','150.86586322449','89.125','3884.3739116504','130.11284562133','4161.6933977445','2022-04-20 15:59:21','2022-04-20 15:59:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13732','424','778','42.5702','-2.96834','921','1.5813961141204','3.1789690918801','150.84803047765','89.125','3884.4880572658','130.82979135082','4161.4885293208','2022-04-20 15:59:22','2022-04-20 15:59:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13733','424','779','42.57018','-2.96833','924','1.5907976579877','3.012975274851','150.90804984092','89.125','3884.6033540222','131.51665701891','4161.2818715829','2022-04-20 15:59:23','2022-04-20 15:59:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13734','424','780','42.57017','-2.96832','927','1.5834244352352','2.8889001952866','150.52164100189','89.125','3884.7181436374','132.1757004762','4161.0769334201','2022-04-20 15:59:24','2022-04-20 15:59:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13735','424','781','42.57016','-2.96831','929','1.585222937484','2.7647362009149','150.96044607631','89.125','3884.8343617162','132.8043017807','4160.8710563567','2022-04-20 15:59:25','2022-04-20 15:59:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13736','424','782','42.57015','-2.9683','932','1.5909143062047','2.5984832335385','150.87064695481','89.125','3884.9493954092','133.40244100708','4160.6647082206','2022-04-20 15:59:26','2022-04-20 15:59:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13737','424','783','42.57013','-2.96829','935','1.582117339324','2.4741223053052','150.304049644','89.125','3885.0643523163','133.96361720111','4160.4608939848','2022-04-20 15:59:27','2022-04-20 15:59:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13738','424','784','42.57012','-2.96828','937','1.5793492894337','2.3496891606721','150.62100637182','89.125','3885.1797218064','134.50006834942','4160.2553778967','2022-04-20 15:59:28','2022-04-20 15:59:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13739','424','785','42.57011','-2.96827','939','1.5754658640089','2.2251520099618','150.56851369144','89.125','3885.2942412741','135.00091048061','4160.0530022663','2022-04-20 15:59:29','2022-04-20 15:59:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13740','424','786','42.5701','-2.96826','941','1.5859864707172','2.3885835962966','150.60451211446','89.095','3885.4093337211','135.49104897674','4159.8489609822','2022-04-20 15:59:30','2022-04-20 15:59:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13741','424','787','42.57008','-2.96825','944','1.5738330199161','2.7592537550212','150.38876850808','89.05','3885.5242433765','136.06286854896','4159.6436136068','2022-04-20 15:59:31','2022-04-20 15:59:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13742','424','788','42.57007','-2.96824','947','1.591382133245','3.2532089814895','150.69277081978','88.99','3885.6407688429','136.73228801564','4159.4367195985','2022-04-20 15:59:32','2022-04-20 15:59:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13743','424','789','42.57006','-2.96823','950','1.5750543901478','3.6244187953776','150.68624309006','88.945','3885.7555080027','137.48887169455','4159.2314503987','2022-04-20 15:59:33','2022-04-20 15:59:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13744','424','790','42.57005','-2.96822','954','1.5866707700516','3.5006858732883','150.42627101164','88.945','3885.8700519257','138.26506110817','4159.0298854364','2022-04-20 15:59:34','2022-04-20 15:59:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13745','424','791','42.57003','-2.96821','957','1.5745377503196','3.3349102671823','150.86013926539','88.945','3885.9856489308','139.02663660767','4158.8250621572','2022-04-20 15:59:35','2022-04-20 15:59:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13746','424','792','42.57002','-2.9682','961','1.5909788569222','3.211022634485','150.37408520098','88.945','3886.0994462995','139.74985707146','4158.621683663','2022-04-20 15:59:36','2022-04-20 15:59:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13747','424','793','42.57001','-2.96819','964','1.5779166322333','3.0870781736881','151.02794153898','88.945','3886.2153989519','140.45362104941','4158.4151589934','2022-04-20 15:59:37','2022-04-20 15:59:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13748','424','794','42.57','-2.96818','967','1.5824769572864','2.9210339046153','150.69547801313','88.945','3886.3309879479','141.12321322993','4158.2089979004','2022-04-20 15:59:38','2022-04-20 15:59:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13749','424','795','42.56998','-2.96817','970','1.5839751138445','2.7968981488098','151.0248560951','88.945','3886.4460607395','141.76148269622','4158.0027455227','2022-04-20 15:59:39','2022-04-20 15:59:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13750','424','796','42.56997','-2.96817','972','1.5768620976663','2.6726377742784','150.433039311','88.945','3886.5589430815','142.35708590246','4157.8009466424','2022-04-20 15:59:40','2022-04-20 15:59:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13751','424','797','42.56996','-2.96816','975','1.5860652594497','2.5062821145508','150.55088503565','88.945','3886.6724591377','142.9200658979','4157.5996860803','2022-04-20 15:59:41','2022-04-20 15:59:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13752','424','798','42.56995','-2.96815','977','1.5870327631797','2.3817875227341','150.49279507306','88.945','3886.7816693261','143.4354791043','4157.4058916161','2022-04-20 15:59:42','2022-04-20 15:59:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13753','424','799','42.56994','-2.96814','979','1.5859488122969','2.2572862538602','151.08882006145','88.945','3886.8956924544','143.94860625731','4157.2009272264','2022-04-20 15:59:43','2022-04-20 15:59:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13754','424','800','42.56992','-2.96813','982','1.5779175069082','2.5858005009732','150.66145418392','88.9','3887.0108353309','144.46704568683','4156.9945138333','2022-04-20 15:59:44','2022-04-20 15:59:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13755','424','801','42.56991','-2.96812','985','1.5828694120293','2.9565771926214','150.29342390827','88.855','3887.1269001828','145.07533940362','4156.7886325596','2022-04-20 15:59:45','2022-04-20 15:59:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13756','424','802','42.5699','-2.96811','988','1.5838983489186','3.3276182945116','151.0906161477','88.81','3887.2427333379','145.77416041541','4156.582504928','2022-04-20 15:59:46','2022-04-20 15:59:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13757','424','803','42.56989','-2.9681','991','1.5822779018549','3.8219247789101','150.71580001155','88.75','3887.3568909019','146.56384160119','4156.3769285153','2022-04-20 15:59:47','2022-04-20 15:59:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13758','424','804','42.56987','-2.96809','995','1.5720307231274','3.6983742056706','150.68315105125','88.75','3887.4714352697','147.40246259077','4156.1713384261','2022-04-20 15:59:48','2022-04-20 15:59:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13759','424','805','42.56986','-2.96808','999','1.5755404649151','3.5747353311281','150.53465669942','88.75','3887.5867976522','148.21085147573','4155.9661193891','2022-04-20 15:59:49','2022-04-20 15:59:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13760','424','806','42.56985','-2.96807','1002','1.5914743907691','3.4090078245788','150.3218315852','88.75','3887.7026290158','148.98889503157','4155.7608967347','2022-04-20 15:59:50','2022-04-20 15:59:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13761','424','807','42.56984','-2.96806','1006','1.5881408484328','3.285189037053','150.52784040538','88.75','3887.8182462198','149.73568631885','4155.5550115668','2022-04-20 15:59:51','2022-04-20 15:59:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13762','424','808','42.56982','-2.96805','1009','1.5871698094288','3.1612817740029','150.71423197953','88.75','3887.9338884187','150.45218585263','4155.3496132428','2022-04-20 15:59:52','2022-04-20 15:59:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13763','424','809','42.56981','-2.96804','1012','1.5799374311334','2.9952857046117','150.95377119194','88.75','3888.0484136329','151.13828036964','4155.1438144003','2022-04-20 15:59:53','2022-04-20 15:59:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13764','424','810','42.5698','-2.96803','1015','1.5828738589722','2.8711981797963','150.82745231817','88.75','3888.1630853519','151.79306289169','4154.9387962512','2022-04-20 15:59:54','2022-04-20 15:59:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13765','424','811','42.56979','-2.96802','1018','1.5804425184663','2.7470220048957','150.7955200452','88.75','3888.279169099','152.41749389504','4154.7328072793','2022-04-20 15:59:55','2022-04-20 15:59:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13766','424','812','42.56977','-2.96801','1020','1.5820067318028','2.5807568489795','150.40983432444','88.75','3888.3940672086','153.01146007761','4154.5275888533','2022-04-20 15:59:56','2022-04-20 15:59:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13767','424','813','42.56976','-2.968','1023','1.5740004907039','2.4564000628513','150.54955708709','88.75','3888.5096996006','153.57405442233','4154.3223678347','2022-04-20 15:59:57','2022-04-20 15:59:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13768','424','814','42.56975','-2.968','1025','1.5792513633673','2.3319307832949','151.14066464409','88.75','3888.623598798','154.09813389836','4154.118261621','2022-04-20 15:59:58','2022-04-20 15:59:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13769','424','815','42.56974','-2.96799','1027','1.5806981631087','2.1653960007757','150.59330752198','88.75','3888.7380309538','154.59978683753','4153.9122602827','2022-04-20 15:59:59','2022-04-20 15:59:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13770','424','816','42.56972','-2.96798','1030','1.5891058872557','2.0407694129058','150.66204324714','88.75','3888.8537411106','155.07000797588','4153.7070566249','2022-04-20 16:00:00','2022-04-20 16:00:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13771','424','817','42.56971','-2.96797','1031','1.5881116521205','1.9160473310955','150.30503103598','88.75','3888.9687597453','155.50753443479','4153.5024899384','2022-04-20 16:00:01','2022-04-20 16:00:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13772','424','818','42.5697','-2.96796','1033','1.5754005514173','1.7492190083595','151.13771755536','88.75','3889.0827574253','155.9086867217','4153.3009815253','2022-04-20 16:00:02','2022-04-20 16:00:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13773','424','819','42.56969','-2.96795','1035','1.5851116619321','2.1194405248539','150.92278810128','88.705','3889.1985238069','156.32690268467','4153.0973086464','2022-04-20 16:00:03','2022-04-20 16:00:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13774','424','820','42.56967','-2.96794','1037','1.572953035064','2.4899240849241','150.79232726537','88.66','3889.3127937447','156.83483565667','4152.8933170867','2022-04-20 16:00:04','2022-04-20 16:00:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13775','424','821','42.56966','-2.96793','1040','1.571869255932','2.9836415953582','150.43551969434','88.6','3889.4256927292','157.42286724149','4152.6932920172','2022-04-20 16:00:05','2022-04-20 16:00:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13776','424','822','42.56965','-2.96792','1043','1.581582440596','3.3546565229114','150.9123936502','88.555','3889.5403506109','158.11272683063','4152.4898119042','2022-04-20 16:00:06','2022-04-20 16:00:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13777','424','823','42.56964','-2.96791','1047','1.5778086135776','3.5608427978465','150.82087257283','88.525','3889.6514998948','158.86125137487','4152.2925800307','2022-04-20 16:00:07','2022-04-20 16:00:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13778','424','824','42.56962','-2.9679','1050','1.5751102898301','3.3950266520033','150.355687376','88.525','3889.7641866518','159.60894710665','4152.0938919512','2022-04-20 16:00:08','2022-04-20 16:00:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13779','424','825','42.56961','-2.96789','1053','1.5760315215771','3.2710677905676','150.44585198909','88.525','3889.8734162628','160.30778067466','4151.9011727499','2022-04-20 16:00:09','2022-04-20 16:00:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13780','424','826','42.5696','-2.96788','1056','1.5737434237919','3.1471512184879','150.76840031119','88.525','3889.9885746102','161.02109303511','4151.6960659245','2022-04-20 16:00:10','2022-04-20 16:00:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13781','424','827','42.56959','-2.96787','1059','1.5858003852609','3.0231165244509','150.93822353219','88.525','3890.1011038373','161.69396346263','4151.4935529255','2022-04-20 16:00:11','2022-04-20 16:00:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13782','424','828','42.56958','-2.96786','1062','1.582443340838','2.8570296175935','150.58958878076','88.525','3890.2167977249','162.3489575577','4151.2865963312','2022-04-20 16:00:12','2022-04-20 16:00:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13783','424','829','42.56956','-2.96785','1065','1.5808325191957','2.7328441029288','150.48425064967','88.525','3890.3323161428','162.97019086506','4151.0811975731','2022-04-20 16:00:13','2022-04-20 16:00:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13784','424','830','42.56955','-2.96785','1068','1.5907334962653','2.5665700104234','150.4652407075','88.525','3890.4479876717','163.56109738833','4150.8761316393','2022-04-20 16:00:14','2022-04-20 16:00:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13785','424','831','42.56954','-2.96784','1070','1.5902439173015','2.4422040090941','150.29212738801','88.525','3890.5631595325','164.1205366842','4150.6699389431','2022-04-20 16:00:15','2022-04-20 16:00:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13786','424','832','42.56953','-2.96783','1073','1.5912254190067','2.3177491768195','150.40998970646','88.525','3890.6792858372','164.6495625395','4150.4647370156','2022-04-20 16:00:16','2022-04-20 16:00:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13787','424','833','42.56951','-2.96782','1075','1.5863226732053','2.1512053188879','150.351344967','88.525','3890.7950185428','165.14810828991','4150.2593228226','2022-04-20 16:00:17','2022-04-20 16:00:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13788','424','834','42.5695','-2.96781','1077','1.5809810860945','2.3566165108008','150.75754792429','88.495','3890.9098190956','165.63126425831','4150.0544204749','2022-04-20 16:00:18','2022-04-20 16:00:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13789','424','835','42.56949','-2.9678','1080','1.5727442158535','2.7272751590434','150.99030573107','88.45','3891.025128898','166.19914293628','4149.848024043','2022-04-20 16:00:19','2022-04-20 16:00:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13790','424','836','42.56948','-2.96779','1083','1.5897490848974','3.2211812262025','150.74858855994','88.39','3891.1386237737','166.85173151455','4149.6434423192','2022-04-20 16:00:20','2022-04-20 16:00:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13791','424','837','42.56946','-2.96778','1086','1.5746322675279','3.5923811008167','151.07206093119','88.345','3891.2544717342','167.60491224063','4149.4361358758','2022-04-20 16:00:21','2022-04-20 16:00:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13792','424','838','42.56945','-2.96777','1090','1.5817879914103','3.6337591137685','151.08326706591','88.33','3891.3691102541','168.41908297113','4149.2310960359','2022-04-20 16:00:22','2022-04-20 16:00:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13793','424','839','42.56944','-2.96776','1093','1.5874694549769','3.4680472906126','150.86977907435','88.33','3891.4835551329','169.20249611918','4149.0271659424','2022-04-20 16:00:23','2022-04-20 16:00:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13794','424','840','42.56943','-2.96775','1097','1.5811337866004','3.3442781199263','151.16036546517','88.33','3891.5994184199','169.96627494155','4148.8211533868','2022-04-20 16:00:24','2022-04-20 16:00:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13795','424','841','42.56941','-2.96774','1100','1.5844324554588','3.2203883272483','150.43996371194','88.33','3891.7133127599','170.68875588327','4148.6172127323','2022-04-20 16:00:25','2022-04-20 16:00:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13796','424','842','42.5694','-2.96773','1103','1.5913699093845','3.0544210070697','150.61847356106','88.33','3891.8286390086','171.38469339438','4148.4131231975','2022-04-20 16:00:26','2022-04-20 16:00:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13797','424','843','42.56939','-2.96772','1106','1.575336099021','2.9303626528643','150.95438018804','88.33','3891.9441003212','172.04946318622','4148.2073986071','2022-04-20 16:00:27','2022-04-20 16:00:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13798','424','844','42.56938','-2.96771','1109','1.5772583285958','2.8062253180806','150.97618121598','88.33','3892.0595061636','172.68719205084','4148.0017373173','2022-04-20 16:00:28','2022-04-20 16:00:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13799','424','845','42.56936','-2.9677','1111','1.5820474413382','2.6399991639001','150.33207646713','88.33','3892.1750308185','173.29451142879','4147.7966514508','2022-04-20 16:00:29','2022-04-20 16:00:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13800','424','846','42.56935','-2.96769','1114','1.5796797228484','2.5156643873737','150.85760665152','88.33','3892.2903263122','173.86464129749','4147.5926419494','2022-04-20 16:00:30','2022-04-20 16:00:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13801','424','847','42.56934','-2.96768','1117','1.5863649495476','2.7213004086167','150.31349585668','88.3','3892.4040617654','174.42477307034','4147.391234021','2022-04-20 16:00:31','2022-04-20 16:00:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13802','424','848','42.56933','-2.96768','1120','1.5747715140164','3.2152026142287','150.504375672','88.24','3892.5189564264','175.07603955377','4147.1867909608','2022-04-20 16:00:32','2022-04-20 16:00:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13803','424','849','42.56931','-2.96767','1123','1.5804956479012','3.5863435613907','151.00069717802','88.195','3892.6316978812','175.80904502942','4146.984733916','2022-04-20 16:00:33','2022-04-20 16:00:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13804','424','850','42.5693','-2.96766','1127','1.5771905659891','3.9577431336287','150.87047581665','88.15','3892.7441166522','176.63059710734','4146.7830958393','2022-04-20 16:00:34','2022-04-20 16:00:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13805','424','851','42.56929','-2.96765','1130','1.5781196729925','3.9570880509065','150.57527788623','88.135','3892.8474115679','177.43343672669','4146.5986525488','2022-04-20 16:00:35','2022-04-20 16:00:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13806','424','852','42.56928','-2.96764','1134','1.5891466384517','3.8335869793616','150.31430584791','88.135','3892.9612781224','178.28900582871','4146.3961743328','2022-04-20 16:00:36','2022-04-20 16:00:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13807','424','853','42.56927','-2.96763','1138','1.5759009506281','3.7100363428609','150.43154439315','88.135','3893.0750703497','179.12760515927','4146.190793511','2022-04-20 16:00:37','2022-04-20 16:00:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13808','424','854','42.56925','-2.96762','1141','1.5801229239243','3.5443732979175','150.50610524764','88.135','3893.189577983','179.92771871799','4145.9878202665','2022-04-20 16:00:38','2022-04-20 16:00:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13809','424','855','42.56924','-2.96761','1145','1.58777467442','3.4206427111957','151.03395884413','88.135','3893.3041631244','180.70470770164','4145.7822883972','2022-04-20 16:00:39','2022-04-20 16:00:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13810','424','856','42.56923','-2.9676','1148','1.5752774886338','3.2968238426667','150.33141516269','88.135','3893.4195231586','181.45147125551','4145.5760025068','2022-04-20 16:00:40','2022-04-20 16:00:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13811','424','857','42.56922','-2.96759','1151','1.5731099163183','3.1309163616037','150.34417806468','88.135','3893.535685471','182.16789614726','4145.3705188241','2022-04-20 16:00:41','2022-04-20 16:00:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13812','424','858','42.5692','-2.96758','1154','1.5751445501121','3.0069174825891','150.47619365958','88.135','3893.6512260907','182.85302872119','4145.1658623883','2022-04-20 16:00:42','2022-04-20 16:00:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13813','424','859','42.56919','-2.96757','1157','1.5837569120698','2.8828298747512','150.57148855027','88.135','3893.7662662937','183.50778281848','4144.960911447','2022-04-20 16:00:43','2022-04-20 16:00:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13814','424','860','42.56918','-2.96756','1160','1.5841105399104','2.7166536162335','150.40774137608','88.135','3893.882708494','184.13218519348','4144.7557714448','2022-04-20 16:00:44','2022-04-20 16:00:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13815','424','861','42.56917','-2.96755','1163','1.5760553761509','2.5923853760167','150.40598943183','88.135','3893.9984360968','184.72509539045','4144.5501893979','2022-04-20 16:00:45','2022-04-20 16:00:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13816','424','862','42.56915','-2.96754','1165','1.5814784146675','2.4680285047544','150.35465875503','88.135','3894.1140415848','185.28766058744','4144.344321095','2022-04-20 16:00:46','2022-04-20 16:00:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13817','424','863','42.56914','-2.96753','1168','1.586963482164','2.3015825350769','150.54466632089','88.135','3894.2303274807','185.819720769','4144.1397924096','2022-04-20 16:00:47','2022-04-20 16:00:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13818','424','864','42.56913','-2.96752','1170','1.9025702965587','2.1770446813393','147.08509129609','88.135','3894.3538755651','186.32032220168','4143.9282499375','2022-04-20 16:00:48','2022-04-20 16:00:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13819','424','865','42.56911','-2.9675','1172','3.1818689381282','2.0524180214262','132.55297688668','88.135','3894.590819774','186.79051867429','4143.6453148188','2022-04-20 16:00:49','2022-04-20 16:00:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13820','424','866','42.56909','-2.96747','1174','4.0757986577894','1.8857022242703','122.39843709593','88.135','3895.003844215','187.23019683792','4143.3196967948','2022-04-20 16:00:50','2022-04-20 16:00:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13821','424','867','42.56907','-2.96742','1176','4.9086947948202','1.7608766708288','112.93720454148','88.135','3895.586692962','187.63229726034','4143.0157607908','2022-04-20 16:00:51','2022-04-20 16:00:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13822','424','868','42.56906','-2.96736','1178','5.9245977320922','1.6359742369054','101.39711747067','88.135','3896.3441919077','188.00807577479','4142.7754228983','2022-04-20 16:00:52','2022-04-20 16:00:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13823','424','869','42.56905','-2.96729','1179','6.6227068054976','1.4689775774369','93.466990293697','88.135','3897.248942456','188.35159387583','4142.6458962954','2022-04-20 16:00:53','2022-04-20 16:00:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13824','424','870','42.56905','-2.9672','1181','7.274402263469','1.6739279592824','86.064095732887','88.105','3898.2669486993','188.67698027913','4142.6501066511','2022-04-20 16:00:54','2022-04-20 16:00:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13825','424','871','42.56906','-2.96711','1183','8.364056310585','2.0441347051787','73.686237455847','88.06','3899.4024309523','189.0901391676','4142.8341766721','2022-04-20 16:00:55','2022-04-20 16:00:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13826','424','872','42.56909','-2.96701','1185','9.3733595139006','2.5375906124821','62.221119657892','88','3900.6061201688','189.58860454048','4143.2911400244','2022-04-20 16:00:56','2022-04-20 16:00:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13827','424','873','42.56914','-2.96691','1187','10.530292066842','2.9082907734506','49.07901532275','87.955','3901.8008474397','190.17069611261','4144.1044507976','2022-04-20 16:00:57','2022-04-20 16:00:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13828','424','874','42.56921','-2.96682','1190','11.610248765846','3.2792591207779','37.110921069508','87.91','3902.8721842668','190.8446078254','4145.3390750027','2022-04-20 16:00:58','2022-04-20 16:00:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13829','424','875','42.56929','-2.96674','1194','11.597660112578','3.2783385719111','36.542620291393','87.895','3903.86157207','191.55655863577','4146.6613074411','2022-04-20 16:00:59','2022-04-20 16:00:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13830','424','876','42.56937','-2.96666','1197','11.605236887679','3.1542976767479','36.97635308679','87.895','3904.8379975952','192.22730595653','4147.9536173355','2022-04-20 16:01:00','2022-04-20 16:01:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13831','424','877','42.56946','-2.96658','1200','11.594154213058','3.0303058011709','37.26241934897','87.895','3905.8758736492','192.91483632811','4149.3353867487','2022-04-20 16:01:01','2022-04-20 16:01:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13832','424','878','42.56954','-2.96649','1203','11.59432666186','2.8641966207876','36.954788636127','87.895','3906.8979621649','193.56220453837','4150.6973244859','2022-04-20 16:01:02','2022-04-20 16:01:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13833','424','879','42.56962','-2.96641','1205','11.594048791157','2.7400244913308','37.105092853608','87.895','3907.9414504441','194.18802059806','4152.0745652511','2022-04-20 16:01:03','2022-04-20 16:01:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13834','424','880','42.56971','-2.96632','1208','11.592364928296','2.6157455803011','36.944546255388','87.895','3908.9687819462','194.77727738201','4153.4433743364','2022-04-20 16:01:04','2022-04-20 16:01:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13835','424','881','42.56979','-2.96624','1211','11.609941625666','2.449371295133','36.673554640978','87.895','3910.0036988918','195.33388050366','4154.803505954','2022-04-20 16:01:05','2022-04-20 16:01:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13836','424','882','42.56987','-2.96615','1213','11.593884143249','2.3249297117884','36.576555852851','87.895','3911.0419964826','195.86744245327','4156.1851330738','2022-04-20 16:01:06','2022-04-20 16:01:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13837','424','883','42.56996','-2.96607','1215','11.59895075994','2.2003695810076','36.703585291917','87.895','3912.0738505946','196.36041679689','4157.5362942351','2022-04-20 16:01:07','2022-04-20 16:01:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13838','424','884','42.57004','-2.96598','1217','11.608314262643','2.0337498872757','37.167793746461','87.895','3913.109389488','196.83299831153','4158.9215315728','2022-04-20 16:01:08','2022-04-20 16:01:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13839','424','885','42.57012','-2.9659','1219','11.608625909019','1.9090383329403','37.155216684977','87.895','3914.1475076683','197.27412910822','4160.3050565726','2022-04-20 16:01:09','2022-04-20 16:01:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13840','424','886','42.57021','-2.96581','1221','11.602516318239','1.7842375868564','36.832265648627','87.895','3915.1834031357','197.68472293452','4161.6900594242','2022-04-20 16:01:10','2022-04-20 16:01:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13841','424','887','42.57029','-2.96573','1223','11.593541330889','1.6173475904773','36.93621704484','87.895','3916.218317653','198.06475974559','4163.075243193','2022-04-20 16:01:11','2022-04-20 16:01:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13842','424','888','42.57038','-2.96564','1224','11.598283451396','1.492365557917','36.686080488823','87.895','3917.2523315966','198.41328572538','4164.4605438451','2022-04-20 16:01:12','2022-04-20 16:01:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13843','424','889','42.57046','-2.96555','1226','11.608507255954','1.3672940214827','37.124493146056','87.895','3918.2900378596','198.73116787104','4165.8426663853','2022-04-20 16:01:13','2022-04-20 16:01:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13844','424','890','42.57054','-2.96547','1227','11.605745643907','1.2001287531713','36.473230832834','87.895','3919.320737595','199.01695862258','4167.2198603005','2022-04-20 16:01:14','2022-04-20 16:01:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13845','424','891','42.57063','-2.96539','1228','11.6103246294','1.0748720857898','37.086440589179','87.895','3920.3548130804','199.27145667338','4168.5947578412','2022-04-20 16:01:15','2022-04-20 16:01:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13846','424','892','42.57071','-2.9653','1229','11.593837107558','0.94950737331913','37.111332418445','87.895','3921.3623852942','199.48896285285','4169.924680931','2022-04-20 16:01:16','2022-04-20 16:01:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13847','424','893','42.57079','-2.96522','1230','11.6108884317','0.78206940939747','36.688053162875','87.895','3922.3931462218','199.68138961155','4171.2947613427','2022-04-20 16:01:17','2022-04-20 16:01:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13848','424','894','42.57088','-2.96513','1231','11.603779307594','0.6565378732799','36.90756933746','87.895','3923.4262581339','199.84177964689','4172.6575423821','2022-04-20 16:01:18','2022-04-20 16:01:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13849','424','895','42.57096','-2.96505','1231','11.610271830419','0.53091116460406','36.468388636623','87.895','3924.4363382698','199.96958503577','4174.0173018228','2022-04-20 16:01:19','2022-04-20 16:01:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13850','424','896','42.57104','-2.96496','1232','11.602341735418','0.36320705766753','37.231308026958','87.895','3925.4713095426','200.07089124247','4175.4019949747','2022-04-20 16:01:20','2022-04-20 16:01:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13851','424','897','42.57112','-2.96488','1232','11.600778004401','0.23740739136004','36.930069444445','87.895','3926.500469596','200.13948036796','4176.7625503668','2022-04-20 16:01:21','2022-04-20 16:01:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13852','424','898','42.5712','-2.9648','1232','11.608638495542','0.1115119327437','36.936064450175','87.895','3927.4904637051','200.17527266028','4178.0524361957','2022-04-20 16:01:22','2022-04-20 16:01:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13853','424','899','42.57128','-2.96472','1232','11.600716302897','-0.056465983210471','37.023864468289','87.895','3928.4645334294','200.18283367197','4179.340036546','2022-04-20 16:01:23','2022-04-20 16:01:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13854','424','900','42.57136','-2.96464','1232','11.599525330823','-0.18252735565857','37.150161327984','87.895','3929.4165627705','200.16182131757','4180.5824944819','2022-04-20 16:01:24','2022-04-20 16:01:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13855','424','901','42.57143','-2.96456','1232','11.610551180456','-0.30867397336639','36.502363646676','87.895','3930.3612507307','200.1116231695','4181.8293868771','2022-04-20 16:01:25','2022-04-20 16:01:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13856','424','902','42.57152','-2.96448','1232','11.608087638985','-0.47692357756529','37.316800760868','87.895','3931.395698305','200.02616508451','4183.2150867185','2022-04-20 16:01:26','2022-04-20 16:01:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13857','424','903','42.5716','-2.96439','1231','11.601828758218','-0.60326610104781','36.495353710717','87.895','3932.4316114879','199.90889381659','4184.5993618833','2022-04-20 16:01:27','2022-04-20 16:01:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13858','424','904','42.57168','-2.96431','1231','11.594963225931','-0.7296949558946','37.152609038451','87.895','3933.4597052892','199.76206490061','4185.966895933','2022-04-20 16:01:28','2022-04-20 16:01:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13859','424','905','42.57177','-2.96422','1230','11.59880182734','-0.89821790198847','37.196775754586','87.895','3934.5018021381','199.58302155145','4187.3461405243','2022-04-20 16:01:29','2022-04-20 16:01:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13860','424','906','42.57185','-2.96414','1229','11.607129201914','-1.0248339449622','36.884803188893','87.895','3935.5382987314','199.37210421496','4188.729707397','2022-04-20 16:01:30','2022-04-20 16:01:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13861','424','907','42.57194','-2.96405','1228','11.591951441644','-1.1515405531975','36.790617288668','87.895','3936.580237607','199.13017965241','4190.1090854795','2022-04-20 16:01:31','2022-04-20 16:01:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13862','424','908','42.57202','-2.96397','1226','11.602667538152','-1.3203375132659','37.078659555259','87.895','3937.6166573145','198.85732093623','4191.4927605277','2022-04-20 16:01:32','2022-04-20 16:01:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13863','424','909','42.5721','-2.96388','1225','11.607330228012','-1.4472278846013','36.460869902998','87.895','3938.6528259305','198.55248059464','4192.876646061','2022-04-20 16:01:33','2022-04-20 16:01:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13864','424','910','42.57219','-2.96379','1224','11.604446123057','-1.5742088629923','36.935250447632','87.895','3939.691332815','198.21661871777','4194.2593265072','2022-04-20 16:01:34','2022-04-20 16:01:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13865','424','911','42.57227','-2.96371','1222','11.594500490037','-1.7432802349934','37.275276726361','87.895','3940.730944268','197.84980838391','4195.6405014924','2022-04-20 16:01:35','2022-04-20 16:01:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13866','424','912','42.57236','-2.96362','1220','11.609695037851','-1.8704450601541','37.222137302483','87.895','3941.771759619','197.45100208168','4197.0204304597','2022-04-20 16:01:36','2022-04-20 16:01:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13867','424','913','42.57244','-2.96354','1218','11.599373838925','-1.9977009434419','37.23036870168','87.895','3942.8081136244','197.02101980885','4198.4040978959','2022-04-20 16:01:37','2022-04-20 16:01:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13868','424','914','42.57252','-2.96345','1216','11.594774836553','-2.1670473989069','36.912544907434','87.895','3943.8482501097','196.56002794221','4199.7851013716','2022-04-20 16:01:38','2022-04-20 16:01:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13869','424','915','42.57261','-2.96337','1214','11.611135081712','-2.2944803093973','37.188796967365','87.895','3944.8816788736','196.06943608912','4201.1601464887','2022-04-20 16:01:39','2022-04-20 16:01:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13870','424','916','42.57269','-2.96328','1212','11.60244884436','-2.4220116289697','36.610710456524','87.895','3945.9228434695','195.54515148675','4202.5406922816','2022-04-20 16:01:40','2022-04-20 16:01:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13871','424','917','42.57278','-2.9632','1209','11.599367117522','-2.5916176892857','37.352443970784','87.895','3946.9492823155','194.99527756796','4203.9104299404','2022-04-20 16:01:41','2022-04-20 16:01:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13872','424','918','42.57286','-2.96311','1207','11.60341965477','-2.2241815777511','37.209329925944','87.85','3947.9789862633','194.45984221077','4205.2709710267','2022-04-20 16:01:42','2022-04-20 16:01:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13873','424','919','42.57294','-2.96303','1205','11.608978372433','-1.856499661396','37.245834980144','87.805','3949.0122347729','194.0085641287','4206.6510528884','2022-04-20 16:01:43','2022-04-20 16:01:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13874','424','920','42.57303','-2.96294','1203','11.604993170941','-1.3655625696264','37.099307710599','87.745','3950.05802976','193.64465157314','4208.028479727','2022-04-20 16:01:44','2022-04-20 16:01:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13875','424','921','42.57311','-2.96286','1202','11.598679621472','-0.99734281066968','36.687636273038','87.7','3951.0848769602','193.37751702298','4209.3983032084','2022-04-20 16:01:45','2022-04-20 16:01:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13876','424','922','42.57319','-2.96277','1201','11.610669376454','-0.62886065125403','37.31950927055','87.655','3952.1039195757','193.20022166951','4210.7556666686','2022-04-20 16:01:46','2022-04-20 16:01:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13877','424','923','42.57327','-2.96269','1201','11.608882784927','-0.467138230759','36.801956118581','87.625','3953.0866140612','193.1051855562','4212.0437872413','2022-04-20 16:01:47','2022-04-20 16:01:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13878','424','924','42.57335','-2.96261','1200','11.597564856377','-0.5934562036275','36.671945457388','87.625','3954.0721877613','192.99631978975','4213.3506053971','2022-04-20 16:01:48','2022-04-20 16:01:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13879','424','925','42.57343','-2.96253','1199','11.593708872051','-0.71985921543865','36.718681966973','87.625','3955.056182449','192.8583388673','4214.6542492893','2022-04-20 16:01:49','2022-04-20 16:01:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13880','424','926','42.57351','-2.96245','1199','11.601540072661','-0.88833989364753','36.459847769826','87.625','3956.0234211772','192.69376695942','4215.942327277','2022-04-20 16:01:50','2022-04-20 16:01:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13881','424','927','42.57358','-2.96237','1198','11.597973060367','-1.014898002858','36.569516410538','87.625','3956.9698700649','192.50268465971','4217.2102869077','2022-04-20 16:01:51','2022-04-20 16:01:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13882','424','928','42.57366','-2.9623','1197','11.5947840846','-1.1415288039011','37.354859350102','87.625','3957.9024109141','192.28671453824','4218.4559289031','2022-04-20 16:01:52','2022-04-20 16:01:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13883','424','929','42.57373','-2.96222','1196','11.601658923009','-1.3102359248841','36.817779666184','87.625','3958.840099174','192.044614424','4219.6900663404','2022-04-20 16:01:53','2022-04-20 16:01:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13884','424','930','42.57381','-2.96215','1195','11.605658464','-1.4369915202415','36.49103698601','87.625','3959.7304057834','191.78591792546','4220.8742791004','2022-04-20 16:01:54','2022-04-20 16:01:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13885','424','931','42.57388','-2.96207','1193','11.604550855844','-1.5638149926817','37.092080043708','87.625','3960.6109733716','191.50398205221','4222.0434580348','2022-04-20 16:01:55','2022-04-20 16:01:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13886','424','932','42.57395','-2.962','1192','11.607544795781','-1.7326822297062','36.573562705056','87.625','3961.4604234459','191.20706230616','4223.1793583716','2022-04-20 16:01:56','2022-04-20 16:01:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13887','424','933','42.57402','-2.96193','1190','11.605938896617','-1.8597389841377','37.289750981427','87.625','3962.404495871','190.84525665376','4224.4378850099','2022-04-20 16:01:57','2022-04-20 16:01:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13888','424','934','42.57411','-2.96184','1188','11.345523695008','-1.986987913188','39.818441672701','87.625','3963.4493564766','190.41765533372','4225.8152434492','2022-04-20 16:01:58','2022-04-20 16:01:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13889','424','935','42.57418','-2.96175','1186','10.417545394207','-2.1563275463143','50.359754231387','87.625','3964.5805438232','189.95899926114','4226.994965043','2022-04-20 16:01:59','2022-04-20 16:01:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13890','424','936','42.57423','-2.96165','1184','9.4321945300987','-2.2837608068076','61.552786902046','87.625','3965.8009686804','189.46828757602','4227.8272313292','2022-04-20 16:02:00','2022-04-20 16:02:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13891','424','937','42.57426','-2.96155','1182','8.0347787069136','-2.4112776074116','77.426646187256','87.625','3967.0138222681','188.94897389657','4228.3092905602','2022-04-20 16:02:01','2022-04-20 16:02:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13892','424','938','42.57427','-2.96145','1179','6.9154314687586','-2.5808928420998','90.141802445657','87.625','3968.1331687427','188.39595890775','4228.4637215404','2022-04-20 16:02:02','2022-04-20 16:02:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13893','424','939','42.57426','-2.96138','1177','5.7971948143266','-2.2134734254299','102.84434309641','87.58','3969.0715613366','187.85480765642','4228.3606919215','2022-04-20 16:02:03','2022-04-20 16:02:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13894','424','940','42.57425','-2.96132','1175','4.5536271378822','-1.8457913799457','116.97057380025','87.535','3969.8044004358','187.40357378486','4228.1053727512','2022-04-20 16:02:04','2022-04-20 16:02:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13895','424','941','42.57423','-2.96127','1173','3.8141826490548','-1.5198469330025','125.37024809199','87.49','3970.3515953256','187.04217945239','4227.7867430303','2022-04-20 16:02:05','2022-04-20 16:02:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13896','424','942','42.57421','-2.96124','1172','3.1157821015957','-1.6468668976247','133.30368625058','87.49','3970.7528819581','186.69296968846','4227.4610008647','2022-04-20 16:02:06','2022-04-20 16:02:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13897','424','943','42.57419','-2.96122','1170','2.0955381713986','-1.7739775535086','144.89308456412','87.49','3971.0188523343','186.31270955924','4227.1649969372','2022-04-20 16:02:07','2022-04-20 16:02:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13898','424','944','42.57418','-2.96121','1168','1.5909556167685','-1.9431788236517','150.76105606671','87.49','3971.1629887532','185.90142542842','4226.9366992169','2022-04-20 16:02:08','2022-04-20 16:02:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13899','424','945','42.57416','-2.9612','1166','1.5785379763437','-2.0704669090134','150.99005051277','87.49','3971.2773731049','185.46041799021','4226.7319887962','2022-04-20 16:02:09','2022-04-20 16:02:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13900','424','946','42.57415','-2.96119','1164','1.5872868128107','-2.1978255392872','151.0514772072','87.49','3971.3911360767','184.99525778086','4226.529601656','2022-04-20 16:02:10','2022-04-20 16:02:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13901','424','947','42.57414','-2.96118','1162','1.5811685823301','-2.3672947108323','151.16204769027','87.49','3971.5054611215','184.49225107136','4226.324449666','2022-04-20 16:02:11','2022-04-20 16:02:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13902','424','948','42.57413','-2.96117','1160','1.5758185751663','-2.49479442522','150.98403913113','87.49','3971.6177344491','183.97878727476','4226.1267906222','2022-04-20 16:02:12','2022-04-20 16:02:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13903','424','949','42.57411','-2.96116','1157','1.5851992574475','-2.6223976244207','151.10032045283','87.49','3971.7298835679','183.42989292858','4225.9282357693','2022-04-20 16:02:13','2022-04-20 16:02:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13904','424','950','42.5741','-2.96115','1154','1.5843507754813','-2.7920799269872','150.64484162251','87.49','3971.8422976255','182.85391561591','4225.7265400353','2022-04-20 16:02:14','2022-04-20 16:02:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13905','424','951','42.57409','-2.96114','1152','1.5782691936249','-2.9198985245412','150.28729575823','87.49','3971.9556400448','182.23127439023','4225.5246028535','2022-04-20 16:02:15','2022-04-20 16:02:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13906','424','952','42.57408','-2.96113','1149','1.5900594791968','-3.0477879775082','151.15145716808','87.49','3972.0685313866','181.58437408584','4225.3245606518','2022-04-20 16:02:16','2022-04-20 16:02:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13907','424','953','42.57407','-2.96112','1146','1.5760653887453','-3.2177048812147','151.01778044592','87.49','3972.1775873961','180.92807535129','4225.1297368616','2022-04-20 16:02:17','2022-04-20 16:02:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13908','424','954','42.57405','-2.96111','1143','1.5724212138921','-3.3456578575229','150.4387685951','87.49','3972.2837598397','180.25942628178','4224.9407156806','2022-04-20 16:02:18','2022-04-20 16:02:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13909','424','955','42.57404','-2.9611','1140','1.5859424261313','-2.9785763248597','150.96793078085','87.445','3972.3926984822','179.60259220024','4224.7489259982','2022-04-20 16:02:19','2022-04-20 16:02:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13910','424','956','42.57403','-2.9611','1137','1.5794039772158','-2.4882418040944','150.5433339529','87.385','3972.5007235086','179.03237476553','4224.5567429894','2022-04-20 16:02:20','2022-04-20 16:02:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13911','424','957','42.57402','-2.96109','1135','1.5832299500733','-2.1206558240213','150.63086284215','87.34','3972.6088604724','178.54825055756','4224.3657835068','2022-04-20 16:02:21','2022-04-20 16:02:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13912','424','958','42.57401','-2.96108','1133','1.572853804527','-1.752799464812','150.51281336104','87.295','3972.7136310422','178.15669724103','4224.1781283853','2022-04-20 16:02:22','2022-04-20 16:02:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13913','424','959','42.574','-2.96107','1132','1.5898759549916','-1.2616797260045','151.11606879688','87.235','3972.8161576068','177.85531835342','4223.9940629133','2022-04-20 16:02:23','2022-04-20 16:02:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13914','424','960','42.57398','-2.96106','1131','1.5787951513897','-0.89340340142449','150.83670514896','87.19','3972.9318153731','177.60755042396','4223.7879345625','2022-04-20 16:02:24','2022-04-20 16:02:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13915','424','961','42.57397','-2.96105','1130','1.5864194605917','-0.52485928488611','150.71591903324','87.145','3973.0454598967','177.4514676025','4223.583868011','2022-04-20 16:02:25','2022-04-20 16:02:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13916','424','962','42.57396','-2.96104','1130','1.5793782408961','-0.033056813452905','151.15401087704','87.085','3973.161407371','177.38383888021','4223.3785507768','2022-04-20 16:02:26','2022-04-20 16:02:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13917','424','963','42.57395','-2.96103','1130','1.5914016718067','0.336016776214','150.90933389408','87.04','3973.2764125285','177.40903409743','4223.1724773572','2022-04-20 16:02:27','2022-04-20 16:02:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13918','424','964','42.57393','-2.96102','1131','1.5811691221084','0.70535446884034','150.47885233357','86.995','3973.3916573535','177.52465140391','4222.9659815172','2022-04-20 16:02:28','2022-04-20 16:02:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13919','424','965','42.57392','-2.96101','1131','1.5751259872823','0.86792389186246','150.85053099709','86.965','3973.5068359565','177.71960726298','4222.7607384469','2022-04-20 16:02:29','2022-04-20 16:02:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13920','424','966','42.57391','-2.961','1132','1.5773777339619','0.74245520018839','151.15985533347','86.965','3973.6222534884','177.90151362623','4222.5553820493','2022-04-20 16:02:30','2022-04-20 16:02:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13921','424','967','42.5739','-2.96099','1133','1.5777811335209','0.6168966884548','151.18022357956','86.965','3973.7370264711','178.05266790153','4222.3495207589','2022-04-20 16:02:31','2022-04-20 16:02:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13922','424','968','42.57388','-2.96098','1133','1.584271505902','0.44924843429165','150.96529502963','86.965','3973.8526788711','178.17309666737','4222.1439422685','2022-04-20 16:02:32','2022-04-20 16:02:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13923','424','969','42.57387','-2.96097','1134','1.5873894164061','0.32350765144043','150.28435410213','86.965','3973.9682095462','178.2618459802','4221.9389044079','2022-04-20 16:02:33','2022-04-20 16:02:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13924','424','970','42.57386','-2.96096','1134','1.5829606748607','0.19767700818836','150.96137997271','86.965','3974.0842915007','178.31982939323','4221.7333073485','2022-04-20 16:02:34','2022-04-20 16:02:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13925','424','971','42.57385','-2.96096','1134','1.5797128846475','0.02975607632501','150.85820526628','86.965','3974.1992045127','178.34690029818','4221.5280922173','2022-04-20 16:02:35','2022-04-20 16:02:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13926','424','972','42.57383','-2.96095','1134','1.5750091425576','-0.096257152179365','150.61087872321','86.965','3974.3138324493','178.34237119708','4221.3237807856','2022-04-20 16:02:36','2022-04-20 16:02:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13927','424','973','42.57382','-2.96094','1134','1.5906968776272','-0.2223604578059','150.39038149184','86.965','3974.429366617','178.30700199635','4221.1181880505','2022-04-20 16:02:37','2022-04-20 16:02:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13928','424','974','42.57381','-2.96093','1134','1.5878868967635','-0.39055399618073','150.58840269703','86.965','3974.5445116247','178.2407394136','4220.9127190538','2022-04-20 16:02:38','2022-04-20 16:02:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13929','424','975','42.5738','-2.96092','1133','1.5905805030027','-0.51684028099589','151.09083359592','86.965','3974.6596547033','178.14272282504','4220.7070563709','2022-04-20 16:02:39','2022-04-20 16:02:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13930','424','976','42.57378','-2.96091','1133','1.5885728045775','-0.64321496498254','150.56116489994','86.965','3974.7754835433','178.01444062418','4220.5019135579','2022-04-20 16:02:40','2022-04-20 16:02:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13931','424','977','42.57377','-2.9609','1132','1.5737955883494','-0.81167964741385','150.45711413314','86.965','3974.8912420292','177.85534526086','4220.2978143053','2022-04-20 16:02:41','2022-04-20 16:02:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13932','424','978','42.57376','-2.96089','1131','1.5821244080372','-0.93823379533355','150.37833896331','86.965','3975.0051687798','177.66561920565','4220.0941219812','2022-04-20 16:02:42','2022-04-20 16:02:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13933','424','979','42.57375','-2.96088','1130','1.577581174218','-1.0648614504687','150.56040582463','86.965','3975.1168708628','177.4507261625','4219.8937764976','2022-04-20 16:02:43','2022-04-20 16:02:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13934','424','980','42.57374','-2.96087','1129','1.5864879777024','-1.233568652428','150.52480448951','86.965','3975.2274857005','177.20859832405','4219.6979317778','2022-04-20 16:02:44','2022-04-20 16:02:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13935','424','981','42.57372','-2.96086','1128','1.5726651112518','-1.3603570779977','150.33083685427','86.965','3975.3359534429','176.93866160166','4219.5042901191','2022-04-20 16:02:45','2022-04-20 16:02:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13936','424','982','42.57371','-2.96085','1127','1.5740294439504','-1.4872399430669','150.36409107014','86.965','3975.4467388001','176.63639121337','4219.3079469254','2022-04-20 16:02:46','2022-04-20 16:02:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13937','424','983','42.5737','-2.96084','1125','1.5770497719752','-1.326153639905','150.69226213586','86.935','3975.5554312097','176.32356481703','4219.1164199718','2022-04-20 16:02:47','2022-04-20 16:02:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13938','424','984','42.57369','-2.96084','1124','1.589139264326','-0.95786024834489','151.0109179002','86.89','3975.6616690817','176.08164018443','4218.9269435681','2022-04-20 16:02:48','2022-04-20 16:02:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13939','424','985','42.57368','-2.96083','1123','1.5816696796135','-0.58930733010619','150.42088528748','86.845','3975.7654340539','175.92857083974','4218.7441562162','2022-04-20 16:02:49','2022-04-20 16:02:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13940','424','986','42.57367','-2.96082','1123','1.5826481017026','-0.097514124264248','150.65916050753','86.784999999999','3975.8683869851','175.85776981631','4218.564716334','2022-04-20 16:02:50','2022-04-20 16:02:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13941','424','987','42.57366','-2.96081','1123','1.5741706797384','0.10650354299801','150.53451270825','86.754999999999','3975.969912559','175.86381863442','4218.3859578329','2022-04-20 16:02:51','2022-04-20 16:02:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13942','424','988','42.57364','-2.9608','1123','1.5891062411288','-0.019475099817526','150.82866365522','86.754999999999','3976.0668966697','175.8711307874','4218.2117684049','2022-04-20 16:02:52','2022-04-20 16:02:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13943','424','989','42.57363','-2.96079','1123','1.5836167603823','-0.18753617977155','150.35725508168','86.754999999999','3976.1808991395','175.85021857548','4218.0076322286','2022-04-20 16:02:53','2022-04-20 16:02:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13944','424','990','42.57362','-2.96078','1123','1.5838125832182','-0.31369120163597','150.42474909708','86.754999999999','3976.2965519907','175.79714305943','4217.801195559','2022-04-20 16:02:54','2022-04-20 16:02:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13945','424','991','42.57361','-2.96077','1122','1.5800239696449','-0.43993574369705','150.51417852128','86.754999999999','3976.4109900315','175.71341812077','4217.5947274136','2022-04-20 16:02:55','2022-04-20 16:02:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13946','424','992','42.57359','-2.96076','1122','1.5852035599715','-0.60826877171895','150.38708395171','86.754999999999','3976.5266712195','175.59939785538','4217.3892585314','2022-04-20 16:02:56','2022-04-20 16:02:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13947','424','993','42.57358','-2.96075','1121','1.5754323117976','-0.73469845149207','150.68686412982','86.754999999999','3976.6428568475','175.45228650576','4217.183988043','2022-04-20 16:02:57','2022-04-20 16:02:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13948','424','994','42.57357','-2.96075','1120','1.5725039685784','-0.86121366683165','150.4725551219','86.754999999999','3976.7568936122','175.27588996886','4216.9792279691','2022-04-20 16:02:58','2022-04-20 16:02:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13949','424','995','42.57356','-2.96074','1119','1.5771312990921','-1.0298217693711','150.80587011371','86.754999999999','3976.8724460884','175.06769123372','4216.7731624068','2022-04-20 16:02:59','2022-04-20 16:02:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13950','424','996','42.57354','-2.96073','1118','1.580101027286','-1.1565266426209','150.67096240864','86.754999999999','3976.9873775557','174.82636068575','4216.5672624183','2022-04-20 16:03:00','2022-04-20 16:03:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13951','424','997','42.57353','-2.96072','1117','1.5775866345948','-1.283314626583','150.48726907351','86.754999999999','3977.1019675135','174.55657515851','4216.362075412','2022-04-20 16:03:01','2022-04-20 16:03:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13952','424','998','42.57352','-2.96071','1116','1.5745925690173','-1.4521969089701','150.92022099306','86.754999999999','3977.2172086637','174.25450426561','4216.1562619428','2022-04-20 16:03:02','2022-04-20 16:03:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13953','424','999','42.57351','-2.9607','1114','1.5781729993017','-1.5791723852317','150.3076057476','86.754999999999','3977.332253943','173.92052617694','4215.9503672704','2022-04-20 16:03:03','2022-04-20 16:03:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13954','424','1000','42.5735','-2.96069','1113','1.5885304452783','-1.7062170470706','150.3103990006','86.754999999999','3977.4460595521','173.56286071854','4215.7469212894','2022-04-20 16:03:04','2022-04-20 16:03:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13955','424','1001','42.57348','-2.96068','1111','1.5859269048052','-1.8333740299023','150.69884561926','86.754999999999','3977.5621851745','173.16673942891','4215.5419015718','2022-04-20 16:03:05','2022-04-20 16:03:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13956','424','1002','42.57347','-2.96067','1109','1.5797056677741','-2.0026241121401','151.08870155196','86.754999999999','3977.6772200918','172.73874328702','4215.3360683065','2022-04-20 16:03:06','2022-04-20 16:03:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13957','424','1003','42.57346','-2.96066','1107','1.5891494680493','-1.63478878458','150.72982690603','86.709999999999','3977.7913557953','172.33998927244','4215.1331302031','2022-04-20 16:03:07','2022-04-20 16:03:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13958','424','1004','42.57345','-2.96065','1106','1.5842590632428','-1.2667080777463','150.98057454567','86.649999999999','3977.9063209808','172.02524683667','4214.9274338435','2022-04-20 16:03:08','2022-04-20 16:03:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13959','424','1005','42.57343','-2.96064','1105','1.5826644589465','-0.94036769955612','150.95795871363','86.619999999999','3978.0215990494','171.79940922283','4214.7211925796','2022-04-20 16:03:09','2022-04-20 16:03:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13960','424','1006','42.57342','-2.96063','1104','1.5878094944666','-1.0670025295504','150.48655598942','86.619999999999','3978.1336868057','171.58205969167','4214.5207809844','2022-04-20 16:03:10','2022-04-20 16:03:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13961','424','1007','42.57341','-2.96062','1103','1.591567274376','-1.1937372348041','150.83112953463','86.619999999999','3978.2493431477','171.33051542961','4214.3169443306','2022-04-20 16:03:11','2022-04-20 16:03:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13962','424','1008','42.5734','-2.96061','1101','1.5829972986462','-1.362564350889','150.51477953517','86.619999999999','3978.364555681','171.04733206574','4214.1137221725','2022-04-20 16:03:12','2022-04-20 16:03:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13963','424','1009','42.57338','-2.9606','1100','1.5778158738441','-1.4894624108237','150.84191928062','86.619999999999','3978.4759496295','170.73985934465','4213.9146261196','2022-04-20 16:03:13','2022-04-20 16:03:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13964','424','1010','42.57337','-2.96059','1099','1.5738848947086','-1.6163969469532','151.16931019043','86.619999999999','3978.583074879','170.41989810865','4213.7251347312','2022-04-20 16:03:14','2022-04-20 16:03:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13965','424','1011','42.57336','-2.96059','1097','1.5766913594804','-1.4553678866508','150.9932822118','86.589999999999','3978.6889000889','170.08747322333','4213.5362928106','2022-04-20 16:03:15','2022-04-20 16:03:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13966','424','1012','42.57335','-2.96058','1096','1.5727283342906','-1.0871265450873','151.0768623257','86.544999999999','3978.7956029643','169.82772800495','4213.3472086795','2022-04-20 16:03:16','2022-04-20 16:03:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13967','424','1013','42.57334','-2.96057','1095','1.5906548336516','-0.59563304672287','150.56774264633','86.484999999999','3978.900134544','169.65431481714','4213.1630438193','2022-04-20 16:03:17','2022-04-20 16:03:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13968','424','1014','42.57333','-2.96056','1095','1.590094905544','-0.22689230022984','150.64977687172','86.439999999999','3979.0035902147','169.56555305619','4212.9795767262','2022-04-20 16:03:18','2022-04-20 16:03:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13969','424','1015','42.57331','-2.96055','1095','1.5857520049988','0.14208002500874','150.5850409338','86.394999999999','3979.1183613418','169.55607792667','4212.7757334808','2022-04-20 16:03:19','2022-04-20 16:03:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13970','424','1016','42.5733','-2.96054','1095','1.5829878598775','0.63431823475563','150.38814698879','86.334999999999','3979.2355281924','169.63763484313','4212.5680328265','2022-04-20 16:03:20','2022-04-20 16:03:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13971','424','1017','42.57329','-2.96053','1096','1.5732660719658','1.0038248614917','150.51265215326','86.289999999999','3979.3510033633','169.81109086214','4212.3632762016','2022-04-20 16:03:21','2022-04-20 16:03:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13972','424','1018','42.57328','-2.96052','1097','1.5832497386354','1.3735971344155','150.5379429671','86.244999999999','3979.4657747022','170.07549733229','4212.157830963','2022-04-20 16:03:22','2022-04-20 16:03:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13973','424','1019','42.57326','-2.96051','1099','1.5831180054645','1.8666343650684','150.87953904179','86.184999999999','3979.5806810105','170.43061854293','4211.9520298037','2022-04-20 16:03:23','2022-04-20 16:03:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13974','424','1020','42.57325','-2.9605','1101','1.5717553531182','2.0719326648945','150.97732040025','86.154999999999','3979.6955318485','170.87512315213','4211.7462431698','2022-04-20 16:03:24','2022-04-20 16:03:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13975','424','1021','42.57324','-2.96049','1103','1.5798671682533','1.9472373191839','150.71371877064','86.154999999999','3979.8104689084','171.32180336681','4211.5397980824','2022-04-20 16:03:25','2022-04-20 16:03:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13976','424','1022','42.57323','-2.96048','1104','1.5908073654896','1.7804526552252','150.67240342813','86.154999999999','3979.9261043111','171.73790330092','4211.3344550329','2022-04-20 16:03:26','2022-04-20 16:03:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13977','424','1023','42.57321','-2.96047','1106','1.5749758211489','1.6555703756203','150.71321986169','86.154999999999','3980.0405128574','172.12058213782','4211.1298238884','2022-04-20 16:03:27','2022-04-20 16:03:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13978','424','1024','42.5732','-2.96047','1108','1.5769865114757','1.530604577672','150.40083416703','86.154999999999','3980.1558238664','172.47466643298','4210.9242146577','2022-04-20 16:03:28','2022-04-20 16:03:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13979','424','1025','42.57319','-2.96046','1109','1.5870820940777','1.3635492858007','150.55126712108','86.154999999999','3980.2718203532','172.79811030098','4210.7190015054','2022-04-20 16:03:29','2022-04-20 16:03:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13980','424','1026','42.57318','-2.96045','1111','1.5727660036385','1.2384018504767','150.59201970042','86.154999999999','3980.3873863976','173.0900066107','4210.5130485097','2022-04-20 16:03:30','2022-04-20 16:03:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13981','424','1027','42.57316','-2.96044','1112','1.5748160079438','1.1131611896555','150.52124480047','86.154999999999','3980.5026536726','173.34998489778','4210.3085677168','2022-04-20 16:03:31','2022-04-20 16:03:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13982','424','1028','42.57315','-2.96043','1113','1.5885883657018','0.94583474330823','151.00026643502','86.154999999999','3980.6173377748','173.58059241783','4210.1034364138','2022-04-20 16:03:32','2022-04-20 16:03:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13983','424','1029','42.57314','-2.96042','1114','1.5866975899251','0.82041290451038','150.41619495261','86.154999999999','3980.7318700757','173.77854000594','4209.8989972084','2022-04-20 16:03:33','2022-04-20 16:03:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13984','424','1030','42.57313','-2.96041','1114','1.5810395924617','0.69490462177737','150.94066401363','86.154999999999','3980.8477177452','173.9468914046','4209.693936885','2022-04-20 16:03:34','2022-04-20 16:03:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13985','424','1031','42.57311','-2.9604','1115','1.5765882491102','0.52730450796958','150.51427488349','86.154999999999','3980.9621146135','174.08380219517','4209.4889563386','2022-04-20 16:03:35','2022-04-20 16:03:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13986','424','1032','42.5731','-2.96039','1116','1.5822557860091','0.40161388159009','151.14748007109','86.154999999999','3981.0775234283','174.18972379935','4209.2828013289','2022-04-20 16:03:36','2022-04-20 16:03:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13987','424','1033','42.57309','-2.96038','1116','1.5874030924889','0.27583136348185','150.50329326391','86.154999999999','3981.1913562656','174.26418402908','4209.0794833086','2022-04-20 16:03:37','2022-04-20 16:03:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13988','424','1034','42.57308','-2.96037','1116','1.5844239668068','0.10795741800659','151.04938104188','86.154999999999','3981.3045077329','174.30734186992','4208.8792658177','2022-04-20 16:03:38','2022-04-20 16:03:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13989','424','1035','42.57307','-2.96036','1116','1.5748449337797','-0.018005891640624','150.543915194','86.154999999999','3981.4182629935','174.31990370702','4208.6758340518','2022-04-20 16:03:39','2022-04-20 16:03:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13990','424','1036','42.57305','-2.96035','1116','1.5908942818109','-0.14405727673992','150.89978007925','86.154999999999','3981.5293449','174.30231076506','4208.4777002201','2022-04-20 16:03:40','2022-04-20 16:03:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13991','424','1037','42.57304','-2.96034','1116','1.5892371401641','-0.3121912762706','150.7056557147','86.154999999999','3981.6398471471','174.25643275767','4208.2842293196','2022-04-20 16:03:41','2022-04-20 16:03:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13992','424','1038','42.57303','-2.96033','1115','1.5776131456925','-0.43840581189101','150.5091766575','86.154999999999','3981.7460556226','174.1829812558','4208.0969365512','2022-04-20 16:03:42','2022-04-20 16:03:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13993','424','1039','42.57302','-2.96033','1115','1.5760014044553','-0.56470231626029','150.53176768249','86.154999999999','3981.8513909667','174.08146575364','4207.9092884421','2022-04-20 16:03:43','2022-04-20 16:03:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13994','424','1040','42.57301','-2.96032','1114','1.5758196844942','-0.73306214515','150.48764955561','86.154999999999','3981.9515298413','173.95826955752','4207.7304554297','2022-04-20 16:03:44','2022-04-20 16:03:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13995','424','1041','42.573','-2.96031','1114','1.5753150796152','-0.85950054452632','150.72167478187','86.154999999999','3982.0515762923','173.80817283909','4207.5538878454','2022-04-20 16:03:45','2022-04-20 16:03:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13996','424','1042','42.57299','-2.9603','1113','1.5873450764166','-0.98606345851494','150.67675595575','86.154999999999','3982.1592746266','173.61544550639','4207.3625924526','2022-04-20 16:03:46','2022-04-20 16:03:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13997','424','1043','42.57297','-2.96029','1112','1.5808237268429','-1.1547533405776','150.77737999001','86.154999999999','3982.2742571446','173.37924755698','4207.1566042155','2022-04-20 16:03:47','2022-04-20 16:03:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13998','424','1044','42.57296','-2.96028','1111','1.5754993853799','-1.2815365642473','150.64488147319','86.154999999999','3982.3892025908','173.11109183191','4206.9507065193','2022-04-20 16:03:48','2022-04-20 16:03:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('13999','424','1045','42.57295','-2.96027','1109','1.586465331206','-1.4084057526432','150.72534946127','86.154999999999','3982.5035454418','172.81350398628','4206.7453344266','2022-04-20 16:03:49','2022-04-20 16:03:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14000','424','1046','42.57294','-2.96026','1108','1.5835677460269','-1.5773699713147','151.10726648371','86.154999999999','3982.6186902141','172.48338020813','4206.5395514315','2022-04-20 16:03:50','2022-04-20 16:03:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14001','424','1047','42.57292','-2.96025','1106','1.5761870445686','-1.7044277097913','150.82909988155','86.154999999999','3982.7338100029','172.12123764387','4206.3341310246','2022-04-20 16:03:51','2022-04-20 16:03:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14002','424','1048','42.57291','-2.96024','1105','1.5860871299204','-1.5015003455686','150.30044006132','86.124999999999','3982.8497131896','171.75399462541','4206.1286585069','2022-04-20 16:03:52','2022-04-20 16:03:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14003','424','1049','42.5729','-2.96023','1103','1.5769687497451','-1.0103310623114','150.61885563211','86.064999999999','3982.9656513662','171.4695784885','4205.9240051499','2022-04-20 16:03:53','2022-04-20 16:03:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14004','424','1050','42.57289','-2.96022','1102','1.5863009821116','-0.64188818939553','150.793084694','86.019999999999','3983.0804639426','171.27883244367','4205.7199424981','2022-04-20 16:03:54','2022-04-20 16:03:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14005','424','1051','42.57287','-2.96022','1102','1.5814281054291','-0.27318699119603','151.00378627706','85.974999999999','3983.1964831802','171.17653035991','4205.5136711096','2022-04-20 16:03:55','2022-04-20 16:03:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14006','424','1052','42.57286','-2.96021','1102','1.5755909079253','0.21878015513335','150.98204824486','85.914999999999','3983.3116221766','171.16528210451','4205.3081087012','2022-04-20 16:03:56','2022-04-20 16:03:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14007','424','1053','42.57285','-2.9602','1102','1.5744365312686','0.58801932533534','150.37690901952','85.869999999999','3983.4270521488','171.2471678562','4205.103033632','2022-04-20 16:03:57','2022-04-20 16:03:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14008','424','1054','42.57284','-2.96019','1103','1.575812525664','0.95752150750908','150.45384371738','85.824999999999','3983.5421232','171.41910217091','4204.8973228239','2022-04-20 16:03:58','2022-04-20 16:03:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14009','424','1055','42.57282','-2.96018','1104','1.5775570236532','0.95518785518288','150.9888022589','85.809999999999','3983.6577367923','171.64724254833','4204.6925339137','2022-04-20 16:03:59','2022-04-20 16:03:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14010','424','1056','42.57281','-2.96017','1105','1.575360884486','0.82977206140446','150.81203254754','85.809999999999','3983.7722515837','171.84725979627','4204.4874537905','2022-04-20 16:04:00','2022-04-20 16:04:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14011','424','1057','42.5728','-2.96016','1106','1.5809776835658','0.70426299832675','150.70464283985','85.809999999999','3983.8866885715','172.01534402489','4204.2843568055','2022-04-20 16:04:01','2022-04-20 16:04:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14012','424','1058','42.57279','-2.96015','1106','1.5847370364745','0.5366714937591','150.9308525293','85.809999999999','3984.0028339917','172.15520239879','4204.0789570342','2022-04-20 16:04:02','2022-04-20 16:04:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14013','424','1059','42.57277','-2.96014','1107','1.5897961278317','0.41098414670138','150.61704894334','85.809999999999','3984.1184260017','172.26224675875','4203.8744936482','2022-04-20 16:04:03','2022-04-20 16:04:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14014','424','1060','42.57276','-2.96013','1107','1.5747108620754','0.28520898950137','150.51877649422','85.809999999999','3984.2336192234','172.33922717494','4203.6698044792','2022-04-20 16:04:04','2022-04-20 16:04:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14015','424','1061','42.57275','-2.96012','1107','1.5827146574553','0.11734449410682','150.78511566914','85.809999999999','3984.3491272488','172.38562048138','4203.4659207128','2022-04-20 16:04:05','2022-04-20 16:04:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14016','424','1062','42.57274','-2.96011','1107','1.5741603501926','-0.0086132407401259','150.75696232987','85.809999999999','3984.4618615273','172.40009098732','4203.2660177831','2022-04-20 16:04:06','2022-04-20 16:04:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14017','424','1063','42.57272','-2.9601','1107','1.5819114383467','-0.13465745468733','150.3011462332','85.809999999999','3984.5719204977','172.38495326418','4203.0694384713','2022-04-20 16:04:07','2022-04-20 16:04:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14018','424','1064','42.57271','-2.96009','1107','1.5811915387651','-0.30278522811238','150.95454973344','85.809999999999','3984.6820257378','172.34120691589','4202.8754503015','2022-04-20 16:04:08','2022-04-20 16:04:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14019','424','1065','42.5727','-2.96008','1107','1.5915993917734','-0.42899335676044','151.07892415515','85.809999999999','3984.7878473322','172.26994899726','4202.6892632536','2022-04-20 16:04:09','2022-04-20 16:04:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14020','424','1066','42.57269','-2.96008','1106','1.5801331514314','-0.55528416116532','150.66360876941','85.809999999999','3984.8921843987','172.17038501693','4202.5019233882','2022-04-20 16:04:10','2022-04-20 16:04:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14021','424','1067','42.57268','-2.96007','1106','1.5885273642345','-0.55864867292273','150.92739240066','85.794999999999','3984.9969586356','172.04558552685','4202.3196525229','2022-04-20 16:04:11','2022-04-20 16:04:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14022','424','1068','42.57267','-2.96006','1105','1.5897726650187','-0.18988654596296','151.06687279023','85.749999999999','3985.0998250938','171.96414389013','4202.1346544321','2022-04-20 16:04:12','2022-04-20 16:04:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14023','424','1069','42.57266','-2.96005','1105','1.5839177622969','0.17911217883306','150.4092191894','85.704999999999','3985.2015372753','171.96370729295','4201.9547860089','2022-04-20 16:04:13','2022-04-20 16:04:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14024','424','1070','42.57265','-2.96004','1106','1.5724297382448','0.67133605294959','150.48354330563','85.644999999999','3985.300606961','172.04035605672','4201.7784010931','2022-04-20 16:04:14','2022-04-20 16:04:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14025','424','1071','42.57264','-2.96003','1107','1.5851023222329','1.0407808352601','150.75609991129','85.599999999999','3985.3977628795','172.19263812834','4201.6056016041','2022-04-20 16:04:15','2022-04-20 16:04:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14026','424','1072','42.57263','-2.96003','1107','1.585523839077','1.0803284776779','150.86135127182','85.584999999999','3985.4865600735','172.38013686634','4201.4499086859','2022-04-20 16:04:16','2022-04-20 16:04:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14027','424','1073','42.57262','-2.96002','1108','1.5910591699229','0.91279416846785','150.35783869991','85.584999999999','3985.5706910997','172.53957746582','4201.3015782842','2022-04-20 16:04:17','2022-04-20 16:04:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14028','424','1074','42.5726','-2.96001','1109','1.5747492682798','0.78735421352886','150.95388813666','85.584999999999','3985.6859481153','172.73132255118','4201.0956629163','2022-04-20 16:04:18','2022-04-20 16:04:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14029','424','1075','42.57259','-2.96','1110','1.5900788997582','0.66182486644558','150.82295715485','85.584999999999','3985.8013663947','172.8924620558','4200.8905186283','2022-04-20 16:04:19','2022-04-20 16:04:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14030','424','1076','42.57258','-2.95999','1110','1.5836721423168','0.49420579577019','151.09196725466','85.584999999999','3985.9161307772','173.02288250041','4200.6845631618','2022-04-20 16:04:20','2022-04-20 16:04:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14031','424','1077','42.57257','-2.95998','1111','1.5750559810882','0.36849141344474','150.67525948352','85.584999999999','3986.0300328324','173.12067067712','4200.4813409079','2022-04-20 16:04:21','2022-04-20 16:04:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14032','424','1078','42.57255','-2.95997','1111','1.5829237346843','0.24268998989231','150.29591698664','85.584999999999','3986.1450873875','173.18865816695','4200.2755147806','2022-04-20 16:04:22','2022-04-20 16:04:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14033','424','1079','42.57254','-2.95996','1111','1.5722153564038','0.074798529601475','150.35003011264','85.584999999999','3986.2607721553','173.22581938351','4200.0711198361','2022-04-20 16:04:23','2022-04-20 16:04:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14034','424','1080','42.57253','-2.95995','1111','1.577509707643','-0.051185753682127','151.1344711589','85.584999999999','3986.3751359307','173.23120038468','4199.866020014','2022-04-20 16:04:24','2022-04-20 16:04:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14035','424','1081','42.57252','-2.95994','1111','1.5814195095326','-0.17725978268387','151.11593714679','85.584999999999','3986.4903738328','173.20585475047','4199.6602686739','2022-04-20 16:04:25','2022-04-20 16:04:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14036','424','1082','42.5725','-2.95993','1111','1.5777429910237','-0.34542331316625','150.39958156008','85.584999999999','3986.6036840081','173.14986610155','4199.4556548482','2022-04-20 16:04:26','2022-04-20 16:04:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14037','424','1083','42.57249','-2.95993','1110','1.5866990394932','-0.47167762923432','150.63463188421','85.584999999999','3986.7186492966','173.06279479322','4199.2517525085','2022-04-20 16:04:27','2022-04-20 16:04:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14038','424','1084','42.57248','-2.95992','1110','1.5908314053318','-0.59802479288728','150.5352689725','85.584999999999','3986.8331039974','172.94393484979','4199.0454792862','2022-04-20 16:04:28','2022-04-20 16:04:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14039','424','1085','42.57247','-2.95991','1109','1.5835816708307','-0.76645113274706','151.13964358479','85.584999999999','3986.9464249315','172.79796700096','4198.8437938078','2022-04-20 16:04:29','2022-04-20 16:04:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14040','424','1086','42.57246','-2.9599','1108','1.5882377112153','-0.89296804368434','150.60961918708','85.584999999999','3987.0586853258','172.62098993484','4198.6433279694','2022-04-20 16:04:30','2022-04-20 16:04:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14041','424','1087','42.57244','-2.95989','1107','1.5801521457842','-1.019585959576','150.31092741331','85.584999999999','3987.1727961164','172.4094313592','4198.438715439','2022-04-20 16:04:31','2022-04-20 16:04:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14042','424','1088','42.57243','-2.95988','1106','1.5795755117298','-1.1882446564038','150.57989211286','85.584999999999','3987.2828039258','172.18391043551','4198.2476630281','2022-04-20 16:04:32','2022-04-20 16:04:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14043','424','1089','42.57242','-2.95987','1105','1.5827860113347','-1.3150324198659','150.29998711528','85.584999999999','3987.395773562','171.91420040179','4198.0466337438','2022-04-20 16:04:33','2022-04-20 16:04:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14044','424','1090','42.57241','-2.95986','1104','1.5866367907093','-1.4418824876157','150.29395819452','85.584999999999','3987.5056120422','171.62315897567','4197.8515234336','2022-04-20 16:04:34','2022-04-20 16:04:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14045','424','1091','42.5724','-2.95985','1103','1.5858119732292','-1.610803734971','150.73278123272','85.584999999999','3987.6133801247','171.30774747565','4197.6594452086','2022-04-20 16:04:35','2022-04-20 16:04:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14046','424','1092','42.57238','-2.95984','1101','1.5727429534328','-1.7377964597736','150.3017786045','85.584999999999','3987.721846558','170.96786392831','4197.4697917839','2022-04-20 16:04:36','2022-04-20 16:04:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14047','424','1093','42.57237','-2.95983','1099','1.5752824860958','-1.5348295633735','151.15415373982','85.554999999999','3987.8319283771','170.61415571488','4197.2739758488','2022-04-20 16:04:37','2022-04-20 16:04:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14048','424','1094','42.57236','-2.95983','1098','1.5807735319822','-1.0436274948721','150.48223910794','85.494999999999','3987.9398849443','170.3409644059','4197.0821513389','2022-04-20 16:04:38','2022-04-20 16:04:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14049','424','1095','42.57235','-2.95982','1097','1.5725242963383','-0.675172246867','150.61946218329','85.449999999999','3988.0470496556','170.1544552747','4196.8900104329','2022-04-20 16:04:39','2022-04-20 16:04:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14050','424','1096','42.57234','-2.95981','1097','1.5803693659085','-0.30646268636559','150.69208375057','85.404999999999','3988.1526566336','170.05501622894','4196.703431108','2022-04-20 16:04:40','2022-04-20 16:04:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14051','424','1097','42.57233','-2.9598','1097','1.5768686503531','0.18548796905605','150.39060744635','85.344999999999','3988.2556602107','170.0381219091','4196.5191096718','2022-04-20 16:04:41','2022-04-20 16:04:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14052','424','1098','42.57231','-2.95979','1097','1.5784240097114','0.55467927045677','150.3922268754','85.299999999999','3988.3593388723','170.10361860921','4196.3374363601','2022-04-20 16:04:42','2022-04-20 16:04:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14053','424','1099','42.5723','-2.95978','1098','1.5725113924528','0.9240925617182','150.30440709811','85.254999999999','3988.4587211461','170.24511895216','4196.1603885981','2022-04-20 16:04:43','2022-04-20 16:04:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14054','424','1100','42.57229','-2.95977','1099','1.5867075501975','1.4167253767773','151.00254166385','85.194999999999','3988.5569748565','170.46177862112','4195.9858811447','2022-04-20 16:04:44','2022-04-20 16:04:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14055','424','1101','42.57228','-2.95977','1100','1.5752005387539','1.7865662267009','150.89485329114','85.149999999999','3988.6530611675','170.74966409965','4195.8153455293','2022-04-20 16:04:45','2022-04-20 16:04:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14056','424','1102','42.57227','-2.95976','1102','1.5764058693267','2.1567880959899','150.66070348096','85.104999999999','3988.7633105156','171.16800085042','4195.6205896882','2022-04-20 16:04:46','2022-04-20 16:04:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14057','424','1103','42.57226','-2.95975','1104','1.5891106060822','2.6503324580467','151.16160776916','85.044999999999','3988.8783626839','171.69675086543','4195.4146642941','2022-04-20 16:04:47','2022-04-20 16:04:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14058','424','1104','42.57225','-2.95974','1107','1.5735241947463','2.5260214110105','150.92651564541','85.044999999999','3988.9926573472','172.27500510383','4195.2078884958','2022-04-20 16:04:48','2022-04-20 16:04:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14059','424','1105','42.57223','-2.95973','1109','1.5761304978144','2.4016212959456','150.66181422859','85.044999999999','3989.1084507998','172.82276473034','4195.0032642192','2022-04-20 16:04:49','2022-04-20 16:04:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14060','424','1106','42.57222','-2.95972','1112','1.5888772315204','2.2351245247671','151.07497838635','85.044999999999','3989.2228175376','173.33743177903','4194.7994990621','2022-04-20 16:04:50','2022-04-20 16:04:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14061','424','1107','42.57221','-2.95971','1114','1.5739911498991','2.1105436389179','150.8291957603','85.044999999999','3989.3380640172','173.82330011881','4194.5932771934','2022-04-20 16:04:51','2022-04-20 16:04:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14062','424','1108','42.5722','-2.9597','1116','1.5888050267092','1.9858736461623','150.7102674441','85.044999999999','3989.4519109958','174.27866053594','4194.3876554623','2022-04-20 16:04:52','2022-04-20 16:04:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14063','424','1109','42.57218','-2.95969','1118','1.5742796901491','1.8191146244772','150.91446800787','85.044999999999','3989.5673080177','174.7035397278','4194.1817699803','2022-04-20 16:04:53','2022-04-20 16:04:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14064','424','1110','42.57217','-2.95968','1120','1.5888720665922','1.6942578780971','150.96793083553','85.044999999999','3989.6821730346','175.09496048697','4193.9760495036','2022-04-20 16:04:54','2022-04-20 16:04:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14065','424','1111','42.57216','-2.95967','1121','1.5725053051361','1.5693174828136','150.78064190594','85.044999999999','3989.7975066803','175.45774200394','4193.7695043577','2022-04-20 16:04:55','2022-04-20 16:04:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14066','424','1112','42.57215','-2.95966','1123','1.5769668500863','1.4022827844949','150.41866274793','85.044999999999','3989.9121637828','175.7882365769','4193.565331788','2022-04-20 16:04:56','2022-04-20 16:04:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14067','424','1113','42.57213','-2.95965','1124','1.5888083361486','1.2771610544655','150.34956460519','85.044999999999','3990.0279756885','176.08893372114','4193.3600849579','2022-04-20 16:04:57','2022-04-20 16:04:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14068','424','1114','42.57212','-2.95964','1125','1.5911498829331','1.1519497298203','151.0217809311','85.044999999999','3990.1437137271','176.35895596354','4193.1545749317','2022-04-20 16:04:58','2022-04-20 16:04:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14069','424','1115','42.57211','-2.95963','1126','1.5891115634641','0.98464902461815','150.57991594726','85.044999999999','3990.2594936975','176.59837659243','4192.9479265131','2022-04-20 16:04:59','2022-04-20 16:04:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14070','424','1116','42.5721','-2.95962','1127','1.5850023442478','0.85925309030951','150.80788229093','85.044999999999','3990.3751977639','176.8051932142','4192.7427987201','2022-04-20 16:05:00','2022-04-20 16:05:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14071','424','1117','42.57208','-2.95962','1128','1.5798196910448','0.73376765427508','150.48336341755','85.044999999999','3990.4905718873','176.98136673731','4192.5380266793','2022-04-20 16:05:01','2022-04-20 16:05:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14072','424','1118','42.57207','-2.95961','1129','1.5847252332872','0.56619293088063','150.90492184787','85.044999999999','3990.6052028424','177.12697055513','4192.3330937539','2022-04-20 16:05:02','2022-04-20 16:05:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14073','424','1119','42.57206','-2.9596','1129','1.589574451078','0.44052456791725','150.70948797752','85.044999999999','3990.7194388855','177.24051458279','4192.1296473252','2022-04-20 16:05:03','2022-04-20 16:05:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14074','424','1120','42.57205','-2.95959','1130','1.587548474865','0.31476461870919','151.09103312108','85.044999999999','3990.831852669','177.32270182591','4191.9284840715','2022-04-20 16:05:04','2022-04-20 16:05:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14075','424','1121','42.57203','-2.95958','1130','1.5906310155914','0.14691718024049','151.17339167024','85.044999999999','3990.9458845858','177.37493498692','4191.7255676798','2022-04-20 16:05:05','2022-04-20 16:05:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14076','424','1122','42.57202','-2.95957','1130','1.5869756121503','0.020977424376696','151.09811009721','85.044999999999','3991.0563586328','177.39556103622','4191.5266826388','2022-04-20 16:05:06','2022-04-20 16:05:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14077','424','1123','42.57201','-2.95956','1130','1.5907707453637','-0.10504781973665','150.40629901406','85.044999999999','3991.1630967181','177.38691809835','4191.3348735827','2022-04-20 16:05:07','2022-04-20 16:05:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14078','424','1124','42.572','-2.95955','1130','1.5733944961593','-0.27315730941575','150.91320821683','85.044999999999','3991.2710764989','177.34943163641','4191.1423753472','2022-04-20 16:05:08','2022-04-20 16:05:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14079','424','1125','42.57199','-2.95954','1129','1.5749067256012','-0.39934774898325','151.17482162771','85.044999999999','3991.3751158625','177.28423000592','4190.956312388','2022-04-20 16:05:09','2022-04-20 16:05:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14080','424','1126','42.57198','-2.95953','1129','1.5828075373803','-0.52561570460116','150.51884301284','85.044999999999','3991.4779709693','177.19248886506','4190.7727294001','2022-04-20 16:05:10','2022-04-20 16:05:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14081','424','1127','42.57197','-2.95953','1128','1.5910759351464','-0.69395568953461','150.61750436661','85.044999999999','3991.5788714','177.07608673133','4190.5933800561','2022-04-20 16:05:11','2022-04-20 16:05:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14082','424','1128','42.57195','-2.95952','1128','1.5774718533641','-0.82037408938358','150.93021718116','85.044999999999','3991.6791451088','176.93283733884','4190.4150338666','2022-04-20 16:05:12','2022-04-20 16:05:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14083','424','1129','42.57194','-2.95951','1127','1.5838183043823','-0.94691310446963','150.82039203366','85.044999999999','3991.7867126598','176.7482923783','4190.2228322068','2022-04-20 16:05:13','2022-04-20 16:05:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14084','424','1130','42.57193','-2.9595','1126','1.5888570204905','-1.1155705846901','151.09830412475','85.044999999999','3991.9005430908','176.52318798979','4190.0188278973','2022-04-20 16:05:14','2022-04-20 16:05:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14085','424','1131','42.57192','-2.95949','1125','1.574153433979','-1.2423279476444','151.08658296839','85.044999999999','3992.0151929765','176.26388631135','4189.8129102594','2022-04-20 16:05:15','2022-04-20 16:05:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14086','424','1132','42.57191','-2.95948','1124','1.5878438863035','-1.3691758312575','150.69791366871','85.044999999999','3992.1297442707','175.97359267771','4189.6068288555','2022-04-20 16:05:16','2022-04-20 16:05:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14087','424','1133','42.57189','-2.95947','1122','1.5893604254768','-1.5381140220275','150.44177955981','85.044999999999','3992.2452258164','175.6523801864','4189.4012249367','2022-04-20 16:05:17','2022-04-20 16:05:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14088','424','1134','42.57188','-2.95946','1120','1.5816870267446','-1.6651455794481','150.35492235069','85.044999999999','3992.3617755132','175.29920134523','4189.1961826235','2022-04-20 16:05:18','2022-04-20 16:05:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14089','424','1135','42.57187','-2.95945','1119','1.5809374462682','-1.7922681084303','150.36953209766','85.044999999999','3992.4781163253','174.91487617123','4188.9919808293','2022-04-20 16:05:19','2022-04-20 16:05:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14090','424','1136','42.57186','-2.95944','1117','1.5735919097621','-1.9614811229681','150.71251259926','85.044999999999','3992.5942835314','174.49957106045','4188.786446756','2022-04-20 16:05:20','2022-04-20 16:05:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14091','424','1137','42.57184','-2.95943','1115','1.5747725025708','-2.0887878190961','150.92813463494','85.044999999999','3992.7084733033','174.05219177253','4188.5803287453','2022-04-20 16:05:21','2022-04-20 16:05:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14092','424','1138','42.57183','-2.95942','1113','1.5823789192673','-2.2161787429399','150.60336473567','85.044999999999','3992.8227972554','173.57597507188','4188.376725751','2022-04-20 16:05:22','2022-04-20 16:05:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14093','424','1139','42.57182','-2.95941','1110','1.5851862413967','-2.385659776363','150.67475222114','85.044999999999','3992.9373073404','173.06890715913','4188.1723664723','2022-04-20 16:05:23','2022-04-20 16:05:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14094','424','1140','42.57181','-2.9594','1108','1.5909101724961','-2.5132418655','150.81881449585','85.044999999999','3993.052106439','172.52724035813','4187.9663802119','2022-04-20 16:05:24','2022-04-20 16:05:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14095','424','1141','42.57179','-2.9594','1105','1.5865687759433','-2.640915283802','151.10337400277','85.044999999999','3993.1669083024','171.95430479008','4187.7603932547','2022-04-20 16:05:25','2022-04-20 16:05:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14096','424','1142','42.57178','-2.95939','1103','1.5814804523992','-2.8106795454952','150.48751982405','85.044999999999','3993.2810244365','171.3502667715','4187.5546622956','2022-04-20 16:05:26','2022-04-20 16:05:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14097','424','1143','42.57177','-2.95938','1100','1.5746461130648','-2.938537846793','150.75035087759','85.044999999999','3993.3968863372','170.71403200081','4187.3490838746','2022-04-20 16:05:27','2022-04-20 16:05:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14098','424','1144','42.57176','-2.95937','1097','1.5777711850158','-3.0664875203005','150.87778075379','85.044999999999','3993.5109350799','170.04651372566','4187.1436940492','2022-04-20 16:05:28','2022-04-20 16:05:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14099','424','1145','42.57174','-2.95936','1094','1.5890612034186','-3.0715081551725','150.75528663323','85.029999999999','3993.6257419932','169.35470009676','4186.9399321499','2022-04-20 16:05:29','2022-04-20 16:05:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14100','424','1146','42.57173','-2.95935','1091','1.5862096905534','-2.7044078220563','150.46602819538','84.984999999999','3993.7417183188','168.70430280884','4186.7336032624','2022-04-20 16:05:30','2022-04-20 16:05:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14101','424','1147','42.57172','-2.95934','1088','1.5810270005506','-2.3370115208815','150.87542265689','84.939999999999','3993.8543104053','168.15523740403','4186.5306156947','2022-04-20 16:05:31','2022-04-20 16:05:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14102','424','1148','42.57171','-2.95933','1086','1.5725644016981','-1.8463445910489','150.80828191242','84.879999999999','3993.9656176502','167.69882832048','4186.3317132569','2022-04-20 16:05:32','2022-04-20 16:05:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14103','424','1149','42.57169','-2.95932','1084','1.5731469266106','-1.9735395535996','150.54427585706','84.879999999999','3994.0781689612','167.28970374776','4186.1327968069','2022-04-20 16:05:33','2022-04-20 16:05:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14104','424','1150','42.57168','-2.95931','1083','1.5721133544626','-2.1007834174886','150.41912295005','84.879999999999','3994.1871183166','166.86383660923','4185.9388135408','2022-04-20 16:05:34','2022-04-20 16:05:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14105','424','1151','42.57167','-2.9593','1081','1.5743683437991','-2.2700630651785','150.30867978332','84.879999999999','3994.2923541791','166.42571801377','4185.7521894428','2022-04-20 16:05:35','2022-04-20 16:05:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14106','424','1152','42.57166','-2.95929','1078','1.5779613756819','-2.3974344550493','150.44414189855','84.879999999999','3994.3975963502','165.95618924522','4185.5655707721','2022-04-20 16:05:36','2022-04-20 16:05:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14107','424','1153','42.57165','-2.95929','1076','1.5835545673013','-2.5248726477795','151.09413256799','84.879999999999','3994.5016926426','165.46378888849','4185.3805939538','2022-04-20 16:05:37','2022-04-20 16:05:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14108','424','1154','42.57164','-2.95928','1074','1.5785581156376','-2.6943850481705','150.44360208109','84.879999999999','3994.605049994','164.94598172928','4185.1967474206','2022-04-20 16:05:38','2022-04-20 16:05:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14109','424','1155','42.57163','-2.95927','1071','1.5831001923557','-2.821989604651','150.68150499826','84.879999999999','3994.7092158132','164.39662268527','4185.0115485753','2022-04-20 16:05:39','2022-04-20 16:05:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14110','424','1156','42.57162','-2.95926','1069','1.5783574899699','-2.9496200259359','150.69589879191','84.879999999999','3994.8102875525','163.83840819465','4184.8325160747','2022-04-20 16:05:40','2022-04-20 16:05:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14111','424','1157','42.5716','-2.95925','1066','1.5727329022263','-3.1192899713411','150.70519049099','84.879999999999','3994.9087733171','163.26666165751','4184.6586943335','2022-04-20 16:05:41','2022-04-20 16:05:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14112','424','1158','42.57159','-2.95924','1064','1.5896871983395','-2.9168946599627','151.05090740054','84.849999999999','3995.0005417882','162.71725737179','4184.4946514576','2022-04-20 16:05:42','2022-04-20 16:05:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14113','424','1159','42.57158','-2.95924','1062','1.5831353385219','-2.5492967090556','150.82787730919','84.804999999999','3995.0916430229','162.2372316708','4184.3323335463','2022-04-20 16:05:43','2022-04-20 16:05:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14114','424','1160','42.57158','-2.95923','1060','1.5745326465949','-2.0585000429273','150.58023633818','84.744999999999','3995.1832777168','161.82524097218','4184.1686006936','2022-04-20 16:05:44','2022-04-20 16:05:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14115','424','1161','42.57157','-2.95922','1058','1.5855151787752','-1.690487894039','150.96360407292','84.699999999999','3995.2743126082','161.48702605175','4184.005551361','2022-04-20 16:05:45','2022-04-20 16:05:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14116','424','1162','42.57156','-2.95921','1057','1.5863639693371','-1.3222414830621','151.0253466429','84.654999999999','3995.363534574','161.22901647069','4183.8471828026','2022-04-20 16:05:46','2022-04-20 16:05:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14117','424','1163','42.57155','-2.95921','1056','1.5752807329241','-0.83077814407819','150.31393146609','84.594999999999','3995.449620941','161.04527748342','4183.6929503088','2022-04-20 16:05:47','2022-04-20 16:05:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14118','424','1164','42.57154','-2.9592','1056','1.5897888074578','-0.46209375407319','151.14947902154','84.549999999999','3995.5332528172','160.93722070434','4183.5461444856','2022-04-20 16:05:48','2022-04-20 16:05:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14119','424','1165','42.57153','-2.95919','1056','1.5799136514201','-0.093225779051681','150.55469827783','84.504999999999','3995.6187387836','160.89201873305','4183.3948204083','2022-04-20 16:05:49','2022-04-20 16:05:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14120','424','1166','42.57152','-2.95919','1056','1.5814722943001','0.39883378326121','150.49416767859','84.444999999999','3995.7011354096','160.91241134351','4183.2498124886','2022-04-20 16:05:50','2022-04-20 16:05:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14121','424','1167','42.57151','-2.95918','1056','1.5717729320763','0.60307327939928','151.0253839739','84.414999999999','3995.7812758702','160.99440868736','4183.1070969348','2022-04-20 16:05:51','2022-04-20 16:05:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14122','424','1168','42.5715','-2.95917','1057','1.5762276974936','0.47731477093971','150.84781166796','84.414999999999','3995.8612353066','161.07708920587','4182.9649987058','2022-04-20 16:05:52','2022-04-20 16:05:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14123','424','1169','42.57149','-2.95917','1057','1.5787213053705','0.30948765053042','151.05188626877','84.414999999999','3995.9380887642','161.13627875004','4182.8271129095','2022-04-20 16:05:53','2022-04-20 16:05:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14124','424','1170','42.57148','-2.95916','1057','1.5742624680948','0.18362660387566','150.75670916687','84.414999999999','3996.0350203932','161.18385281666','4182.6527200272','2022-04-20 16:05:54','2022-04-20 16:05:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14125','424','1171','42.57147','-2.95915','1057','1.5851455876615','0.057704826745639','150.43980476558','84.414999999999','3996.1498497317','161.21063432395','4182.4462077151','2022-04-20 16:05:55','2022-04-20 16:05:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14126','424','1172','42.57146','-2.95914','1057','1.5750068717014','-0.11030665601477','150.62579467974','84.414999999999','3996.2645619997','161.20670292088','4182.2408274436','2022-04-20 16:05:56','2022-04-20 16:05:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14127','424','1173','42.57145','-2.95913','1057','1.5899808378166','-0.23641090342897','150.42202709213','84.414999999999','3996.3797981858','161.17101127617','4182.0347947691','2022-04-20 16:05:57','2022-04-20 16:05:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14128','424','1174','42.57143','-2.95912','1057','1.5905825817611','-0.36260343831887','150.90264194554','84.414999999999','3996.4941780398','161.10509226095','4181.8311881622','2022-04-20 16:05:58','2022-04-20 16:05:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14129','424','1175','42.57142','-2.95911','1056','1.5888368482919','-0.53088793646449','150.95941518555','84.414999999999','3996.6093230188','161.00768738229','4181.6250057057','2022-04-20 16:05:59','2022-04-20 16:05:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14130','424','1176','42.57141','-2.9591','1056','1.5790880341281','-0.65726524017856','150.56479151049','84.414999999999','3996.724522562','160.87850825386','4181.4193916889','2022-04-20 16:06:00','2022-04-20 16:06:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14131','424','1177','42.5714','-2.95909','1055','1.5732170456974','-0.78373295415007','150.90061853712','84.414999999999','3996.8406093898','160.71837496882','4181.213706723','2022-04-20 16:06:01','2022-04-20 16:06:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14132','424','1178','42.57138','-2.95908','1054','1.5758118935941','-0.95229100113245','151.07544336845','84.414999999999','3996.9549112891','160.52731397441','4181.0086853683','2022-04-20 16:06:02','2022-04-20 16:06:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14133','424','1179','42.57137','-2.95907','1053','1.5854658678611','-1.0789390739527','150.45745864955','84.414999999999','3997.0687681587','160.30543043881','4180.8041285163','2022-04-20 16:06:03','2022-04-20 16:06:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14134','424','1180','42.57136','-2.95906','1052','1.5728554751078','-1.205680690328','151.10440450054','84.414999999999','3997.1848761191','160.0515199857','4180.5982101419','2022-04-20 16:06:04','2022-04-20 16:06:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14135','424','1181','42.57135','-2.95906','1051','1.5915914273226','-1.3745128176303','151.16569251184','84.414999999999','3997.2995207269','159.76662090935','4180.3922560959','2022-04-20 16:06:05','2022-04-20 16:06:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14136','424','1182','42.57133','-2.95905','1049','1.5750060354814','-1.5014381062189','150.95824972085','84.414999999999','3997.4141217135','159.44982579452','4180.1860851159','2022-04-20 16:06:06','2022-04-20 16:06:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14137','424','1183','42.57132','-2.95904','1048','1.5845349804702','-1.6284541610139','151.05109023851','84.414999999999','3997.5289223481','159.10195465527','4179.9800151951','2022-04-20 16:06:07','2022-04-20 16:06:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14138','424','1184','42.57131','-2.95903','1046','1.5810553199681','-1.7975609050001','150.31748125172','84.414999999999','3997.644096093','158.72303385966','4179.773934654','2022-04-20 16:06:08','2022-04-20 16:06:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14139','424','1185','42.5713','-2.95902','1044','1.5814315373','-1.7597385940866','150.96476834539','84.399999999999','3997.759534091','158.31982327867','4179.5695391616','2022-04-20 16:06:09','2022-04-20 16:06:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14140','424','1186','42.57128','-2.95901','1043','1.5750542362736','-1.3917622200621','150.67623807724','84.354999999999','3997.8744515114','157.96935996114','4179.3645903962','2022-04-20 16:06:10','2022-04-20 16:06:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14141','424','1187','42.57127','-2.959','1041','1.5878352821065','-0.90051500928917','150.39615149519','84.294999999999','3997.9882383601','157.71162420977','4179.1608287392','2022-04-20 16:06:11','2022-04-20 16:06:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14142','424','1188','42.57126','-2.95899','1041','1.5890406701113','-0.86204688721103','150.66000845402','84.279999999999','3998.1011205832','157.52952283145','4178.9584927759','2022-04-20 16:06:12','2022-04-20 16:06:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14143','424','1189','42.57125','-2.95898','1040','1.5769726958102','-0.9886330702417','151.09703128752','84.279999999999','3998.214316961','157.32882877471','4178.7577037202','2022-04-20 16:06:13','2022-04-20 16:06:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14144','424','1190','42.57123','-2.95897','1039','1.5774371277786','-1.1572858804434','150.99241434366','84.279999999999','3998.3248468845','157.10532328101','4178.5636169208','2022-04-20 16:06:14','2022-04-20 16:06:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14145','424','1191','42.57122','-2.95896','1038','1.5848918220577','-1.284022903721','150.74731674483','84.279999999999','3998.433337979','156.85298538695','4178.369742117','2022-04-20 16:06:15','2022-04-20 16:06:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14146','424','1192','42.57121','-2.95895','1036','1.5883192710911','-1.4108413220558','150.44241222481','84.279999999999','3998.5409277385','156.57277990995','4178.1770506185','2022-04-20 16:06:16','2022-04-20 16:06:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14147','424','1193','42.5712','-2.95894','1035','1.5915090114102','-1.5797394067551','150.60399635713','84.279999999999','3998.649382886','156.26529871011','4177.9856966761','2022-04-20 16:06:17','2022-04-20 16:06:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14148','424','1194','42.57119','-2.95894','1033','1.5741334651116','-1.7066970808684','150.81839637551','84.279999999999','3998.7543310405','155.93741562107','4177.7990669395','2022-04-20 16:06:18','2022-04-20 16:06:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14149','424','1195','42.57118','-2.95893','1032','1.5869811320113','-1.8337022563766','151.17090350117','84.279999999999','3998.8562971404','155.59326927098','4177.6180950045','2022-04-20 16:06:19','2022-04-20 16:06:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14150','424','1196','42.57117','-2.95892','1030','1.5749453370016','-2.0028123086444','150.96166023101','84.279999999999','3998.9604112777','155.21321580446','4177.433512294','2022-04-20 16:06:20','2022-04-20 16:06:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14151','424','1197','42.57115','-2.95891','1028','1.5836292588004','-2.1299591673483','150.60375030084','84.279999999999','3999.0594210926','154.82056075688','4177.2572081456','2022-04-20 16:06:21','2022-04-20 16:06:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14152','424','1198','42.57114','-2.9589','1027','1.575146990135','-2.2571555107225','150.90066482584','84.279999999999','3999.1556875824','154.41096342557','4177.0838967378','2022-04-20 16:06:22','2022-04-20 16:06:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14153','424','1199','42.57113','-2.95889','1025','1.5842188336553','-2.4263983342712','151.06010165345','84.279999999999','3999.2496151176','153.98545247293','4176.9157220416','2022-04-20 16:06:23','2022-04-20 16:06:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14154','424','1200','42.57112','-2.95889','1023','1.5909839196764','-2.5536851750269','150.50157059184','84.279999999999','3999.342137814','153.54487115593','4176.7505351305','2022-04-20 16:06:24','2022-04-20 16:06:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14155','424','1201','42.57111','-2.95888','1021','1.581477430677','-2.6810361346378','150.78881323008','84.279999999999','3999.4360345553','153.08233718513','4176.5872595856','2022-04-20 16:06:25','2022-04-20 16:06:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14156','424','1202','42.5711','-2.95887','1018','1.5881959861858','-2.8504238829081','151.1603678277','84.279999999999','3999.5250194134','152.6072077195','4176.4276278299','2022-04-20 16:06:26','2022-04-20 16:06:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14157','424','1203','42.5711','-2.95886','1016','1.5824802889134','-2.9777895744548','151.01296141258','84.279999999999','3999.6100068093','152.13962991119','4176.2779745626','2022-04-20 16:06:27','2022-04-20 16:06:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14158','424','1204','42.57109','-2.95886','1014','1.5742546142495','-3.1052114333555','150.9404829765','84.279999999999','3999.6936392899','151.65282183936','4176.1301882928','2022-04-20 16:06:28','2022-04-20 16:06:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14159','424','1205','42.57108','-2.95885','1012','1.5910104047791','-3.2747091044638','150.86070008167','84.279999999999','3999.7769188137','151.14005760929','4175.9810730318','2022-04-20 16:06:29','2022-04-20 16:06:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14160','424','1206','42.57107','-2.95884','1009','1.5887730226396','-3.4022214017008','150.55856614733','84.279999999999','3999.8584079537','150.62228576735','4175.837053151','2022-04-20 16:06:30','2022-04-20 16:06:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14161','424','1207','42.57106','-2.95884','1006','1.5898050392827','-3.3654513713412','151.00751654875','84.264999999999','3999.9743324826','149.85880127509','4175.6317925547','2022-04-20 16:06:31','2022-04-20 16:06:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14162','424','1208','42.57104','-2.95883','1003','1.5826345973829','-2.8754936349745','150.6103212403','84.204999999999','4000.0897400986','149.15958251225','4175.4253236485','2022-04-20 16:06:32','2022-04-20 16:06:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14163','424','1209','42.57103','-2.95882','1000','1.5865478481853','-2.5082741224904','150.82021356434','84.159999999999','4000.2061290087','148.54998918756','4175.2186444154','2022-04-20 16:06:33','2022-04-20 16:06:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14164','424','1210','42.57102','-2.95881','998','1.5745651865119','-2.1407619170501','150.71921106625','84.114999999999','4000.3197349076','148.04060643478','4175.0159723691','2022-04-20 16:06:34','2022-04-20 16:06:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14165','424','1211','42.57101','-2.9588','996','1.5821039408903','-1.6500025156413','151.05061574692','84.054999999999','4000.4347819147','147.61585725063','4174.8111527485','2022-04-20 16:06:35','2022-04-20 16:06:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14166','424','1212','42.57099','-2.95879','994','1.5730745522396','-1.2819746673331','150.64203819883','84.009999999999','4000.5501033418','147.2830174095','4174.606544403','2022-04-20 16:06:36','2022-04-20 16:06:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14167','424','1213','42.57098','-2.95878','993','1.5896495325631','-1.0787091143332','150.89216438434','83.979999999999','4000.6660856073','147.03156156686','4174.4008791817','2022-04-20 16:06:37','2022-04-20 16:06:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14168','424','1214','42.57097','-2.95877','992','1.584965876814','-1.2054584931889','150.65206990919','83.979999999999','4000.781520109','146.77499343931','4174.195385647','2022-04-20 16:06:38','2022-04-20 16:06:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14169','424','1215','42.57096','-2.95876','991','1.5748540113925','-1.3743007066875','150.8033322606','83.979999999999','4000.8967569035','146.48664110763','4173.9895533468','2022-04-20 16:06:39','2022-04-20 16:06:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14170','424','1216','42.57094','-2.95875','990','1.574880442287','-1.5011744986648','150.76297692773','83.979999999999','4001.0058321652','146.18747711361','4173.7959436587','2022-04-20 16:06:40','2022-04-20 16:06:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14171','424','1217','42.57093','-2.95874','988','1.5820253462553','-1.6281932805644','150.42037137485','83.979999999999','4001.1210645104','145.83867228362','4173.5914395237','2022-04-20 16:06:41','2022-04-20 16:06:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14172','424','1218','42.57092','-2.95873','986','1.5767295380799','-1.7973100856198','150.31351439863','83.979999999999','4001.236436034','145.45630683558','4173.386130402','2022-04-20 16:06:42','2022-04-20 16:06:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14173','424','1219','42.57091','-2.95872','984','1.5880881436489','-1.9245179177609','150.70035592426','83.979999999999','4001.3516755392','145.04277604471','4173.1805556982','2022-04-20 16:06:43','2022-04-20 16:06:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14174','424','1220','42.57089','-2.95871','982','1.5839115527613','-2.0518167000794','150.55386267085','83.979999999999','4001.4671566989','144.59810624247','4172.9743272737','2022-04-20 16:06:44','2022-04-20 16:06:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14175','424','1221','42.57088','-2.9587','980','1.5808167610347','-2.0561916925742','150.68324559831','83.964999999999','4001.5824016355','144.12734402769','4172.7701955625','2022-04-20 16:06:45','2022-04-20 16:06:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14176','424','1222','42.57087','-2.95869','978','1.5910313561165','-1.6884094804977','150.77718091367','83.919999999999','4001.6981567282','143.71040463192','4172.5647296382','2022-04-20 16:06:46','2022-04-20 16:06:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14177','424','1223','42.57086','-2.95868','977','1.5745334306581','-1.3203636035167','150.57576972985','83.859999999999','4001.814023154','143.38373734663','4172.3590892259','2022-04-20 16:06:47','2022-04-20 16:06:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14178','424','1224','42.57084','-2.95867','976','1.5883721561496','-0.99404397927352','150.41422318657','83.829999999999','4001.9268017849','143.15079411286','4172.1581445874','2022-04-20 16:06:48','2022-04-20 16:06:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14179','424','1225','42.57083','-2.95867','975','1.5902449569449','-1.1207202171325','150.52411022959','83.829999999999','4002.0406440609','142.91926758933','4171.9557092578','2022-04-20 16:06:49','2022-04-20 16:06:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14180','424','1226','42.57082','-2.95866','974','1.5785766693879','-1.2894859615594','151.12859136723','83.829999999999','4002.1553133322','142.65709630932','4171.752581196','2022-04-20 16:06:50','2022-04-20 16:06:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14181','424','1227','42.57081','-2.95865','972','1.5726778276881','-1.4163131724403','150.87903742048','83.829999999999','4002.2650177651','142.37388048974','4171.5571308562','2022-04-20 16:06:51','2022-04-20 16:06:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14182','424','1228','42.5708','-2.95864','971','1.5789333790736','-1.5432067872726','150.40726340073','83.829999999999','4002.3724781954','142.06792965785','4171.3651237361','2022-04-20 16:06:52','2022-04-20 16:06:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14183','424','1229','42.57078','-2.95863','970','1.5776678712263','-1.7121892986787','150.3895500325','83.829999999999','4002.4815369177','141.73154291589','4171.1735037461','2022-04-20 16:06:53','2022-04-20 16:06:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14184','424','1230','42.57077','-2.95862','968','1.583072474341','-1.8392538705692','150.61321987651','83.829999999999','4002.5899456555','141.36706076575','4170.9826922746','2022-04-20 16:06:54','2022-04-20 16:06:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14185','424','1231','42.57076','-2.95861','966','1.5806224495009','-1.9663535363727','151.10089655676','83.829999999999','4002.6929002986','140.99056335859','4170.7998420405','2022-04-20 16:06:55','2022-04-20 16:06:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14186','424','1232','42.57075','-2.9586','964','1.5734986283238','-2.1354942151589','150.64699867425','83.829999999999','4002.7939991328','140.60002415653','4170.6220225447','2022-04-20 16:06:56','2022-04-20 16:06:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14187','424','1233','42.57074','-2.95859','962','1.5849500771606','-2.2627436208004','150.71080682611','83.829999999999','4002.8954329339','140.17225966389','4170.4410412291','2022-04-20 16:06:57','2022-04-20 16:06:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14188','424','1234','42.57073','-2.95859','960','1.587637739226','-2.3900430416777','150.76426208992','83.829999999999','4002.9949931985','139.72737123549','4170.2626683095','2022-04-20 16:06:58','2022-04-20 16:06:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14189','424','1235','42.57072','-2.95858','959','1.5748315156396','-2.0642681109724','150.37009935532','83.784999999999','4003.0902598582','139.3079388847','4170.0946310035','2022-04-20 16:06:59','2022-04-20 16:06:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14190','424','1236','42.57071','-2.95857','957','1.5882967125557','-1.6962770603129','150.64564962191','83.739999999999','4003.184810411','138.9625004711','4169.927280172','2022-04-20 16:07:00','2022-04-20 16:07:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14191','424','1237','42.5707','-2.95856','956','1.587672337547','-1.3280397714437','150.85426631716','83.694999999999','4003.2756628691','138.701367714','4169.7670122045','2022-04-20 16:07:01','2022-04-20 16:07:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14192','424','1238','42.57069','-2.95856','955','1.5906249465286','-0.83658468906841','150.54344226159','83.634999999999','4003.3640888423','138.51480187539','4169.6106654318','2022-04-20 16:07:02','2022-04-20 16:07:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14193','424','1239','42.57068','-2.95855','955','1.5787891541971','-0.46791640679787','150.45065845146','83.589999999999','4003.4515073446','138.40123022058','4169.4560993569','2022-04-20 16:07:03','2022-04-20 16:07:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14194','424','1240','42.57067','-2.95854','954','1.5833235706345','-0.099050715039046','150.96516348199','83.544999999999','4003.5384067661','138.35524651862','4169.3042397509','2022-04-20 16:07:04','2022-04-20 16:07:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14195','424','1241','42.57066','-2.95853','954','1.586742356942','0.39300952056174','150.41269234597','83.484999999999','4003.6229499834','138.37586964561','4169.1518020656','2022-04-20 16:07:05','2022-04-20 16:07:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14196','424','1242','42.57065','-2.95853','955','1.5869779725804','0.76230535630731','150.55408200724','83.439999999999','4003.7175086983','138.47715622813','4168.9847391715','2022-04-20 16:07:06','2022-04-20 16:07:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14197','424','1243','42.57064','-2.95852','956','1.5785633361189','0.80184560157055','150.45133312788','83.424999999999','4003.8322954838','138.66212236984','4168.7791572687','2022-04-20 16:07:07','2022-04-20 16:07:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14198','424','1244','42.57063','-2.95851','956','1.5889701755353','0.63431680071776','150.84259969102','83.424999999999','4003.9473110525','138.82344888978','4168.5732910101','2022-04-20 16:07:08','2022-04-20 16:07:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14199','424','1245','42.57061','-2.9585','957','1.5846434741714','0.50869403363141','150.42774778374','83.424999999999','4004.0632492507','138.95260377796','4168.3673887217','2022-04-20 16:07:09','2022-04-20 16:07:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14200','424','1246','42.5706','-2.95849','957','1.5764609770506','0.38298354366786','150.63629389508','83.424999999999','4004.1777510913','139.05172459969','4168.1626789352','2022-04-20 16:07:10','2022-04-20 16:07:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14201','424','1247','42.57059','-2.95848','958','1.5906232813725','0.21518280321821','150.62840394566','83.424999999999','4004.2933412934','139.11994596641','4167.9571440029','2022-04-20 16:07:11','2022-04-20 16:07:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14202','424','1248','42.57058','-2.95847','958','1.5815419598778','0.089289435102388','150.85731039871','83.424999999999','4004.4088413225','139.15645399257','4167.7506398505','2022-04-20 16:07:12','2022-04-20 16:07:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14203','424','1249','42.57056','-2.95846','958','1.5823539239437','-0.036693756101923','151.08984478437','83.424999999999','4004.5247478214','139.16220889371','4167.5449967063','2022-04-20 16:07:13','2022-04-20 16:07:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14204','424','1250','42.57055','-2.95845','958','1.5761632902867','-0.20476710208705','150.30513608269','83.424999999999','4004.6398432271','139.1370971069','4167.3396077061','2022-04-20 16:07:14','2022-04-20 16:07:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14205','424','1251','42.57054','-2.95844','958','1.5886852806813','-0.33093245113099','151.0716964504','83.424999999999','4004.7547988795','139.08048582907','4167.1343442883','2022-04-20 16:07:15','2022-04-20 16:07:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14206','424','1252','42.57053','-2.95843','957','1.5800686063264','-0.45718873804678','150.4865064339','83.424999999999','4004.8700138604','138.99273975297','4166.9291525709','2022-04-20 16:07:16','2022-04-20 16:07:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14207','424','1253','42.57051','-2.95842','957','1.5879611789303','-0.62553522070091','150.73900924961','83.424999999999','4004.9863989179','138.87411296609','4166.7233094411','2022-04-20 16:07:17','2022-04-20 16:07:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14208','424','1254','42.5705','-2.95841','956','1.58299078021','-0.75197468551345','150.98902349839','83.424999999999','4005.1014308937','138.72365146958','4166.517191962','2022-04-20 16:07:18','2022-04-20 16:07:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14209','424','1255','42.57049','-2.9584','955','1.5894413563229','-0.87850446457147','150.33586158718','83.424999999999','4005.2164402737','138.54226868849','4166.3113014913','2022-04-20 16:07:19','2022-04-20 16:07:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14210','424','1256','42.57048','-2.95839','954','1.5826707045721','-1.0471183630662','151.10771063404','83.424999999999','4005.3322077416','138.33208556669','4166.1066572053','2022-04-20 16:07:20','2022-04-20 16:07:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14211','424','1257','42.57046','-2.95838','953','1.5882066504288','-1.1738245947179','151.18010151814','83.424999999999','4005.4464817262','138.0902899367','4165.9023745325','2022-04-20 16:07:21','2022-04-20 16:07:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14212','424','1258','42.57045','-2.95838','952','1.5723505198926','-1.3006283905514','150.4093085384','83.424999999999','4005.5621871887','137.81509082966','4165.6959191657','2022-04-20 16:07:22','2022-04-20 16:07:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14213','424','1259','42.57044','-2.95837','951','1.5840257125524','-1.4695050171559','150.55848037241','83.424999999999','4005.6762489116','137.51495633187','4165.4949193917','2022-04-20 16:07:23','2022-04-20 16:07:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14214','424','1260','42.57043','-2.95836','949','1.5754081771154','-1.5964778227471','150.7596444361','83.424999999999','4005.7903075984','137.18189261235','4165.2921758769','2022-04-20 16:07:24','2022-04-20 16:07:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14215','424','1261','42.57042','-2.95835','947','1.5785272854572','-1.7235130269455','150.34781850364','83.424999999999','4005.9010079837','136.82746520783','4165.0939007814','2022-04-20 16:07:25','2022-04-20 16:07:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14216','424','1262','42.5704','-2.95834','946','1.5817066708822','-1.5625916044962','150.40176018122','83.394999999999','4006.0136501607','136.45818787833','4164.8983431101','2022-04-20 16:07:26','2022-04-20 16:07:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14217','424','1263','42.57039','-2.95833','944','1.571815412648','-1.1944495396787','150.66652634602','83.349999999999','4006.1237285353','136.16445284476','4164.7061817735','2022-04-20 16:07:27','2022-04-20 16:07:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14218','424','1264','42.57038','-2.95832','944','1.5755879010519','-0.82606888416748','151.17169123849','83.304999999999','4006.2325825305','135.95240515406','4164.511878338','2022-04-20 16:07:28','2022-04-20 16:07:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14219','424','1265','42.57037','-2.95831','943','1.5911873192981','-0.33442465994954','150.94944132639','83.244999999999','4006.3369706713','135.8305966382','4164.3252674682','2022-04-20 16:07:29','2022-04-20 16:07:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14220','424','1266','42.57036','-2.9583','943','1.5858762691411','0.034466050206234','150.70677099918','83.199999999999','4006.4432746219','135.7931785946','4164.1374490219','2022-04-20 16:07:30','2022-04-20 16:07:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14221','424','1267','42.57035','-2.95829','943','1.5867688626369','0.23857414198558','150.82580020455','83.169999999999','4006.5467872479','135.83018645146','4163.9541729865','2022-04-20 16:07:31','2022-04-20 16:07:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14222','424','1268','42.57034','-2.95829','943','1.584436243872','0.070663670651757','150.35842191724','83.169999999999','4006.6464488794','135.86083877381','4163.7766658733','2022-04-20 16:07:32','2022-04-20 16:07:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14223','424','1269','42.57032','-2.95828','943','1.5881296953564','-0.05532582028097','150.7337879345','83.169999999999','4006.7456747537','135.86443680929','4163.6014418368','2022-04-20 16:07:33','2022-04-20 16:07:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14224','424','1270','42.57031','-2.95827','943','1.5769341162899','-0.18139236546397','151.03146545928','83.169999999999','4006.8457413918','135.84165344295','4163.4234951686','2022-04-20 16:07:34','2022-04-20 16:07:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14225','424','1271','42.5703','-2.95826','943','1.5750387434774','-0.34952549016682','150.73654852975','83.169999999999','4006.9373133728','135.7960749542','4163.2586070548','2022-04-20 16:07:35','2022-04-20 16:07:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14226','424','1272','42.57029','-2.95825','942','1.5815815574547','-0.47578567013258','150.9191166786','83.169999999999','4007.0521710656','135.7069959975','4163.0536935555','2022-04-20 16:07:36','2022-04-20 16:07:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14227','424','1273','42.57028','-2.95824','942','1.5914975025601','-0.60213577501859','151.02885482643','83.169999999999','4007.1675876055','135.5871290512','4162.8476809742','2022-04-20 16:07:37','2022-04-20 16:07:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14228','424','1274','42.57027','-2.95823','941','1.5750966210087','-0.7705720876628','150.49027032669','83.169999999999','4007.2819327088','135.43774677639','4162.643996939','2022-04-20 16:07:38','2022-04-20 16:07:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14229','424','1275','42.57025','-2.95822','940','1.5808753769885','-0.89710007366168','150.80195691648','83.169999999999','4007.3972392234','135.25697789282','4162.4395091698','2022-04-20 16:07:39','2022-04-20 16:07:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14230','424','1276','42.57024','-2.95821','939','1.5879454340866','-1.0237238474801','151.01963358993','83.169999999999','4007.5121884267','135.04341371311','4162.2336861492','2022-04-20 16:07:40','2022-04-20 16:07:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14231','424','1277','42.57023','-2.95821','938','1.5864826152951','-1.1924344570557','150.89324936225','83.169999999999','4007.6268432807','134.80011919413','4162.0291356711','2022-04-20 16:07:41','2022-04-20 16:07:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14232','424','1278','42.57022','-2.9582','937','1.5799618414289','-1.3192417476709','150.84031742302','83.169999999999','4007.7422829889','134.52372356329','4161.8229183099','2022-04-20 16:07:42','2022-04-20 16:07:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14233','424','1279','42.5702','-2.95819','936','1.572302804975','-1.4461394549689','150.61806498905','83.169999999999','4007.8574227535','134.21637157598','4161.617041745','2022-04-20 16:07:43','2022-04-20 16:07:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14234','424','1280','42.57019','-2.95818','934','1.5782282403955','-1.6151277746909','150.54476655414','83.169999999999','4007.9720965127','133.8779962154','4161.4115327782','2022-04-20 16:07:44','2022-04-20 16:07:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14235','424','1281','42.57018','-2.95817','933','1.5773736405688','-1.7422096299259','150.92312839312','83.169999999999','4008.0880294855','133.50759669077','4161.2061483202','2022-04-20 16:07:45','2022-04-20 16:07:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14236','424','1282','42.57017','-2.95816','931','1.591155364904','-1.8693820801897','150.61596967774','83.169999999999','4008.2031409532','133.10617974851','4161.000171529','2022-04-20 16:07:46','2022-04-20 16:07:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14237','424','1283','42.57015','-2.95815','929','1.5900867949118','-2.0386453213395','150.29509755717','83.169999999999','4008.3182894939','132.67367833216','4160.7942751069','2022-04-20 16:07:47','2022-04-20 16:07:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14238','424','1284','42.57014','-2.95814','927','1.5821481144939','-2.1660022765802','150.96358733388','83.169999999999','4008.4335316856','132.20909161125','4160.5891522271','2022-04-20 16:07:48','2022-04-20 16:07:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14239','424','1285','42.57013','-2.95813','924','1.5787844938818','-2.2934500055437','150.43640743834','83.169999999999','4008.5482892309','131.71342629249','4160.3834379807','2022-04-20 16:07:49','2022-04-20 16:07:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14240','424','1286','42.57012','-2.95812','922','1.5838074047054','-2.4629887042032','151.01175378103','83.169999999999','4008.6642665911','131.18661527966','4160.1785493211','2022-04-20 16:07:50','2022-04-20 16:07:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14241','424','1287','42.5701','-2.95811','920','1.5777630111073','-2.5906212958798','150.91051982083','83.169999999999','4008.7792586149','130.62765770255','4159.9724488918','2022-04-20 16:07:51','2022-04-20 16:07:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14242','424','1288','42.57009','-2.9581','917','1.5879192412623','-2.7183448403215','151.01206463261','83.169999999999','4008.8944843638','130.03756022806','4159.7666540058','2022-04-20 16:07:52','2022-04-20 16:07:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14243','424','1289','42.57008','-2.95809','914','1.5784578487858','-2.5581007470439','150.33733498435','83.139999999999','4009.0078143053','129.43638273752','4159.5623393571','2022-04-20 16:07:53','2022-04-20 16:07:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14244','424','1290','42.57007','-2.95808','912','1.5891135596288','-2.1906594131126','150.39494777636','83.094999999999','4009.1236251371','128.90273539516','4159.3581654906','2022-04-20 16:07:54','2022-04-20 16:07:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14245','424','1291','42.57005','-2.95807','910','1.5914432250516','-1.8229301594648','151.16809413375','83.049999999999','4009.237976199','128.46766438976','4159.1579045082','2022-04-20 16:07:55','2022-04-20 16:07:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14246','424','1292','42.57004','-2.95806','908','1.5806530993398','-1.3319345999087','150.66934765675','82.989999999999','4009.3481339352','128.12376970686','4158.9588336295','2022-04-20 16:07:56','2022-04-20 16:07:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14247','424','1293','42.57003','-2.95805','907','1.5748313120003','-1.1286681554263','150.3550401259','82.959999999999','4009.4591112826','127.87261908503','4158.7639751769','2022-04-20 16:07:57','2022-04-20 16:07:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14248','424','1294','42.57002','-2.95805','906','1.5881461813379','-1.2553916772016','150.53676374809','82.959999999999','4009.5671438571','127.62490375955','4158.5711113803','2022-04-20 16:07:58','2022-04-20 16:07:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14249','424','1295','42.57001','-2.95804','905','1.5838591896854','-1.4241826682944','150.85438215869','82.959999999999','4009.6735324947','127.35408866776','4158.3825310911','2022-04-20 16:07:59','2022-04-20 16:07:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14250','424','1296','42.57','-2.95803','903','1.5791531145362','-1.5510538003536','150.97350013899','82.959999999999','4009.7783463518','127.05583536159','4158.1954765142','2022-04-20 16:08:00','2022-04-20 16:08:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14251','424','1297','42.56998','-2.95802','902','1.5830860434105','-1.6780022504388','150.38344421949','82.959999999999','4009.8839910836','126.73111034351','4158.0082497822','2022-04-20 16:08:01','2022-04-20 16:08:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14252','424','1298','42.56997','-2.95801','900','1.5885564885125','-1.8470275126519','150.88082240309','82.959999999999','4009.9887875361','126.38008682015','4157.8234866296','2022-04-20 16:08:02','2022-04-20 16:08:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14253','424','1299','42.56996','-2.958','899','1.5764936925501','-1.9741181700353','150.73251172784','82.959999999999','4010.0904382887','126.00667366532','4157.6410785227','2022-04-20 16:08:03','2022-04-20 16:08:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14254','424','1300','42.56995','-2.95799','897','1.5854845682008','-2.1012358991707','150.40432666848','82.959999999999','4010.1873776698','125.62399183595','4157.467704398','2022-04-20 16:08:04','2022-04-20 16:08:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14255','424','1301','42.56994','-2.95799','895','1.5907507525459','-2.2703891254127','150.35981132032','82.959999999999','4010.2824751535','125.2291567064','4157.2999262452','2022-04-20 16:08:05','2022-04-20 16:08:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14256','424','1302','42.56993','-2.95798','893','1.5766727566185','-2.3978814505895','150.71295411547','82.959999999999','4010.3961728102','124.71822278636','4157.0963529117','2022-04-20 16:08:06','2022-04-20 16:08:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14257','424','1303','42.56992','-2.95797','891','1.5811967585331','-2.5254797989609','151.15668916425','82.959999999999','4010.5111262284','124.17098923991','4156.890543479','2022-04-20 16:08:07','2022-04-20 16:08:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14258','424','1304','42.5699','-2.95796','888','1.5772762611751','-2.0349764506807','151.06808269376','82.899999999999','4010.6257059561','123.65857402236','4156.6844047359','2022-04-20 16:08:08','2022-04-20 16:08:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14259','424','1305','42.56989','-2.95795','886','1.5781371555775','-1.6672028280783','150.78786897142','82.854999999999','4010.7399444873','123.23869381064','4156.4794891543','2022-04-20 16:08:09','2022-04-20 16:08:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14260','424','1306','42.56988','-2.95794','885','1.5788916742011','-1.2991663466873','151.14097913374','82.809999999999','4010.855616222','122.90880971597','4156.2745623068','2022-04-20 16:08:10','2022-04-20 16:08:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14261','424','1307','42.56987','-2.95793','884','1.5763070135426','-1.3029626056483','151.1729197116','82.794999999999','4010.9704735913','122.63619104102','4156.0691420588','2022-04-20 16:08:11','2022-04-20 16:08:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14262','424','1308','42.56985','-2.95792','882','1.5756680418383','-1.4298415545422','150.57113895234','82.794999999999','4011.085628956','122.33526145085','4155.8638437565','2022-04-20 16:08:12','2022-04-20 16:08:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14263','424','1309','42.56984','-2.95791','881','1.5774438289922','-1.5568111030372','150.57357200743','82.794999999999','4011.2003252061','122.00331287764','4155.6586379763','2022-04-20 16:08:13','2022-04-20 16:08:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14264','424','1310','42.56983','-2.9579','879','1.5860719554508','-1.7258711742051','150.39149076762','82.794999999999','4011.3155813756','121.64037165966','4155.4526661978','2022-04-20 16:08:14','2022-04-20 16:08:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14265','424','1311','42.56982','-2.95789','877','1.5835109519067','-1.853024827537','150.70950903315','82.794999999999','4011.430727','121.24539030547','4155.2461763943','2022-04-20 16:08:15','2022-04-20 16:08:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14266','424','1312','42.5698','-2.95788','875','1.5847788146262','-1.9802629658836','150.70436127718','82.794999999999','4011.5459264545','120.82148344603','4155.042046398','2022-04-20 16:08:16','2022-04-20 16:08:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14267','424','1313','42.56979','-2.95787','873','1.5882710935454','-2.1495916608319','150.87674511093','82.794999999999','4011.6609287339','120.36657232544','4154.8373336664','2022-04-20 16:08:17','2022-04-20 16:08:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14268','424','1314','42.56978','-2.95786','871','1.5820742781579','-2.2770205459912','150.59661043955','82.794999999999','4011.7770828564','119.87735864261','4154.6316301168','2022-04-20 16:08:18','2022-04-20 16:08:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14269','424','1315','42.56977','-2.95785','869','1.5907136288247','-2.4045403879682','150.32835193231','82.794999999999','4011.8920173098','119.35700367494','4154.4262624521','2022-04-20 16:08:19','2022-04-20 16:08:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14270','424','1316','42.56975','-2.95785','866','1.5854883583193','-2.5741428888502','150.43540136614','82.794999999999','4012.0073296656','118.80834841522','4154.2215366976','2022-04-20 16:08:20','2022-04-20 16:08:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14271','424','1317','42.56974','-2.95784','864','1.5850399167018','-2.7018475454532','150.55044466831','82.794999999999','4012.1236774178','118.22471765295','4154.015839682','2022-04-20 16:08:21','2022-04-20 16:08:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14272','424','1318','42.56973','-2.95783','861','1.5787975541427','-2.8296163224621','150.74789104439','82.794999999999','4012.2374494529','117.61913370594','4153.8125940063','2022-04-20 16:08:22','2022-04-20 16:08:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14273','424','1319','42.56972','-2.95782','858','1.5838356753291','-2.3393113280748','150.6556800895','82.734999999999','4012.3520698824','117.03880719557','4153.6061770943','2022-04-20 16:08:23','2022-04-20 16:08:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14274','424','1320','42.5697','-2.95781','856','1.5888775685383','-1.9717213876309','150.32411609528','82.689999999999','4012.4666439929','116.55603891714','4153.402432028','2022-04-20 16:08:24','2022-04-20 16:08:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14275','424','1321','42.56969','-2.9578','855','1.5905689939764','-1.6038638914663','150.93412711344','82.644999999999','4012.5813212061','116.164874865','4153.1995837372','2022-04-20 16:08:25','2022-04-20 16:08:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14276','424','1322','42.56968','-2.95779','853','1.5898202382285','-1.1127486635991','150.87605774492','82.584999999999','4012.694037878','115.86195154697','4152.9964014598','2022-04-20 16:08:26','2022-04-20 16:08:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14277','424','1323','42.56967','-2.95778','852','1.5891404404039','-1.2394851631075','151.15256211976','82.584999999999','4012.8076596504','115.60979297809','4152.7954627832','2022-04-20 16:08:27','2022-04-20 16:08:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14278','424','1324','42.56966','-2.95777','851','1.5788415944063','-1.3662844496248','151.12329301771','82.584999999999','4012.9166837646','115.33613774538','4152.601291075','2022-04-20 16:08:28','2022-04-20 16:08:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14279','424','1325','42.56964','-2.95776','849','1.5805853640793','-1.5351597843442','151.07154682382','82.584999999999','4013.026002863','115.03644555599','4152.4077708689','2022-04-20 16:08:29','2022-04-20 16:08:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14280','424','1326','42.56963','-2.95775','848','1.5905735745601','-1.6620908438471','150.31886162611','82.584999999999','4013.1314859929','114.71767462794','4152.2216756366','2022-04-20 16:08:30','2022-04-20 16:08:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14281','424','1327','42.56962','-2.95774','846','1.5831137798205','-1.7890824215524','150.82836395053','82.584999999999','4013.2336829262','114.37818381729','4152.0403103022','2022-04-20 16:08:31','2022-04-20 16:08:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14282','424','1328','42.56961','-2.95774','845','1.5897573097032','-1.9581359740535','150.87658846489','82.584999999999','4013.3355061248','114.01747442386','4151.8612077815','2022-04-20 16:08:32','2022-04-20 16:08:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14283','424','1329','42.5696','-2.95773','843','1.584875969702','-2.0852703262322','151.13477131486','82.584999999999','4013.4353517753','113.62910129022','4151.6816690314','2022-04-20 16:08:33','2022-04-20 16:08:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14284','424','1330','42.56959','-2.95772','841','1.5901530582424','-2.2124768396948','151.01845763621','82.584999999999','4013.5350798957','113.2160219811','4151.504257618','2022-04-20 16:08:34','2022-04-20 16:08:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14285','424','1331','42.56958','-2.95771','839','1.5876017869338','-2.3816881342213','150.48534756495','82.584999999999','4013.6306017472','112.80130575814','4151.336251192','2022-04-20 16:08:35','2022-04-20 16:08:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14286','424','1332','42.56957','-2.9577','837','1.5792164851079','-2.5089677620597','150.6528860904','82.584999999999','4013.725555138','112.36319395931','4151.1685602247','2022-04-20 16:08:36','2022-04-20 16:08:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14287','424','1333','42.56956','-2.9577','835','1.5796305609929','-2.6365074416119','150.78932835342','82.584999999999','4013.8316668392','111.83604711395','4150.9775099559','2022-04-20 16:08:37','2022-04-20 16:08:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14288','424','1334','42.56954','-2.95769','832','1.5789224664735','-2.8062691130065','150.87297630194','82.584999999999','4013.9472369334','111.23289594729','4150.7721155421','2022-04-20 16:08:38','2022-04-20 16:08:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14289','424','1335','42.56953','-2.95768','829','1.5808355160691','-2.9341246858899','151.07720006882','82.584999999999','4014.062230652','110.59759531579','4150.5660556086','2022-04-20 16:08:39','2022-04-20 16:08:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14290','424','1336','42.56952','-2.95767','826','1.5898956077465','-3.0620714927852','150.71478372595','82.584999999999','4014.1776609675','109.93105849526','4150.3610815538','2022-04-20 16:08:40','2022-04-20 16:08:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14291','424','1337','42.56951','-2.95766','823','1.5739663613571','-3.2320892878772','151.03972696086','82.584999999999','4014.2917886981','109.24021713428','4150.1565404337','2022-04-20 16:08:41','2022-04-20 16:08:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14292','424','1338','42.56949','-2.95765','820','1.5921084158381','-3.3602213200627','149.55229682044','82.584999999999','4014.4076984303','108.51026391827','4149.9517517186','2022-04-20 16:08:42','2022-04-20 16:08:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14293','424','1339','42.56948','-2.95764','817','1.7460235331731','-3.158369892336','132.19419837056','82.554999999999','4014.5608715688','107.77464779979','4149.7581560924','2022-04-20 16:08:43','2022-04-20 16:08:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14294','424','1340','42.56947','-2.95762','814','1.8488886557626','-2.6682776440687','120.59336957686','82.494999999999','4014.7717294944','107.12148246667','4149.5964523485','2022-04-20 16:08:44','2022-04-20 16:08:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14295','424','1341','42.56947','-2.9576','811','1.943489007343','-2.7960434468319','109.92461757537','82.494999999999','4015.0265528617','106.51691682522','4149.47600823','2022-04-20 16:08:45','2022-04-20 16:08:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14296','424','1342','42.56946','-2.95757','808','2.0757227846089','-2.9239005616944','95.011677482656','82.494999999999','4015.3161770678','105.88108825957','4149.4073769055','2022-04-20 16:08:46','2022-04-20 16:08:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14297','424','1343','42.56946','-2.95755','805','2.1800873716654','-3.093848775713','83.24174345555','82.494999999999','4015.6308319983','105.21406967605','4149.4053208292','2022-04-20 16:08:47','2022-04-20 16:08:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14298','424','1344','42.56947','-2.95752','802','2.2889207882183','-3.2218911488069','70.967827859266','82.494999999999','4015.9544461243','104.51481343669','4149.4791427021','2022-04-20 16:08:48','2022-04-20 16:08:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14299','424','1345','42.56947','-2.95749','799','2.3624015486395','-3.3500248772507','63.697145200731','82.494999999999','4016.2707152808','103.7842794653','4149.6260140883','2022-04-20 16:08:49','2022-04-20 16:08:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14300','424','1346','42.56948','-2.95747','795','2.3527276983832','-3.190207117933','63.583144483728','82.464999999999','4016.5843172842','103.03713614586','4149.7831827656','2022-04-20 16:08:50','2022-04-20 16:08:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14301','424','1347','42.56949','-2.95744','792','2.352710552768','-2.8231834873683','63.413708324387','82.419999999999','4016.898451825','102.36047786876','4149.9396317733','2022-04-20 16:08:51','2022-04-20 16:08:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14302','424','1348','42.5695','-2.95742','790','2.3476130507965','-2.7859724949768','63.560829794179','82.404999999999','4017.2116756812','101.74796748258','4150.0983273177','2022-04-20 16:08:52','2022-04-20 16:08:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14303','424','1349','42.56951','-2.95739','787','2.355620195768','-2.9558128776798','62.973258271669','82.404999999999','4017.5218741806','101.11786757982','4150.2539089197','2022-04-20 16:08:53','2022-04-20 16:08:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14304','424','1350','42.56952','-2.95737','784','2.355588137973','-3.0837557124291','63.516871166212','82.404999999999','4017.8361813663','100.45269072035','4150.4117840074','2022-04-20 16:08:54','2022-04-20 16:08:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14305','424','1351','42.56953','-2.95734','781','2.351077127318','-3.2117794035629','63.675891746439','82.404999999999','4018.1474325664','99.759830705672','4150.5674047629','2022-04-20 16:08:55','2022-04-20 16:08:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14306','424','1352','42.56954','-2.95731','777','2.3599965964259','-3.3818721919549','63.295502652897','82.404999999999','4018.4563315244','99.043313559449','4150.7203410283','2022-04-20 16:08:56','2022-04-20 16:08:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14307','424','1353','42.56955','-2.95729','774','2.3631187245131','-3.0148891578967','63.73281848726','82.359999999999','4018.7591526575','98.352756078258','4150.8723479952','2022-04-20 16:08:57','2022-04-20 16:08:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14308','424','1354','42.56956','-2.95726','772','2.3647311965027','-2.6476537161078','63.694170197787','82.314999999999','4019.0618541809','97.748616539549','4151.0237181297','2022-04-20 16:08:58','2022-04-20 16:08:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14309','424','1355','42.56957','-2.95724','769','2.3518135938335','-2.1571340983853','63.063386343305','82.254999999999','4019.3597017054','97.24177156236','4151.1703870063','2022-04-20 16:08:59','2022-04-20 16:08:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14310','424','1356','42.56958','-2.95722','767','2.3536973843811','-1.7893609210602','63.363138015472','82.209999999999','4019.6551599859','96.821738899125','4151.3178877967','2022-04-20 16:09:00','2022-04-20 16:09:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14311','424','1357','42.56959','-2.95719','766','2.3608538940335','-1.4213257788101','63.849060790903','82.164999999999','4019.9469142248','96.491396316901','4151.4633669386','2022-04-20 16:09:01','2022-04-20 16:09:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14312','424','1358','42.5696','-2.95717','765','2.3461949756062','-0.93003408666852','63.236324755877','82.104999999999','4020.2343083262','96.24888984691','4151.606444953','2022-04-20 16:09:02','2022-04-20 16:09:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14313','424','1359','42.5696','-2.95714','764','2.3609957625471','-0.56149189666384','63.055922603233','82.059999999999','4020.5174691389','96.092147429661','4151.7489368742','2022-04-20 16:09:03','2022-04-20 16:09:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14314','424','1360','42.56961','-2.95712','764','2.3520979916525','-0.52276795785296','63.760630142216','82.044999999999','4020.7884332694','95.997631148815','4151.8853871659','2022-04-20 16:09:04','2022-04-20 16:09:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14315','424','1361','42.56962','-2.9571','763','2.3545863829756','-0.69113502062111','62.960933528156','82.044999999999','4021.0835477097','95.871958257985','4152.0313234146','2022-04-20 16:09:05','2022-04-20 16:09:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14316','424','1362','42.56963','-2.95707','762','2.3563586073071','-0.81761655083674','63.381371514248','82.044999999999','4021.3973741364','95.707094644808','4152.1891471965','2022-04-20 16:09:06','2022-04-20 16:09:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14317','424','1363','42.56964','-2.95705','762','2.3620225171616','-0.94418869534779','63.438719501077','82.044999999999','4021.7111690796','95.511207017639','4152.34590189','2022-04-20 16:09:07','2022-04-20 16:09:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14318','424','1364','42.56965','-2.95702','761','2.345966914806','-1.1128509679418','63.800314597217','82.044999999999','4022.0247977136','95.284461843175','4152.5035512992','2022-04-20 16:09:08','2022-04-20 16:09:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14319','424','1365','42.56966','-2.957','759','2.3626531638826','-1.2396062915449','63.841638255072','82.044999999999','4022.3389928489','95.025858386339','4152.6608764049','2022-04-20 16:09:09','2022-04-20 16:09:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14320','424','1366','42.56967','-2.95697','758','2.3464077826837','-1.3664524072794','62.988136553104','82.044999999999','4022.6537588138','94.736170029053','4152.8163545184','2022-04-20 16:09:10','2022-04-20 16:09:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14321','424','1367','42.56968','-2.95694','757','2.3482500099828','-1.5353889654384','63.40435894924','82.044999999999','4022.9662358251','94.415516501952','4152.9732707024','2022-04-20 16:09:11','2022-04-20 16:09:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14322','424','1368','42.56969','-2.95692','755','2.3496012261001','-1.6624188891431','63.814534625414','82.044999999999','4023.2798220848','94.062897003236','4153.1294155075','2022-04-20 16:09:12','2022-04-20 16:09:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14323','424','1369','42.5697','-2.95689','753','2.3566893183555','-1.7895396469767','63.18139408163','82.044999999999','4023.5936646782','93.679178225167','4153.2851923556','2022-04-20 16:09:13','2022-04-20 16:09:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14324','424','1370','42.56971','-2.95687','751','2.3613874175718','-1.9587508892155','62.98135868332','82.044999999999','4023.9075533411','93.264479904201','4153.4425663916','2022-04-20 16:09:14','2022-04-20 16:09:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14325','424','1371','42.56972','-2.95684','749','2.3506276232157','-2.0860558118396','63.657315828556','82.044999999999','4024.2211857255','92.817707818589','4153.5998224875','2022-04-20 16:09:15','2022-04-20 16:09:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14326','424','1372','42.56973','-2.95681','747','2.3557192277394','-2.2134446971163','63.750086152088','82.044999999999','4024.5352442355','92.342189071105','4153.7566449736','2022-04-20 16:09:16','2022-04-20 16:09:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14327','424','1373','42.56974','-2.95679','745','2.3546896501373','-2.38292382708','63.412808090142','82.044999999999','4024.8497103644','91.835772854113','4153.9124695801','2022-04-20 16:09:17','2022-04-20 16:09:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14328','424','1374','42.56974','-2.95676','743','2.3631947783169','-2.0153460493793','63.066807147228','81.999999999999','4025.1632467283','91.348840363916','4154.0696855142','2022-04-20 16:09:18','2022-04-20 16:09:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14329','424','1375','42.56975','-2.95674','741','2.3622386796272','-1.6475037694055','62.995001539921','81.954999999999','4025.4753246088','90.952466677727','4154.2239880783','2022-04-20 16:09:19','2022-04-20 16:09:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14330','424','1376','42.56976','-2.95671','740','2.355230689075','-1.4864626686927','63.244019253611','81.924999999999','4025.7891241511','90.62416412055','4154.3823165578','2022-04-20 16:09:20','2022-04-20 16:09:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14331','424','1377','42.56977','-2.95669','738','2.3479573728014','-1.613460811838','63.167790423831','81.924999999999','4026.1026012307','90.282425471403','4154.5403540085','2022-04-20 16:09:21','2022-04-20 16:09:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14332','424','1378','42.56978','-2.95666','736','2.3522734763044','-1.7405442537505','63.353560359861','81.924999999999','4026.4151375636','89.911482709026','4154.6963851199','2022-04-20 16:09:22','2022-04-20 16:09:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14333','424','1379','42.56979','-2.95663','735','2.3602946997667','-1.9097119517896','63.479627669177','81.924999999999','4026.7257894809','89.511692806791','4154.8516158962','2022-04-20 16:09:23','2022-04-20 16:09:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14334','424','1380','42.5698','-2.95661','733','2.3555286137098','-1.8719361155502','63.201367329209','81.909999999999','4027.033755819','89.092570487708','4155.0050953855','2022-04-20 16:09:24','2022-04-20 16:09:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14335','424','1381','42.56981','-2.95658','731','2.3539067347201','-1.5039773983736','63.367809806126','81.864999999999','4027.3358447035','88.736061917653','4155.1554295636','2022-04-20 16:09:25','2022-04-20 16:09:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14336','424','1382','42.56982','-2.95656','730','2.3557769711247','-1.0127835115628','63.102575323115','81.804999999999','4027.6378050258','88.460069407353','4155.3078630063','2022-04-20 16:09:26','2022-04-20 16:09:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14337','424','1383','42.56983','-2.95654','729','2.3646446314213','-0.6443037497908','63.322604524307','81.759999999999','4027.9299733645','88.281953162099','4155.4535545978','2022-04-20 16:09:27','2022-04-20 16:09:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14338','424','1384','42.56984','-2.95651','729','2.3658565812081','-0.27558321313026','62.963701663497','81.714999999999','4028.2253934821','88.186272072108','4155.5989693609','2022-04-20 16:09:28','2022-04-20 16:09:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14339','424','1385','42.56985','-2.95649','728','2.3537448273149','-0.44379160081763','63.191466865654','81.714999999999','4028.514208009','88.11492546505','4155.744126243','2022-04-20 16:09:29','2022-04-20 16:09:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14340','424','1386','42.56986','-2.95646','728','2.353738166295','-0.57008152652939','63.086474929573','81.714999999999','4028.8027441382','88.015662326744','4155.8869912915','2022-04-20 16:09:30','2022-04-20 16:09:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14341','424','1387','42.56986','-2.95644','727','2.3568652832095','-0.69642755801848','63.016689629708','81.714999999999','4029.0723713632','87.897190007222','4156.0232123329','2022-04-20 16:09:31','2022-04-20 16:09:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14342','424','1388','42.56987','-2.95642','727','2.3560121039746','-0.86491970817542','63.394117884788','81.714999999999','4029.379981825','87.728690398132','4156.1763019934','2022-04-20 16:09:32','2022-04-20 16:09:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14343','424','1389','42.56988','-2.95639','726','2.3521398092085','-0.99150822912852','63.393215301006','81.714999999999','4029.6906110895','87.527195896626','4156.3329450592','2022-04-20 16:09:33','2022-04-20 16:09:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14344','424','1390','42.56989','-2.95636','725','2.3489766114235','-1.1181933266968','63.828796577928','81.714999999999','4030.0047352164','87.292636035533','4156.4903153731','2022-04-20 16:09:34','2022-04-20 16:09:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14345','424','1391','42.5699','-2.95634','723','2.3629345739908','-1.2869686257179','63.209547349353','81.714999999999','4030.3189742519','87.027193507212','4156.6469091436','2022-04-20 16:09:35','2022-04-20 16:09:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14346','424','1392','42.56991','-2.95631','722','2.3617526719449','-1.4138373219623','63.292578969213','81.714999999999','4030.6326088713','86.729774161636','4156.8046351668','2022-04-20 16:09:36','2022-04-20 16:09:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14347','424','1393','42.56992','-2.95629','721','2.3481017000683','-1.5407824218735','62.95868495127','81.714999999999','4030.9422449793','86.406196157351','4156.9584352151','2022-04-20 16:09:37','2022-04-20 16:09:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14348','424','1394','42.56993','-2.95626','719','2.3655596078603','-1.7098172005924','63.145781819682','81.714999999999','4031.2505491847','86.051914426113','4157.1140689818','2022-04-20 16:09:38','2022-04-20 16:09:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14349','424','1395','42.56994','-2.95624','717','2.3479998266361','-1.836960289455','63.809280720549','81.714999999999','4031.5651188241','85.660550075654','4157.2696588218','2022-04-20 16:09:39','2022-04-20 16:09:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14350','424','1396','42.56995','-2.95621','715','2.3597632093452','-1.9641883180062','63.810216912913','81.714999999999','4031.8784329984','85.240104551226','4157.4254403857','2022-04-20 16:09:40','2022-04-20 16:09:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14351','424','1397','42.56996','-2.95618','713','2.353220781569','-2.1335131414302','63.18733190379','81.714999999999','4032.1924659427','84.786518941395','4157.5810271318','2022-04-20 16:09:41','2022-04-20 16:09:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14352','424','1398','42.56997','-2.95616','711','2.3910279006731','-2.2609314461763','61.869148069431','81.714999999999','4032.5058784226','84.300927721094','4157.7408841678','2022-04-20 16:09:42','2022-04-20 16:09:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14353','424','1399','42.56998','-2.95613','709','2.6485925868187','-2.3884408373723','50.572506801569','81.714999999999','4032.8179072569','83.784150833182','4157.944589001','2022-04-20 16:09:43','2022-04-20 16:09:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14354','424','1400','42.57','-2.95611','706','2.8541841697939','-2.5580412382109','41.555376404856','81.714999999999','4033.1149112915','83.236214574527','4158.221394879','2022-04-20 16:09:44','2022-04-20 16:09:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14355','424','1401','42.57002','-2.95609','704','3.0704114057389','-2.6857352993755','32.071772292175','81.714999999999','4033.3788261201','82.656211419006','4158.5740341719','2022-04-20 16:09:45','2022-04-20 16:09:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14356','424','1402','42.57004','-2.95607','701','3.375332351631','-2.8135206261104','18.698112291079','81.714999999999','4033.5887948977','82.044961269669','4159.0019535656','2022-04-20 16:09:46','2022-04-20 16:09:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14357','424','1403','42.57008','-2.95606','698','3.6164653536483','-2.9833971417245','8.1221553833367','81.714999999999','4033.7183548168','81.402490383549','4159.5013145866','2022-04-20 16:09:47','2022-04-20 16:09:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14358','424','1404','42.57011','-2.95606','695','3.8574692868123','-2.6162395753083','357.5518593624','81.669999999999','4033.7450886236','80.771688311721','4160.0564476512','2022-04-20 16:09:48','2022-04-20 16:09:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14359','424','1405','42.57014','-2.95606','693','4.1329545312296','-2.2488195499563','345.46923255768','81.624999999999','4033.6617020639','80.23074545758','4160.6435142036','2022-04-20 16:09:49','2022-04-20 16:09:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14360','424','1406','42.57018','-2.95608','691','4.2157696348506','-2.4183138278243','342.09036216858','81.624999999999','4033.4838720268','79.719142986098','4161.2378132676','2022-04-20 16:09:50','2022-04-20 16:09:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14361','424','1407','42.57022','-2.95609','688','4.2044440554806','-2.5459092709259','342.02599762963','81.624999999999','4033.2905632242','79.172904129638','4161.8319946007','2022-04-20 16:09:51','2022-04-20 16:09:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14362','424','1408','42.57025','-2.95611','685','4.2040395010149','-2.6736037722828','341.4995141156','81.624999999999','4033.0944762086','78.592750263539','4162.4277470206','2022-04-20 16:09:52','2022-04-20 16:09:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14363','424','1409','42.57029','-2.95613','683','4.2087993892519','-2.8433808538511','341.82086636165','81.624999999999','4032.8997975967','77.984323048068','4163.0207912705','2022-04-20 16:09:53','2022-04-20 16:09:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14364','424','1410','42.57033','-2.95614','680','4.2222946228646','-2.9712603965798','342.08848006641','81.624999999999','4032.7036047755','77.340815755478','4163.6179029512','2022-04-20 16:09:54','2022-04-20 16:09:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14365','424','1411','42.57036','-2.95616','677','4.207600600193','-3.0992311889618','341.92859069433','81.624999999999','4032.5107209712','76.666066918573','4164.2156863845','2022-04-20 16:09:55','2022-04-20 16:09:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14366','424','1412','42.5704','-2.95617','674','4.2226126318804','-3.1042625384005','342.11409408342','81.609999999999','4032.3176715753','75.970584896441','4164.803134363','2022-04-20 16:09:56','2022-04-20 16:09:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14367','424','1413','42.57043','-2.95619','671','4.2134354354083','-2.73711847794','341.54576569437','81.564999999999','4032.1296456226','75.3351587313','4165.3793444189','2022-04-20 16:09:57','2022-04-20 16:09:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14368','424','1414','42.57047','-2.95621','668','4.2084493987706','-2.3697769706732','342.17859054939','81.519999999999','4031.9321531866','74.767333295743','4165.9744040155','2022-04-20 16:09:58','2022-04-20 16:09:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14369','424','1415','42.57051','-2.95622','666','4.2220418729222','-2.0441659836468','342.1567290063','81.474999999999','4031.7363107978','74.291770828108','4166.5709574701','2022-04-20 16:09:59','2022-04-20 16:09:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14370','424','1416','42.57054','-2.95624','664','4.2224240631192','-2.1715330296542','341.49526955728','81.474999999999','4031.542572165','73.823729287114','4167.1680582945','2022-04-20 16:10:00','2022-04-20 16:10:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14371','424','1417','42.57058','-2.95625','662','4.2180508415781','-2.298969968427','341.60870356665','81.474999999999','4031.349331746','73.331758253322','4167.7593110177','2022-04-20 16:10:01','2022-04-20 16:10:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14372','424','1418','42.57061','-2.95627','659','4.2090624583694','-2.4685045107855','341.78465281593','81.474999999999','4031.1545061055','72.806370251505','4168.3535610455','2022-04-20 16:10:02','2022-04-20 16:10:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14373','424','1419','42.57065','-2.95629','657','4.2106557328778','-2.5961325291037','342.08083635507','81.474999999999','4030.9603671981','72.248978475167','4168.9470921716','2022-04-20 16:10:03','2022-04-20 16:10:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14374','424','1420','42.57069','-2.9563','654','4.2165429058148','-2.7238597898815','341.86283316275','81.474999999999','4030.7657854156','71.657608622362','4169.5443308727','2022-04-20 16:10:04','2022-04-20 16:10:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14375','424','1421','42.57072','-2.95632','652','4.2149052285836','-2.8936782018563','341.76605940409','81.474999999999','4030.5695073904','71.035030934238','4170.1406865438','2022-04-20 16:10:05','2022-04-20 16:10:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14376','424','1422','42.57076','-2.95633','649','4.2221878260859','-3.0215904157242','342.20114650279','81.474999999999','4030.3745314212','70.380337880334','4170.7380937084','2022-04-20 16:10:06','2022-04-20 16:10:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14377','424','1423','42.57079','-2.95635','645','4.2109979411168','-3.1495836745795','341.89472296893','81.474999999999','4030.1800777759','69.697897098384','4171.3322351504','2022-04-20 16:10:07','2022-04-20 16:10:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14378','424','1424','42.57083','-2.95637','642','4.2129429253906','-3.3196784832663','341.66614425328','81.474999999999','4029.986712725','68.980688254983','4171.9297770113','2022-04-20 16:10:08','2022-04-20 16:10:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14379','424','1425','42.57087','-2.95638','639','4.2197791906472','-3.4478674098247','342.29209940367','81.474999999999','4029.7945724092','68.231255862795','4172.5280553033','2022-04-20 16:10:09','2022-04-20 16:10:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14380','424','1426','42.5709','-2.9564','636','4.221593962013','-3.2460510363832','341.96845610759','81.444999999999','4029.6036631772','67.483638054874','4173.1195529045','2022-04-20 16:10:10','2022-04-20 16:10:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14381','424','1427','42.57094','-2.95641','633','4.207095593209','-2.7560157423495','342.16503228529','81.384999999999','4029.4085315614','66.810973050842','4173.7164831478','2022-04-20 16:10:11','2022-04-20 16:10:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14382','424','1428','42.57098','-2.95643','630','4.208901928946','-2.3887027225963','341.8011545268','81.339999999999','4029.2156101579','66.233394220257','4174.3106071557','2022-04-20 16:10:12','2022-04-20 16:10:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14383','424','1429','42.57101','-2.95645','628','4.2190355398214','-2.0211352979896','342.23139017395','81.294999999999','4029.0194515136','65.742917095804','4174.9068485157','2022-04-20 16:10:13','2022-04-20 16:10:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14384','424','1430','42.57105','-2.95646','626','4.2204147378983','-1.5302985805766','341.77355204797','81.234999999999','4028.8280058876','65.344638931306','4175.5015243487','2022-04-20 16:10:14','2022-04-20 16:10:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14385','424','1431','42.57108','-2.95648','624','4.2052165182284','-1.6573200896233','341.77860306277','81.234999999999','4028.6344139292','64.994900395988','4176.0957414493','2022-04-20 16:10:15','2022-04-20 16:10:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14386','424','1432','42.57112','-2.95649','623','4.2165827669555','-1.7844041382193','341.53393875627','81.234999999999','4028.4462408118','64.623749920675','4176.6747715922','2022-04-20 16:10:16','2022-04-20 16:10:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14387','424','1433','42.57115','-2.95651','621','4.2114067510783','-1.9535567324583','342.1719415725','81.234999999999','4028.2552518599','64.229131172771','4177.2444468546','2022-04-20 16:10:17','2022-04-20 16:10:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14388','424','1434','42.57119','-2.95652','619','4.205781030071','-2.0808261381744','342.19620519823','81.234999999999','4028.0669248475','63.794519166818','4177.8268271123','2022-04-20 16:10:18','2022-04-20 16:10:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14389','424','1435','42.57122','-2.95654','617','4.2100487312049','-2.2081624123936','342.26134375392','81.234999999999','4027.8811078425','63.337013098','4178.4000122408','2022-04-20 16:10:19','2022-04-20 16:10:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14390','424','1436','42.57126','-2.95655','615','4.2126674466124','-2.3355640709085','341.52143785574','81.234999999999','4027.6935922027','62.85712112093','4178.9630549827','2022-04-20 16:10:20','2022-04-20 16:10:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14391','424','1437','42.57129','-2.95657','613','4.217638141763','-2.5049908695438','342.32842249806','81.234999999999','4027.5153773105','62.368621810466','4179.5062970499','2022-04-20 16:10:21','2022-04-20 16:10:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14392','424','1438','42.57133','-2.95658','610','4.2062640381383','-2.4675473932499','341.86843689157','81.219999999999','4027.3305357759','61.835707958223','4180.0698282004','2022-04-20 16:10:22','2022-04-20 16:10:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14393','424','1439','42.57136','-2.9566','608','4.220869695629','-1.9769073939935','341.5129960834','81.159999999999','4027.145827984','61.370078535135','4180.626775689','2022-04-20 16:10:23','2022-04-20 16:10:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14394','424','1440','42.5714','-2.95662','606','4.209176000842','-1.609097250574','341.83213303638','81.114999999999','4026.9494401852','60.962702115817','4181.2230816076','2022-04-20 16:10:24','2022-04-20 16:10:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14395','424','1441','42.57143','-2.95663','605','4.2047860860369','-1.2410278543096','341.83541724503','81.069999999999','4026.7523871495','60.644087230812','4181.8226558167','2022-04-20 16:10:25','2022-04-20 16:10:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14396','424','1442','42.57147','-2.95665','604','4.2131157560443','-0.87268331236959','342.28436134902','81.009999999999','4026.5598910516','60.419675178255','4182.4136926051','2022-04-20 16:10:26','2022-04-20 16:10:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14397','424','1443','42.5715','-2.95666','603','4.2120657108903','-0.38107681264084','342.35331471182','80.964999999999','4026.3679173594','60.284950763467','4183.011933689','2022-04-20 16:10:27','2022-04-20 16:10:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14398','424','1444','42.57154','-2.95668','603','4.215142277418','-0.012206513147962','342.04828725768','80.919999999999','4026.1736307279','60.240544631638','4183.6082565375','2022-04-20 16:10:28','2022-04-20 16:10:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14399','424','1445','42.57158','-2.9567','603','4.2091659010767','0.026832562272446','342.28852773629','80.904999999999','4025.9812690908','60.25392305481','4184.2019031114','2022-04-20 16:10:29','2022-04-20 16:10:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14400','424','1446','42.57161','-2.95671','603','4.2130540402932','-0.14120920439902','341.71049273526','80.904999999999','4025.786061025','60.239623216203','4184.7992139923','2022-04-20 16:10:30','2022-04-20 16:10:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14401','424','1447','42.57165','-2.95673','603','4.2081518158365','-0.26734244065974','341.7799498749','80.904999999999','4025.5896237671','60.194006532898','4185.4018757137','2022-04-20 16:10:31','2022-04-20 16:10:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14402','424','1448','42.57169','-2.95674','602','4.2067719222867','-0.43556574316637','342.30970194061','80.904999999999','4025.3954105513','60.117553473712','4185.9985136597','2022-04-20 16:10:32','2022-04-20 16:10:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14403','424','1449','42.57172','-2.95676','602','4.2176974382309','-0.56188181142834','341.95179572834','80.904999999999','4025.2021866587','60.009339795761','4186.5960741285','2022-04-20 16:10:33','2022-04-20 16:10:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14404','424','1450','42.57176','-2.95678','601','4.2036455561825','-0.68828797734784','341.80985612117','80.904999999999','4025.0079857851','59.870278987393','4187.192378294','2022-04-20 16:10:34','2022-04-20 16:10:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14405','424','1451','42.5718','-2.95679','601','4.2219677660128','-0.85678470918577','341.71470139959','80.904999999999','4024.8125483833','59.700210728077','4187.7890652815','2022-04-20 16:10:35','2022-04-20 16:10:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14406','424','1452','42.57183','-2.95681','600','4.21053077179','-0.98337438438774','342.15935827767','80.904999999999','4024.6164501789','59.498321041318','4188.3857137755','2022-04-20 16:10:36','2022-04-20 16:10:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14407','424','1453','42.57187','-2.95682','599','4.2075757710839','-1.1100507309222','342.15945757635','80.904999999999','4024.422403598','59.266757310078','4188.980445238','2022-04-20 16:10:37','2022-04-20 16:10:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14408','424','1454','42.5719','-2.95684','597','4.2111825185377','-1.2788212865326','341.77884015708','80.904999999999','4024.2292005101','59.002938804101','4189.5769191787','2022-04-20 16:10:38','2022-04-20 16:10:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14409','424','1455','42.57194','-2.95686','596','4.2129655589969','-1.4056850997621','342.29224302608','80.904999999999','4024.0338390231','58.707191277772','4190.172875639','2022-04-20 16:10:39','2022-04-20 16:10:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14410','424','1456','42.57198','-2.95687','595','4.2099144590038','-1.5326347995947','341.70132702095','80.904999999999','4023.8386480619','58.382038378197','4190.7689774632','2022-04-20 16:10:40','2022-04-20 16:10:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14411','424','1457','42.57201','-2.95689','593','4.2184880142199','-1.7016694810015','341.86662266457','80.904999999999','4023.6444530053','58.027789964129','4191.359755189','2022-04-20 16:10:41','2022-04-20 16:10:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14412','424','1458','42.57205','-2.9569','591','4.2149843933526','-1.8288021581749','342.08750007851','80.904999999999','4023.4512514579','57.639990309396','4191.9537768313','2022-04-20 16:10:42','2022-04-20 16:10:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14413','424','1459','42.57208','-2.95692','589','4.203610845273','-1.9560006025987','342.01972577845','80.904999999999','4023.25983374','57.229673632509','4192.5353980205','2022-04-20 16:10:43','2022-04-20 16:10:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14414','424','1460','42.57212','-2.95693','587','4.2177689147868','-2.125262233507','341.53509481944','80.904999999999','4023.0723992676','56.797723521604','4193.1041211045','2022-04-20 16:10:44','2022-04-20 16:10:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14415','424','1461','42.57215','-2.95695','585','4.2168707362347','-2.252661915133','342.09173771149','80.904999999999','4022.8802932581','56.31850838064','4193.6958439701','2022-04-20 16:10:45','2022-04-20 16:10:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14416','424','1462','42.57219','-2.95697','583','4.2049013602135','-2.3801369335157','341.64406382746','80.904999999999','4022.6888050502','55.81349986367','4194.2804144988','2022-04-20 16:10:46','2022-04-20 16:10:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14417','424','1463','42.57223','-2.95698','581','4.2157684512887','-2.219676323722','342.07413361793','80.874999999999','4022.4955240577','55.286452082954','4194.8677326991','2022-04-20 16:10:47','2022-04-20 16:10:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14418','424','1464','42.57226','-2.95698','579','4.1137833995646','-1.8519737937203','12.516751700786','80.829999999999','4022.4692642833','54.842231585527','4195.4467418945','2022-04-20 16:10:48','2022-04-20 16:10:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14419','424','1465','42.57229','-2.95698','577','3.9045781124484','-1.8140621108968','9.2570116359436','80.814999999999','4022.5776642365','54.469619657596','4195.9991821177','2022-04-20 16:10:49','2022-04-20 16:10:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14420','424','1466','42.57233','-2.95697','575','3.7422521419847','-1.9831978786456','6.7277234101094','80.814999999999','4022.6542473717','54.080761869006','4196.5230499786','2022-04-20 16:10:50','2022-04-20 16:10:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14421','424','1467','42.57236','-2.95697','573','3.5710982871678','-2.1104068322597','4.0608831715596','80.814999999999','4022.7014615306','53.66684711449','4197.019539349','2022-04-20 16:10:51','2022-04-20 16:10:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14422','424','1468','42.57238','-2.95696','571','3.3293027366847','-2.2376851801106','0.29333668994144','80.814999999999','4022.7212061531','53.229173550611','4197.4862446483','2022-04-20 16:10:52','2022-04-20 16:10:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14423','424','1469','42.57241','-2.95696','569','3.1465810337744','-2.0769645218954','357.4462515904','80.784999999999','4022.7150376672','52.791159689207','4197.908259278','2022-04-20 16:10:53','2022-04-20 16:10:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14424','424','1470','42.57243','-2.95697','568','2.9852304874591','-1.7090527265949','354.9321619727','80.739999999999','4022.6885282775','52.418586270519','4198.3045436726','2022-04-20 16:10:54','2022-04-20 16:10:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14425','424','1471','42.57246','-2.95697','567','2.8223198195329','-1.3408781452129','352.39376326132','80.694999999999','4022.6484702298','52.135984075825','4198.6683262524','2022-04-20 16:10:55','2022-04-20 16:10:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14426','424','1472','42.57248','-2.95697','565','2.7170749096004','-0.84960412879044','350.75388573118','80.634999999999','4022.5888195445','51.887425892333','4199.0780070559','2022-04-20 16:10:56','2022-04-20 16:10:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14427','424','1473','42.57251','-2.95698','564','2.6343355731618','-0.97618624311207','349.46467964253','80.634999999999','4022.5207460131','51.688124857358','4199.4689151377','2022-04-20 16:10:57','2022-04-20 16:10:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14428','424','1474','42.57253','-2.95699','563','2.507396411737','-1.1028615245675','347.48677231525','80.634999999999','4022.4448521576','51.456925781907','4199.8456722232','2022-04-20 16:10:58','2022-04-20 16:10:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14429','424','1475','42.57255','-2.95699','562','2.3984657172199','-1.2716274103578','345.78946459371','80.634999999999','4022.3611876817','51.194706102698','4200.2033178051','2022-04-20 16:10:59','2022-04-20 16:10:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14430','424','1476','42.57257','-2.957','561','2.2784967528985','-1.3984777424556','343.92016365526','80.634999999999','4022.2707265839','50.903574170614','4200.5381840321','2022-04-20 16:11:00','2022-04-20 16:11:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14431','424','1477','42.57259','-2.957','560','2.141637762057','-1.360405498269','14.2455908442','80.619999999999','4022.2267739107','50.585934341212','4200.8531787835','2022-04-20 16:11:01','2022-04-20 16:11:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14432','424','1478','42.57261','-2.957','558','2.1442566848967','-0.86914376660308','13.741398713224','80.559999999999','4022.3041552068','50.333170171687','4201.1642712537','2022-04-20 16:11:02','2022-04-20 16:11:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14433','424','1479','42.57263','-2.95699','558','2.1430151201191','-0.66562251848536','14.137452076159','80.529999999999','4022.3818692427','50.169257788692','4201.475297909','2022-04-20 16:11:03','2022-04-20 16:11:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14434','424','1480','42.57265','-2.95699','557','2.1585315223263','-0.79209620664034','13.881815204459','80.529999999999','4022.4611423977','50.007079096237','4201.7862166156','2022-04-20 16:11:04','2022-04-20 16:11:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14435','424','1481','42.57267','-2.95698','556','2.1421373772515','-0.96066036813898','14.070803697477','80.529999999999','4022.5382262303','49.813924648059','4202.0975461434','2022-04-20 16:11:05','2022-04-20 16:11:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14436','424','1482','42.57268','-2.95697','555','2.1566689087223','-1.0873175168013','13.71926316388','80.529999999999','4022.6155855025','49.588933776577','4202.4082803938','2022-04-20 16:11:06','2022-04-20 16:11:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14437','424','1483','42.5727','-2.95697','554','2.1565946623199','-1.2140648482388','14.241000374045','80.529999999999','4022.6932630054','49.333066632574','4202.7196415962','2022-04-20 16:11:07','2022-04-20 16:11:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14438','424','1484','42.57272','-2.95696','553','2.1435934026764','-1.3829028308562','13.657852946503','80.529999999999','4022.7721696961','49.046162846262','4203.0308800684','2022-04-20 16:11:08','2022-04-20 16:11:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14439','424','1485','42.57274','-2.95695','551','2.1519336396084','-1.179779602473','13.900337202049','80.499999999999','4022.8487831685','48.745978699998','4203.3422445328','2022-04-20 16:11:09','2022-04-20 16:11:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14440','424','1486','42.57276','-2.95695','550','2.145036257986','-0.8114196437227','14.189272457489','80.454999999999','4022.9261216241','48.52684496844','4203.6498700512','2022-04-20 16:11:10','2022-04-20 16:11:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14441','424','1487','42.57278','-2.95694','550','2.1592598858944','-0.31980067406937','14.39929913362','80.394999999999','4023.0028097174','48.396389936455','4203.9591206416','2022-04-20 16:11:11','2022-04-20 16:11:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14442','424','1488','42.5728','-2.95693','549','2.1519244244604','-0.44603905877888','13.704871012603','80.394999999999','4023.079991967','48.31477311728','4204.2664749379','2022-04-20 16:11:12','2022-04-20 16:11:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14443','424','1489','42.57282','-2.95693','549','2.1586159554072','-0.57236694321817','14.24512429815','80.394999999999','4023.1572988385','48.202513882841','4204.5735482646','2022-04-20 16:11:13','2022-04-20 16:11:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14444','424','1490','42.57283','-2.95692','548','2.1508252172997','-0.74078356707469','14.023891338582','80.394999999999','4023.2356012836','48.059872544683','4204.8815389534','2022-04-20 16:11:14','2022-04-20 16:11:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14445','424','1491','42.57285','-2.95692','547','2.1455458100805','-0.86728476795366','14.134427951017','80.394999999999','4023.3117441475','47.888274200171','4205.1861562484','2022-04-20 16:11:15','2022-04-20 16:11:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14446','424','1492','42.57287','-2.95691','546','2.1581606787064','-0.99387654017425','13.877131949899','80.394999999999','4023.3895691672','47.685666547946','4205.4919138749','2022-04-20 16:11:16','2022-04-20 16:11:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14447','424','1493','42.57289','-2.9569','545','2.1575544931446','-1.1625467121697','13.847676963419','80.394999999999','4023.4637858409','47.456216820722','4205.7926668364','2022-04-20 16:11:17','2022-04-20 16:11:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14448','424','1494','42.57291','-2.9569','544','2.1547742290336','-1.2892922248622','13.628448846217','80.394999999999','4023.5370664231','47.200972368428','4206.0870981979','2022-04-20 16:11:18','2022-04-20 16:11:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14449','424','1495','42.57293','-2.95689','543','2.1486255536755','-0.92099511122669','14.467293953195','80.349999999999','4023.6130298113','46.960322079123','4206.3922503894','2022-04-20 16:11:19','2022-04-20 16:11:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14450','424','1496','42.57294','-2.95688','543','2.1590453142046','-0.42943479746803','13.640380116298','80.289999999999','4023.6900378709','46.809784771064','4206.695186776','2022-04-20 16:11:20','2022-04-20 16:11:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14451','424','1497','42.57296','-2.95688','542','2.1444880114955','-0.060606927959555','14.368237397642','80.244999999999','4023.7642386012','46.750851699265','4206.9901424605','2022-04-20 16:11:21','2022-04-20 16:11:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14452','424','1498','42.57298','-2.95687','542','2.1473782888284','-0.18668186444424','14.278751046948','80.244999999999','4023.8358166832','46.725195366136','4207.2790845407','2022-04-20 16:11:22','2022-04-20 16:11:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14453','424','1499','42.573','-2.95687','542','2.1475253639747','-0.35485222746423','14.502149146808','80.244999999999','4023.9139185288','46.666867431324','4207.5896106807','2022-04-20 16:11:23','2022-04-20 16:11:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14454','424','1500','42.57302','-2.95686','541','2.1482092098109','-0.48111545826895','14.424377777435','80.244999999999','4023.9927345201','46.576743945491','4207.8996251267','2022-04-20 16:11:24','2022-04-20 16:11:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14455','424','1501','42.57304','-2.95685','541','2.1473212555263','-0.60746508054123','13.856289423503','80.244999999999','4024.0706089338','46.457042233773','4208.2073016178','2022-04-20 16:11:25','2022-04-20 16:11:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14456','424','1502','42.57306','-2.95685','540','2.1476663266903','-0.77590863103924','13.919279960788','80.244999999999','4024.1479154637','46.305181903198','4208.5179167806','2022-04-20 16:11:26','2022-04-20 16:11:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14457','424','1503','42.57307','-2.95684','539','2.1452232941262','-0.90244536318993','14.265169076934','80.244999999999','4024.227072447','46.121418561252','4208.8285989324','2022-04-20 16:11:27','2022-04-20 16:11:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14458','424','1504','42.57309','-2.95683','538','2.1549831253604','-1.0290723362794','14.321701079595','80.244999999999','4024.3051622069','45.906759033055','4209.1392514617','2022-04-20 16:11:28','2022-04-20 16:11:28');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14459','424','1505','42.57311','-2.95683','537','2.1582103711762','-1.0327897459349','14.054322965368','80.229999999999','4024.3841551371','45.661136340887','4209.449904073','2022-04-20 16:11:29','2022-04-20 16:11:29');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14460','424','1506','42.57313','-2.95682','536','2.1588717103223','-0.66436474368392','14.070359188517','80.184999999999','4024.4620534933','45.4642718381','4209.7615767256','2022-04-20 16:11:30','2022-04-20 16:11:30');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14461','424','1507','42.57315','-2.95681','536','2.1433503749582','-0.29567685890954','14.052893278667','80.139999999999','4024.5416665802','45.35741157855','4210.07226769','2022-04-20 16:11:31','2022-04-20 16:11:31');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14462','424','1508','42.57317','-2.95681','536','2.1604584886334','-0.13375726609005','13.826704415554','80.109999999999','4024.6191361406','45.329882219284','4210.383284804','2022-04-20 16:11:32','2022-04-20 16:11:32');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14463','424','1509','42.57319','-2.9568','536','2.1553494506179','-0.2598761750997','14.230638021987','80.109999999999','4024.6964990886','45.289170819804','4210.6924875684','2022-04-20 16:11:33','2022-04-20 16:11:33');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14464','424','1510','42.57321','-2.95679','535','2.1544360620429','-0.38608464388944','14.462201119017','80.109999999999','4024.7738068272','45.217796445372','4211.0019500456','2022-04-20 16:11:34','2022-04-20 16:11:34');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14465','424','1511','42.57323','-2.95679','535','2.1464189740652','-0.55438453095444','14.117065668669','80.109999999999','4024.8521939988','45.115122794838','4211.3125363141','2022-04-20 16:11:35','2022-04-20 16:11:35');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14466','424','1512','42.57324','-2.95678','534','2.1579937695648','-0.68077529600762','13.855056702481','80.109999999999','4024.9294133567','44.981334848663','4211.6242590249','2022-04-20 16:11:36','2022-04-20 16:11:36');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14467','424','1513','42.57326','-2.95678','534','2.1440571962755','-0.80725828111541','13.703644792967','80.109999999999','4025.0076977746','44.815973117671','4211.9347041299','2022-04-20 16:11:37','2022-04-20 16:11:37');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14468','424','1514','42.57328','-2.95677','532','2.1553412869725','-1.6989635524919','13.833743232132','80.109999999999','4025.0844735915','44.57450626135','4212.2411554851','2022-04-20 16:11:38','2022-04-20 16:11:38');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14469','424','1515','42.5733','-2.95676','531','2.1546104323236','-1.8260826230814','14.036982061742','80.109999999999','4025.1609240321','44.19136515244','4212.54905179','2022-04-20 16:11:39','2022-04-20 16:11:39');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14470','424','1516','42.57332','-2.95676','529','2.1488511440807','-1.9533036212241','14.426479621396','80.109999999999','4025.2370166055','43.773326659834','4212.8588157261','2022-04-20 16:11:40','2022-04-20 16:11:40');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14471','424','1517','42.57334','-2.95675','527','2.146019542005','-1.7925770625472','13.769025032307','80.079999999999','4025.3162643247','43.337332965387','4213.1672197793','2022-04-20 16:11:41','2022-04-20 16:11:41');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14472','424','1518','42.57336','-2.95674','525','2.1462943470615','-1.4246355380357','13.665315757543','80.034999999999','4025.3931420733','42.974938067158','4213.4748277934','2022-04-20 16:11:42','2022-04-20 16:11:42');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14473','424','1519','42.57338','-2.95674','524','2.1589496131083','-1.0564334362834','13.778597903413','79.989999999999','4025.4701098579','42.701758142426','4213.7827312277','2022-04-20 16:11:43','2022-04-20 16:11:43');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14474','424','1520','42.57339','-2.95673','523','2.1428780555675','-0.56496188987105','13.953226138561','79.929999999999','4025.5463437775','42.520829168432','4214.0857100663','2022-04-20 16:11:44','2022-04-20 16:11:44');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14475','424','1521','42.57341','-2.95672','523','2.1424132640118','-0.19622949650607','14.35836818695','79.884999999999','4025.6237916943','42.429207510377','4214.3919704513','2022-04-20 16:11:45','2022-04-20 16:11:45');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14476','424','1522','42.57343','-2.95672','523','2.1434463518963','-0.32239437160226','14.098873898547','79.884999999999','4025.7003325842','42.372758500122','4214.6963757555','2022-04-20 16:11:46','2022-04-20 16:11:46');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14477','424','1523','42.57345','-2.95671','522','2.1421664949793','-0.49063932028705','13.859668916146','79.884999999999','4025.7750573367','42.288894343925','4214.990323091','2022-04-20 16:11:47','2022-04-20 16:11:47');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14478','424','1524','42.57347','-2.95671','522','2.1425881895833','-0.61697690972326','14.171720805079','79.884999999999','4025.8506706577','42.1733123671','4215.2881800948','2022-04-20 16:11:48','2022-04-20 16:11:48');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14479','424','1525','42.57348','-2.9567','521','2.1427083654713','-0.74337591025683','13.721890946441','79.884999999999','4025.9213162197','42.03670480336','4215.5686118431','2022-04-20 16:11:49','2022-04-20 16:11:49');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14480','424','1526','42.5735','-2.95669','520','2.1509384090885','-0.58187626930188','13.777490161376','79.854999999999','4025.9974187376','41.865394681223','4215.8791311998','2022-04-20 16:11:50','2022-04-20 16:11:50');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14481','424','1527','42.57352','-2.95669','520','2.1479893654101','-0.21315877112352','14.475425712898','79.809999999999','4026.075574323','41.768673292755','4216.1895472103','2022-04-20 16:11:51','2022-04-20 16:11:51');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14482','424','1528','42.57354','-2.95668','520','2.1432990786708','-0.0091992309618604','13.85607588297','79.779999999999','4026.1544069984','41.75482088034','4216.5004456141','2022-04-20 16:11:52','2022-04-20 16:11:52');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14483','424','1529','42.57356','-2.95667','520','2.1493804814315','-0.17725403555151','13.734266111056','79.779999999999','4026.2314135094','41.736057192467','4216.8114961327','2022-04-20 16:11:53','2022-04-20 16:11:53');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14484','424','1530','42.57358','-2.95667','519','2.1484923732496','-0.30340176932438','14.315680221334','79.779999999999','4026.3097686138','41.6854769323','4217.1223230557','2022-04-20 16:11:54','2022-04-20 16:11:54');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14485','424','1531','42.5736','-2.95666','519','2.1459476692861','-0.42963962773037','14.341306060307','79.779999999999','4026.3879345935','41.604040305972','4217.4334214403','2022-04-20 16:11:55','2022-04-20 16:11:55');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14486','424','1532','42.57362','-2.95666','519','2.156047494096','-0.26793592344148','14.064811753782','79.749999999999','4026.4662122248','41.502596243033','4217.7433121107','2022-04-20 16:11:56','2022-04-20 16:11:56');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14487','424','1533','42.57364','-2.95665','519','2.1480742535633','0.10098549778951','14.124607415396','79.704999999999','4026.5429606463','41.475692885034','4218.0548698751','2022-04-20 16:11:57','2022-04-20 16:11:57');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14488','424','1534','42.57365','-2.95664','519','2.1609052669692','-0.02498968687275','14.467459501816','79.704999999999','4026.6219784417','41.484189021121','4218.3656572614','2022-04-20 16:11:58','2022-04-20 16:11:58');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14489','424','1535','42.57367','-2.95664','518','2.1451432103458','-0.193054748309','13.666911513835','79.704999999999','4026.7006659861','41.461913651662','4218.676356848','2022-04-20 16:11:59','2022-04-20 16:11:59');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14490','424','1536','42.57369','-2.95663','518','2.144450869142','-0.31921198196197','14.40844236944','79.704999999999','4026.7786280444','41.408080875857','4218.9847130074','2022-04-20 16:12:00','2022-04-20 16:12:00');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14491','424','1537','42.57371','-2.95662','518','2.1576503499162','-0.44545893654557','14.276017167398','79.704999999999','4026.857058316','41.32352995128','4219.2929558149','2022-04-20 16:12:01','2022-04-20 16:12:01');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14492','424','1538','42.57373','-2.95662','517','2.1442049867426','-0.28376510841912','13.700989220703','79.674999999999','4026.9350295001','41.218704543264','4219.6034191073','2022-04-20 16:12:02','2022-04-20 16:12:02');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14493','424','1539','42.57375','-2.95661','517','2.1468949495369','0.085146030808412','14.503898115948','79.629999999999','4027.0137047185','41.188280890618','4219.9136266033','2022-04-20 16:12:03','2022-04-20 16:12:03');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14494','424','1540','42.57377','-2.9566','517','2.1501395500531','0.1242461573658','14.429308386504','79.614999999999','4027.0909866922','41.22256165949','4220.2249021881','2022-04-20 16:12:04','2022-04-20 16:12:04');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14495','424','1541','42.57379','-2.9566','517','2.1611746700437','-0.043722102843049','13.67124196534','79.614999999999','4027.168963475','41.233428551078','4220.5362123528','2022-04-20 16:12:05','2022-04-20 16:12:05');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14496','424','1542','42.57381','-2.95659','517','2.1438033436262','-0.16978254838981','13.984463256553','79.614999999999','4027.2471097904','41.212733543962','4220.8453918304','2022-04-20 16:12:06','2022-04-20 16:12:06');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14497','424','1543','42.57382','-2.95659','517','2.1484220936426','-0.2959314126473','14.352414932427','79.614999999999','4027.3226684802','41.161766234817','4221.1518451219','2022-04-20 16:12:07','2022-04-20 16:12:07');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14498','424','1544','42.57384','-2.95658','517','2.1500726885171','-0.46417068048195','13.668979900992','79.614999999999','4027.4007211716','41.079847056214','4221.4591154542','2022-04-20 16:12:08','2022-04-20 16:12:08');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14499','424','1545','42.57386','-2.95657','516','2.1557206535961','-0.59049971408882','14.376415169617','79.614999999999','4027.4772097576','40.967194376228','4221.7655216102','2022-04-20 16:12:09','2022-04-20 16:12:09');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14500','424','1546','42.57388','-2.95657','516','2.157825454288','-0.71691803165992','13.88353099748','79.614999999999','4027.55472041','40.823973153574','4222.0715193084','2022-04-20 16:12:10','2022-04-20 16:12:10');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14501','424','1547','42.5739','-2.95656','515','2.1445572263838','-0.39032950999396','13.722994237623','79.569999999999','4027.6321170905','40.683093510529','4222.3784020552','2022-04-20 16:12:11','2022-04-20 16:12:11');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14502','424','1548','42.57392','-2.95655','515','2.1536811596017','-0.35151965769176','14.211847757613','79.554999999999','4027.7037875409','40.617991808747','4222.6595219201','2022-04-20 16:12:12','2022-04-20 16:12:12');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14503','424','1549','42.57393','-2.95655','514','2.1475758708256','-0.47777585079671','13.675297962617','79.554999999999','4027.7798154408','40.530277851073','4222.9579494304','2022-04-20 16:12:13','2022-04-20 16:12:13');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14504','424','1550','42.57395','-2.95654','514','2.1479339649959','-0.64610928547791','14.241598172478','79.554999999999','4027.8524991242','40.416118355954','4223.2476398393','2022-04-20 16:12:14','2022-04-20 16:12:14');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14505','424','1551','42.57397','-2.95654','513','2.1572525368229','-0.44248753658382','13.733469026015','79.524999999999','4027.9265148294','40.286614864824','4223.5464541911','2022-04-20 16:12:15','2022-04-20 16:12:15');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14506','424','1552','42.57399','-2.95653','513','2.1483609750064','-0.073655129722391','14.188467108135','79.479999999999','4028.0044739264','40.229235266469','4223.8574750129','2022-04-20 16:12:16','2022-04-20 16:12:16');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14507','424','1553','42.57401','-2.95652','513','2.1579141341416','-0.24175091436361','13.954873488919','79.479999999999','4028.0823464094','40.196441058493','4224.1667282493','2022-04-20 16:12:17','2022-04-20 16:12:17');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14508','424','1554','42.57403','-2.95652','513','2.1491841280173','-0.36794054272119','14.237483984328','79.479999999999','4028.1605107546','40.131517165501','4224.4778556656','2022-04-20 16:12:18','2022-04-20 16:12:18');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14509','424','1555','42.57404','-2.95651','512','2.1587756359741','-0.49421899113754','14.204498601617','79.479999999999','4028.2375580195','40.036183559193','4224.7864704207','2022-04-20 16:12:19','2022-04-20 16:12:19');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14510','424','1556','42.57406','-2.9565','512','2.1608929581012','-0.33255683558618','14.257220156635','79.449999999999','4028.3158681323','39.920514272643','4225.0973089451','2022-04-20 16:12:20','2022-04-20 16:12:20');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14511','424','1557','42.57408','-2.9565','511','2.1607011921201','-0.12868716891404','14.083179395198','79.419999999999','4028.3944065897','39.8758914792','4225.4084609879','2022-04-20 16:12:21','2022-04-20 16:12:21');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14512','424','1558','42.5741','-2.95649','511','2.1581797258824','-0.25481029433614','14.231493666892','79.419999999999','4028.4725095701','39.833736488084','4225.716426644','2022-04-20 16:12:22','2022-04-20 16:12:22');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14513','424','1559','42.57412','-2.95648','511','2.1441609212438','-0.42302477440737','14.441990907707','79.419999999999','4028.5507416804','39.760304004828','4226.0275555319','2022-04-20 16:12:23','2022-04-20 16:12:23');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14514','424','1560','42.57414','-2.95648','510','2.1554983606987','-0.2192787100767','13.63980717799','79.389999999999','4028.6294787024','39.673362935292','4226.3383827146','2022-04-20 16:12:24','2022-04-20 16:12:24');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14515','424','1561','42.57416','-2.95647','510','2.1513081722687','-0.01532274562628','14.466243307343','79.359999999999','4028.7065474623','39.658286290929','4226.6503942304','2022-04-20 16:12:25','2022-04-20 16:12:25');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14516','424','1562','42.57418','-2.95647','510','2.1536590216633','-0.18338115533257','13.898191868402','79.359999999999','4028.7830372667','39.638288303448','4226.9579387301','2022-04-20 16:12:26','2022-04-20 16:12:26');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14517','424','1563','42.5742','-2.95646','510','2.1425402995144','-0.30953300543524','14.190848266614','79.359999999999','4028.8610026159','39.586298717386','4227.2681532501','2022-04-20 16:12:27','2022-04-20 16:12:27');

INSERT INTO routes (id, flight, seconds, lat, lon, altitude, speed, speedy, direction, fuel, x, y, z, created_at, updated_at) VALUES ('14518','424','1564','42.57421','-2.95645','510','2.1486429966111','-0.43577498287981','14.254562658257','79.359999999999','4028.9390426586','39.50345183774','4227.5793553889','2022-04-20 16:12:28','2022-04-20 16:12:28');


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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('27','Sierra de la Demanda','Finca de despegue en la Sierra de la Demanda, cerca de Pradoluengo, junto al Río Tirón.','1290','370','135.06','42.33966','-3.18178','demanda.png','2022-04-21 17:23:35','2022-04-21 17:23:35');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('28','Nájera','Finca de despegue junto a la localidad de Nájera, La Rioja.','6815','1440','42.84','42.40472','-2.72725','najera.png','2022-04-21 17:28:15','2022-04-21 17:28:15');

INSERT INTO takeoff_points (id, name, description, x, z, y, lat, lon, image, created_at, updated_at) VALUES ('29','San Vicente','Punto de despegue en San Vicente de la Sonsierra. Junto a la falda del Toloño.','6655','4120','51.06','42.56767','-2.74041','sanvi.png','2022-04-21 17:35:26','2022-04-21 17:35:26');


CREATE TABLE `weather` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flight` int(11) NOT NULL,
  `temperature` double NOT NULL,
  `pressure` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('193','359','3.32','1013.25','2022-04-18 17:17:39','2022-04-18 17:17:39');

INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('256','424','12','1013.25','2022-04-20 15:43:48','2022-04-20 15:43:48');


CREATE TABLE `winds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weather` int(11) NOT NULL,
  `altitude` double NOT NULL,
  `wind_direction` double NOT NULL,
  `wind_speed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1684','359','0','0','0','2022-04-18 17:17:39','2022-04-18 17:17:39');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1685','359','432','318.7895829292','5.1494514393739','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1686','359','580','78.258758538669','4.1113015361112','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1687','359','712','120.92234636615','2.1968372074713','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1688','359','821','4.5004737434657','4.4185237525819','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1689','359','1189','30.982058745176','6.5854053187267','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1690','359','1457','113.0887819554','6.328274641991','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1691','359','1949','83.546028384564','8.5681741087672','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1692','359','3012','322.82674809857','9.7280992384749','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2251','424','0','0','0','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2252','424','432','14.069613460756','2.1513499073924','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2253','424','580','341.93902029063','4.2134437663067','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2254','424','712','63.407120696782','2.3559619525146','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2255','424','821','150.73043121566','1.5816618398954','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2256','424','1189','36.908462105146','11.601696527322','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2257','424','1457','28.184777111624','8.2510362591819','2022-04-20 15:43:48','2022-04-20 15:43:48');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2258','424','1949','302.62142701736','19.568501362159','2022-04-20 15:43:49','2022-04-20 15:43:49');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('2259','424','3012','288.43661098069','14.584255106784','2022-04-20 15:43:49','2022-04-20 15:43:49');
