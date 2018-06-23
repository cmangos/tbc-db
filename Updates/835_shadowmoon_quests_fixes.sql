-- handled correctly by serverside spell
DELETE FROM dbscripts_on_event WHERE id=13852 AND delay IN(0,60) AND datalong IN(48342);

-- Invis Legion Hold Caster 21403, should not move, visuals bug out
UPDATE creature SET `spawndist` = 0, MovementType=0 WHERE id = 21403;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 21403;

UPDATE creature_template SET UnitFlags=33555200,MovementType=0 WHERE entry IN(21210);
-- should be visible, has correct data otherwise
UPDATE creature_template SET ExtraFlags=0 WHERE entry IN(21211);
-- uses new serversides from sniff to give items
UPDATE dbscripts_on_gossip SET command=15,datalong=37244,datalong2=1 WHERE id IN(8356);
UPDATE dbscripts_on_gossip SET command=15,datalong=37245,datalong2=1 WHERE id IN(8371);

-- spells were swapped between ally and horde
-- sniffed alliance spell
UPDATE spell_target_position SET target_position_x=-2833.09,target_position_y=1949.89,target_position_z=201.256,target_orientation=4.99164 WHERE id IN(37389);
-- guesswork based on available data
UPDATE spell_target_position SET target_position_x=-2742.77,target_position_y=2727,target_position_z=124.81,target_orientation=5.29 WHERE id IN(37387);
-- sniffed coords
UPDATE areatrigger_teleport SET target_position_x=-3277.86,target_position_y=2831.64,target_position_z=123.02,target_orientation=1.5708 WHERE id IN(4561);

-- correct positions for the two doctors
UPDATE creature SET position_x=-2665.374,position_y=2058.359,position_z=116.3339,orientation=3.106686 WHERE id IN(21778);
UPDATE creature SET position_x=-2695.573,position_y=2633.819,position_z=74.68369,orientation=4.363323 WHERE id IN(21779);

-- rectify data
UPDATE gameobject_template SET size='1.5',faction=1732 WHERE entry IN(184947);
UPDATE gameobject_template SET size='1.5',faction=1735 WHERE entry IN(185233);

DELETE FROM creature_loot_template WHERE item IN(30713); -- is from chest
-- Shadow Council Felsworn 21753 & Gan'arg Technician 21960 prior held item 30713
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (21753,21960);

-- correct positions for the doctor chests
-- taken from WDB but data fixed
DELETE FROM gameobject WHERE id IN(185233,184947);
INSERT INTO gameobject VALUES
('29777', '184947', '530', '1', '-2662.018', '2059.365', '116.4217', '3.804818', '0', '0', '-0.9455185', '0.3255684', '180', '180', '100', '1'),
('64119', '185233', '530', '1', '-2694.207', '2630.753', '74.75829', '0.7853968', '0', '0', '0.3826828', '0.9238798', '25', '25', '100', '1');

-- key is not required for completion but it should only drop during quest
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item IN(30712);
UPDATE quest_template SET ReqItemId2=0,ReqItemCount2=0,ReqSourceCount1=1,ReqSourceId1=30712 WHERE entry IN(10606,10611);

DELETE FROM gossip_menu WHERE entry IN(8528);
INSERT INTO gossip_menu VALUES
(8528, 10666, 0, 0);
UPDATE creature_template SET GossipMenuId=8528 WHERE entry IN(21471);

-- correct data
UPDATE gameobject_template SET type=10 WHERE entry IN(185059,185060,185061);
UPDATE gameobject_template SET data10=38125 WHERE entry IN(185059);
UPDATE gameobject_template SET data10=38127 WHERE entry IN(185060);
UPDATE gameobject_template SET data10=38129 WHERE entry IN(185061);

-- moved to core
DELETE FROM dbscripts_on_spell WHERE id IN(38002,38120,38122,38127,38129,38125,38055,38020);

DELETE FROM spell_script_target WHERE entry IN(38003,38121,38123,38128,38130,38126);
INSERT INTO spell_script_target VALUES
('38003', '3', '52294', '0'),
('38121', '3', '52295', '0'),
('38123', '3', '52296', '0'),
('38126', '3', '52299', '0'),
('38128', '3', '52298', '0'),
('38130', '3', '52297', '0'); -- spawn X: -2654.26 Y: 2667.904 Z: 74.91562

REPLACE INTO creature_template_spells (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES
('21949', '38055', '38052', '38006', '37920');

UPDATE gameobject_template SET faction=114 WHERE entry IN(184979);

