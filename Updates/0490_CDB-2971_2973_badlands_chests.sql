DELETE FROM `gameobject` WHERE `guid` IN (11440,11479,11501,11503,55522,55523); -- existing spawns
DELETE FROM `pool_gameobject` WHERE `guid` IN (11440,11479,11501,11503,55522,55523); -- 40013	2	Badlands - Solid Chest Pool
DELETE FROM `pool_template` WHERE `entry` = 40013;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 300030 AND 300043;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- use new guids
('300030', '2857', '0', '-6381.32031250000', '-3413.036865234375', '241.6661834716796875', '3.001946926116943359', '0', '0', '0.989015579223632812', '0.147811368107795715', '7200', '7200', '100', '1'), -- Hammertoe's Digsite
('300031', '2857', '0', '-6468.92773437500', '-3400.445800781250', '241.4890136718750000', '1.570795774459838867', '0', '0', '0.707106590270996093', '0.707106947898864746', '7200', '7200', '100', '1'), -- Hammertoe's Digsite (exists)
('300032', '2857', '0', '-6324.55126953125', '-3111.325439453125', '300.2786254882812500', '3.490667104721069335', '0', '0', '-0.98480701446533203', '0.173652306199073791', '7200', '7200', '100', '1'), -- Angor Fortress
('300033', '2857', '0', '-6321.19531250000', '-3088.821533203125', '301.1128234863281250', '5.654868602752685546', '0', '0', '-0.30901622772216796', '0.951056778430938720', '7200', '7200', '100', '1'), -- Angor Fortress
('300034', '2857', '0', '-6368.06494140625', '-3135.104492187500', '283.8892517089843750', '1.466075778007507324', '0', '0', '0.669130325317382812', '0.743145048618316650', '7200', '7200', '100', '1'), -- Angor Fortress
('300035', '2857', '0', '-6357.33056640625', '-3091.657958984375', '301.1106567382812500', '5.637413978576660156', '0', '0', '-0.31730461120605468', '0.948323667049407958', '7200', '7200', '100', '1'), -- Angor Fortress (exists)
('300036', '2857', '0', '-7018.64257812500', '-3341.542724609375', '241.6666717529296875', '6.195919513702392578', '0', '0', '-0.04361915588378906', '0.999048233032226562', '7200', '7200', '100', '1'), -- Agmond's End
('300037', '2857', '0', '-6823.49414062500', '-2813.374267578125', '242.6319122314453125', '2.844882726669311523', '0', '0', '0.989015579223632812', '0.147811368107795715', '7200', '7200', '100', '1'), -- Camp Wurg
('300038', '2857', '0', '-7055.18115234375', '-3638.682617187500', '241.6666717529296875', '1.291541695594787597', '0', '0', '0.601814270019531250', '0.798636078834533691', '7200', '7200', '100', '1'), -- Camp Boff
('300039', '2857', '0', '-7132.20019531250', '-2424.152832031250', '240.7903900146484375', '3.769911527633666992', '0', '0', '-0.95105648040771484', '0.309017121791839599', '7200', '7200', '100', '1'), -- Camp Cagg (exists)

('300040', '4149', '0', '-7438.17529296875', '-2317.32128906250', '237.0408325195312500', '5.602506637573242187', '0', '0', '-0.33380699157714843', '0.942641437053680419', '7200', '7200', '100', '1'), -- Dustbelch Grotto (exists)
('300041', '4149', '0', '-7311.24316406250', '-2277.51806640625', '245.9141387939453125', '0.558503925800323486', '0', '0', '0.275636672973632812', '0.961261868476867675', '7200', '7200', '100', '1'), -- Dustbelch Grotto
('300042', '4149', '0', '-7483.70996093750', '-2268.19628906250', '233.7161254882812500', '0.069811686873435974', '0', '0', '0.034898757934570312', '0.999390840530395507', '7200', '7200', '100', '1'), -- Dustbelch Grotto
('300043', '4149', '0', '-7387.18750000000', '-2237.20458984375', '233.9271392822265625', '3.857182979583740234', '0', '0', '-0.93667125701904296', '0.350209832191467285', '7200', '7200', '100', '1'); -- Dustbelch Grotto

DELETE FROM `pool_template` WHERE `entry` = 39923;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 31012 AND 31018;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('39923', '3', 'Badlands - Master Chest Pool'), -- kept original entry
('31012', '1', 'Badlands (Hammertoe''s Digsite) - Chest Pool'),
('31013', '1', 'Badlands (Angor Fortress) - Chest Pool'),
('31014', '1', 'Badlands (Agmond''s End) - Chest Pool'),
('31015', '1', 'Badlands (Camp Wurg) - Chest Pool'),
('31016', '1', 'Badlands (Camp Boff) - Chest Pool'),
('31017', '1', 'Badlands (Camp Cagg) - Chest Pool'),

('31018', '1', 'Badlands (Dustbelch Grotto) - Chest Pool');

DELETE FROM `pool_pool` WHERE `mother_pool` = 39923;
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
('31012', '39923', '0', 'Badlands (Hammertoe''s Digsite) - Chest Pool'),
('31013', '39923', '0', 'Badlands (Angor Fortress) - Chest Pool'),
('31014', '39923', '0', 'Badlands (Agmond''s End) - Chest Pool'),
('31015', '39923', '0', 'Badlands (Camp Wurg) - Chest Pool'),
('31016', '39923', '0', 'Badlands (Camp Boff) - Chest Pool'),
('31017', '39923', '0', 'Badlands (Camp Cagg) - Chest Pool'),

('31018', '39923', '0', 'Badlands (Dustbelch Grotto) - Chest Pool');

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 300030 AND 300043;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('300030', '31012', '0', 'Badlands (Hammertoe''s Digsite) - Solid Chest (2857)'),
('300031', '31012', '0', 'Badlands (Hammertoe''s Digsite) - Solid Chest (2857)'),
('300032', '31013', '0', 'Badlands (Angor Fortress) - Solid Chest (2857)'),
('300033', '31013', '0', 'Badlands (Angor Fortress) - Solid Chest (2857)'),
('300034', '31013', '0', 'Badlands (Angor Fortress) - Solid Chest (2857)'),
('300035', '31013', '0', 'Badlands (Angor Fortress) - Solid Chest (2857)'),
('300036', '31014', '0', 'Badlands (Agmond''s End) - Solid Chest (2857)'),
('300037', '31015', '0', 'Badlands (Camp Wurg) - Solid Chest (2857)'),
('300038', '31016', '0', 'Badlands (Camp Boff) - Solid Chest (2857)'),
('300039', '31017', '0', 'Badlands (Camp Cagg) - Solid Chest (2857)'),

('300040', '31018', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('300041', '31018', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('300042', '31018', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)'),
('300043', '31018', '0', 'Badlands (Dustbelch Grotto) - Solid Chest (4149)');

