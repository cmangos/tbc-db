-- Spells need to proc on DOT tick taken, not dot tick done since they are on target, not owner and they proc themselves
DELETE FROM spell_proc_event WHERE entry IN(32065,35244,36659);
INSERT INTO spell_proc_event(entry,procFlags) VALUES
(32065,0x00080000),
(35244,0x00080000),
(36659,0x00080000);

-- new Shadowfiend level stats from TBC sniffs, 66, 67 and 70 sniffed, rest filled
UPDATE pet_levelstats SET mana=100 WHERE creature_entry IN(19668);
DELETE FROM pet_levelstats WHERE creature_entry IN(19668) AND level IN(66,67,68,69,70);
INSERT INTO pet_levelstats(creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES
('19668', '66', '1160', '2846', '100', '0', '0', '0', '0', '0'),
('19668', '67', '1193', '2933', '100', '0', '0', '0', '0', '0'),
('19668', '68', '1227', '3010', '100', '0', '0', '0', '0', '0'),
('19668', '69', '1261', '3095', '100', '0', '0', '0', '0', '0'),
('19668', '70', '1296', '3155', '100', '0', '0', '0', '0', '0');


-- Enchantress Volali 19251 - Remove Male Model Option
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 18775;

DELETE FROM `creature_addon` WHERE `guid` IN (58922);
DELETE FROM creature WHERE `guid` IN (192330,192331,192332);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(192330, 16938, 530, 1, 0, 0, -567.9635, 4784.752, 36.39353, 0.2792527, 300, 300, 0, 0, 1, 1, 0, 0), 
(192331, 16938, 530, 1, 0, 0, -553.8755, 4740.128, 36.71443, 2.356194, 300, 300, 0, 0, 1, 1, 0, 0), 
(192332, 17058, 530, 1, 0, 0, -554.1119, 4746.274, 35.73817, 0.5762176, 300, 300, 5, 0, 1, 1, 0, 1);

-- Dreghood Brute 16938 - Illidari Taskmaster 17058 Groups
DELETE FROM `creature_linking` WHERE `master_guid` IN (59451,59452,59453,59454,59455,59456,59457,59458,59459,59460,59462,59463,192332);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(58906,59451,3),(58907,59451,3),
(58908,59452,3),(58909,59452,3),
(58910,59453,3),(58911,59453,3),
(58913,59454,3),(58919,59454,3),(192330,59454,3),
(58916,59455,3),(58917,59455,3),(58918,59455,3),
(58915,59456,3),(58921,59456,3),
(58923,59457,3),(58924,59457,3),
(58926,59458,3),(58927,59458,3),
(58928,59459,3),(58929,59459,3),
(58925,59460,3),(58930,59460,3),(58931,59460,3),
(58920,59462,3),(58932,59462,3),
(58933,59463,3),(58934,59463,3),
(192331,192332,3);

-- Gug 23144
UPDATE `creature_template` SET `VendorTemplateId` = 116 WHERE `entry` = 23144;

-- High Admiral "Shelly" Jorrik 26081
UPDATE `creature_template` SET `VendorTemplateId` = 116 WHERE `entry` = 26081;
DELETE FROM `npc_vendor` WHERE `entry` = 26081;
INSERT INTO `npc_vendor` VALUES (26081, 10858, 1, 7200, 0, 0, 'Plans: Solid Iron Maul');

-- Jannos Ironwill 1471
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 1471 AND `item` = 10858;

-- correct positions for Legion Hold teleporter and the return routes
REPLACE INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
('37387', '530', '-2742.77', '2727', '124.81', '5.29');
UPDATE areatrigger_teleport SET target_position_x=-3277.86,target_position_y=2831.64,target_position_z=123.02,target_orientation=1.5708 WHERE id IN(4561,4562);


