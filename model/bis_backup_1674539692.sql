# ABMS : MySQL database backup
#
# Hostname: localhost
# Database: bis
# --------------------------------------------------------


#
# Delete any existing table `tbl_support`
#

DROP TABLE IF EXISTS `tbl_support`;


#
# Table structure of table `tbl_support`
#



CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




#
# Delete any existing table `tbl_users`
#

DROP TABLE IF EXISTS `tbl_users`;


#
# Table structure of table `tbl_users`
#



CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT '',
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tbl_users VALUES("11","admin","d033e22ae348aeb5660fc2140aec35850c4da997","administrator","19012023121517ANIME_KUBO-SANWAMOBWOYURUSANAIEP1.jfif","2023-05-01 10:33:03");
INSERT INTO tbl_users VALUES("20","Sejeong","40bd001563085fc35165329ea1ff5c5ecbdbbeef","resident","18012023185423Sejeong.jpg","2023-05-02 01:54:23");
INSERT INTO tbl_users VALUES("24","qwe","056eafe7cf52220de2df36845b8ed170c67e23e3","resident","21012023061103AccidentalNeighbour.jpg","2023-05-03 12:47:52");
INSERT INTO tbl_users VALUES("55","www","c50267b906a652f2142cfab006e215c9f6fdc8a0","resident","21012023101634Charess.jpg","2023-05-04 17:06:05");
INSERT INTO tbl_users VALUES("56","333","43814346e21444aaf4f70841bf7ed5ae93f55a9d","resident","18012023185423Sejeong.jpg","2023-05-05 20:17:00");




#
# Delete any existing table `tblblotter`
#

DROP TABLE IF EXISTS `tblblotter`;


#
# Table structure of table `tblblotter`
#



CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tblblotter VALUES("34","Girl Topak","Boy Topak","12","Check up","Resident house","2023-01-24","12:46:00","wwwwww","Scheduled");
INSERT INTO tblblotter VALUES("35","Girl Topak","Boy Topak","12","Check up","Resident house","2023-01-24","12:47:00","qweqwe","Active");



#
# Delete any existing table `tblbrgy_info`
#

DROP TABLE IF EXISTS `tblbrgy_info`;


#
# Table structure of table `tblbrgy_info`
#



CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblbrgy_info VALUES("1","Laguna","Calamba City","Canlubang","0919-1234567","This is the official Healthcare Center website of Barangay Canlubang, Calamba City Laguna. Visit us in our official facebook page at https://www.facebook.com/itsmearviegrajo","16012023121621HDwallpaper_memes,_3d.jpg","18012023154802Barangay_Canlubang_Seal.jpg","18012023154802Calamba,_Laguna_Seal.svg.png");



#
# Delete any existing table `tblchairmanship`
#

DROP TABLE IF EXISTS `tblchairmanship`;


#
# Table structure of table `tblchairmanship`
#



CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblchairmanship VALUES("2","Presiding Officer");
INSERT INTO tblchairmanship VALUES("3","Committee on Appropriation");
INSERT INTO tblchairmanship VALUES("4","Committee on Peace & Order");
INSERT INTO tblchairmanship VALUES("5","Committee on Health");
INSERT INTO tblchairmanship VALUES("6","Committee on Education");
INSERT INTO tblchairmanship VALUES("7","Committee on Rules");
INSERT INTO tblchairmanship VALUES("8","Committee on Infra");
INSERT INTO tblchairmanship VALUES("9","Committee on Solid Waste");
INSERT INTO tblchairmanship VALUES("10","Committee on Sports");
INSERT INTO tblchairmanship VALUES("11","No Chairmanship");



#
# Delete any existing table `tblofficials`
#

DROP TABLE IF EXISTS `tblofficials`;


#
# Table structure of table `tblofficials`
#



CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblofficials VALUES("1","Peter Guevarra	","2","4","2023-04-29","2023-05-01","Active");
INSERT INTO tblofficials VALUES("4","Marlon A. Lorio","3","7","2023-04-03","2023-04-24","Active");
INSERT INTO tblofficials VALUES("5","GARRY A. RAFEL","4","8","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("6","TRILLION LOWRY	","5","9","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("7","MELANIE M. ELBOR	","6","10","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("8","ERLINDA V. VITUS	","7","11","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("9","JOEDAVINCE","8","12","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("10","ALEJANDRO A. CAGAMPANG	","9","13","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("11","JOSEPH P. PARDOS	","10","14","2023-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("12","RUTH A. BACAG	","11","15","2021-04-03","2023-04-03","Active");
INSERT INTO tblofficials VALUES("13","DIANNE A. CURRY	","11","16","2021-04-03","2023-04-03","Active");



#
# Delete any existing table `tblposition`
#

DROP TABLE IF EXISTS `tblposition`;


#
# Table structure of table `tblposition`
#



CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblposition VALUES("4","Captain","1");
INSERT INTO tblposition VALUES("7","Councilor 1","2");
INSERT INTO tblposition VALUES("8","Councilor 2","3");
INSERT INTO tblposition VALUES("9","Councilor 3","4");
INSERT INTO tblposition VALUES("10","Councilor 4","5");
INSERT INTO tblposition VALUES("11","Councilor 5","6");
INSERT INTO tblposition VALUES("12","Councilor 6","7");
INSERT INTO tblposition VALUES("13","Councilor 7","8");
INSERT INTO tblposition VALUES("14","SK Chairman","9");
INSERT INTO tblposition VALUES("15","Secretary","10");
INSERT INTO tblposition VALUES("16","Treasurer","11");



#
# Delete any existing table `tblprecinct`
#

DROP TABLE IF EXISTS `tblprecinct`;


#
# Table structure of table `tblprecinct`
#



CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




#
# Delete any existing table `tblpurok`
#

DROP TABLE IF EXISTS `tblpurok`;


#
# Table structure of table `tblpurok`
#



CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tblpurok VALUES("13","Purok 2","Asia 2");
INSERT INTO tblpurok VALUES("14","Purok 9","Asia 1");
INSERT INTO tblpurok VALUES("15","Purok 1","Asia 1");
INSERT INTO tblpurok VALUES("16","Purok 3","");



#
# Delete any existing table `tblresident`
#

DROP TABLE IF EXISTS `tblresident`;


#
# Table structure of table `tblresident`
#



CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middlename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthplace` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purok` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `voterstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `identified_as` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tblresident VALUES("171","321321321","Filipino","18052021113447Screenshot2021-05-06183815.png","Ronil","Poe","Cajan","FPJ","Metro  Manila","2023-04-05","1","Single","Male","Purok 2","Yes","Unidentified","19512659595","cajanr02rtrt22@gmail.com","IT","310 W Las Colinas Blvd","1","dasds");
INSERT INTO tblresident VALUES("169","","filipino","24012023042459HDwallpaper_Anime,SoloLeveling,SungJin-Woo.jpg","Ronil","Gonzales","Cajan","Royal Blood","aklan","2023-12-23","40","Single","Male","Purok 2","No","Unidentified","19512659595","cajanr02rtrt22@gmail.com","","310 W Las Colinas Blvd","1","dasds");
INSERT INTO tblresident VALUES("181","22222222222","filipino","24012023043051ANIME_KUBO-SANWAMOBWOYURUSANAIEP1.jfif","jayward","jed","dej","","aklan","2023-01-28","2","Single","Male","Purok 9","No","Unidentified","19512659595","cajanr02rtrt22@gmail.com","IT","qweqwe","1","dasds");

