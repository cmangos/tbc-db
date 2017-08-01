
DELETE a FROM creature_addon a INNER JOIN creature b ON a.guid=b.guid WHERE b.id IN (12460, 12461);

DELETE FROM creature_template_addon WHERE entry IN(12460,12461);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(12460, 0, 0, 1, 0, 0, 0, '19818 22276 22282'),
(12461, 0, 0, 1, 0, 0, 0, '22276');

