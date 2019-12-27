
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `matomo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `matomo`;
DROP TABLE IF EXISTS `matomo_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_access` (
  `idaccess` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idaccess`),
  KEY `index_loginidsite` (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_access` WRITE;
/*!40000 ALTER TABLE `matomo_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_access` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_archive_blob_2019_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_blob_2019_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_archive_blob_2019_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2019_01` DISABLE KEYS */;
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Actions_actions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœMÁ‚0D\Åô\Ìnf¯ıRµ\Ñ&¨$”\á\ß\íB\Ğ¶™—\Ùt<s‰‡\Û×˜GT0½¿†\ŞÈˆ\æpşÜ¦Wx\'#6\ëü„\ÍF8’;\èHT+p\Î2k\Æ\Ùr\ã\nà¶°Y\ÚÀ® \\:­h·)pU¤˜÷4»X/Ë¢×’Ùœ+\rşºSºÁ§§–k`şİ²\ß\ÉE–\å\äôKô');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Actions_actions_url',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœMa\nƒ0…\ï\Òh\Òb\ç^\î°;t³°‚n2\â\İg*şHx\É{$Œ5$À‚=\Ö	\rL\î±72Á\Ã\Ô\é\Õ\Å\ÅH‚İ‹µşÂ‰\ZIªˆ¼\ïF†aõ8[N\\|-\Ö,`3h€Û.\í1#n\nóyH{Šœ,›¶ \æ \ï\'?\Ã-\ÌsG\Ôu\\\Â0ö±z¼£\ÛNn²m?\n¥Ir');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Actions_downloads',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Actions_outlink',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Actions_sitesearch',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Contents_name_piece',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Contents_piece_name',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'CustomVariables_valueByName',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicePlugins_plugin',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²\ì\ï`›‘g˜™a”K(0{¬A–÷b\ÉxT f2Š\"rPN\æ¥\ÈC{\0B*\Ín)ü†jP«NšitTö*¢TÈeH;e\Êé…O;«¨³ù\ÎifeJĞ¥\í\ÒJU¶ \ëM›aÒ“¤­M\Ô\nBN\Ø^,?å³\Õq-zµwqVûÃ”\æ¶q®\0=ôÜ’V“\ë½\ÙF\İ|');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_brands',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_browserEngines',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_browsers',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_browserVersions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L\É\r€ \ìe0¬\\:[‚	?Àèƒ„OB\ï‚ÁÇœ\ÉL£&(‰Ğ¿\ÙQ,(\Ç\ë\É$\è‡ø\Å’„µƒ;ôôF\îO\í\È\Êwv2üT\æ91\êk\ÚH\nµ› ­½\">%\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_models',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L\É\rÀ Û…	B¡Euv\è©\Ú?(»7Aô\áøcAÄ¨ ¤_œ;B“ûm»U®\ØÑ–\ÎüL\Ş\İS±{°OT”\Å1®—L3Qw\ÂPŸ¹Xõ*\Ç#ÿ');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_os',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_osVersions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ»\rÀ Dwa (\ç\"\Ñe\0GIDG‰\Ø=‘\â\İÇ’O@h–\îZE€)r¿\ÅpE„¹\Ò\É\ÃÛ€ne\Ï\Ïô \İÆ¡;\ëPF\\N´^¼—®M`Ñº\Î$\îı\Ó%\á');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'DevicesDetection_types',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_action_category',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+t‰\"Á?Å»§™3<–£Q\Ø	’±‚¢w$\Ép #=‰$`i\á\ë&¼ôU\Ã*\×À6±ÿ`şk/…Ai²\ãT_/$$');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_action_category_chunk_0_99',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_action_name',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+Dw0Š?ü\ï\ŞZù1\Ãû˜	`\Ô#vÀ£Ì +‘8Ğ–\ïL1iXcİ€—şR\Ìr~X\Ö\Ì\ï¸õ\n0¨*+»´ö\0\ç\Í#•');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_category_action',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@\×\ØHB0\nü\ïŞšù1\Ëc˜e”M;\àQ2T\â=$EY\nµ\İWxøŠ\"&‰‘\ØyÀSû8::–õ‡1ß¸¶\Ã\Ğ(\"Û«ú\ïM%´');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_category_action_chunk_0_99',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_category_name',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@_\İa#	Á(ğS¼{k\å\Çe‡aP\"41l‡G\ÉpP‰·e9¨\å:\Ã\ÍGP1HŒÄ\ÚR\àhÿ0u\Ì?ŒyŸk+†FYZ©\Ö¤\Ó%.');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_name_action',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_name_action_chunk_0_99',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_name_category',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Events_name_category_chunk_0_99',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsCategory',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsCategory_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsName',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsName_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsSku',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goals_ItemsSku_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_-1_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_-1_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_0_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_0_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Goal_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_keywordByCampaign',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_keywordBySearchEngine',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_searchEngineByKeyword',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_type',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5ŒÁ\rÀ wa‚¤@QºCªöÄ¯O”\İK}8g[rŒ^A¢ˆ¿9\Ğ_d„¦\×Ó‚TğĞ¶—OrOf\ÏT\Æ\İ\Å\çe‘yM\Í\Æ<)\İü\Í)f¹ #<');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_urlBySocialNetwork',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Referrers_urlByWebsite',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Resolution_configuration',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5ŒM\n€ …\ï\â	f\Ò\n\ß!p\×ŒZ\î\Ü\â\İs\Ä\ßû˜Á¨	$öµ`…\Éñz²‘\Ş`\Îpˆ\Â\Î\Ñë‰Œ$,\îØ™\Ü\ÃW\í´w\İD\'ö\é\Ìó\ÅÑ¸4m„\Út&Hk}X(&');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'Resolution_resolution',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L\É\r€ \ì…\nvDf{°Œ>Høñ1!ô.Kğ1g2“Àh$	ö7­\ÂÃ”t=\ÅH\Å\Ã\Î\Ñ‰Œdl<`—wrOõš)\ŞEŸ2\ÂR\æ5q4›®)ĞºŞœ\ÒûN%¥');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'UserCountry_city',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'UserCountry_country',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'UserCountry_region',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'UserId_users',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'UserLanguage_language',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitorInterest_daysSinceLastVisit',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ\Ó=!\àÿ\"t\ã\Ç5n]º\İØµXpµ\Ğ\á¸ÿ^;thÛ‹’	¯‰\ÑñZX\ÇÄ´\Ãke\ÇjI·¼¨X«s¾\çGZ®s~]J-Ïªbaó¹d…*n…±j^[¢8\ïÿQb¥A)ú·b$e…$Å€‘+)$+NR,XYñ’\âÀ\ÉJ^V&I	d\å\ØU,«	p`1\Ø/s\Ë\è€š‡ı·L~\êwØ·-·›©\ß\ãöO\Ñ YS¿\Ì\íQ\ä\İÁœ$i{õó/„');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitorInterest_pageGap',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitorInterest_timeGap',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n,\Ùqy\Ëz:²e¹{ÿ\è\Ğ\ÚÚ¾„ı\ÔL‚›…\Ú,\ŞA\í<l2\Ú\Û\ë½S=,–@u3E)(©^›	\ã;R¬Ï»ñŸA\á\èpt\äD\á\ìpb\×\ÉF{©J]h\Æb\ZXÓ·$¿¥i$A\á\ä™)$(¸’CšG^<R\éJ\Å\nKñP\Ëğ\ä%\ÈC×‘t}\0>Ê™');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitorInterest_visitsByVisitCount',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\ĞÁ-£\Éİ«%Ğ¡H\Ş~?ø°e¹%™C°u‰w`™§d	G\ĞN]	\Ú\Ö\é(´k\é^”©)¶\×=a*ü£\à…=%Bô•\è)	’¯$OÉ}%{J\â+\ÅS*T_©²Á\æ+›©$	;\ĞByw“\ÑLx¡Àd÷¯f.q²[¸\èƒ\ëOÀ\Én\ãªwC^¢\ì^\ÖC1ÒƒŸt}Z[');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitTime_localTime',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœµÖ»\rƒ@„\á^¨`g98XzpXv€D\æÑ»9t„\Ñ÷BÀ/’O\Ì\á)¶%lš£½6cl¿\è¢Y\ç÷wm¦%\Ğ“—\Í1ÚºO\Ó\ç\\»r¶|\Ì\å.;F®+PIv^\Ù\Ëi‹m/¯y]\î\ÃV[V»V»V»vW5^uş¹¢jK«.ª&ZmEÕV“¨\Ú\Ój\'ªfZ\íEÕV³¨:\Ò\ê ª‚û4ª²\\\'¨xÂƒO* À…‚Š(p£ B\n\\)¨˜w\n*¨À¥‚\n\rp« cƒk•Î¹r•Î½r•Î½r•şğG¥qcÿ!\î,');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (6,'VisitTime_serverTime',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœµ\Ö;ƒ0„\á»p‚Å¼\Öw\Èˆ’‰.%\â\îÁÈ”\Õ~€0¿Dñ‰9<Å¶„\å9\Úk3\Åö‹.šu~\×&/\áV¦c\àmİ§ü9\×\î|`8\æ>—óKu\ê‘dç½\\\Ía±\í\å5¯\ë\Æ}ø\êZ\íZ\íZ\í\Ú]\Õx\Õi¢j\Ë?²¨šhµU;ZM¢jO«¨:\Ğj/ª´:ˆª­¢*¸O“*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\A\å•s¯\\\å†s¯\\\å†?üQi\Ü\Øÿğ„,');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsCategory',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsCategory_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsName',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsName_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsSku',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goals_ItemsSku_Cart',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_-1_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_-1_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_0_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_0_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_days_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_01` VALUES (8,'Goal_visits_until_conv',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',_binary 'xœK´2°ª®\0Oş');
/*!40000 ALTER TABLE `matomo_archive_blob_2019_01` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_archive_blob_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_blob_2019_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_archive_blob_2019_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2019_12` DISABLE KEYS */;
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Actions_actions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœMK\Â0D¯‚r\0d\'´¥\ã-k®Pˆ RùH\r«ªw\'nÕ’…%¿±g¤ñ`Œ$n]¸\Æ8 ‚\éı%ôF´0»\Óûú}†W2aóp9›\àD3\"\É\r´\'ª8g0«\×\Ùò\â\n\àfMi‹K\Ø4\Ée fF»\ÜH«½\Ú\ì“*^;f%7úø{\èRL}\è>>=´\Û\æ_-ÿ;9\Ë4ı\0\ÒaKÀ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Actions_actions_url',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœMa\nƒ0…\ï\Òh\ÒL\İ^\ï°;t³°‚n2\â\İg*J<È—¼÷ Œ%‚œ‡\×XFT0„Î¸5L\ßm˜‹°›8×¹§B®DµoÃš›_$n–[æ·´ƒM M²5	\í~#¾ñêŒ¯ºñú`Šı¾\é¾Â¼¦i@Y†\Ù÷CŠ\ç§Onqw·®ù†I>');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Actions_downloads',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Actions_outlink',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Actions_sitesearch',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'CustomVariables_valueByName',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicePlugins_plugin',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²\ì\ï`›‘g˜™a”K(0{¬A–÷b\ÉxT f2Š\"rPN\æ¥\ÈC{\0B*\Ín)ü†jP«NšitTö*¢TÈeH;e\Êé…O;«¨³ù\ÎifeJĞ¥\í\ÒJU¶ \ëM›aÒ“¤­M\Ô\nBN\Ø^,?å³\Õq-zµwqVûÃ”\æ¶q®\0=ôÜ’V“\ë½\ÙF\İ|');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_brands',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5ŒK€ D\ï\Ò€¨„\é¼C.HØ±$½»”\Ô\Å|\ÒÉ« bT¤¿Œ\Ô\ä~qG\0WD\×æ™¼§\ÂV\ìü¬\ÃaC\È\ÓO_òJ5Næ»¡F_¬ú\êi#š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_browserEngines',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5ŒK€ D\ï\Ò€¨„\é¼C.HØ±$½»”\Ô\Å|\ÒÉ« bT¤¿Œ\Ô\ä~qG\0WD\×æ™¼§\ÂV\ìü¬\ÃaC\È\ÓO_òJ5Næ»¡F_¬ú\êi#š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_browsers',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬‹2J¡~\ŞJÖ™V†Pl¥¡lcKk\ŞL+\ë°€)H\ÂÀHšAe\ÌÁt-H_¢•Uu-H·Ÿum-\0a\Â$‹');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_browserVersions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5L\Ë\r€ \Û\å\r`@¤onğŒH¸q$\ì®<ô“6­@£&(˜\ß\Ô\Êr=™¸`ñ`¿¸8AO¬S\Íô&p?H\Øø\í…ò»\Ùø¡­\ï\nµõu\ä\Ö^\0ˆ%š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_models',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5‹Á\rÀ w\ÉP\Ú\"œºCªöÄ\'\Ê\î%(}8¶bŸ bT¤?Œ\Ô\ä~qŸb\âŠ\è\ÚÜ“\çT\ØÈŠŸõ8¬y\ŞÓ›¼\\5úb\Õ\n\Õ#\Ö');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_os',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬‹2J¡~\ŞJÖ™V†Pl¥¡lcKk\ŞL+\ë°€)H\ÂÀHšAe\ÌÁt-H_¢•Uu-H·Ÿum-\0a\Â$‹');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_osVersions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5‹\Ë\r€ D{¡‘0[‚	7X£n\Éö.Kğ0Ÿ\Ì\ä1z%†ÿKBo0•\ï·\Zjˆ0W>i\ÈP[\ÚVú\Õ}\"\åvz\æô°qø±8S”cXtQ:“\Èığ%¸');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'DevicesDetection_types',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5ŒK€ D\ï\Ò€¨„\é¼C.HØ±$½»”\Ô\Å|\ÒÉ« bT¤¿Œ\Ô\ä~qG\0WD\×æ™¼§\ÂV\ìü¬\ÃaC\È\ÓO_òJ5Næ»¡F_¬ú\êi#š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_action_category',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\ËÁ	À \Ğ]şZµ•üº\Ä/-E<xw¯Z=„¼C\"\Ğ(ŠfÁ£d8P”\ë‰\Ät¦7\è™m¶±û»Áñıc_8j\nJ“·Z?b#\ê');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_action_category_chunk_0_99',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\ÌA\n€ Ğ»\Ì	4³\ä\ÏZu‡‰$£À¥x÷4s1\Ìûğg\Z\é„\æmHZV,0)Â‚‚l>Pi:\Ğr_ş‘\Ã\×\ã6Ã¿\Í\Ø\á¸~(°¼7Ló‡\\‹…Tdxåœ‰óGb*');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_action_name',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\ËA\n€ Ğ»ühj\Éü+DwøQ„ ¸p)\Ş=-]ó3 X`&<J†E9\ïHœaA{zq€YF;á¹¿_?Ö‰\íC\íCBi2|p­/\Ém#d');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_category_action',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,¬ª‹­L­”r“Rs”¬‹Jù¹©‰\é©JÖ™V†Pl¥M`k	@†©u\n„ac˜ƒµ …‰VV\Õ@–1X[m-\0\Îò%ƒ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_category_action_chunk_0_99',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\Ë]\n€ \à»\ì	ü\Ëdö\n\Ñ6Š|\ïf>,û\r\Ì4\Ê\Í\ÚxŒ¬X`\'J\ÆŠr\\‘ZÓ¶t\'\â>gşo\İD\à¾nXøğ\ë‡Ú‹…\Òdy\çZ‰\ëy	(p');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_category_name',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,¬ª‹­L­”r“Rs”¬‹Jù¹©‰\é©JÖ™V†Pl¥M`k	@†©u\n„ac˜ƒµ …‰VV\Õ@–±µŸum-\0„\Ú$ı');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_name_action',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,¬ª‹­L­”r“Rs”¬‹­Œ­”2\Ë3³\ã]\ËRóJüsSıòK‚SK”¬3­¡\ØJ›À\Ö ó€S\ë\Ã\Æ03jA\n­¬ª,c°¶\ÚZ\0|5*\Ë');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_name_action_chunk_0_99',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\Ë]\n€ \à»\ì	ü\Ëdö\n\Ñ6Š|\ïf>,û\r\Ì4\Ê\Í\ÚxŒ¬X`\'J\ÆŠr\\‘ZÓ¶t\'\â>gşo\İD\à¾nXøğ\ë‡Ú‹…\Òdy\çZ‰\ëy	(p');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_name_category',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,¬ª‹­L­”r“Rs”¬‹­Œ­”2\Ë3³\ã]\ËRóJüsSıòK‚SK”¬3­¡\ØJ›À\Ö ó€S\ë\Ã\Æ03jA\n­¬ª,c°¶\ÚZ\0|5*\Ë');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Events_name_category_chunk_0_99',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5\ÌA\n€ Ğ»\Ì	4³\ä\ÏZu‡‰$£À¥x÷4s1\Ìûğg\Z\é„\æmHZV,0)Â‚‚l>Pi:\Ğr_ş‘\Ã\×\ã6Ã¿\Í\Ø\á¸~(°¼7Ló‡\\‹…Tdxåœ‰óGb*');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsCategory',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsCategory_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsName',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsName_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsSku',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goals_ItemsSku_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goal_days_until_conv',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Goal_visits_until_conv',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_keywordByCampaign',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_keywordBySearchEngine',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_searchEngineByKeyword',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_type',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬3­‘°”6†²-­Aº2­L¬SÀ¦ 	s i•1Óµ }‰VVÕµ \İ~Öµµ\0™ñ#');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_urlBySocialNetwork',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Referrers_urlByWebsite',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Resolution_configuration',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5LI\nÀ û‹/ë†™\'¼õ–ö xóRÿŞ\ØC’^@œa~\ÑT\Í\ç]7hu¤\ÚZz\"‘\â½°-5Ë›\ÈòT`ùš“‚\Â\Ç~5a\ê]¡Y\'\ãY?\'ı');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'Resolution_resolution',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5LI€ ûË¼`\éüÁ?`ô@Â‹	™¿\ë<tI›6Ã¡°dø\ß$ô†TóyW’†\äB\à\'1“¸‰eªŸ\Ş\'±ƒ‚ \×V+8~¼\Í&U\Ûe0º\Úú\Õô§%|');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'UserCountry_city',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5ŒK€ D\ï\Ò€¨„\é¼C.HØ±$½»”\Ô\Å|\ÒÉ« bT¤¿Œ\Ô\ä~qG\0WD\×æ™¼§\ÂV\ìü¬\ÃaC\È\ÓO_òJ5Næ»¡F_¬ú\êi#š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'UserCountry_country',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5‹\Ë\r€ D{¡>*a¶{X£n\\H\Èö®K\Ö\Ã|2“\Ç˜\é/³c‡k|=\ÍQG„\ÃQE0E\Ëd=R´b£{\r»>~Ø“WŠr)JŸ$òV$Œ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'UserCountry_region',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5ŒK€ D\ï\Ò€¨„\é¼C.HØ±$½»”\Ô\Å|\ÒÉ« bT¤¿Œ\Ô\ä~qG\0WD\×æ™¼§\ÂV\ìü¬\ÃaC\È\ÓO_òJ5Næ»¡F_¬ú\êi#š');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'UserId_users',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'UserLanguage_language',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ5‹\Ë\r€ D{¡>*a¶{X£n\\H\Èö®K\Ö\Ã|2“\Ç˜\é/³c‡k|=\ÍQG„\ÃQE0E\Ëd=R´b£{\r»>~Ø“WŠr)JŸ$òV$Œ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitorInterest_daysSinceLastVisit',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ\Ó=!\àÿ\"t\ã\Ç5n]º\İØµXpµ\Ğ\á¸ÿ^;thÛ‹’	¯‰\ÑñZX\ÇÄ´\Ãke\ÇjI·¼¨X«s¾\çGZ®s~]J-Ïªbaó¹d…*n…±j^[¢8\ïÿQb¥A)ú·b$e…$Å€‘+)$+NR,XYñ’\âÀ\ÉJ^V&I	d\å\ØU,«	p`1\Ø/s\Ë\è€š‡ı·L~\êwØ·-·›©\ß\ãöO\Ñ YS¿\Ì\íQ\ä\İÁœ$i{õó/„');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitorInterest_pageGap',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitorInterest_timeGap',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n,\Ùqy\Ëz:²e¹{ÿ\è\Ğ\ÚÚ¾„ı\ÔL‚›…\Ú,\ŞA\í<l2\Ú\Û\ë½S=,–@u3E)(©^›	\ã;R¬Ï»ñŸA\á\èpt\äD\á\ìpb\×\ÉF{©J]h\Æb\ZXÓ·$¿¥i$A\á\ä™)$(¸’CšG^<R\éJ\Å\nKñP\Ëğ\ä%\ÈC×‘t}\0>Ê™');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitorInterest_visitsByVisitCount',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\ĞÁ-£\Éİ«%Ğ¡H\Ş~?ø°e¹%™C°u‰w`™§d	G\ĞN]	\Ú\Ö\é(´k\é^”©)¶\×=a*ü£\à…=%Bô•\è)	’¯$OÉ}%{J\â+\ÅS*T_©²Á\æ+›©$	;\ĞByw“\ÑLx¡Àd÷¯f.q²[¸\èƒ\ëOÀ\Én\ãªwC^¢\ì^\ÖC1ÒƒŸt}Z[');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitTime_localTime',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœµ\Ö1ƒ0DÑ»p‚5`X\î;%]J\Ä\İ#\ÓDÊf\nlË–õ\å\æ‰9¼m	›\æH\çbŒ\í]4\ë|®Í´ú2\Ô\Ï\ëœ\ê:S¹¶D;=®XşŒ}=\ÉÇ¼—{sXl{¹};7~w­¦¬¦¬f\í;k5kE?VM4\êšhK£I\íh´\ÕD{\Z\í4\ÑL£½&:\Ğh\ÖDG\Z4Qp•FQ•›J¸PI\Ä¸KÁ.D4\ÛN\à:A\Ä¸OY.TZp£ \â\Â9R.\âÂ¹R.\âÂ¹R.\â\Â/ş$\\\ìoô T');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (47,'VisitTime_serverTime',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœµ\Ö;ƒ0„\á»\äµyx}‡\ÜÁQR Ñ¥D\Ü=€L)Cš)°-£\Õ/Q|¢º%_&¥z<Ù—·w~›\ë\ã5\ß\Ê\ä¶í±¶\Çv¹\ìc“§ò<.ºcb\ØÖ¾½}\İ\çª_\Ö}ú~^ü\î\Ù\ĞR¡e\Ãw6´lø+j4\nM4ò/¬‰&\ZšhG£I\íi´\ÓD\Z\í5Ñ‘FM4\Óè¨‰‚«”EUnD(\áB%K\à.A¸L\ÑnD8\ëO\à>A¸PnDHG\n\"¥Œ+e\".Œ+e\".\ì\â\ïI\Â\ÅúÃ¯T');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsCategory',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsCategory_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsName',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsName_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsSku',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goals_ItemsSku_Cart',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goal_days_until_conv',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (49,'Goal_visits_until_conv',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Actions_actions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœMÁ‚0D\Åô\Ìnf¯ıRµ\Ñ&¨$”\á\ß\íB\Ğ¶™—\Ùt<s‰‡\Û×˜GT0½¿†\ŞÈˆ\æpşÜ¦Wx\'#6\ëü„\ÍF8’;\èHT+p\Î2k\Æ\Ùr\ã\nà¶°Y\ÚÀ® \\:­h·)pU¤˜÷4»X/Ë¢×’Ùœ+\rşºSºÁ§§–k`şİ²\ß\ÉE–\å\äôKô');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Actions_actions_url',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœMa\nƒ0…\ï\Òh\Òb\ç^\î°;t³°‚n2\â\İg*şHx\É{$Œ5$À‚=\Ö	\rL\î±72Á\Ã\Ô\é\Õ\Å\ÅH‚İ‹µşÂ‰\ZIªˆ¼\ïF†aõ8[N\\|-\Ö,`3h€Û.\í1#n\nóyH{Šœ,›¶ \æ \ï\'?\Ã-\ÌsG\Ôu\\\Â0ö±z¼£\ÛNn²m?\n¥Ir');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Actions_downloads',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Actions_outlink',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Actions_sitesearch',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Contents_name_piece',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Contents_piece_name',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'CustomVariables_valueByName',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicePlugins_plugin',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²\ì\ï`›‘g˜™a”K(0{¬A–÷b\ÉxT f2Š\"rPN\æ¥\ÈC{\0B*\Ín)ü†jP«NšitTö*¢TÈeH;e\Êé…O;«¨³ù\ÎifeJĞ¥\í\ÒJU¶ \ëM›aÒ“¤­M\Ô\nBN\Ø^,?å³\Õq-zµwqVûÃ”\æ¶q®\0=ôÜ’V“\ë½\ÙF\İ|');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_brands',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_browserEngines',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_browsers',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_browserVersions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L\É\r€ \ìe0¬\\:[‚	?Àèƒ„OB\ï‚ÁÇœ\ÉL£&(‰Ğ¿\ÙQ,(\Ç\ë\É$\è‡ø\Å’„µƒ;ôôF\îO\í\È\Êwv2üT\æ91\êk\ÚH\nµ› ­½\">%\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_models',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L\É\rÀ Û…	B¡Euv\è©\Ú?(»7Aô\áøcAÄ¨ ¤_œ;B“ûm»U®\ØÑ–\ÎüL\Ş\İS±{°OT”\Å1®—L3Qw\ÂPŸ¹Xõ*\Ç#ÿ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_os',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_osVersions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ»\rÀ Dwa (\ç\"\Ñe\0GIDG‰\Ø=‘\â\İÇ’O@h–\îZE€)r¿\ÅpE„¹\Ò\É\ÃÛ€ne\Ï\Ïô \İÆ¡;\ëPF\\N´^¼—®M`Ñº\Î$\îı\Ó%\á');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'DevicesDetection_types',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_action_category',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+t‰\"Á?Å»§™3<–£Q\Ø	’±‚¢w$\Ép #=‰$`i\á\ë&¼ôU\Ã*\×À6±ÿ`şk/…Ai²\ãT_/$$');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_action_category_chunk_0_99',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_action_name',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+Dw0Š?ü\ï\ŞZù1\Ãû˜	`\Ô#vÀ£Ì +‘8Ğ–\ïL1iXcİ€—şR\Ìr~X\Ö\Ì\ï¸õ\n0¨*+»´ö\0\ç\Í#•');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_category_action',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@\×\ØHB0\nü\ïŞšù1\Ëc˜e”M;\àQ2T\â=$EY\nµ\İWxøŠ\"&‰‘\ØyÀSû8::–õ‡1ß¸¶\Ã\Ğ(\"Û«ú\ïM%´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_category_action_chunk_0_99',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_category_name',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@_\İa#	Á(ğS¼{k\å\Çe‡aP\"41l‡G\ÉpP‰·e9¨\å:\Ã\ÍGP1HŒÄ\ÚR\àhÿ0u\Ì?ŒyŸk+†FYZ©\Ö¤\Ó%.');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_name_action',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_name_action_chunk_0_99',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_name_category',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Events_name_category_chunk_0_99',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsCategory',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsCategory_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsName',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsName_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsSku',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goals_ItemsSku_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_-1_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_-1_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_0_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_0_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Goal_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_keywordByCampaign',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_keywordBySearchEngine',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_searchEngineByKeyword',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_type',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5ŒÁ\rÀ wa‚¤@QºCªöÄ¯O”\İK}8g[rŒ^A¢ˆ¿9\Ğ_d„¦\×Ó‚TğĞ¶—OrOf\ÏT\Æ\İ\Å\çe‘yM\Í\Æ<)\İü\Í)f¹ #<');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_urlBySocialNetwork',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Referrers_urlByWebsite',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Resolution_configuration',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5ŒM\n€ …\ï\â	f\Ò\n\ß!p\×ŒZ\î\Ü\â\İs\Ä\ßû˜Á¨	$öµ`…\Éñz²‘\Ş`\Îpˆ\Â\Î\Ñë‰Œ$,\îØ™\Ü\ÃW\í´w\İD\'ö\é\Ìó\ÅÑ¸4m„\Út&Hk}X(&');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'Resolution_resolution',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L\É\r€ \ì…\nvDf{°Œ>Høñ1!ô.Kğ1g2“Àh$	ö7­\ÂÃ”t=\ÅH\Å\Ã\Î\Ñ‰Œdl<`—wrOõš)\ŞEŸ2\ÂR\æ5q4›®)ĞºŞœ\ÒûN%¥');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'UserCountry_city',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'UserCountry_country',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'UserCountry_region',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'UserId_users',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'UserLanguage_language',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitorInterest_daysSinceLastVisit',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ\Ó=!\àÿ\"t\ã\Ç5n]º\İØµXpµ\Ğ\á¸ÿ^;thÛ‹’	¯‰\ÑñZX\ÇÄ´\Ãke\ÇjI·¼¨X«s¾\çGZ®s~]J-Ïªbaó¹d…*n…±j^[¢8\ïÿQb¥A)ú·b$e…$Å€‘+)$+NR,XYñ’\âÀ\ÉJ^V&I	d\å\ØU,«	p`1\Ø/s\Ë\è€š‡ı·L~\êwØ·-·›©\ß\ãöO\Ñ YS¿\Ì\íQ\ä\İÁœ$i{õó/„');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitorInterest_pageGap',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitorInterest_timeGap',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n,\Ùqy\Ëz:²e¹{ÿ\è\Ğ\ÚÚ¾„ı\ÔL‚›…\Ú,\ŞA\í<l2\Ú\Û\ë½S=,–@u3E)(©^›	\ã;R¬Ï»ñŸA\á\èpt\äD\á\ìpb\×\ÉF{©J]h\Æb\ZXÓ·$¿¥i$A\á\ä™)$(¸’CšG^<R\éJ\Å\nKñP\Ëğ\ä%\ÈC×‘t}\0>Ê™');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitorInterest_visitsByVisitCount',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\ĞÁ-£\Éİ«%Ğ¡H\Ş~?ø°e¹%™C°u‰w`™§d	G\ĞN]	\Ú\Ö\é(´k\é^”©)¶\×=a*ü£\à…=%Bô•\è)	’¯$OÉ}%{J\â+\ÅS*T_©²Á\æ+›©$	;\ĞByw“\ÑLx¡Àd÷¯f.q²[¸\èƒ\ëOÀ\Én\ãªwC^¢\ì^\ÖC1ÒƒŸt}Z[');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitTime_localTime',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœµÖ»\rƒ@„\á^¨`g98XzpXv€D\æÑ»9t„\Ñ÷BÀ/’O\Ì\á)¶%lš£½6cl¿\è¢Y\ç÷wm¦%\Ğ“—\Í1ÚºO\Ó\ç\\»r¶|\Ì\å.;F®+PIv^\Ù\Ëi‹m/¯y]\î\ÃV[V»V»V»vW5^uş¹¢jK«.ª&ZmEÕV“¨\Ú\Ój\'ªfZ\íEÕV³¨:\Ò\ê ª‚û4ª²\\\'¨xÂƒO* À…‚Š(p£ B\n\\)¨˜w\n*¨À¥‚\n\rp« cƒk•Î¹r•Î½r•Î½r•şğG¥qcÿ!\î,');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (52,'VisitTime_serverTime',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœµ\Ö;ƒ0„\á»p‚Å¼\Öw\Èˆ’‰.%\â\îÁÈ”\Õ~€0¿Dñ‰9<Å¶„\å9\Úk3\Åö‹.šu~\×&/\áV¦c\àmİ§ü9\×\î|`8\æ>—óKu\ê‘dç½\\\Ía±\í\å5¯\ë\Æ}ø\êZ\íZ\íZ\í\Ú]\Õx\Õi¢j\Ë?²¨šhµU;ZM¢jO«¨:\Ğj/ª´:ˆª­¢*¸O“*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\A\å•s¯\\\å†s¯\\\å†?üQi\Ü\Øÿğ„,');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsCategory',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsCategory_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsName',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsName_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsSku',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goals_ItemsSku_Cart',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_-1_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_-1_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_0_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_0_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_days_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (54,'Goal_visits_until_conv',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Actions_actions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœMÁ‚0D\Åô\Ìnf¯ıRµ\Ñ&¨$”\á\ß\íB\Ğ¶™—\Ùt<s‰‡\Û×˜GT0½¿†\ŞÈˆ\æpşÜ¦Wx\'#6\ëü„\ÍF8’;\èHT+p\Î2k\Æ\Ùr\ã\nà¶°Y\ÚÀ® \\:­h·)pU¤˜÷4»X/Ë¢×’Ùœ+\rşºSºÁ§§–k`şİ²\ß\ÉE–\å\äôKô');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Actions_actions_url',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœMa\nƒ0…\ï\Òh\Òb\ç^\î°;t³°‚n2\â\İg*şHx\É{$Œ5$À‚=\Ö	\rL\î±72Á\Ã\Ô\é\Õ\Å\ÅH‚İ‹µşÂ‰\ZIªˆ¼\ïF†aõ8[N\\|-\Ö,`3h€Û.\í1#n\nóyH{Šœ,›¶ \æ \ï\'?\Ã-\ÌsG\Ôu\\\Â0ö±z¼£\ÛNn²m?\n¥Ir');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Actions_downloads',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Actions_outlink',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Actions_sitesearch',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Contents_name_piece',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Contents_piece_name',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'CustomVariables_valueByName',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicePlugins_plugin',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²\ì\ï`›‘g˜™a”K(0{¬A–÷b\ÉxT f2Š\"rPN\æ¥\ÈC{\0B*\Ín)ü†jP«NšitTö*¢TÈeH;e\Êé…O;«¨³ù\ÎifeJĞ¥\í\ÒJU¶ \ëM›aÒ“¤­M\Ô\nBN\Ø^,?å³\Õq-zµwqVûÃ”\æ¶q®\0=ôÜ’V“\ë½\ÙF\İ|');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_brands',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_browserEngines',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_browsers',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_browserVersions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L\É\r€ \ìe0¬\\:[‚	?Àèƒ„OB\ï‚ÁÇœ\ÉL£&(‰Ğ¿\ÙQ,(\Ç\ë\É$\è‡ø\Å’„µƒ;ôôF\îO\í\È\Êwv2üT\æ91\êk\ÚH\nµ› ­½\">%\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_models',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L\É\rÀ Û…	B¡Euv\è©\Ú?(»7Aô\áøcAÄ¨ ¤_œ;B“ûm»U®\ØÑ–\ÎüL\Ş\İS±{°OT”\Å1®—L3Qw\ÂPŸ¹Xõ*\Ç#ÿ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_os',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L¹\rÀ \Ü\Å\à\0A9‰.8J\n$:J\Ä\îDŠó}ò)5Áˆ\Âş\â@-ğ ¬÷›IJo\èŠ\'I\Â\ÖÁvi\'\Ïd?¼	ı\î2F\Âb\æõ\â\ÌL\Úp\nƒ\Ú\ÆL”\Ö>‚i$´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_osVersions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ»\rÀ Dwa (\ç\"\Ñe\0GIDG‰\Ø=‘\â\İÇ’O@h–\îZE€)r¿\ÅpE„¹\Ò\É\ÃÛ€ne\Ï\Ïô \İÆ¡;\ëPF\\N´^¼—®M`Ñº\Î$\îı\Ó%\á');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'DevicesDetection_types',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_action_category',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+t‰\"Á?Å»§™3<–£Q\Ø	’±‚¢w$\Ép #=‰$`i\á\ë&¼ôU\Ã*\×À6±ÿ`şk/…Ai²\ãT_/$$');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_action_category_chunk_0_99',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_action_name',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\ËQ\n€ Ğ»\ì	Ü´’\Ù+Dw0Š?ü\ï\ŞZù1\Ãû˜	`\Ô#vÀ£Ì +‘8Ğ–\ïL1iXcİ€—şR\Ìr~X\Ö\Ì\ï¸õ\n0¨*+»´ö\0\ç\Í#•');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_category_action',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@\×\ØHB0\nü\ïŞšù1\Ëc˜e”M;\àQ2T\â=$EY\nµ\İWxøŠ\"&‰‘\ØyÀSû8::–õ‡1ß¸¶\Ã\Ğ(\"Û«ú\ïM%´');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_category_action_chunk_0_99',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_category_name',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\ËQ\n€ Ğ»x\Í,™½@_\İa#	Á(ğS¼{k\å\Çe‡aP\"41l‡G\ÉpP‰·e9¨\å:\Ã\ÍGP1HŒÄ\ÚR\àhÿ0u\Ì?ŒyŸk+†FYZ©\Ö¤\Ó%.');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_name_action',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_name_action_chunk_0_99',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœm\Ë\n\Ã E¥Ì¾5/®«\îK\éˆ!\Ó@•@	ù÷:iS²(‚9\Îp\ÇB`ñ:B\Ö5\ÈBr]hµC‹%¢Û¹@¹³]§a\"\í!5{¨r‡VóT†J÷¨wh¾ \ÄÖ¼òeQ`É¤ô\ÅY“\'7 \è†\Ñ=g ~„ú\ÙûÓ¥ô\Údş¼„pš}ô)²9n-%È˜Ş¦|º\à\Ì\è’\å\Êú³Êš\åd\ÖT\É');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_name_category',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5\Ì;\n€0Ğ»\ä®ñ\Çlm+‚S…A‹\àİŸ3<–eo‘°@GTğ;r¨Y3+Ş‘TkO;õõaV\×\Èbš\Íu\Æ)¶HC(Dg?;9Šˆò\Ñû|=%H\àƒôwºn¡\Ø*ü');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Events_name_category_chunk_0_99',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœmÁ\n\Â0DEö.4‰µerò\æIüƒ°¥A©Š	‚”ş»\Ùj¥	l\Ş\În2\ÃP”M\ĞMbh\é+\Ë0´jP\ä\ÎG*›-\èxü/l€¶òA€\Ù-\ĞZyY ¶ıö4_Pj^¤0*Œ…Œ=‰°5kw#\î\r(ù\Ë\à¯YüKN¹”ù©\ç‡\Ïù5‹exˆqó)\ä$\Ê:¹\Ö \çz\Î\åtÑ»Ág–\Î9úe*\âFV]');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsCategory',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsCategory_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsName',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsName_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsSku',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goals_ItemsSku_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_-1_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_-1_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_0_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_0_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Goal_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_keywordByCampaign',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_keywordBySearchEngine',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_searchEngineByKeyword',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_type',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5ŒÁ\rÀ wa‚¤@QºCªöÄ¯O”\İK}8g[rŒ^A¢ˆ¿9\Ğ_d„¦\×Ó‚TğĞ¶—OrOf\ÏT\Æ\İ\Å\çe‘yM\Í\Æ<)\İü\Í)f¹ #<');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_urlBySocialNetwork',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Referrers_urlByWebsite',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Resolution_configuration',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5ŒM\n€ …\ï\â	f\Ò\n\ß!p\×ŒZ\î\Ü\â\İs\Ä\ßû˜Á¨	$öµ`…\Éñz²‘\Ş`\Îpˆ\Â\Î\Ñë‰Œ$,\îØ™\Ü\ÃW\í´w\İD\'ö\é\Ìó\ÅÑ¸4m„\Út&Hk}X(&');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'Resolution_resolution',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L\É\r€ \ì…\nvDf{°Œ>Høñ1!ô.Kğ1g2“Àh$	ö7­\ÂÃ”t=\ÅH\Å\Ã\Î\Ñ‰Œdl<`—wrOõš)\ŞEŸ2\ÂR\æ5q4›®)ĞºŞœ\ÒûN%¥');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'UserCountry_city',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'UserCountry_country',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'UserCountry_region',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5Œ\Í\r€ …wa‚\"(ñuw¨\Ñ	7¤»\Û<¼¿&ı£‚Xşrbt\ìM\î·\î „À›)š\Òê™Ÿ™»o*\æ;¡¢¬Œq½dšõ%\Æê˜‹U?\n.#\Ã');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'UserId_users',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'UserLanguage_language',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ5L\É	À \ì\Å\n\Ö+’\ÙÒƒ!yşü²½\Çó˜f2,Fq†ÿÍ‰\Ñaj¾\ßj¸ÁÁôn¸ÀM\Ø	¿}\àgi\ÔLiòÁúQ¶Z»\'V#š2Cô\æb‘v¾$µ');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitorInterest_daysSinceLastVisit',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ\Ó=!\àÿ\"t\ã\Ç5n]º\İØµXpµ\Ğ\á¸ÿ^;thÛ‹’	¯‰\ÑñZX\ÇÄ´\Ãke\ÇjI·¼¨X«s¾\çGZ®s~]J-Ïªbaó¹d…*n…±j^[¢8\ïÿQb¥A)ú·b$e…$Å€‘+)$+NR,XYñ’\âÀ\ÉJ^V&I	d\å\ØU,«	p`1\Ø/s\Ë\è€š‡ı·L~\êwØ·-·›©\ß\ãöO\Ñ YS¿\Ì\íQ\ä\İÁœ$i{õó/„');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitorInterest_pageGap',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitorInterest_timeGap',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n,\Ùqy\Ëz:²e¹{ÿ\è\Ğ\ÚÚ¾„ı\ÔL‚›…\Ú,\ŞA\í<l2\Ú\Û\ë½S=,–@u3E)(©^›	\ã;R¬Ï»ñŸA\á\èpt\äD\á\ìpb\×\ÉF{©J]h\Æb\ZXÓ·$¿¥i$A\á\ä™)$(¸’CšG^<R\éJ\Å\nKñP\Ëğ\ä%\ÈC×‘t}\0>Ê™');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitorInterest_visitsByVisitCount',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\ĞÁ-£\Éİ«%Ğ¡H\Ş~?ø°e¹%™C°u‰w`™§d	G\ĞN]	\Ú\Ö\é(´k\é^”©)¶\×=a*ü£\à…=%Bô•\è)	’¯$OÉ}%{J\â+\ÅS*T_©²Á\æ+›©$	;\ĞByw“\ÑLx¡Àd÷¯f.q²[¸\èƒ\ëOÀ\Én\ãªwC^¢\ì^\ÖC1ÒƒŸt}Z[');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitTime_localTime',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœµÖ»\rƒ@„\á^¨`g98XzpXv€D\æÑ»9t„\Ñ÷BÀ/’O\Ì\á)¶%lš£½6cl¿\è¢Y\ç÷wm¦%\Ğ“—\Í1ÚºO\Ó\ç\\»r¶|\Ì\å.;F®+PIv^\Ù\Ëi‹m/¯y]\î\ÃV[V»V»V»vW5^uş¹¢jK«.ª&ZmEÕV“¨\Ú\Ój\'ªfZ\íEÕV³¨:\Ò\ê ª‚û4ª²\\\'¨xÂƒO* À…‚Š(p£ B\n\\)¨˜w\n*¨À¥‚\n\rp« cƒk•Î¹r•Î½r•Î½r•şğG¥qcÿ!\î,');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (57,'VisitTime_serverTime',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœµ\Ö;ƒ0„\á»p‚Å¼\Öw\Èˆ’‰.%\â\îÁÈ”\Õ~€0¿Dñ‰9<Å¶„\å9\Úk3\Åö‹.šu~\×&/\áV¦c\àmİ§ü9\×\î|`8\æ>—óKu\ê‘dç½\\\Ía±\í\å5¯\ë\Æ}ø\êZ\íZ\íZ\í\Ú]\Õx\Õi¢j\Ë?²¨šhµU;ZM¢jO«¨:\Ğj/ª´:ˆª­¢*¸O“*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\A\å•s¯\\\å†s¯\\\å†?üQi\Ü\Øÿğ„,');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsCategory',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsCategory_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsName',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsName_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsSku',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goals_ItemsSku_Cart',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_-1_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_-1_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_0_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_0_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_days_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
INSERT INTO `matomo_archive_blob_2019_12` VALUES (59,'Goal_visits_until_conv',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',_binary 'xœK´2°ª®\0Oş');
/*!40000 ALTER TABLE `matomo_archive_blob_2019_12` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_archive_numeric_2019_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2019_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_archive_numeric_2019_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_01` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'Actions_nb_hits_with_time_generation',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'Actions_nb_pageviews',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'Actions_nb_uniq_pageviews',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'Actions_sum_time_generation',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',0.01);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'done',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'max_actions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',2);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'nb_actions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',2);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'nb_visits',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'sum_visit_length',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',207);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (6,'UserCountry_distinctCountries',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (7,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (7,'max_actions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',2);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (7,'nb_actions',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',2);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (7,'nb_visits',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (7,'sum_visit_length',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',207);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (8,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (9,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
INSERT INTO `matomo_archive_numeric_2019_01` VALUES (10,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-01-01','2019-12-31',4,'2019-12-27 00:02:52',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_01` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_archive_numeric_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2019_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_archive_numeric_2019_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_12` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (4,'done',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (5,'done',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (6,'done',1,'2019-12-27','2019-12-27',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (7,'done',1,'2019-12-28','2019-12-28',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (8,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (10,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (11,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (14,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-25','2019-12-25',1,'2019-12-26 23:55:40',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (16,'done',1,'2019-12-23','2019-12-23',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (17,'done',1,'2019-12-24','2019-12-24',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (23,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-23','2019-12-23',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (24,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-24','2019-12-24',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (25,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-23','2019-12-23',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (26,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-23','2019-12-23',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (27,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-24','2019-12-24',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (28,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-24','2019-12-24',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (29,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-23','2019-12-23',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (30,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-24','2019-12-24',1,'2019-12-27 00:00:03',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (33,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-27','2019-12-27',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (34,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-28','2019-12-28',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (36,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-27','2019-12-27',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (37,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-28','2019-12-28',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (39,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-27','2019-12-27',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (40,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-28','2019-12-28',1,'2019-12-27 00:00:04',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'Actions_nb_hits_with_time_generation',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'Actions_nb_pageviews',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'Actions_nb_uniq_pageviews',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'Actions_sum_time_generation',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',0.01);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'done',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'max_actions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'nb_actions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'nb_uniq_visitors',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'nb_visits',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'sum_visit_length',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (47,'UserCountry_distinctCountries',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:49',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'max_actions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'nb_actions',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'nb_uniq_visitors',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'nb_visits',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (48,'sum_visit_length',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (49,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (50,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (51,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-26','2019-12-26',1,'2019-12-27 00:02:48',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'Actions_nb_hits_with_time_generation',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'Actions_nb_pageviews',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'Actions_nb_uniq_pageviews',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'Actions_sum_time_generation',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',0.01);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'done',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'max_actions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'nb_actions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'nb_uniq_visitors',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'nb_visits',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'sum_visit_length',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (52,'UserCountry_distinctCountries',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'max_actions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'nb_actions',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'nb_uniq_visitors',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'nb_visits',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (53,'sum_visit_length',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (54,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (55,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (56,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-23','2019-12-29',2,'2019-12-27 00:02:50',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'Actions_nb_hits_with_time_generation',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'Actions_nb_pageviews',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'Actions_nb_uniq_pageviews',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'Actions_sum_time_generation',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',0.01);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'done',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'max_actions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'nb_actions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'nb_uniq_visitors',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'nb_visits',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'sum_visit_length',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (57,'UserCountry_distinctCountries',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'max_actions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'nb_actions',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',2);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'nb_uniq_visitors',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'nb_visits',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (58,'sum_visit_length',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',207);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (59,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (60,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
INSERT INTO `matomo_archive_numeric_2019_12` VALUES (61,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2019-12-01','2019-12-31',3,'2019-12-27 00:02:51',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_12` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_brute_force_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_brute_force_log` (
  `id_brute_force_log` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL,
  PRIMARY KEY (`id_brute_force_log`),
  KEY `index_ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_brute_force_log` WRITE;
/*!40000 ALTER TABLE `matomo_brute_force_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_brute_force_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(25) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `event_value_as_revenue` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_goal` WRITE;
/*!40000 ALTER TABLE `matomo_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_goal` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_locks` (
  `key` varchar(70) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `expiry_time` bigint(20) unsigned DEFAULT '9999999999',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_locks` WRITE;
/*!40000 ALTER TABLE `matomo_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_locks` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4096) DEFAULT NULL,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_action` DISABLE KEYS */;
INSERT INTO `matomo_log_action` VALUES (1,'Document',555739168,4,NULL);
INSERT INTO `matomo_log_action` VALUES (2,'example.com',3069857465,1,0);
INSERT INTO `matomo_log_action` VALUES (3,'example.com',3069857465,10,0);
INSERT INTO `matomo_log_action` VALUES (4,'Logo',1153185069,11,NULL);
INSERT INTO `matomo_log_action` VALUES (5,'Homepage',844281784,10,NULL);
/*!40000 ALTER TABLE `matomo_log_action` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_conversion` (
  `idvisit` bigint(10) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `idlink_va` bigint(10) unsigned DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) unsigned NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(4096) NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned DEFAULT NULL,
  `visitor_days_since_order` smallint(5) unsigned DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_discount` float DEFAULT NULL,
  `revenue_shipping` float DEFAULT NULL,
  `revenue_subtotal` float DEFAULT NULL,
  `revenue_tax` float DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  KEY `index_idsite_datetime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_conversion` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_conversion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_conversion_item` (
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` bigint(10) unsigned NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) unsigned NOT NULL,
  `idaction_name` int(10) unsigned NOT NULL,
  `idaction_category` int(10) unsigned NOT NULL,
  `idaction_category2` int(10) unsigned NOT NULL,
  `idaction_category3` int(10) unsigned NOT NULL,
  `idaction_category4` int(10) unsigned NOT NULL,
  `idaction_category5` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_conversion_item` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion_item` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_link_visit_action` (
  `idlink_va` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` bigint(10) unsigned NOT NULL,
  `idaction_url_ref` int(10) unsigned DEFAULT '0',
  `idaction_name_ref` int(10) unsigned DEFAULT NULL,
  `custom_float` float DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idpageview` char(6) DEFAULT NULL,
  `interaction_position` smallint(5) unsigned DEFAULT NULL,
  `idaction_name` int(10) unsigned DEFAULT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `time_spent_ref_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_category` int(10) unsigned DEFAULT NULL,
  `idaction_content_interaction` int(10) unsigned DEFAULT NULL,
  `idaction_content_name` int(10) unsigned DEFAULT NULL,
  `idaction_content_piece` int(10) unsigned DEFAULT NULL,
  `idaction_content_target` int(10) unsigned DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_link_visit_action` DISABLE KEYS */;
INSERT INTO `matomo_log_link_visit_action` VALUES (1,1,_binary '\n\Æ\æ¯n\Å%~',1,0,0,6,'2019-12-26 23:58:40','VSn261',1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `matomo_log_link_visit_action` VALUES (2,1,_binary '\n\Æ\æ¯n\Å%~',1,2,1,NULL,'2019-12-27 00:02:06','r3If0k',1,NULL,3,206,4,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  `idprofiling` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idprofiling`),
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_profiling` WRITE;
/*!40000 ALTER TABLE `matomo_log_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_profiling` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_visit` (
  `idvisit` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) DEFAULT NULL,
  `visit_goal_converted` tinyint(1) DEFAULT NULL,
  `visitor_days_since_first` smallint(5) unsigned DEFAULT NULL,
  `visitor_days_since_order` smallint(5) unsigned DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL,
  `visit_entry_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_entry_idaction_url` int(11) unsigned DEFAULT NULL,
  `visit_exit_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_exit_idaction_url` int(10) unsigned DEFAULT '0',
  `visit_total_actions` int(11) unsigned DEFAULT NULL,
  `visit_total_interactions` smallint(5) unsigned DEFAULT '0',
  `visit_total_searches` smallint(5) unsigned DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `referer_url` text,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(10) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` int(11) unsigned DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `visitor_days_since_last` smallint(5) unsigned DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_director` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_gears` tinyint(1) DEFAULT NULL,
  `config_java` tinyint(1) DEFAULT NULL,
  `config_pdf` tinyint(1) DEFAULT NULL,
  `config_quicktime` tinyint(1) DEFAULT NULL,
  `config_realplayer` tinyint(1) DEFAULT NULL,
  `config_silverlight` tinyint(1) DEFAULT NULL,
  `config_windowsmedia` tinyint(1) DEFAULT NULL,
  `visit_total_time` int(11) unsigned NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_log_visit` WRITE;
/*!40000 ALTER TABLE `matomo_log_visit` DISABLE KEYS */;
INSERT INTO `matomo_log_visit` VALUES (1,1,_binary '\n\Æ\æ¯n\Å%~','2019-12-27 00:02:06',_binary 'õ\È\Éf)v½\0',_binary '\0\0',NULL,'2019-12-26 23:58:40',0,0,0,0,0,1,1,2,1,2,2,1,0,NULL,NULL,1,'','','','UNK','7.64','','',NULL,'UNK','UNK',1,'16:12:11',0,'1440x900',1,0,0,0,0,0,0,0,0,0,207,NULL,'xx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_log_visit` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_logger_message` WRITE;
/*!40000 ALTER TABLE `matomo_logger_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_logger_message` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_option` (
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_option` WRITE;
/*!40000 ALTER TABLE `matomo_option` DISABLE KEYS */;
INSERT INTO `matomo_option` VALUES ('admin_defaultReport','1',0);
INSERT INTO `matomo_option` VALUES ('install_version','3.13.0',0);
INSERT INTO `matomo_option` VALUES ('InvalidatedOldReports_DatesWebsiteIds','a:0:{}',0);
INSERT INTO `matomo_option` VALUES ('LastCompletedFullArchiving','1577404972',0);
INSERT INTO `matomo_option` VALUES ('LastFullArchivingStartTime','1577404968',0);
INSERT INTO `matomo_option` VALUES ('lastRunArchiveday_1','1577404969',0);
INSERT INTO `matomo_option` VALUES ('lastRunArchiveperiods_1','1577404972',0);
INSERT INTO `matomo_option` VALUES ('lastTrackerCronRun','1577404720',0);
INSERT INTO `matomo_option` VALUES ('MobileMessaging_DelegatedManagement','false',0);
INSERT INTO `matomo_option` VALUES ('PrivacyManager.doNotTrackEnabled','1',0);
INSERT INTO `matomo_option` VALUES ('PrivacyManager.ipAnonymizerEnabled','1',0);
INSERT INTO `matomo_option` VALUES ('SitesManager_DefaultTimezone','America/Sao_Paulo',0);
INSERT INTO `matomo_option` VALUES ('SocialDefinitions','YToxMTE6e3M6OToiYmFkb28uY29tIjtzOjU6IkJhZG9vIjtzOjg6ImJlYm8uY29tIjtzOjQ6IkJlYm8iO3M6MTU6ImJsYWNrcGxhbmV0LmNvbSI7czoxMToiQmxhY2tQbGFuZXQiO3M6MTE6ImJ1enpuZXQuY29tIjtzOjc6IkJ1enpuZXQiO3M6MTQ6ImNsYXNzbWF0ZXMuY29tIjtzOjE0OiJDbGFzc21hdGVzLmNvbSI7czoxODoiZ2xvYmFsLmN5d29ybGQuY29tIjtzOjc6IkN5d29ybGQiO3M6MTQ6ImdhaWFvbmxpbmUuY29tIjtzOjExOiJHYWlhIE9ubGluZSI7czo4OiJnZW5pLmNvbSI7czo4OiJHZW5pLmNvbSI7czoxMDoiZ2l0aHViLmNvbSI7czo2OiJHaXRIdWIiO3M6MTU6InBsdXMuZ29vZ2xlLmNvbSI7czo5OiJHb29nbGUlMkIiO3M6MTQ6InVybC5nb29nbGUuY29tIjtzOjk6Ikdvb2dsZSUyQiI7czoyODoiY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMucGx1cyI7czo5OiJHb29nbGUlMkIiO3M6MTA6ImRvdWJhbi5jb20iO3M6NjoiRG91YmFuIjtzOjEyOiJkcmliYmJsZS5jb20iO3M6ODoiRHJpYmJibGUiO3M6MTI6ImZhY2Vib29rLmNvbSI7czo4OiJGYWNlYm9vayI7czo1OiJmYi5tZSI7czo4OiJGYWNlYm9vayI7czoxNDoibS5mYWNlYm9vay5jb20iO3M6ODoiRmFjZWJvb2siO3M6MTQ6ImwuZmFjZWJvb2suY29tIjtzOjg6IkZhY2Vib29rIjtzOjExOiJmZXRsaWZlLmNvbSI7czo3OiJGZXRsaWZlIjtzOjEwOiJmbGlja3IuY29tIjtzOjY6IkZsaWNrciI7czoxMjoiZmxpeHN0ZXIuY29tIjtzOjg6IkZsaXhzdGVyIjtzOjExOiJmb3RvbG9nLmNvbSI7czo3OiJGb3RvbG9nIjtzOjE0OiJmb3Vyc3F1YXJlLmNvbSI7czoxMDoiRm91cnNxdWFyZSI7czoxOToiZnJpZW5kc3JldW5pdGVkLmNvbSI7czoxNjoiRnJpZW5kcyBSZXVuaXRlZCI7czoxNDoiZnJpZW5kc3Rlci5jb20iO3M6MTA6IkZyaWVuZHN0ZXIiO3M6NzoiZ3JlZS5qcCI7czo0OiJncmVlIjtzOjk6ImhhYmJvLmNvbSI7czo1OiJIYWJvbyI7czoyMDoibmV3cy55Y29tYmluYXRvci5jb20iO3M6MTE6IkhhY2tlciBOZXdzIjtzOjc6ImhpNS5jb20iO3M6MzoiaGk1IjtzOjg6Imh5dmVzLm5sIjtzOjU6Ikh5dmVzIjtzOjk6ImlkZW50aS5jYSI7czo5OiJpZGVudGkuY2EiO3M6MTM6Imluc3RhZ3JhbS5jb20iO3M6OToiaW5zdGFncmFtIjtzOjE1OiJsLmluc3RhZ3JhbS5jb20iO3M6OToiaW5zdGFncmFtIjtzOjEwOiJsYW5nLTguY29tIjtzOjY6ImxhbmctOCI7czo3OiJsYXN0LmZtIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLnJ1IjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmRlIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmVzIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmZyIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLml0IjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmpwIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLnBsIjtzOjc6Ikxhc3QuZm0iO3M6MTM6Imxhc3RmbS5jb20uYnIiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uc2UiO3M6NzoiTGFzdC5mbSI7czoxMzoibGFzdGZtLmNvbS50ciI7czo3OiJMYXN0LmZtIjtzOjEyOiJsaW5rZWRpbi5jb20iO3M6ODoiTGlua2VkSW4iO3M6NzoibG5rZC5pbiI7czo4OiJMaW5rZWRJbiI7czoxNjoibGlua2VkaW4uYW5kcm9pZCI7czo4OiJMaW5rZWRJbiI7czoxNDoibGl2ZWpvdXJuYWwucnUiO3M6MTE6IkxpdmVKb3VybmFsIjtzOjE1OiJsaXZlam91cm5hbC5jb20iO3M6MTE6IkxpdmVKb3VybmFsIjtzOjEwOiJtZWludnoubmV0IjtzOjY6Ik1laW5WWiI7czo3OiJtaXhpLmpwIjtzOjQ6Ik1peGkiO3M6MTA6Im1vaWtydWcucnUiO3M6MTA6Ik1vaUtydWcucnUiO3M6MTI6Im11bHRpcGx5LmNvbSI7czo4OiJNdWx0aXBseSI7czoxMDoibXkubWFpbC5ydSI7czoxMDoibXkubWFpbC5ydSI7czoxNDoibXloZXJpdGFnZS5jb20iO3M6MTA6Ik15SGVyaXRhZ2UiO3M6OToibXlsaWZlLnJ1IjtzOjY6Ik15TGlmZSI7czoxMToibXlzcGFjZS5jb20iO3M6NzoiTXlzcGFjZSI7czoxNDoibXl5ZWFyYm9vay5jb20iO3M6MTA6Im15WWVhcmJvb2siO3M6NToibmsucGwiO3M6MTQ6Ik5hc3phLWtsYXNhLnBsIjtzOjEwOiJuZXRsb2cuY29tIjtzOjY6Ik5ldGxvZyI7czoxNjoib2Rub2tsYXNzbmlraS5ydSI7czoxMzoiT2Rub2tsYXNzbmlraSI7czo5OiJvcmt1dC5jb20iO3M6NToiT3JrdXQiO3M6MTI6InF6b25lLnFxLmNvbSI7czo1OiJPem9uZSI7czoxMzoicGludGVyZXN0LmNvbSI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5jYSI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5jaCI7czo5OiJQaW50ZXJlc3QiO3M6MTU6InBpbnRlcmVzdC5jby51ayI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5kZSI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5kayI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5lcyI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5mciI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5pZSI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5qcCI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5ueiI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5wdCI7czo5OiJQaW50ZXJlc3QiO3M6MTI6InBpbnRlcmVzdC5zZSI7czo5OiJQaW50ZXJlc3QiO3M6OToicGxheG8uY29tIjtzOjU6IlBsYXhvIjtzOjEwOiJyZWRkaXQuY29tIjtzOjY6InJlZGRpdCI7czoxMzoibnAucmVkZGl0LmNvbSI7czo2OiJyZWRkaXQiO3M6MTQ6InBheS5yZWRkaXQuY29tIjtzOjY6InJlZGRpdCI7czoxMDoicmVucmVuLmNvbSI7czo2OiJSZW5yZW4iO3M6MTE6InNreXJvY2suY29tIjtzOjc6IlNreXJvY2siO3M6MTA6InNvbmljby5jb20iO3M6MTA6IlNvbmljby5jb20iO3M6MTc6InN0YWNrb3ZlcmZsb3cuY29tIjtzOjEzOiJTdGFja092ZXJmbG93IjtzOjExOiJzdHVkaXZ6Lm5ldCI7czo3OiJTdHVkaVZaIjtzOjE2OiJsb2dpbi50YWdnZWQuY29tIjtzOjY6IlRhZ2dlZCI7czoxMToidGFyaW5nYS5uZXQiO3M6ODoiVGFyaW5nYSEiO3M6MTY6IndlYi50ZWxlZ3JhbS5vcmciO3M6ODoiVGVsZWdyYW0iO3M6MjI6Im9yZy50ZWxlZ3JhbS5tZXNzZW5nZXIiO3M6ODoiVGVsZWdyYW0iO3M6MTA6InR1ZW50aS5jb20iO3M6NjoiVHVlbnRpIjtzOjEwOiJ0dW1ibHIuY29tIjtzOjY6InR1bWJsciI7czoxMToidHdpdHRlci5jb20iO3M6NzoiVHdpdHRlciI7czo0OiJ0LmNvIjtzOjc6IlR3aXR0ZXIiO3M6MTU6InNvdXJjZWZvcmdlLm5ldCI7czoxMToiU291cmNlZm9yZ2UiO3M6MTU6InN0dW1ibGV1cG9uLmNvbSI7czoxMToiU3R1bWJsZVVwb24iO3M6NjoidmsuY29tIjtzOjk6IlZrb250YWt0ZSI7czoxMjoidmtvbnRha3RlLnJ1IjtzOjk6IlZrb250YWt0ZSI7czoxMToieW91dHViZS5jb20iO3M6NzoiWW91VHViZSI7czo4OiJ5b3V0dS5iZSI7czo3OiJZb3VUdWJlIjtzOjg6InYyZXguY29tIjtzOjQ6IlYyRVgiO3M6MTA6InZpYWRlby5jb20iO3M6NjoiVmlhZGVvIjtzOjk6InZpbWVvLmNvbSI7czo1OiJWaW1lbyI7czoxNToidmtydWd1ZHJ1emVpLnJ1IjtzOjE1OiJ2a3J1Z3VkcnV6ZWkucnUiO3M6ODoid2F5bi5jb20iO3M6NDoiV0FZTiI7czo5OiJ3ZWliby5jb20iO3M6NToiV2VpYm8iO3M6NDoidC5jbiI7czo1OiJXZWlibyI7czoxMjoid2Vld29ybGQuY29tIjtzOjg6IldlZVdvcmxkIjtzOjE0OiJsb2dpbi5saXZlLmNvbSI7czoxOToiV2luZG93cyBMaXZlIFNwYWNlcyI7czo5OiJ4YW5nYS5jb20iO3M6NToiWGFuZ2EiO3M6ODoieGluZy5jb20iO3M6NDoiWElORyI7fQ==',0);
INSERT INTO `matomo_option` VALUES ('TaskScheduler.timetable','a:22:{s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOutdatedArchives\";i:1577491252;s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOrphanedArchives\";i:1577664041;s:56:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.updateSpammerBlacklist\";i:1577664041;s:61:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.checkSiteHasTrackedVisits_1\";i:1577671200;s:49:\"Piwik\\Plugins\\Referrers\\Tasks.updateSearchEngines\";i:1577664041;s:43:\"Piwik\\Plugins\\Referrers\\Tasks.updateSocials\";i:1577664041;s:47:\"Piwik\\Plugins\\Login\\Tasks.cleanupBruteForceLogs\";i:1577491252;s:63:\"Piwik\\Plugins\\UsersManager\\Tasks.setUserDefaultReportPreference\";i:1577491252;s:47:\"Piwik\\Plugins\\CustomPiwikJs\\Tasks.updateTracker\";i:1577408452;s:58:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidatedArchives\";i:1577491252;s:51:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteReportData\";i:1577491252;s:48:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogData\";i:1577408452;s:52:\"Piwik\\Plugins\\PrivacyManager\\Tasks.anonymizePastData\";i:1577408452;s:63:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogDataForDeletedSites\";i:1577664041;s:54:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.optimizeArchiveTable\";i:1577836841;s:57:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.cleanupTrackingFailures\";i:1577491252;s:56:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.notifyTrackingFailures\";i:1577664041;s:49:\"Piwik\\Plugins\\UserCountry\\GeoIPAutoUpdater.update\";i:1577836841;s:45:\"Piwik\\Plugins\\GeoIp2\\GeoIP2AutoUpdater.update\";i:1577836841;s:65:\"Piwik\\Plugins\\CoreUpdater\\Tasks.sendNotificationIfUpdateAvailable\";i:1577491252;s:52:\"Piwik\\Plugins\\Marketplace\\Tasks.clearAllCacheEntries\";i:1577491252;s:66:\"Piwik\\Plugins\\Marketplace\\Tasks.sendNotificationIfUpdatesAvailable\";i:1577491252;}',0);
INSERT INTO `matomo_option` VALUES ('TransactionLevel.testOption','1',0);
INSERT INTO `matomo_option` VALUES ('UpdateCheck_LastTimeChecked','1577404319',1);
INSERT INTO `matomo_option` VALUES ('UpdateCheck_LatestVersion','3.13.0',0);
INSERT INTO `matomo_option` VALUES ('useridsalt','wtbLteGbyc3MM4HBiYXwEk1kcVLSmmNZ7vt-LNmb',1);
INSERT INTO `matomo_option` VALUES ('UsersManager.lastSeen.admin','1577404956',1);
INSERT INTO `matomo_option` VALUES ('version_Actions','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Annotations','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_API','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_BulkTracking','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Contents','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_core','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CoreAdminHome','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CoreConsole','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CoreHome','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CorePluginsAdmin','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CoreUpdater','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CoreVisualizations','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CustomPiwikJs','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_CustomVariables','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Dashboard','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_DevicePlugins','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_DevicesDetection','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Diagnostics','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Ecommerce','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Events','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Feedback','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_GeoIp2','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Goals','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Heartbeat','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_ImageGraph','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Insights','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Installation','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Intl','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_IntranetMeasurable','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_LanguagesManager','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Live','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Login','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_log_conversion.revenue','float default NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_conversion.revenue_discount','float default NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_conversion.revenue_shipping','float default NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_conversion.revenue_subtotal','float default NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_conversion.revenue_tax','float default NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.idpageview','CHAR(6) NULL DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.interaction_position','SMALLINT UNSIGNED DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.server_time','DATETIME NOT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_browser_engine','VARCHAR(10) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_browser_name','VARCHAR(10) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_browser_version','VARCHAR(20) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_cookie','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_director','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_flash','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_gears','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_java','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_os','CHAR(3) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_pdf','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_quicktime','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_realplayer','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_resolution','VARCHAR(18) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_silverlight','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.config_windowsmedia','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_browser_lang','VARCHAR(20) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_country','CHAR(3) NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_latitude','decimal(9, 6) DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_longitude','decimal(9, 6) DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.location_region','char(3) DEFAULT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.referer_name','VARCHAR(70) NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.referer_url','TEXT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.user_id','VARCHAR(200) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_count_visits','INT(11) UNSIGNED NOT NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_days_since_first','SMALLINT(5) UNSIGNED NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_days_since_last','SMALLINT(5) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_days_since_order','SMALLINT(5) UNSIGNED NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_localtime','TIME NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visitor_returning','TINYINT(1) NULL1',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_entry_idaction_name','INTEGER(10) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NULL  DEFAULT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_exit_idaction_name','INTEGER(10) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_exit_idaction_url','INTEGER(10) UNSIGNED NULL DEFAULT 0',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_goal_buyer','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_goal_converted','TINYINT(1) NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_total_actions','INT(11) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_total_events','INT(11) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_total_interactions','SMALLINT UNSIGNED DEFAULT 0',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NULL',1);
INSERT INTO `matomo_option` VALUES ('version_log_visit.visit_total_time','INT(11) UNSIGNED NOT NULL',1);
INSERT INTO `matomo_option` VALUES ('version_Marketplace','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_MobileMessaging','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Monolog','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Morpheus','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_MultiSites','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Overlay','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_PrivacyManager','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_ProfessionalServices','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Proxy','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Referrers','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Resolution','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_RssWidget','1.0',1);
INSERT INTO `matomo_option` VALUES ('version_ScheduledReports','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_SegmentEditor','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_SEO','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_SitesManager','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Tour','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Transitions','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_TwoFactorAuth','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_UserCountry','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_UserCountryMap','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_UserId','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_UserLanguage','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_UsersManager','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_VisitFrequency','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_VisitorInterest','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_VisitsSummary','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_VisitTime','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_WebsiteMeasurable','3.13.0',1);
INSERT INTO `matomo_option` VALUES ('version_Widgetize','3.13.0',1);
/*!40000 ALTER TABLE `matomo_option` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_plugin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_plugin_setting` (
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `idplugin_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idplugin_setting`),
  KEY `plugin_name` (`plugin_name`,`user_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_plugin_setting` WRITE;
/*!40000 ALTER TABLE `matomo_plugin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_plugin_setting` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_privacy_logdata_anonymizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_privacy_logdata_anonymizations` (
  `idlogdata_anonymization` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idsites` text,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `anonymize_ip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `anonymize_location` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `anonymize_userid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unset_visit_columns` text NOT NULL,
  `unset_link_visit_action_columns` text NOT NULL,
  `output` mediumtext,
  `scheduled_date` datetime DEFAULT NULL,
  `job_start_date` datetime DEFAULT NULL,
  `job_finish_date` datetime DEFAULT NULL,
  `requester` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`idlogdata_anonymization`),
  KEY `job_start_date` (`job_start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_privacy_logdata_anonymizations` WRITE;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_within_period` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_period_n` int(11) NOT NULL,
  `period_param` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_report` WRITE;
/*!40000 ALTER TABLE `matomo_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_report_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_report_subscriptions` (
  `idreport` int(11) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ts_subscribed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_unsubscribed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idreport`,`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_report_subscriptions` WRITE;
/*!40000 ALTER TABLE `matomo_report_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_segment` WRITE;
/*!40000 ALTER TABLE `matomo_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_segment` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_sequence` WRITE;
/*!40000 ALTER TABLE `matomo_sequence` DISABLE KEYS */;
INSERT INTO `matomo_sequence` VALUES ('matomo_archive_numeric_2019_01',10);
INSERT INTO `matomo_sequence` VALUES ('matomo_archive_numeric_2019_12',61);
/*!40000 ALTER TABLE `matomo_sequence` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_session` WRITE;
/*!40000 ALTER TABLE `matomo_session` DISABLE KEYS */;
INSERT INTO `matomo_session` VALUES ('a474b4af163b3ef97ddd5b54009937dc',1577404964,1209600,'a:1:{s:4:\"data\";s:552:\"YTo2OntzOjQ6Il9fWkYiO2E6Mjp7czoxMToiTG9naW4ubG9naW4iO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTU3NzQwNTA2MTt9fXM6MTU6InNpdGVXaXRob3V0RGF0YSI7YToxOntzOjM6IkVOVCI7aToxNTc3NDA4MTM5O319czo5OiJ1c2VyLm5hbWUiO3M6NToiYWRtaW4iO3M6MjI6InR3b2ZhY3RvcmF1dGgudmVyaWZpZWQiO2k6MDtzOjEyOiJzZXNzaW9uLmluZm8iO2E6Mzp7czoyOiJ0cyI7aToxNTc3NDA0NTA0O3M6MTA6InJlbWVtYmVyZWQiO2I6MDtzOjEwOiJleHBpcmF0aW9uIjtpOjE1Nzc0MDg1NjM7fXM6MTI6Im5vdGlmaWNhdGlvbiI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjA6e319czoxNToic2l0ZVdpdGhvdXREYXRhIjthOjE6e3M6MTM6Imlnbm9yZU1lc3NhZ2UiO2I6MTt9fQ==\";}');
/*!40000 ALTER TABLE `matomo_session` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  `creator_login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_site` WRITE;
/*!40000 ALTER TABLE `matomo_site` DISABLE KEYS */;
INSERT INTO `matomo_site` VALUES (1,'Example','http://example.com','2019-12-25 00:00:00',0,1,'','','America/Sao_Paulo','USD',0,'','','','','website',0,'anonymous');
/*!40000 ALTER TABLE `matomo_site` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site_setting` (
  `idsite` int(10) unsigned NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idsite_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idsite_setting`),
  KEY `idsite` (`idsite`,`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_site_setting` WRITE;
/*!40000 ALTER TABLE `matomo_site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_setting` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_site_url` WRITE;
/*!40000 ALTER TABLE `matomo_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_url` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_tracking_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_tracking_failure` (
  `idsite` bigint(20) unsigned NOT NULL,
  `idfailure` smallint(5) unsigned NOT NULL,
  `date_first_occurred` datetime NOT NULL,
  `request_url` mediumtext NOT NULL,
  PRIMARY KEY (`idsite`,`idfailure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_tracking_failure` WRITE;
/*!40000 ALTER TABLE `matomo_tracking_failure` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_tracking_failure` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_twofactor_recovery_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_twofactor_recovery_code` (
  `idrecoverycode` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `recovery_code` varchar(40) NOT NULL,
  PRIMARY KEY (`idrecoverycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_twofactor_recovery_code` WRITE;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_user` WRITE;
/*!40000 ALTER TABLE `matomo_user` DISABLE KEYS */;
INSERT INTO `matomo_user` VALUES ('admin','$2y$10$3gDrbnEA24gASwyEaY/oD.QPaioq2b0CvkAfC8U2zfCHnpKtm4/V.','admin','admin@example.com','','6cec7f5a101c337f24dd63c464df5d0b',1,'2019-12-26 23:52:12','2019-12-26 23:52:12');
INSERT INTO `matomo_user` VALUES ('anonymous','','anonymous','anonymous@example.org','','anonymous',0,'2019-12-26 23:49:57','2019-12-26 23:49:57');
/*!40000 ALTER TABLE `matomo_user` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_user_dashboard` WRITE;
/*!40000 ALTER TABLE `matomo_user_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `matomo_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `matomo_user_language` WRITE;
/*!40000 ALTER TABLE `matomo_user_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

