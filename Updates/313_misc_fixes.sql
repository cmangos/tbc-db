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


