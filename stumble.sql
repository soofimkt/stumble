-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: stumble
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.9-MariaDB

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

--
-- Table structure for table `log_table`
--

DROP TABLE IF EXISTS `log_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_table`
--

LOCK TABLES `log_table` WRITE;
/*!40000 ALTER TABLE `log_table` DISABLE KEYS */;
INSERT INTO `log_table` VALUES (1,'DELETING TOURNAMENT DETAILS','CURRENT_TIMESTAMP'),(2,'calling update_auto_increment_key - 1','CURRENT_TIMESTAMP'),(3,'calling update_auto_increment_key - tournament -- 1','CURRENT_TIMESTAMP'),(4,'query - ALTER TABLE tournament AUTO_INCREMENT = 1;','CURRENT_TIMESTAMP'),(5,'END EXECUTING QUERY','CURRENT_TIMESTAMP'),(6,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(7,'SelectedTournamentMatchCount - 10','CURRENT_TIMESTAMP'),(8,'SelectedTournamentCount - 0','CURRENT_TIMESTAMP'),(9,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(10,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(11,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(12,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(13,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(14,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(15,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(16,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(17,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(18,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(19,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(20,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(21,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(22,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(23,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(24,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(25,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(26,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(27,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(28,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(29,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(30,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(31,'SelectedTournamentCount - 1','CURRENT_TIMESTAMP'),(32,'SelectedTournamentMatchCount - 0','CURRENT_TIMESTAMP'),(33,'calling update_auto_increment_key - points -- 16','CURRENT_TIMESTAMP'),(34,'query - ALTER TABLE points AUTO_INCREMENT = 16;','CURRENT_TIMESTAMP'),(35,'END EXECUTING QUERY','CURRENT_TIMESTAMP');
/*!40000 ALTER TABLE `log_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_master`
--

DROP TABLE IF EXISTS `point_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `point_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_master`
--

LOCK TABLES `point_master` WRITE;
/*!40000 ALTER TABLE `point_master` DISABLE KEYS */;
INSERT INTO `point_master` VALUES (1,'First Round',1),(2,'Second Round',2),(3,'Third Round',3),(4,'Champion',4);
/*!40000 ALTER TABLE `point_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `playedOn` timestamp NULL DEFAULT current_timestamp(),
  `tournamentId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pointId` int(11) NOT NULL,
  `stageId` int(11) NOT NULL,
  `createdOn` timestamp NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` VALUES (1,'2021-06-15 17:41:16',1,1,1,1,9,'2021-06-15 17:41:16','2021-06-15 17:41:16'),(2,'2021-06-15 17:41:16',1,1,2,4,3,'2021-06-15 17:41:16','2021-06-15 17:41:16'),(3,'2021-06-15 17:41:16',1,1,4,3,3,'2021-06-15 17:41:16','2021-06-15 17:41:16'),(4,'2021-06-15 17:45:03',1,2,1,1,6,'2021-06-15 17:45:03','2021-06-15 17:45:03'),(5,'2021-06-15 17:45:03',1,2,2,1,6,'2021-06-15 17:45:03','2021-06-15 17:45:03'),(6,'2021-06-15 17:45:03',1,2,4,2,15,'2021-06-15 17:45:03','2021-06-15 17:45:03'),(7,'2021-06-15 17:52:39',1,3,1,3,8,'2021-06-15 17:52:39','2021-06-15 17:52:39'),(8,'2021-06-15 17:52:39',1,3,2,3,8,'2021-06-15 17:52:39','2021-06-15 17:52:39'),(9,'2021-06-15 17:52:39',1,3,4,3,8,'2021-06-15 17:52:39','2021-06-15 17:52:39'),(10,'2021-06-15 17:58:27',1,4,1,3,13,'2021-06-15 17:58:27','2021-06-15 17:58:27'),(11,'2021-06-15 17:58:27',1,4,2,3,13,'2021-06-15 17:58:27','2021-06-15 17:58:27'),(12,'2021-06-15 17:58:27',1,4,4,4,13,'2021-06-15 17:58:27','2021-06-15 17:58:27'),(13,'2021-06-15 18:03:29',1,5,1,1,16,'2021-06-15 18:03:29','2021-06-15 18:15:05'),(14,'2021-06-15 18:03:29',1,5,2,3,3,'2021-06-15 18:03:29','2021-06-15 18:15:05'),(15,'2021-06-15 18:03:29',1,5,4,2,13,'2021-06-15 18:03:29','2021-06-15 18:15:05');
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_master`
--

DROP TABLE IF EXISTS `stage_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createdOn` timestamp NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_master`
--

LOCK TABLES `stage_master` WRITE;
/*!40000 ALTER TABLE `stage_master` DISABLE KEYS */;
INSERT INTO `stage_master` VALUES (1,'Bombardment','2021-06-11 23:34:33',NULL),(2,'Cannon Climb','2021-06-11 23:34:33',NULL),(3,'Laser Tracer','2021-06-11 23:34:33',NULL),(4,'Lava Rush','2021-06-11 23:34:33',NULL),(5,'Lost Temple','2021-06-11 23:34:33',NULL),(6,'Floor Flip','2021-06-11 23:34:33',NULL),(7,'Honey Drop','2021-06-11 23:34:33',NULL),(8,'Humble Stumble','2021-06-11 23:34:33',NULL),(9,'Icy Height','2021-06-11 23:34:33',NULL),(10,'Over and Under','2021-06-11 23:34:33',NULL),(11,'Space Race','2021-06-11 23:34:33',NULL),(12,'Stumble Soccer','2021-06-11 23:34:33',NULL),(13,'Super Slide','2021-06-11 23:34:33',NULL),(14,'Tile Fall','2021-06-11 23:34:33',NULL),(15,'Pivot Push','2021-06-14 18:27:58','2021-06-15 17:50:12'),(16,'Spin Go Round','2021-06-15 17:50:12',NULL);
/*!40000 ALTER TABLE `stage_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `endTime` timestamp NULL DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INPROGRESS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'2021-06-15 17:27:55',NULL,'INPROGRESS');
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_match_stage`
--

DROP TABLE IF EXISTS `tournament_match_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_match_stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tournamentId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  `firstRoundStageId` int(11) NOT NULL,
  `secondRoundStageId` int(11) DEFAULT 0,
  `finalRoundStageId` int(11) DEFAULT 0,
  `createdOn` timestamp NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_match_stage`
--

LOCK TABLES `tournament_match_stage` WRITE;
/*!40000 ALTER TABLE `tournament_match_stage` DISABLE KEYS */;
INSERT INTO `tournament_match_stage` VALUES (1,1,1,9,13,3,NULL,NULL),(2,1,2,6,15,-1,NULL,NULL),(3,1,3,16,11,8,NULL,NULL),(4,1,4,9,5,13,NULL,NULL),(5,1,4,9,5,13,NULL,NULL),(6,1,5,16,13,3,NULL,NULL);
/*!40000 ALTER TABLE `tournament_match_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_user_detail`
--

DROP TABLE IF EXISTS `tournament_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tournamentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdOn` timestamp NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_user_detail`
--

LOCK TABLES `tournament_user_detail` WRITE;
/*!40000 ALTER TABLE `tournament_user_detail` DISABLE KEYS */;
INSERT INTO `tournament_user_detail` VALUES (1,1,1,NULL,NULL),(2,1,2,NULL,NULL),(3,1,4,NULL,NULL);
/*!40000 ALTER TABLE `tournament_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) DEFAULT 1,
  `createdOn` timestamp NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Baliya',1,'2021-06-09 16:41:24',NULL),(2,'Irshad',1,'2021-06-09 16:41:24',NULL),(3,'Ismail',1,'2021-06-09 16:41:24',NULL),(4,'Soofi',1,'2021-06-09 16:41:24',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'stumble'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_empty_tournament` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `delete_empty_tournament`(tId INT)
BEGIN
	 DECLARE TotalRow INT DEFAULT 0;
		SET @Status = 'FAILURE';
	IF tId > 0 THEN
		SET @SelectedTournamentCount = (SELECT count(*) as count
			FROM tournament where status = 'INPROGRESS' and id = tId);
		IF @SelectedTournamentCount = 1 THEN
			SET @SelectedTournamentMatchCount = (SELECT coalesce(max(matchId), 0) as currentTournamentMatchId
			FROM points where tournamentId = tId);
            IF @SelectedTournamentMatchCount = 0 THEN
				INSERT INTO `log_table`(`log`) VALUES (concat('DELETING TOURNAMENT DETAILS'));
                DELETE FROM `tournament_user_detail` WHERE tournamentId = tId;
				DELETE FROM `tournament` WHERE id = tId;
                INSERT INTO `log_table`(`log`) VALUES (concat('calling update_auto_increment_key - ' , tId));
               SET @aiCountId = (SELECT COUNT(id) + 1 from tournament);
               call update_auto_increment_key('tournament', @aiCountId);
                SET @Status = 'SUCCESS';
			ELSE
				SET @Status = 'MATCHES-PLAYED';				
            END IF;
		ELSE 
			SET @Status = 'TOURNAMENT-NOT-FOUND';
		END IF;
	ELSE
		SET @Status = 'TOURNAMENT-ID-NOT-FOUND';
	END IF;
    SELECT @Status as result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `end_tournament` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `end_tournament`(tId INT)
BEGIN
	SET @Status = 'FAILURE';
	IF tId > 0 THEN
		SET @SelectedTournamentCount = (SELECT count(*) as count
			FROM tournament where status = 'INPROGRESS' and id = tId);
			INSERT INTO `log_table`(`log`) VALUES (concat('SelectedTournamentCount - ' , @SelectedTournamentCount));
        IF @SelectedTournamentCount = 1 THEN
			SET @SelectedTournamentMatchCount = (SELECT coalesce(max(matchId), 0) as currentTournamentMatchId
			FROM points where tournamentId = tId);
            INSERT INTO `log_table`(`log`) VALUES (concat('SelectedTournamentMatchCount - ' , @SelectedTournamentMatchCount));
            IF @SelectedTournamentMatchCount = 0 THEN
				SET @Status = 'NO-MATCH-PLAYED';
			ELSE
				UPDATE `tournament` SET `endTime` = now(), `status` = 'COMPLETED' WHERE `id` = tId;
                SET @Status = 'SUCCESS';
            END IF;
		ELSE 
			SET @Status = 'TOURNAMENT-NOT-FOUND';
		END IF;
	ELSE
		SET @Status = 'TOURNAMENT-ID-NOT-FOUND';
	END IF;
    SELECT @Status as result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_current_tournament_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_current_tournament_detail`()
BEGIN
SET @SelectedTournamentId = (SELECT coalesce(max(id), 0) as currentTournamentId
 FROM tournament where status = 'INPROGRESS');
 IF @SelectedTournamentId = 0 THEN 
	 INSERT INTO `tournament` (`startTime`, `status`) VALUES (now(), 'INPROGRESS');
	 SELECT id as tournamentId, 1 as matchId, startTime as startTime
			FROM tournament where status = 'INPROGRESS';
 ELSE
	SET @SelectedTournamentMatchId = (SELECT coalesce(max(matchId), 0) + 1 as currentTournamentMatchId
			FROM points where tournamentId = @SelectedTournamentId);
	SELECT id as tournamentId, @SelectedTournamentMatchId as matchId, startTime as startTime
			FROM tournament where status = 'INPROGRESS';
 END IF;
 
 
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_current_tournament_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_current_tournament_id`()
BEGIN
SET @SelectedTournamentId = (SELECT coalesce(max(id), 0) as currentTournamentId
 FROM tournament where status = 'INPROGRESS');
 IF @SelectedTournamentId = 0 THEN 
	 INSERT INTO `tournament` (`startTime`, `status`) VALUES (now(), 'INPROGRESS');
	 SET @SelectedTournamentId = (SELECT max(id) as currentTournamentId
			FROM tournament where status = 'INPROGRESS');
	 SELECT @SelectedTournamentId as tournamentId, 1 as matchId;
 ELSE
	SET @SelectedTournamentMatchId = (SELECT coalesce(max(matchId), 0) + 1 as currentTournamentMatchId
			FROM points where tournamentId = @SelectedTournamentId);
	SELECT @SelectedTournamentId as tournamentId, @SelectedTournamentMatchId as matchId;
 END IF;
 
 
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_auto_increment_key` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_auto_increment_key`(tableName varchar(100), aiCount INT)
BEGIN
	INSERT INTO `log_table`(`log`) VALUES (concat('calling update_auto_increment_key - ' , tableName, ' -- ', aiCount));
	SET @resetQuery = CONCAT('ALTER TABLE ', tableName , ' AUTO_INCREMENT = ' , aiCount , ';');
    INSERT INTO `log_table`(`log`) VALUES (concat('query - ' , @resetQuery));
	PREPARE stmt FROM @resetQuery;
	EXECUTE stmt; 
	DEALLOCATE PREPARE stmt;
    INSERT INTO `log_table`(`log`) VALUES (concat('END EXECUTING QUERY'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-16 20:40:11
