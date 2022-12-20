-- The Stair of Destiny - Updates 

-- Peon Overseer 19426
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (69490,69491);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(69490,20033),(69491,20034);

DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20033,20034);
INSERT INTO `creature_spawn_data_template` (`Entry`, `NpcFlags`, `UnitFlags`, `Faction`, `ModelId`, `EquipmentId`, `CurHealth`, `CurMana`, `SpawnFlags`, `RelayId`) VALUES
(20033, -1, -1, 0, 0, 0, 0, 0, 0, 30500),
(20034, -1, -1, 0, 0, 0, 0, 0, 0, 30501);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (30500,30501);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(30500, 1, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 5 (A) to Self'),
(30501, 1, 0, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 6 (B) to Self');

-- guid with random emotes
DELETE FROM dbscript_random_templates WHERE `id` = 19999;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(19999,1,19966,0,'Peon Overseer 19426 - Random Script 1 (Phase 1)'),
(19999,1,19967,0,'Peon Overseer 19426 - Random Script 2 (Phase 1)'),
(19999,1,19968,0,'Peon Overseer 19426 - Random Script 3 (Phase 1)'),
(19999,1,19969,0,'Peon Overseer 19426 - Random Script 4 (Phase 1)');

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19966 AND 19969;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19966,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peon Overseer 19426 EAI: emote'),
(19967,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peon Overseer 19426 EAI: emote'),
(19968,1,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peon Overseer 19426 EAI: emote'),
(19969,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peon Overseer 19426 EAI: emote');

-- guid with RP
-- remove old static data
DELETE FROM `creature_movement` WHERE id = 69491;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (69491);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1942601); -- 6949101
DELETE FROM dbscripts_on_creature_movement WHERE id IN (6949101);
DELETE FROM dbscripts_on_relay WHERE id = 10100 AND delay = 3000; -- this is not part of his RP. - confirmed by sniff
DELETE FROM `dbscript_random_templates` WHERE id = 10100;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
('10100','1','10100','25','Peon Overseer 19426 - Random Script 1 (Phase 2)'),
('10100','1','10101','25','Peon Overseer 19426 - Random Script 2 (Phase 2)'),
('10100','1','10102','50','Peon Overseer 19426 - Random Script 3 (Phase 2)');

-- Orgrimmar Peon 19425
-- fix for: DB-SCRIPTS: Process table `dbscripts_on_relay` id 10103, command 0 has buddy 19425 by guid 69482 but buddy is dead, skipping
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (69482,69484);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(69482,20034),(69484,20033);
DELETE FROM dbscript_random_templates WHERE `id` = 10103; -- not req anymore
DELETE FROM dbscripts_on_relay WHERE id = 10103; -- redone
DELETE FROM dbscripts_on_relay WHERE id = 19965; -- new added
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 10103
(10103,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: active'),
(10103,2,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: reset emote'),
(10103,3,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.31,'Part of Orgrimmar Peon 19425 EAI: move'),
(10103,1000,0,0,0,0,0,0,0x04,16689,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: Say'),
(10103,1001,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(10103,4000,35,8,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: Send Event AI C'),
(10103,7000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(10103,11000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,5.009,'Part of Orgrimmar Peon 19425 EAI: move'),
(10103,12000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(10103,12001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: unactive'),
-- 19965
(19965,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: active'),
(19965,2,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: reset emote'),
(19965,3,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.2566,'Part of Orgrimmar Peon 19425 EAI: move'),
(19965,1000,0,0,0,0,0,0,0x04,16690,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: Say'),
(19965,1001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(19965,3300,1,153,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(19965,6400,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.541,'Part of Orgrimmar Peon 19425 EAI: move'),
(19965,7000,1,173,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: emote'),
(19965,7001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Orgrimmar Peon 19425 EAI: unactive');

