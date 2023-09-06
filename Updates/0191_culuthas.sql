-- Culuthas spell_list
-- 20138	0	36402	37089	35373	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 20138;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2013801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2013801, 'Netherstorm - Culuthas', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` = 2013801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2013801, 1, 35373, 0, -1, 103, 0, 100, 0, 8000, 12000, 11000, 16000, 'Culuthas - Shadowfury - on AOE eligible target exists - not passed to cast'),
(2013801, 2, 36402, 0, -1, 101, 0, 100, 0, 4000, 8000, 9000, 13000, 'Culuthas - Sleep - random player non tank'),
(2013801, 3, 37089, 2, -1, 1, 0, 100, 0, 0, 2000, 7000, 9000, 'Culuthas - Chain Felfire - on current');

UPDATE `creature_template` SET `SpellList` = 2013801 WHERE `entry` = 20138;


-- Roleplay Event from Image of Socrethar and Culthas
-- 2013301 is the relay script when culthas is alive (handled via phases and event ai) 2013302 is when culthas is dead
DELETE FROM `dbscripts_on_relay` WHERE id = 2013301;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(2013301,0,0,0,2013301,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Socrethar - Say Random Text'), 
(2013301,6000,0,35,5,0,0,20138,25,1,0,0,0,0,0,0,0,0,0,0,0,'Socrethar - Send AI Event A');

DELETE FROM dbscript_random_templates WHERE id IN (2013301, 2013302);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(2013301, 0, 17682, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17688, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17676, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17689, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17677, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17687, 0, 'Image of Socrethat - Say Text'),
(2013301, 0, 17678, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17690, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17691, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17692, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17693, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17694, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17695, 0, 'Image of Socrethat - Say Text'),
(2013302, 0, 17699, 0, 'Image of Socrethat - Say Text'),
(2013801, 0, 17705, 0, 'Culuthas - Say Text'),
(2013801, 0, 17706, 0, 'Culuthas - Say Text'),
(2013801, 0, 17707, 0, 'Culuthas - Say Text'),
(2013801, 0, 17708, 0, 'Culuthas - Say Text'),
(2013801, 0, 17709, 0, 'Culuthas - Say Text'),
(2013801, 0, 17710, 0, 'Culuthas - Say Text'),
(2013801, 0, 17712, 0, 'Culuthas - Say Text');


-- Add missing Legion Communicator object
DELETE FROM gameobject WHERE guid = 5309580;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(5309580, 184072, 530, 1,4671.7256, 2512.3254, 240.01451, 0.80285096, 0, 0, 0.39073086, 0.920505, 120, 120);
-- [8] Scale: 0.5
UPDATE gameobject_template SET size = 0.5 WHERE entry = 184072;
