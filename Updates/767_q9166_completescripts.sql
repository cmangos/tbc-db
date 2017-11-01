-- ---------------------------------
-- Completescript for Quest Deliver the Plans to An'telas q.9166
-- ---------------------------------
-- Night Elf Ambusher Addon
DELETE FROM `creature_template_addon` WHERE `entry`=16238;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(16238, 9991, 0, 1, 16, 0, 0, NULL);

UPDATE creature_template SET ModelId1=16084, ModelId2=16085, ModelId3=16086, ModelId4=16087, MovementType=2, SpeedWalk=(2.5/2.5), SpeedRun=(9.7/7) WHERE entry=16238; -- Night Elf Ambusher
UPDATE `creature_template` SET `UnitFlags`=33024 WHERE `entry`=16804; -- Night Elf Corpse

UPDATE creature SET spawntimesecsmin=300, spawntimesecsmax=300 WHERE id=16237; -- Fix weird spawntime for Magister Sylastor

UPDATE quest_template SET CompleteScript=9166 WHERE entry=9166;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(9166);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(9166,0,31,16238,80,0,0,0,0,0,0,0,8,'Terminate Script if Night Elf Invader Found Alive',0,0,0,0),

(9166,1,0,0,0,0,2000001451,0,0,0,0,0,0,'Magister Sylastor - Look out... the night elves are back!',0,0,0,0),
(9166,1,10,16238,120000,1,1,0,0,0,0,0,8,'Summon Night Elf Invader 1',7404.813,-7262.611,109.7867,6.038532),
(9166,1,10,16238,120000,2,1,0,0,0,0,0,8,'Summon Night Elf Invader 2',7403.871,-7264.173,109.8067,0.07209907);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10060);
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10060,0,31,16237,50,0,0,0,0,0,0,0,0,'Terminate Script if Magister Sylastor Not Found Alive',0,0,0,0),
(10060,0,31,16238,80,0,0,0,0,0,0,0,8,'Terminate Script if Night Elf Invader Found Alive',0,0,0,0),

(10060,1,0,0,0,0,2000001452,0,0,0,16237,50,3,'Magister Sylastor - Thank you very much! I don''t know what I would have done if you weren''t here!',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001451 AND 2000001452;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001451, 'Look out... the night elves are back!', 0, 0, 1, 25, 'Magister Sylastor (Entry: 16237)'),
(2000001452, 'Thank you very much! I don''t know what I would have done if you weren''t here!', 0, 0, 1, 0, 'Magister Sylastor (Entry: 16237)');

DELETE FROM `creature_movement_template` WHERE `entry`=16238;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(16238,1,1,7404.813,-7262.611,109.7867,0,11,0),
(16238,1,2,7433.426,-7267.253,96.58301,0,0,0),
(16238,1,3,7448.903,-7270.924,97.00952,0,0,0),
(16238,1,4,7465.849,-7271.537,97.28906,1000,7,100),

(16238,2,1,7417.24,-7263.215,102.0595,0,0,0),
(16238,2,2,7424.164,-7264.087,97.34493,0,0,0),
(16238,2,3,7435.875,-7265.779,96.97609,0,0,0),
(16238,2,4,7447.362,-7268.503,97.51709,0,0,0),
(16238,2,5,7458.502,-7269.27,97.70801,0,0,0),
(16238,2,6,7465.921,-7269.538,97.67603,1000,7,100);

