-- Tweaked BG announcer (for arena types)
DELETE FROM `mangos_string` WHERE `entry`=716;
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(716,'|cffff0000[Arena Queue Announcer]:|r %s -- [%uv%u] Started!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


