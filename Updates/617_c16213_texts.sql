DELETE FROM dbscript_random_templates WHERE id=10009;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10009,0,2000001404,0,'Ranger Lethvalin (Entry: 16213)'),
(10009,0,2000001405,0,'Ranger Lethvalin (Entry: 16213)'),
(10009,0,2000001406,0,'Ranger Lethvalin (Entry: 16213)'),
(10009,0,2000001407,0,'Ranger Lethvalin (Entry: 16213)');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001404 AND 2000001407;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001404, '%s taps his foot impatiently.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Ranger Lethvalin (Entry: 16213)'),
(2000001405, '%s glares at the guards.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Ranger Lethvalin (Entry: 16213)'),
(2000001406, '%s sighs in apparent frustration.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Ranger Lethvalin (Entry: 16213)'),
(2000001407, '%s peers inside the tower and then clenches his jaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Ranger Lethvalin (Entry: 16213)');

