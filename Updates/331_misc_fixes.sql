-- give proper unitflags and regenerate
UPDATE creature_template SET UnitFlags=33554688,RegenerateStats=3 WHERE entry IN(20899);

-- https://jira.vengeancewow.com/browse/TBC-135
-- Torek's Assault
-- quest should possibly be ported from SD2 to dbscripts (npc_torek)
DELETE FROM creature_linking WHERE guid IN (32378,32380,32379);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(32378, 32373, 8192+512+128+2+1),
(32379, 32373, 8192+512+128+2+1),
(32380, 32373, 8192+512+128+2+1);

-- Time Keeper (1)
UPDATE creature_template SET FactionHorde=1718, FactionAlliance=1718 WHERE entry=20746;
-- Infinite Dragonflight
UPDATE creature_template SET FactionHorde=1720, FactionAlliance=1720 WHERE entry IN (17835,17838,17839,17879,17880,17881,17892,21818,21104,21697,21698,20740,20741,20744,22169,22170);

-- Karazhan Side Entrance Door
UPDATE gameobject_template SET flags=2 WHERE entry=184275;

-- Give HFP Marauding Crust Burster proper aura - serverside
UPDATE creature_template_addon SET auras='34038' WHERE entry IN(16857);

-- Kathelas
-- I have no idea why, but those quests require you to complete 10296 and 10297 (Black Morass questline in Caverns of Time), which is obviously wrong.
-- The quests shouldnt require anything except being level 55.
UPDATE quest_template SET PrevQuestId=0 WHERE entry=6804 OR entry=6805;

-- Correct data for Doom Lord Kazzak model
UPDATE creature_model_info SET bounding_radius=9, combat_reach=15.75 WHERE modelid=17887;

-- http://www.wowhead.com/npc=18424/warden-treelos#comments
-- still needs additional scripts
-- Warden Treelos (18424)
UPDATE `creature` SET `position_x`=-1805.106,`position_y`=4737.365,`position_z`=27.4254, MovementType=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=18424;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(18424,1,-1805.106,4737.365,27.4254,0,0,0,0,0,0,0,0,0,2.670354,0,0),
(18424,2,-1818.022,4746.606,22.55483,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,3,-1827.051,4745.991,18.33447,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,4,-1832.248,4737.75,14.72791,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,5,-1832.389,4724.842,10.73965,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,6,-1839.772,4703.29,9.473892,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,7,-1849.141,4693.499,8.813354,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,8,-1855.641,4691.499,8.313354,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,9,-1865.415,4691.166,6.451074,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,10,-1829.198,4686.987,10.11347,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,11,-1807.198,4696.987,11.11347,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,12,-1796.106,4700.365,12.1054,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,13,-1808.288,4706.549,11.0146,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,14,-1823.968,4717.925,10.24522,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,15,-1829.468,4723.175,10.74522,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,16,-1832.248,4737.750,14.72791,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,17,-1827.051,4745.991,18.33447,0,0,0,0,0,0,0,0,0,0,0,0),
(18424,18,-1818.022,4746.606,22.55483,0,0,0,0,0,0,0,0,0,0,0,0);

-- Ethereal Thief - immune to MC
UPDATE creature_template SET MechanicImmuneMask=1 WHERE entry=16544;

UPDATE creature_template SET MovementType=0 WHERE entry IN(16514); -- only one spawn and already set in creature table

-- missing gossip during q.9700 from WDB
DELETE FROM gossip_menu_option WHERE menu_id=7465 AND id=0;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7465', '0', '0', 'Where should I begin my search for the portal?', '1', '1', '7501', '0', '0', '0', '0', '', '1190');
DELETE FROM conditions WHERE condition_entry=1190;
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
('1190', '9', '9700', '0');
DELETE FROM gossip_menu WHERE entry=7501;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
('7501', '9097', '0', '0');

-- force faction auras after completing quests to make the mobs neutral
DELETE FROM conditions WHERE condition_entry IN(1191,1192,1193,1194);
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
('1191', '8', '10182', '0'),
('1192', '8', '10305', '0'),
('1193', '8', '10306', '0'),
('1194', '8', '10307', '0');

DELETE FROM spell_area WHERE spell IN(36216,36217,36218,36219);
INSERT INTO spell_area(spell,area,condition_id,gender,autocast) VALUES
(36216,3523,1191,2,1),
(36217,3523,1192,2,1),
(36218,3523,1193,2,1),
(36219,3523,1194,2,1);

-- Remove Nefarian loot from Ragnaros
DELETE FROM creature_loot_template WHERE entry IN(11502) AND item=34107 AND mincountOrRef=-34107;

-- Illhoof's Demon Chains should be immune to everything except Bleed
UPDATE creature_template SET MechanicImmuneMask=1073725439 WHERE entry=17248;

-- Correct flags of some creatures in Lower City
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(21411);
UPDATE creature_template SET UnitFlags=512 WHERE entry IN(19185);
UPDATE creature_template SET UnitFlags=768 WHERE entry IN(21434);
UPDATE creature_template SET UnitFlags=33024 WHERE entry IN(19170);

-- https://jira.vengeancewow.com/browse/TBC-2593
-- Standards and Practices (9910)
-- Data from WotLK-DB

-- Add missing spell focuses
DELETE FROM gameobject WHERE guid IN (94137,94138);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(94137, 182263, 530, 1, -2474.44, 6111.16, 91.7629, 3.66388, 0, 0, 0.966095, -0.258186, -125, -125, 100, 1),
(94138, 182263, 530, 1, -2533.21, 6168.56, 59.9387, 3.75028, 0, 0, 0.954044, -0.299667, -125, -125, 100, 1);


