

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
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO flights (id, name, date, takeoff, created_at, updated_at) VALUES ('359','Vuelo desde Ezcaray','2022-04-18','Ezcaray','2022-04-18 17:17:39','2022-04-18 17:17:39');


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
) ENGINE=InnoDB AUTO_INCREMENT=12775 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO weather (id, flight, temperature, pressure, created_at, updated_at) VALUES ('193','359','3.32','1013.25','2022-04-18 17:17:39','2022-04-18 17:17:39');


CREATE TABLE `winds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weather` int(11) NOT NULL,
  `altitude` double NOT NULL,
  `wind_direction` double NOT NULL,
  `wind_speed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1684','359','0','0','0','2022-04-18 17:17:39','2022-04-18 17:17:39');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1685','359','432','318.7895829292','5.1494514393739','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1686','359','580','78.258758538669','4.1113015361112','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1687','359','712','120.92234636615','2.1968372074713','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1688','359','821','4.5004737434657','4.4185237525819','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1689','359','1189','30.982058745176','6.5854053187267','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1690','359','1457','113.0887819554','6.328274641991','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1691','359','1949','83.546028384564','8.5681741087672','2022-04-18 17:17:40','2022-04-18 17:17:40');

INSERT INTO winds (id, weather, altitude, wind_direction, wind_speed, created_at, updated_at) VALUES ('1692','359','3012','322.82674809857','9.7280992384749','2022-04-18 17:17:40','2022-04-18 17:17:40');
