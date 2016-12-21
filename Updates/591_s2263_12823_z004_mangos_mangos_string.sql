UPDATE `mangos_string` SET `content_default`='Online players: %u (max: %u)' WHERE  `entry`=12;
DELETE FROM `mangos_string` WHERE `entry` IN (1704,1705);
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES (1704, 'Queued players: %u (max: %u)');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES (1705, 'Unique players: %u');

