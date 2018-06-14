ALTER TABLE db_version CHANGE COLUMN required_s2365_01_mangos_model_speeds required_s2374_01_mangos_quest_template_rewmaxrep bit;

DELETE FROM `command` WHERE `name` = 'debug taxi';
INSERT INTO `command` VALUES
('debug taxi',3,'Syntax: .debug taxi\r\n\r\nToggle debug mode for taxi flights. In debug mode GM receive additional on-screen information during taxi flights.');

DELETE FROM `mangos_string` WHERE `entry` IN (1196, 1197, 1198, 1199);
INSERT INTO `mangos_string` VALUES
(1196,'Debug output for taxi flights is now %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1197,'[Taxi]: Progress at node: [%u][%u], next: [%u][%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1198,'[Taxi]: Progress at final node: [%u][%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1199,'[Taxi]: Changing route to [%u].',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DROP TABLE IF EXISTS `taxi_shortcuts`;
CREATE TABLE `taxi_shortcuts` (
  `pathid` int unsigned NOT NULL COMMENT 'Flight path entry id',
  `takeoff` int unsigned NOT NULL COMMENT 'Amount of waypoints to skip in the beginning of the flight',
  `landing` int unsigned NOT NULL COMMENT 'Amount of waypoints to skip at the end of the flight',
  `comments` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pathid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Taxi System';

INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(6, 5, 0, 'Stormwind - Sentinel Hill | Takeoff extracted from verified'),
(7, 0, 2, 'Sentinel Hill - Stormwind | Landing extracted from verified'),
(8, 0, 2, 'Lakeshire - Stormwind | Landing verified: videos'),
(9, 5, 0, 'Stormwind - Lakeshire | Takeoff extracted from verified'),
(12, 16, 2, 'Ironforge - Stormwind | Verified: videos'),
(13, 5, 16, 'Stormwind - Ironforge | Verified: videos'),
(16, 16, 0, 'Ironforge - Thelsamar | Takeoff verified: videos'),
(17, 0, 16, 'Menethil Harbor - Ironforge | Landing verified: videos'),
(244, 0, 2, 'Nethergarde Keep - Stormwind | Landing extracted from verified'),
(245, 5, 0, 'Stormwind - Nethergarde Keep | Takeoff extracted from verified'),
(680, 0, 2, 'Thorium Point - Stormwind | Landing extracted from verified'),
(22, 0, 2, 'Darkshire - Stormwind | Landing extracted from verified'),
(23, 5, 0, 'Stormwind - Darkshire | Takeoff extracted from verified'),
(40, 5, 0, 'Stormwind - Booty Bay | Takeoff extracted from verified'),
(41, 0, 2, 'Booty Bay - Stormwind | Landing extracted from verified'),
(753, 4, 0, 'Stormwind - Rebel Camp | Takeoff extracted and fixed from verified'),
(752, 0, 2, 'Rebel Camp - Stormwind | Landing extracted from verified'),
(681, 4, 0, 'Stormwind - Thorium Point | Takeoff extracted and fixed from verified'),
(15, 0, 18, 'Thelsamar - Ironforge | Landing is approximate'),
(18, 16, 0, 'Ironforge - Menethil Harbor | Takeoff extracted from verified'),
(27, 16, 0, 'Ironforge - Southshore | Takeoff extracted from verified'),
(31, 15, 0, 'Ironforge - Refuge Pointe | Takeoff is approximate'),
(30, 0, 16, 'Refuge Pointe - Ironforge | Landing extracted from verified'),
(264, 0, 14, 'Aerie Peak - Ironforge | Landing is approximate'),
(263, 16, 0, 'Ironforge - Aerie Peak | Takeoff is approximate'),
(26, 0, 17, 'Southshore - Ironforge | Landing is approximate'),
(429, 0, 12, 'Chillwind Camp - Ironforge | Landing is approximate'),
(428, 16, 0, 'Ironforge - Chillwind Camp | Takeoff is approximate'),
(437, 0, 12, 'Light\'s Hope Chapel - Ironforge | Landing is approximate'),
(438, 10, 0, 'Ironforge - Light\'s Hope Chapel | Takeoff is approximate'),
(402, 0, 12, 'Thorium Point - Ironforge | Landing is approximate'),
(404, 10, 0, 'Ironforge - Thorium Point | Takeoff is approximate');

