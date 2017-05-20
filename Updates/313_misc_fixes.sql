-- Add missing Moonwell from Classic DB
DELETE FROM gameobject WHERE guid=55541;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(55541, 177278, 1, 9630.89, 2520.89, 1331.58, 3.22902, 0, 0, 0.999045, -0.0436984, 900, 900, 100, 1);

-- Stranglethorn Vale spawntime adjustments
-- Mastery Bosses
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=728;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=729;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=730;
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=731;
-- Colonel Kurzen
UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=600 WHERE id=813;

-- Player can learn Heavy Mageweave Bandage from Triage quest giver at level 35 in Patch 2.4.3
UPDATE conditions SET value1=35 WHERE condition_entry=179;

-- Allow players to receive all required items to finish UBRS key quest
DELETE FROM item_loot_template WHERE entry=12339 AND item=12300;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(12339,12300,100,0,1,1,0,'Orb of Draconic Energy');

-- Missing Spell focuses for Teleport This quests
DELETE FROM `gameobject` WHERE `guid` IN (150124,150125,150126);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`) VALUES
(150124, 300118, 530, 1, 4697.5, 3298.68, 178.892, 2.02823, 0, 0, 0.849013, 0.528372, 120, 120, 0, 1),
(150125, 300118, 530, 1, 4734.71, 3193.67, 161.48, 0.386745, 0, 0, 0.19217, 0.981362, 120, 120, 0, 1),
(150126, 300118, 530, 1, 4673.28, 3126.67, 166.725, 5.42979, 0, 0, 0.413867, -0.910337, 120, 120, 0, 1);

-- Pendant of the Violet Eye should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(29601);
INSERT INTO spell_proc_event(entry,procEx) VALUES(29601,65536);

-- Darkmoon Card: Crusade should proc on any cast
DELETE FROM spell_proc_event WHERE entry IN(39440);
INSERT INTO spell_proc_event(entry,procEx) VALUES(39440,65536);

-- Scarab of Unending Life should proc on any cast
UPDATE spell_proc_event SET procEx=65536 WHERE entry IN(33953);

-- Min Level for Gnomeregan
UPDATE areatrigger_teleport SET required_level=15 WHERE id IN(324,523);
-- Shadowfang Keep
UPDATE areatrigger_teleport SET required_level=15 WHERE id IN(244);

-- Void Conduit - should not regenerate health
UPDATE creature_template SET RegenerateStats=2 WHERE entry IN(20899);

-- Cuergos Gold - should be repeatable
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN(2882);

-- https://jira.vengeancewow.com/browse/TBC-241
-- The Sacred Flame(Q:1197)
-- Cloven Hoof(I:5869) should only be accessible via Ancient Brazier(GO:20807)  
DELETE FROM `creature_loot_template` WHERE `entry`=4095 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4097 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4099 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=7404 AND `item`=5869;

-- https://jira.vengeancewow.com/browse/TBC-228
-- stop auto completion of Quest: 660 - Hints of a New Plague?
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE `entry`=660;

-- The Rethban Gauntlet
UPDATE quest_template SET StartScript=1699 WHERE entry=1699;
DELETE FROM dbscripts_on_quest_start WHERE id=1699;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1699, 0, 15, 8554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Drinking Barleybrew Scalder');

-- https://jira.vengeancewow.com/browse/TBC-2028
-- Fix "... Helmet of Second Sight", Spectrecles effect - should be active any time player equips item
DELETE FROM spell_area WHERE spell=39841;

-- https://jira.vengeancewow.com/browse/TBC-1902
-- Administer Antidote - quest should complete on dreadtusk kill not on spellcast of Administer Antidote
UPDATE quest_template SET ReqSpellCast1=0,ReqCreatureOrGOId1=16992 WHERE entry IN(10255);

-- https://jira.vengeancewow.com/browse/TBC-6
-- Gordunni Cobalt - remove hack
DELETE FROM dbscripts_on_go_template_use WHERE id IN(144050);

-- https://jira.vengeancewow.com/browse/TBC-10
-- Should only drop one item per kill
UPDATE creature_loot_template SET mincountOrRef=1,maxcount=1 WHERE entry IN(9683) AND item IN(11509);

-- https://jira.vengeancewow.com/browse/TBC-1691
-- Apprentice Angler - quest should reward 1g 12s on level 70
UPDATE quest_template SET RewMoneyMaxLevel=11200 WHERE entry IN(8194);

-- https://jira.vengeancewow.com/browse/TBC-2453
-- Fixed timings and script for short john mithril
UPDATE creature_movement_template SET script_id=0 WHERE entry=14508 AND pathId=0 AND point=16;
UPDATE creature_movement_template SET script_id=0 WHERE entry=14508 AND pathId=0 AND point=19;
UPDATE creature_movement_template SET waittime=4000, script_id=1450802 WHERE entry=14508 AND pathId=0 AND point=15;
UPDATE creature_movement_template SET script_id=1450803 WHERE entry=14508 AND pathId=0 AND point=22;

DELETE FROM dbscripts_on_creature_movement WHERE id IN(1450802,1450803);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1450802', '4', '0', '0', '0', '0', '0', '0', '0', '2000009078', '0', '0', '0', '0', '0', '0', '0', 'Short John Mithril - yell 2'),
('1450802', '4', '9', '12029', '10500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Short John Mithril - spawn chest'),
('1450802', '4', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Short John Mithril - Run On'),
('1450803', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Short John Mithril - Run Off');
-- Short John Mithril - make him active
UPDATE creature_template SET ExtraFlags=4096 WHERE entry IN(14508);

-- Hollow Vulture Bone for q.1176 'Load Lightning' should always drop
-- http://www.wowhead.com/quest=1176/load-lightening#comments:id=59611
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=5848;

-- Remove permanent death state and shorten respawn timer for Homing Robots
DELETE FROM creature_template_addon WHERE entry IN (7784,7806,7807);
DELETE FROM creature_addon WHERE guid IN (23229,93301,50381);
UPDATE creature SET spawntimesecsmin=150, spawntimesecsmax=150 WHERE id IN (7784,7806,7807);

-- https://jira.vengeancewow.com/browse/TBC-2460
-- Improve drop chance of objectives for q.3601 'Kim'jael Indeed!'
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-25 WHERE item IN (10717,10715,10722,10718);

-- Remove obviously wrong movement for all creatures in Black Morass
DELETE FROM creature_movement WHERE id IN (31772,37642,37647,37669,37671,37676,37677,37682,37691,37692,37693,37694,37695,37696,37697,37698,37699,37700,38347,39540);
UPDATE creature SET MovementType=1 WHERE guid IN (31772,37642,37647,37669,37671,37676,37677,37682,37691,37692,37693,37694,37695,37696,37697,37698,37699,37700,38347,39540);

-- Fiendish Portal
-- should have UNIT_FLAG_PASSIVE and UNIT_FLAG_OOC_NOT_ATTACKABLE according to sniff
UPDATE creature_template SET UnitFlags=UnitFlags|512|256 WHERE entry=17265;

-- Surf Crawler/Encrusted Surf Crawler can swim
UPDATE creature_template SET InhabitType=3 WHERE entry IN (3107,3108);

-- https://jira.vengeancewow.com/browse/TBC-1709
-- Darnassus Paladin Trainer - Rukua (35281) 
-- Not added until WotLK
DELETE FROM points_of_interest WHERE entry=439;
DELETE FROM gossip_menu_option WHERE menu_id=2343 AND id=3;

-- Captain's Key (9249)
-- https://jira.vengeancewow.com/browse/TBC-2461
-- https://jira.vengeancewow.com/browse/TBC-886
DELETE FROM item_loot_template WHERE item=9249 AND entry=16884; -- Sturdy Junkbox
UPDATE item_loot_template SET ChanceOrQuestChance=10 WHERE item=9249 AND entry=9276; -- Pirate's Footlocker

DELETE FROM creature_loot_template WHERE item=9249 AND entry=2354; -- Vicious Gray Bear
DELETE FROM creature_loot_template WHERE item=9249 AND entry=5420; -- Glasshide Gazer
DELETE FROM creature_loot_template WHERE item=9249 AND entry=5617; -- Wastewander Shadow Mage
DELETE FROM creature_loot_template WHERE item=9249 AND entry=9453; -- Aquementas
DELETE FROM creature_loot_template WHERE item=9249 AND entry=10414; -- Patchwork Horror

-- Broggok Poison Cloud in Blood Furnace
-- add UNIT_FLAG_NOT_SELECTABLE
UPDATE creature_template SET UnitFlags=UnitFlags|33554432 WHERE entry IN (17662,18602);

-- https://jira.vengeancewow.com/browse/TBC-34
UPDATE creature_template SET InhabitType=5 WHERE entry=21840;


-- Add missing Fire Elemental and Earth Elemental spells
DELETE FROM creature_template_addon WHERE entry IN(15438,15352);
INSERT INTO creature_template_addon(entry,auras) VALUES
(15352,'36492'),
(15438,'36492');

-- Fix factions for Snake trap snakes
UPDATE creature_template SET FactionAlliance=1629 WHERE entry IN(19921,19833);

-- Crystalline Key for q.10528 'Demonic Crystal Prisons'
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=30442 AND entry=21309;

-- Plagued Rat
UPDATE creature_template SET FactionHorde=16, FactionAlliance=16 WHERE entry=10441;
-- Plagued Insect
UPDATE creature_template SET FactionHorde=16, FactionAlliance=16 WHERE entry=10461;
-- Plagued Maggot
UPDATE creature_template SET FactionHorde=16, FactionAlliance=16 WHERE entry=10536;


-- Add WDB script version for more detail
DELETE FROM dbscripts_on_event WHERE id IN(12823);
INSERT INTO dbscripts_on_event VALUES
('12823', '6', '10', '20137', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1190.11', '2258.2', '46.6871', '1.36136', 'quest 10250'),
('12823', '7', '0', '0', '0', '0', '19864', '20', '4', '2000000229', '0', '0', '0', '0', '0', '0', '0', 'Say on spawn'),
('12823', '6', '10', '19864', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1195.07', '2268.22', '47.38', '5.68977', 'quest 10250'),
('12823', '3', '26', '0', '0', '0', '19862', '30', '3', '0', '0', '0', '0', '0', '0', '0', '0', 'start attack'),
('12823', '1', '0', '0', '0', '0', '19862', '30', '4', '2000000228', '0', '0', '0', '0', '0', '0', '0', 'Say on spawn'),
('12823', '0', '10', '19862', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1175.41', '2264.59', '53.1733', '3.15905', 'quest 10250'),
('12823', '6', '10', '20137', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1196.75', '2264.76', '47.9826', '6.19592', 'quest 10250'),
('12823', '6', '10', '20137', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1196.12', '2260.61', '48.0384', '0.43633', 'quest 10250'),
('12823', '6', '10', '20137', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1193.53', '2259.04', '47.484', '0.820305', 'quest 10250'),
('12823', '6', '10', '20137', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1190.24', '2269.2', '46.0973', '4.97419', 'quest 10250');

DELETE FROM db_script_string WHERE entry IN (2000000228,2000000229);
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
('2000000228', 'Urtrak kill you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
('2000000229', 'Vengeance is ours!  Attack my brothers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- Daily Dungeon bunny should ignore MMAP
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00004000 WHERE entry IN(24412);

-- Netherspite
DELETE FROM creature_movement_template WHERE entry=15689;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, model1, model2) VALUES
(15689, 0, 1, -11110.6, -1624.45, 279.362, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15689, 0, 2, -11128.7, -1582.11, 278.794, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15689, 0, 3, -11183.7, -1627.3, 278.239, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15689, 0, 4, -11134.3, -1684.33, 278.238, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15689, 0, 5, -11101.3, -1631.32, 278.794, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Al'ar
UPDATE creature SET MovementType=2, position_x=370.3282, position_y=-32.59526, position_z=44.08632 WHERE guid=12479;
DELETE FROM creature_movement WHERE id=12479;
UPDATE creature_template SET MovementType=2 WHERE entry=19514;
DELETE FROM creature_movement_template WHERE entry=19514;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(19514,0,1,370.3282,-32.59526,44.08632,100,0,0),
(19514,0,2,383.0095,-0.892289,43.99946,100,0,0),
(19514,0,3,370.5421,31.28668,43.80863,100,0,0),
(19514,0,4,332.5465,45.77088,43.6697,100,0,0),
(19514,0,5,294.3148,30.9292,43.8919,100,0,0),
(19514,0,6,282.0638,-0.653615,43.91968,100,0,0),
(19514,0,7,294.2132,-32.41557,43.61413,100,0,0),
(19514,0,8,332.3423,-47.54061,43.69747,100,0,0);

-- Raging Flames should be immune to taunt and banish
UPDATE creature_template SET ExtraFlags=ExtraFlags|256,MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN(20481,21538);


