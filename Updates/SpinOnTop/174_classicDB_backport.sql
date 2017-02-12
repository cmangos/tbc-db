-- Classic Backport #7 Part1.

-- Classic [1319]
-- Homing Robots run way too fast.
UPDATE creature_template SET SpeedWalk = ( 5.0  /  2.5 ), SpeedRun = ( 5.0  /  7.0 ) WHERE Entry = 7807;

-- Classic [1320]
-- Prevent Horde Warlock to take twice the quest "In Search of Menara Voidrender"
-- Alliance quests already had their exclusive group set.
-- This closes #825
UPDATE quest_template SET ExclusiveGroup = 4737 WHERE entry IN (4736, 4739);

-- Classic [1321]
-- Prevent Shamans to take twice the quest "Call of Water"
UPDATE quest_template SET ExclusiveGroup = 1528 WHERE entry = 2986;

-- Classic [1322]
-- Fixed stats of NPC 5458 (Centipaad Worker)
-- UPDATE creature_template SET DamageMultiplier = 1, MinMeleeDmg = 81, MaxMeleeDmg = 110, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 200, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 5458;

-- Classic [1323]
-- Added start scripts for quest 5821 and 5943 in Desolace
-- Quest start scripts
DELETE FROM dbscripts_on_quest_start WHERE id IN (5943, 5821);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5821, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5821, 1, 25, 0, 0, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5821, 2, 25, 0, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5821, 3, 25, 0, 0, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5821, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5821, 4, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
(5821, 5, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5821, 6, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5821, 6, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5943, 0, 25, 0, 0, 11625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5943, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5943, 0, 25, 0, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5943, 0, 25, 0, 0, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5943, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11625, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5943, 0, 22, 113, 0x01 | 0x08 | 0x12 | 0x20, 11564, 28290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5943, 2, 32, 0, 0, 11625, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - unpause WP movement');
UPDATE quest_template SET StartScript = 5821 WHERE entry = 5821;
UPDATE quest_template SET StartScript = 5943 WHERE entry = 5943;
-- Prevent Rigger from being too far on some scripts
UPDATE dbscripts_on_creature_movement SET search_radius = 100 WHERE id IN (1162501, 11625209, 11625197) AND search_radius IN (40, 60);
-- Add reinit faction/speed script after "Gizelton Caravan" quest completion
UPDATE creature_movement_template SET script_id = 1162501 WHERE entry = 11625 AND point = 241;
-- Various NPC flag updates now SD2 is also in to ensure quests are only available when needed
DELETE FROM dbscripts_on_creature_movement WHERE id = 1162577 AND command = 29 AND delay = 300;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1162577, 300, 29, 2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver status');
DELETE FROM dbscripts_on_creature_movement WHERE id = 11625209 AND command = 29 AND delay = 300;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11625209, 300, 29, 2, 0x02, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver status');

-- Classic [1331]
-- Silithid Mound contain 1-3 eggs.
UPDATE gameobject_loot_template SET mincountOrRef = 1, maxcount = 3 WHERE entry = 2620 and item = 5058;

-- Classic [1337]
-- Fixed flags of GO 176631 in Stratholme it shouldn't be targetable
UPDATE gameobject_template SET flags = 4 WHERE entry = 176631;

-- Classic [1342]
-- Rewrote script for quest 1886 

UPDATE creature_template SET ScriptName = '' WHERE entry = 6497;

DELETE FROM dbscripts_on_gossip WHERE id = 125;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(125, 1, 22, 168, 0x01+0x04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor change faction'),
(125, 2, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor attack start');

DELETE FROM gossip_menu_option WHERE menu_id = 126;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id)  VALUES
(126, 0, 0, 'You''re Astor Hadren, right?', 1, 1, 0, 0, 125, 0, 0, '', 3170);

DELETE FROM gossip_menu WHERE entry = 125;
INSERT INTO gossip_menu VALUES (125, 624, 0, 0);

DELETE FROM conditions WHERE condition_entry IN (3168,3169,3170);
INSERT INTO conditions VALUES
(3168, 24, 7231, 1),
(3169, 9, 1886, 0),
(3170, -1, 3169, 3168);

-- Classic [1344]
-- Fixed event scripts used in Darkmaster Gandling encounter in Scholomance
-- The wrong NPC was used.
-- Sources: https://www.youtube.com/watch?v=SlPU8fF785k
-- https://www.youtube.com/watch?v=-cXIkndubFw
-- https://www.youtube.com/watch?v=lC3-w771En0
UPDATE dbscripts_on_event SET datalong = 11598 WHERE id IN (5618, 5619, 5620, 5621, 5622, 5623);

-- Classic [1346] 
-- Fixed teleport position of a few spells in Scholomance 
-- Players put "in detention" by Darkmaster Gandling should
-- appears in the position of one of the six mini-bosses
-- and not in the middle of the room. That prevents them
-- from aggroing the adds before load
DELETE FROM spell_target_position WHERE id IN (17863, 17939, 17943, 17944, 17946, 17948);
INSERT INTO spell_target_position VALUES 
(17943, 289, 86.6634, -1.96039, 85.3117, 0.017453),
(17948, 289, 103.305, -1.67752, 75.2183, 6.17846),
(17939, 289, 182.246, -95.4371, 85.3117, 1.5694),
(17946, 289, 178.724, -91.0232, 70.8568, 1.64061),
(17863, 289, 274.877, 1.33366, 85.3117, 3.22886),
(17944, 289, 265.956, 0.903429, 75.3334, 3.07178);

-- Classic [1347]
-- Mor'ladim was incredibly overbuffed, about 6 or 7 times stronger than he is supposed to be.
-- UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 2, ArmorMultiplier = 1, MinLevelHealth = 3660, MaxLevelHealth = 3660, MinMeleeDmg = 48.6, MaxMeleeDmg = 64.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1373, MeleeAttackPower = 118, RangedAttackPower = 11, MeleeBaseAttackTime = 2000 WHERE Entry = 522;

-- Classic [1351]
-- Fixed Hunter pets base attack time
-- Alright, so here: http://web.archive.org/web/20061112230516/http://tkasomething.com/attackspeeds.php
-- are some attack speeds. Going to check each and every one so here goes;
-- Attack Speed: 1.00:
-- Frenzied Bloodseeker Bat
UPDATE creature_template SET MeleeBaseAttackTime = 1000 WHERE Entry = 14965;
-- Attack Speed: 1.20:
-- The Rake
UPDATE creature_template SET MeleeBaseAttackTime = 1200 WHERE Entry = 5807;
-- Spriteflayer
UPDATE creature_template SET MeleeBaseAttackTime = 1200 WHERE Entry = 8299;

-- Attack Speed 1.30:
-- Mist Howler
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 10644;
-- Enraged Stanley
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 2275;
-- Ravage
UPDATE creature_template SET MeleeBaseAttackTime = 1300 WHERE Entry = 8300;
-- Attack Speed 1.40:
-- King Bangalash
UPDATE creature_template SET MeleeBaseAttackTime = 1400 WHERE Entry = 731;
-- Spawn of Mar'li
UPDATE creature_template SET MeleeBaseAttackTime = 1400 WHERE Entry = 15041;
-- Attack Speed 1.50:
-- Bhag'thera
UPDATE creature_template SET MeleeBaseAttackTime = 1500 WHERE Entry = 728;
-- Bloodaxe Worg
UPDATE creature_template SET MeleeBaseAttackTime = 1500 WHERE Entry = 9696;
-- Attack Speed 1.60:
-- Death Flayer
UPDATE creature_template SET MeleeBaseAttackTime = 1600 WHERE Entry = 5823;
-- Zulian Prowler
UPDATE creature_template SET MeleeBaseAttackTime = 1600 WHERE Entry = 15101;
-- Attack Speed 1.70:
-- Vilebranch Raiding Wolf
UPDATE creature_template SET MeleeBaseAttackTime = 1700 WHERE Entry = 2681;
-- Attack Speed 2.40:
-- Ursius
UPDATE creature_template SET MeleeBaseAttackTime = 2400 WHERE Entry = 10806;

-- Classic [1352]
-- Fixed spawn/despawn of Strongbox GOs 
-- Made Buccaneer's Strongbox despawn after being picked
UPDATE gameobject SET spawntimesecs = 5 WHERE id = 123330 OR id = 123331 OR id = 123332 OR id = 123333 OR id = 178246;

-- Classic [1352]
-- Cyclonian 
-- Some questionable data about lil Cyclonian got changed.
-- UPDATE creature_template SET SpeedWalk = 1, DamageMultiplier = 2, ArmorMultiplier = 1, MinMeleeDmg = 56.0, MaxMeleeDmg = 74.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1964, MeleeAttackPower = 136, RangedAttackPower = 14, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, DamageSchool = 3, MinLootGold = 0, MaxLootGold = 0, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 6239;

-- Classic [1353]
-- Fixed drop table for GO 1701 (Fel Cone) in Teldrassil.  They should only drop the quest item.
DELETE FROM gameobject_loot_template WHERE entry = 1701 AND ChanceOrQuestChance >= 0;

-- Classic [1354] 
-- Fixed some spawn points of NPCs 11598 in Scholomance
DELETE FROM dbscripts_on_event WHERE id = 5622;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 181.825, -42.5812, 75.4812, 4.66003, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 177.746, -42.7475, 75.4812, 4.88692, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 185.616, -42.912, 75.4812, 4.45059, 'Scholomance - Summons in Barov Vault');

-- Classic [1356]
-- Added immunities for a few creatures
UPDATE creature_template SET SchoolImmuneMask = 124 WHERE entry = 10485; -- Risen Aberration immune to magic except holy
UPDATE creature_template SET SchoolImmuneMask = 1 WHERE entry = 11284; -- Dark Shade immune to physical damage
UPDATE creature_template SET SchoolImmuneMask = 4 WHERE entry = 2760; -- Burning Exile immune to fire damage
UPDATE creature_template SET SchoolImmuneMask = 16 WHERE entry = 2761; -- Cresting Exile immune to frost damage

-- Classic [1359]
-- Fixed stats of NPC 14564 in Eastern Plaguelands
-- They were doing twice their expected damage output
-- UPDATE creature_template SET DamageMultiplier = 1, MinMeleeDmg = 102, MaxMeleeDmg = 138, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14564;

-- Classic [1362]
-- Fixed respawn time of GO 176248 in Stratholme
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 WHERE id = 176248;

-- Classic [1363]
-- Added missing GO 176295 in Stratholme
-- Added missing GO 176295 (Archive Fire) in Stratholme
-- Made it spawn on event (GO use)
-- Added missing GO 176295 (Archive Fire) in Stratholme
-- Made it spawn on event (GO use)
DELETE FROM gameobject WHERE guid = 85477;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(85477, 176295, 329, 1, 3458.875, -3106.348, 137.889, 3.14159, 0, 0, 1, 0, -30, 100, 1);
DELETE FROM dbscripts_on_event WHERE id = 5258;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5258, 1, 9, 85477, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');

-- Classic [1365] 
-- Fixed drop of item 22890 (Tome of Frost Ward rank V)
-- It should drop from world bosses, not basic NPCs in dungeons lvl 55+
DELETE FROM creature_loot_template WHERE item = 22890;
INSERT INTO creature_loot_template VALUES
(6109, 22890, 5, 0, 1, 1, 0, ''),
(14887, 22890, 5, 0, 1, 1, 0, ''),
(14888, 22890, 5, 0, 1, 1, 0, ''),
(14889, 22890, 5, 0, 1, 1, 0, ''),
(14890, 22890, 5, 0, 1, 1, 0, '');

-- Classic [1366]
-- Elwynn Forest - creature_movement
UPDATE creature SET position_x = -9135.247, position_y = -590.7052, position_z = 57.63183, orientation = 4.921828, spawndist = 0, MovementType = 2 WHERE guid = 80977;
DELETE FROM creature_movement WHERE id = 80977;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80977, 1, -9136.168, -596.7232, 57.54046, 0, 0, 100, 0, 0),
(80977, 2, -9145.280, -596.9583, 58.28343, 0, 0, 100, 0, 0),
(80977, 3, -9151.679, -592.2198, 58.31500, 0, 0, 100, 0, 0),
(80977, 4, -9160.135, -594.1770, 59.13434, 0, 0, 100, 0, 0),
(80977, 5, -9168.364, -597.8492, 62.27327, 0, 0, 100, 0, 0),
(80977, 6, -9176.890, -602.5500, 63.21548, 0, 0, 100, 0, 0),
(80977, 7, -9182.027, -604.5135, 63.24406, 30000, 0, 100, 0, 0),
(80977, 8, -9166.246, -598.0614, 61.80346, 0, 0, 100, 0, 0),
(80977, 9, -9158.225, -593.8230, 58.95638, 0, 0, 100, 0, 0),
(80977, 10, -9149.229, -593.6427, 58.08143, 0, 0, 100, 0, 0),
(80977, 11, -9142.528, -597.2371, 57.96902, 0, 0, 100, 0, 0),
(80977, 12, -9133.249, -593.9049, 57.54119, 0, 0, 100, 0, 0),
(80977, 13, -9134.566, -589.2764, 57.57470, 30000, 0, 100, 0, 0);
UPDATE creature SET position_x = -9079.772, position_y = -586.9499, position_z = 62.24374, orientation = 2.111848, spawndist = 0, MovementType = 2 WHERE guid = 80977;
DELETE FROM creature_movement WHERE id = 80978;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(80978, 1, -9088.729, -573.6836, 62.58135, 0, 0, 100, 0, 0),
(80978, 2, -9093.982, -563.0015, 61.92558, 0, 0, 100, 0, 0),
(80978, 3, -9107.356, -564.8509, 60.70168, 0, 0, 100, 0, 0),
(80978, 4, -9116.427, -568.4710, 59.15052, 30000, 0, 100, 0, 0),
(80978, 5, -9103.889, -564.5217, 60.98942, 0, 0, 100, 0, 0),
(80978, 6, -9092.170, -566.2786, 61.83733, 0, 0, 100, 0, 0),
(80978, 7, -9083.018, -578.5235, 62.52438, 0, 0, 100, 0, 0),
(80978, 8, -9079.747, -586.9783, 62.14604, 30000, 0, 100, 0, 0);

-- Classic [1367]
-- Dire Maul - Dusty Tome
UPDATE gameobject_template SET size = 1.5 WHERE entry IN (179547, 179548);
DELETE FROM gameobject WHERE id IN (179547, 179548);
DELETE FROM gameobject WHERE guid BETWEEN 85478 AND 85486;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(85478, 179548, 429, 836.3329, 493.3791, 37.3182, 0.2967052, 0, 0, 0.147809,  0.9890159, 7200, 0, 1),
(85479, 179548, 429, 512.7841, 588.0363, -25.40232, 3.281239, 0, 0, -0.9975634, 0.06976615, 7200, 0, 1),
(85480, 179548, 429, 288.2057, 341.1553, 2.852959, 5.497789, 0, 0, -0.3826828, 0.9238798, 7200, 0, 1),
(85481, 179548, 429, -144.4642, 742.0172, -24.58036, 3.857183, 0, 0, -0.9366713, 0.3502098, 7200, 0, 1),
(85482, 179548, 429, -86.39826, 569.308, 28.60788, 1.780234, 0, 0, 0.7771454,  0.6293211, 7200, 0, 1),
(85483, 179548, 429, 285.1641, -431.0629, -119.9618, 4.694937, 0, 0, -0.7132502, 0.7009096, 7200, 0, 1),
(85484, 179548, 429, -10.1152, -353.7714, -54.04335, 3.787367, 0, 0, -0.9483232, 0.3173059, 7200, 0, 1),
(85485, 179548, 429, 118.0176, -261.4722, -4.14639, 0.087266, 0, 0, 0.04361916, 0.9990482, 7200, 0, 1),
(85486, 179548, 429, 4.497807, -437.5673, 16.41252, 4.136433, 0, 0, -0.8788166, 0.4771597, 7200, 0, 1);
DELETE FROM pool_gameobject_template WHERE id = 179548 OR pool_entry = 25560;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(179548, 25560, 0, 'DM - Dusty Tome (179548)');
DELETE FROM pool_template WHERE entry = 25560;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25560, 1, 'DM - Dusty Tome'); 

-- Classic [1370]
-- Fixed drop chance of item 3693
UPDATE creature_loot_template SET ChanceOrQuestChance = -8 WHERE item = 3693 AND ChanceOrQuestChance = -100;

-- Classic [1376]
-- Diremaul - Tsu'zee
UPDATE creature_template SET EquipmentTemplateId = 1574 WHERE Entry = 11467;
DELETE FROM creature_equip_template WHERE entry = 1574;
INSERT INTO creature_equip_template VALUES
(1574,12298,12298,0);
DELETE FROM item_template WHERE entry = 12298;
INSERT INTO item_template (entry, class, subclass, name, displayid, buycount, inventorytype, allowableclass, allowablerace, itemlevel, requiredlevel, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, spellcooldown_3, spellcategorycooldown_3, spellcooldown_4, spellcategorycooldown_4, material, sheath) VALUES
(12298, 2, 15, 'Monster - Dagger, Dark Pronged', 22367, 1, 13, -1, -1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 3);
DELETE FROM pool_template WHERE entry = 25561;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25561, 1, 'DM - Tsu\zee / Eldreth Apparition');
DELETE FROM pool_creature WHERE pool_entry = 25561;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(136207, 25561, 0, 'DM - Tsu\zee / Eldreth Apparition'),
(136205, 25561, 25, 'DM - Tsu\zee / Eldreth Apparition');

-- Classic [1379]
-- Fixed event for Cannon Master Willey in Stratholme
-- Summoned Crimson Rifleman at the right place
DELETE FROM spell_script_target WHERE entry = 17279;
INSERT INTO spell_script_target VALUES
(17279, 0, 176211, 0);
-- Updated Cannonball trap: it was damaging players getting close to it
UPDATE gameobject_template SET data2 = 0 WHERE entry = 176211;
-- Added scripts for activating the Scarlet Cannons
DELETE FROM dbscripts_on_go_template_use WHERE id IN (176216, 176217);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(176216, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap'),
(176217, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap');

-- Classic [1380]
-- Fixed fight with NPC 16387 (Atiesh) in Stratholme
-- Fixed stats
-- Added equipment
-- Added or fixed GO and items involved in the encounter
-- Sources:
-- https://www.youtube.com/watch?v=ZNHCkd5AvKI
-- https://www.youtube.com/watch?v=D5wP695sdao
-- http://wowwiki.wikia.com/wiki/Atiesh
-- http://www.wowhead.com/npc=16387/atiesh#comments
-- Fixed stats of creature 16387 (Atiesh)

-- UPDATE creature_template SET SpeedWalk = 1, DamageMultiplier = 40, MinMeleeDmg = 110, MaxMeleeDmg = 146, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 268, RangedAttackPower = 32, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, EquipmentTemplateId = 2515 WHERE Entry = 16387;

-- Added equipment template for Atiesh
DELETE FROM creature_equip_template WHERE entry = 1492;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(1492, 22738, 22738, 0);
-- Added missing GO 181207 (Runed Demonic Blade)
DELETE FROM gameobject_template WHERE entry = 181207;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(181207, 3, 4175,'Runed Demonic Blade','','',0,0,1.5,1085,181207,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Added loot for GO 181207
DELETE FROM gameobject_loot_template WHERE entry = 181207;
INSERT INTO gameobject_loot_template VALUES
(181207, 22736, 100, 0, 1, 1, 0, '');

-- Classic [1381]
-- Added missing spawns for NPCs 10516 & 10387 in Stratholme 
-- Spawned NPC 10516 (The Unforgiven) and its adds 10387 (Vengeful Phantom) in Stratholme
DELETE FROM creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_addon WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_movement WHERE id BETWEEN 128977 AND 128981;
DELETE FROM game_event_creature WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_battleground WHERE guid BETWEEN 128977 AND 128981;
DELETE FROM creature_linking WHERE guid BETWEEN 128977 AND 128981 OR master_guid BETWEEN 128977 AND 128981;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128977, 10516, 329, 0, 0, 3718.479, -3426.675, 131.759, 3.176403, 7200, 0, 0, 11136, 0, 0, 0),
(128978, 10387, 329, 0, 0, 3716.03, -3423.4, 131.745, 4.3506, 3600, 0, 0, 5960, 0, 0, 0),
(128979, 10387, 329, 0, 0, 3706.85, -3425.96, 131.697, 5.69441, 3600, 0, 0, 5960, 0, 0, 0),
(128980, 10387, 329, 0, 0, 3718.34, -3430.62, 131.484, 2.6722, 3600, 0, 0, 5960, 0, 0, 0),
(128981, 10387, 329, 0, 0, 3709.38, -3434.97, 130.49, 0.969456, 3600, 0, 0, 5960, 0, 0, 0);
-- link
DELETE FROM creature_linking_template WHERE entry = 10387;
INSERT INTO creature_linking_template VALUES
(10387, 329, 10516, 3, 0);

-- Classic [1383]
-- Fixed items 23247 & 23379 for MidSummer Festival 
-- Fixed charges and duration of item 23379 (Cinder Bracers) from MidSummer Festival
-- Made items 23379 and 23247 (Burning Blossom) used realtime duration
UPDATE item_template SET spellcharges_1 = -3, Duration = 14*24*60*60 WHERE entry = 23379;
UPDATE item_template SET ExtraFlags = 2 WHERE entry IN (23247, 23379);

-- Classic [1387]
-- Fixed stats of NPCs 1836 & 1842 in Western Plaguelands
-- UPDATE creature_template SET DamageMultiplier = 2, MinMeleeDmg = 96, MaxMeleeDmg = 132, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 1836;
-- UPDATE creature_template SET DamageMultiplier = 5, MinMeleeDmg = 102, MaxMeleeDmg = 135, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 27, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 1842; 

-- Classic [1390]
-- Death Howl - Pooling
DELETE FROM pool_creature_template WHERE id = 14339;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(14339, 25562, 0, 'Felwood - Death Howl');
DELETE FROM pool_template WHERE entry = 25562;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25562, 1, 'Felwood - Death Howl');

-- Classic [1397] 
-- Fixed drop chance of item 18704 
-- Fixed drop chance of item 18704 (Mature Blue Dragon Sinew)
-- It was very low on elite mob and guaranteed on Azuregos
UPDATE creature_loot_template SET ChanceOrQuestChance = 0.1 WHERE item = 18704;                     -- Elite blue dragons
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE item = 18704 AND entry = 6109;    -- Azuregos

-- Classic [1398]
-- Updated drop chance for item 14493 
-- Updated drop chance for item 14493 (Pattern: Robe of Winter Night) that was insanely high
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 7437 AND item = 14493;

-- Classic [1401]
-- Made quests 7907, 7929, 7927 & 7928 repeatable 
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE entry IN (7907,7929,7927,7928);

-- Classic Backport #7 Part2.

-- Classic [1408]
-- Westbrook Garrison
UPDATE creature SET position_x = -9633.68, position_y = 674.436, position_z = 52.6589, orientation = 4.210410, spawndist = 0, MovementType = 2 WHERE guid = 80455;
UPDATE creature SET position_x = -9596.64, position_y = 682.750, position_z = 62.7614, orientation = 2.731980, spawndist = 0, MovementType = 2 WHERE guid = 80462;
UPDATE creature SET position_x = -9626.49, position_y = 647.371, position_z = 38.7354, orientation = 1.098100, spawndist = 0, MovementType = 2 WHERE guid = 80463;

DELETE FROM creature_movement WHERE id IN (80455, 80462, 80463);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #80455
(80455, 1, -9637.91, 665.659, 52.5756, 0, 0, 100, 0, 0),
(80455, 2, -9638.89, 660.945, 52.5756, 0, 0, 100, 0, 0),
(80455, 3, -9638.58, 657.653, 52.5756, 0, 0, 100, 0, 0),
(80455, 4, -9631.17, 653.547, 49.2809, 0, 0, 100, 0, 0),
(80455, 5, -9625.83, 652.315, 47.4740, 0, 0, 100, 0, 0),
(80455, 6, -9623.05, 652.240, 47.4740, 0, 0, 100, 0, 0),
(80455, 7, -9621.25, 655.230, 47.4739, 0, 0, 100, 0, 0),
(80455, 8, -9619.21, 661.518, 47.4739, 0, 0, 100, 0, 0),
(80455, 9, -9617.52, 665.671, 47.4739, 0, 0, 100, 0, 0),
(80455, 10, -9615.05, 670.031, 47.4739, 0, 0, 100, 0, 0),
(80455, 11, -9612.66, 676.053, 47.4739, 0, 0, 100, 0, 0),
(80455, 12, -9609.55, 682.402, 47.4739, 0, 0, 100, 0, 0),
(80455, 13, -9612.36, 686.039, 47.4739, 0, 0, 100, 0, 0),
(80455, 14, -9616.94, 688.317, 49.7224, 0, 0, 100, 0, 0),
(80455, 15, -9622.06, 690.267, 52.5756, 0, 0, 100, 0, 0),
(80455, 16, -9625.92, 689.820, 52.5756, 0, 0, 100, 0, 0),
(80455, 17, -9629.11, 686.217, 52.5756, 0, 0, 100, 0, 0),
(80455, 18, -9631.97, 678.917, 52.5756, 0, 0, 100, 0, 0),
(80455, 19, -9633.85, 674.349, 52.5756, 0, 0, 100, 0, 0),
(80455, 20, -9635.84, 670.504, 52.5756, 0, 0, 100, 0, 0),
-- #80462
(80462, 1, -9606.85, 687.184, 62.7326, 0, 0, 100, 0, 0),
(80462, 2, -9614.74, 690.130, 62.7329, 0, 0, 100, 0, 0),
(80462, 3, -9621.15, 693.240, 62.7333, 0, 0, 100, 0, 0),
(80462, 4, -9631.31, 697.477, 62.6781, 0, 0, 100, 0, 0),
(80462, 5, -9621.15, 693.240, 62.7333, 0, 0, 100, 0, 0),
(80462, 6, -9614.74, 690.130, 62.7329, 0, 0, 100, 0, 0),
(80462, 7, -9606.85, 687.184, 62.7326, 0, 0, 100, 0, 0),
(80462, 8, -9596.61, 682.740, 62.6781, 0, 0, 100, 0, 0),
-- #80463
(80463, 1, -9622.00, 658.158, 38.6522, 0, 0, 100, 0, 0),
(80463, 2, -9617.35, 668.332, 38.6522, 0, 0, 100, 0, 0),
(80463, 3, -9611.13, 683.525, 38.6522, 0, 0, 100, 0, 0),
(80463, 4, -9611.56, 688.256, 38.6521, 0, 0, 100, 0, 0),
(80463, 5, -9612.17, 690.642, 38.6521, 0, 0, 100, 0, 0),
(80463, 6, -9613.80, 691.542, 38.6521, 0, 0, 100, 0, 0),
(80463, 7, -9616.69, 691.816, 38.6522, 0, 0, 100, 0, 0),
(80463, 8, -9619.49, 691.184, 38.6522, 0, 0, 100, 0, 0),
(80463, 9, -9621.87, 687.622, 38.6522, 0, 0, 100, 0, 0),
(80463, 10, -9628.44, 674.227, 37.1519, 0, 0, 100, 0, 0),
(80463, 11, -9631.93, 666.433, 37.8162, 0, 0, 100, 0, 0),
(80463, 12, -9635.86, 656.571, 38.6522, 0, 0, 100, 0, 0),
(80463, 13, -9635.83, 652.650, 38.6521, 0, 0, 100, 0, 0),
(80463, 14, -9634.25, 650.343, 38.6521, 0, 0, 100, 0, 0),
(80463, 15, -9631.21, 648.661, 38.6521, 0, 0, 100, 0, 0),
(80463, 16, -9626.50, 647.603, 38.6521, 0, 0, 100, 0, 0),
(80463, 17, -9624.61, 651.048, 38.6522, 0, 0, 100, 0, 0);

-- Classic [1415]
-- fix swapped cloth donation quests
-- quest id 7802 and 7807 changed
UPDATE quest_template SET RewRepFaction1 = 47 WHERE entry = 7802;
UPDATE creature_involvedrelation SET quest = 7802 WHERE id = 14723 AND quest = 7807;
UPDATE creature_questrelation SET quest = 7802 WHERE id = 14723 AND quest = 7807;
UPDATE quest_template SET RewRepFaction1 = 54 WHERE entry = 7807;
UPDATE creature_involvedrelation SET quest = 7807 WHERE id = 14724 AND quest = 7802;
UPDATE creature_questrelation SET quest = 7807 WHERE id = 14724 AND quest = 7802;
-- quest id 7803 and 7808 changed
UPDATE quest_template SET RewRepFaction1 = 47 WHERE entry = 7803;
UPDATE creature_involvedrelation SET quest= 7803 WHERE id = 14723 AND quest = 7808;
UPDATE creature_questrelation SET quest = 7803 WHERE id = 14723 AND quest = 7808;
UPDATE quest_template SET RewRepFaction1 = 54 WHERE entry = 7808;
UPDATE creature_involvedrelation SET quest = 7808 WHERE id = 14724 AND quest = 7803;
UPDATE creature_questrelation SET quest = 7808 WHERE id = 14724 AND quest = 7803;
-- quest id 7824 and 7836 changed
UPDATE quest_template SET RewRepFaction1 = 76 WHERE entry = 7824;
UPDATE creature_involvedrelation SET quest = 7824 WHERE id = 14726 AND quest = 7836;
UPDATE creature_questrelation SET quest = 7824 WHERE id = 14726 AND quest = 7836;
UPDATE quest_template SET RewRepFaction1 = 530 WHERE entry = 7836;
UPDATE creature_involvedrelation SET quest = 7836 WHERE id = 14727 AND quest = 7824;
UPDATE creature_questrelation SET quest = 7836 WHERE id = 14727 AND quest = 7824;
-- quest id 7832 and 7837 changed
UPDATE quest_template SET RewRepFaction1 = 76 WHERE entry = 7832;
UPDATE creature_involvedrelation SET quest = 7832 WHERE id = 14726 AND quest = 7837;
UPDATE creature_questrelation SET quest = 7832 WHERE id = 14726 AND quest = 7837;
UPDATE quest_template SET RewRepFaction1 = 530 WHERE entry = 7837;
UPDATE creature_involvedrelation SET quest = 7837 WHERE id = 14727 AND quest = 7832;
UPDATE creature_questrelation SET quest = 7837 WHERE id = 14727 AND quest = 7832;
-- add missing description quests
UPDATE quest_template SET 
	RequestItemsText = 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Stormwind for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7791;
UPDATE quest_template SET 
	OfferRewardText = 'Our thanks for your donation, $n.', 
	RequestItemsText = 'We are currently gathering wool. A donation of sixty pieces of wool cloth will net you full recognition by our people for your generous actions.$B$BIf you currently have sixty pieces, you may donate them now.' 
WHERE entry = 7792;
UPDATE quest_template SET 
	RequestItemsText = 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7793;
UPDATE quest_template SET 
	RequestItemsText = 'Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by Stormwind, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7794;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7795;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of Stormwind, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Stormwind.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7796;
UPDATE quest_template SET 
	OfferRewardText = 'Our thanks for your donation, $n.', 
	RequestItemsText = 'We are currently gathering silk. A donation of sixty pieces of silk cloth will net you full recognition by our people for your generous actions$B$BIf you currently have sixty pieces, you may donate them now.' 
WHERE entry = 7798;
UPDATE quest_template SET 
	RequestItemsText = 'Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed Darnassus, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7799;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7800;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of Darnassus, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Darnassus.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7801;
UPDATE quest_template SET 
	RequestItemsText = 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Ironforge for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7802;
UPDATE quest_template SET 
	RequestItemsText = 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7803;
UPDATE quest_template SET 
	RequestItemsText='Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by Ironforge, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7804;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7805;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of Ironforge, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Ironforge.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7806;
UPDATE quest_template SET 
	RequestItemsText='We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Gnomeregan Exiles for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7807;
UPDATE quest_template SET 
	RequestItemsText = 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7808;
UPDATE quest_template SET 
	RequestItemsText = 'Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by the Gnomeregan Exiles, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7809;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7811;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of the gnomes, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Gnomeregan Exiles.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7812;
UPDATE quest_template SET 
	RequestItemsText = 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by the Undercity for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7813;
UPDATE quest_template SET 
	RequestItemsText = 'As with most other fabrics, our stocks of silk are at an all-time low. Our stores are such that we\'d only need sixty pieces of silk from you total; we should be able to reach our goal with the support of others.$B$BA benevolent gift such as silk, might I add, would certainly increase your local standing in the community! If you have the sixty pieces of silk cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7814;
UPDATE quest_template SET 
	RequestItemsText = 'Mageweave is running low, and we could use your help to replenish our stocks! By counting on the community as a whole, we would only need a donation of 60 pieces of mageweave cloth from you to enable us to reach our goal. Such generosity would not go unnoticed by the Undercity, I assure you!$B$BIf you have the sixty pieces of mageweave cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7817;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7818;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of the Forsaken, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Undercity.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7819;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7823;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7824;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of Thunder Bluff, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Thunder Bluff.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7825;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of Orgrimmar, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of Orgrimmar.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7832;
UPDATE quest_template SET 
	RequestItemsText = 'We are currently accepting donations for wool cloth. A donation of sixty pieces of wool cloth will net you full recognition by Darkspear Trolls for your generous actions. Our stores are such on wool that we would only need sixty pieces from you total; we should be able to acquire enough from others in the realm to support our drive.$B$BIf you have the sixty pieces of wool cloth on you and are ready to donate them, I\'m able to take them from you now.' 
WHERE entry = 7833;
UPDATE quest_template SET 
	RequestItemsText = '$n, you\'ve been a tremendous contributor to our cloth drive. As we work hard to replenish our reserves, one form of cloth remains critically low - runecloth. We are in absolutely dire need of runecloth, and we hope that you will be able to help us as you have in the past.$B$BIf you are willing, please bring me what runecloth you can spare. We\'ll initially accept a single donation of sixty, and then we\'ll go from there.' 
WHERE entry = 7836;
UPDATE quest_template SET 
	OfferRewardText = '$N - without heroes like you working on behalf of the trolls, we\'d surely suffer. Thank you for your continued efforts!', 
	RequestItemsText = 'Greetings once again, $N! Our need for runecloth is constant, and we can always use additional resources if you are willing to part with them. For an additional stack of twenty runecloth, I will make sure that you are recognized for your continuing efforts on behalf of the Darkspear Trolls.$B$BWhenever you are ready to hand in the stack of runecloth, I\'ll accept it.' 
WHERE entry = 7837;

-- Classic [1416] 
-- sequence cloth donations
-- Ironforge
UPDATE quest_template SET NextQuestId = 7805 WHERE entry = 7804;
UPDATE quest_template SET NextQuestId = 7805 WHERE entry = 7802;
UPDATE quest_template SET NextQuestId = 7805 WHERE entry = 7803;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7805;
-- Gnomeregan
UPDATE quest_template SET NextQuestId = 7811 WHERE entry = 7807;
UPDATE quest_template SET NextQuestId = 7811 WHERE entry = 7808;
UPDATE quest_template SET NextQuestId = 7811 WHERE entry = 7809;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7811;
-- Stormwind
UPDATE quest_template SET NextQuestId = 7795 WHERE entry = 7791;
UPDATE quest_template SET NextQuestId = 7795 WHERE entry = 7793;
UPDATE quest_template SET NextQuestId = 7795 WHERE entry = 7794;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7795;
-- Darnassus
UPDATE quest_template SET NextQuestId = 7800 WHERE entry = 7792;
UPDATE quest_template SET NextQuestId = 7800 WHERE entry = 7798;
UPDATE quest_template SET NextQuestId = 7800 WHERE entry = 7799;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7800;
-- Undercity
UPDATE quest_template SET NextQuestId = 7818 WHERE entry = 7813;
UPDATE quest_template SET NextQuestId = 7818 WHERE entry = 7814;
UPDATE quest_template SET NextQuestId = 7818 WHERE entry = 7817;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7818;
-- Thunder Bluff
UPDATE quest_template SET NextQuestId = 7823 WHERE entry = 7820;
UPDATE quest_template SET NextQuestId = 7823 WHERE entry = 7821;
UPDATE quest_template SET NextQuestId = 7823 WHERE entry = 7822;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7823;
-- Orgrimmar
UPDATE quest_template SET NextQuestId = 7824 WHERE entry = 7826;
UPDATE quest_template SET NextQuestId = 7824 WHERE entry = 7827;
UPDATE quest_template SET NextQuestId = 7824 WHERE entry = 7831;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7824;
-- Darkspear Trolls
UPDATE quest_template SET NextQuestId = 7836 WHERE entry = 7833;
UPDATE quest_template SET NextQuestId = 7836 WHERE entry = 7834;
UPDATE quest_template SET NextQuestId = 7836 WHERE entry = 7835;
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 7836;

-- Classic [1418]
-- Drogoth the Roamer... is now part of the Dustwallow Marsh. Yay!

-- UPDATE creature_template SET MinMeleeDmg = 51.3, MaxMeleeDmg = 68.1, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 1593, MeleeAttackPower = 124, RangedAttackPower = 12, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14231;

DELETE FROM creature WHERE guid = 128982;
DELETE FROM creature_addon WHERE guid = 128982;
DELETE FROM creature_movement WHERE id = 128982;
DELETE FROM game_event_creature WHERE guid = 128982;
DELETE FROM game_event_creature_data WHERE guid = 128982;
DELETE FROM creature_battleground WHERE guid = 128982;
DELETE FROM creature_linking WHERE guid = 128982 OR master_guid = 128982;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128982, 14231, 1, 0, 0, -2695.606, -3048.912, 38.946175, 4.853457, 28800, 15, 0, 1536, 0, 0, 1);

-- Classic [1434]
-- Lava Burst (Ragnaros)
UPDATE gameobject_template SET faction = 1081, size = 3.5 WHERE entry = 178088;

-- Classic [1435]
-- STV - Gorlash
-- UPDATE creature_template SET ExtraFlags = 0, HealthMultiplier = 4, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 7960, MaxLevelHealth = 7960, MinMeleeDmg = 78.9, MaxMeleeDmg = 104.6, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2835, MeleeAttackPower = 192, RangedAttackPower = 18, MeleeBaseAttackTime = 2000 WHERE Entry = 1492;

-- Classic [1436]
-- Startup Repair v2.0 
UPDATE quest_template SET StartScript = 5821 WHERE entry = 5821;
UPDATE quest_template SET StartScript = 5943 WHERE entry = 5943;

DELETE FROM dbscripts_on_quest_start WHERE id IN (5821,5943);
INSERT INTO dbscripts_on_quest_start VALUES
(5821, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5821, 1, 25, 0, 0, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5821, 2, 25, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5821, 3, 25, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5821, 1, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5821, 4, 22, 113, 59, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
(5821, 5, 22, 113, 59, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5821, 6, 22, 113, 59, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5821, 6, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement'),

(5943, 0, 25, 0, 0, 11625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5943, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5943, 0, 25, 0, 0, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5943, 0, 25, 0, 0, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5943, 1, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5943, 0, 22, 113, 59, 11625, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
(5943, 0, 22, 113, 59, 11564, 27289, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5943, 0, 22, 113, 59, 11564, 27290, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5943, 2, 32, 0, 0, 11625, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - unpause WP movement');

-- Classic [1437]
-- Un'goro Crater - Devilsaur
DELETE FROM creature WHERE guid IN (23741,128983);
DELETE FROM creature_addon WHERE guid IN (23741,128983);
DELETE FROM creature_movement WHERE id IN (23741,128983);
DELETE FROM game_event_creature WHERE guid IN (23741,128983);
DELETE FROM game_event_creature_data WHERE guid IN (23741,128983);
DELETE FROM creature_battleground WHERE guid IN (23741,128983);
DELETE FROM creature_linking WHERE guid IN (23741,128983) OR master_guid IN (23741,128983);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(23741, 6498, 1, 0, 0, -6518.342, -746.9725, -270.2353, 3.259219, 600, 0, 0, 7599, 0, 0, 2),
(128983, 6498, 1, 0, 0, -6550.894, -1585.2400, -272.0870, 3.400208, 600, 0, 0, 7599, 0, 0, 2);
DELETE FROM creature_movement WHERE id IN (23741, 128983);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #23741
(23741, 1, -6552.769, -751.0626, -275.1015, 0, 0, 100, 0, 0),
(23741, 2, -6588.304, -751.2559, -273.9518, 0, 0, 100, 0, 0),
(23741, 3, -6622.236, -749.5293, -274.8500, 0, 0, 100, 0, 0),
(23741, 4, -6649.637, -747.9213, -272.1153, 0, 0, 100, 0, 0),
(23741, 5, -6663.773, -772.0286, -269.8036, 0, 0, 100, 0, 0),
(23741, 6, -6689.906, -783.4278, -270.8324, 0, 0, 100, 0, 0),
(23741, 7, -6724.663, -788.2103, -271.2497, 0, 0, 100, 0, 0),
(23741, 8, -6755.685, -792.0954, -270.3067, 0, 0, 100, 0, 0),
(23741, 9, -6779.428, -812.8699, -271.0789, 0, 0, 100, 0, 0),
(23741, 10, -6818.709, -818.2993, -271.3062, 0, 0, 100, 0, 0),
(23741, 11, -6846.479, -813.2197, -271.6079, 0, 0, 100, 0, 0),
(23741, 12, -6877.010, -787.4286, -270.8881, 0, 0, 100, 0, 0),
(23741, 13, -6890.824, -746.2814, -271.2773, 0, 0, 100, 0, 0),
(23741, 14, -6909.956, -722.1680, -271.6525, 0, 0, 100, 0, 0),
(23741, 15, -6941.434, -693.0585, -271.5084, 0, 0, 100, 0, 0),
(23741, 16, -6980.119, -684.9656, -270.0165, 0, 0, 100, 0, 0),
(23741, 17, -7015.244, -679.3659, -272.1358, 0, 0, 100, 0, 0),
(23741, 18, -7051.738, -674.3732, -270.4611, 0, 0, 100, 0, 0),
(23741, 19, -7083.509, -646.9298, -271.2662, 0, 0, 100, 0, 0),
(23741, 20, -7085.586, -615.7770, -270.8441, 0, 0, 100, 0, 0),
(23741, 21, -7083.509, -646.9298, -271.2662, 0, 0, 100, 0, 0),
(23741, 22, -7051.738, -674.3732, -270.4611, 0, 0, 100, 0, 0),
(23741, 23, -7015.244, -679.3659, -272.1358, 0, 0, 100, 0, 0),
(23741, 24, -6980.119, -684.9656, -270.0165, 0, 0, 100, 0, 0),
(23741, 25, -6941.434, -693.0585, -271.5084, 0, 0, 100, 0, 0),
(23741, 26, -6909.956, -722.1680, -271.6525, 0, 0, 100, 0, 0),
(23741, 27, -6890.824, -746.2814, -271.2773, 0, 0, 100, 0, 0),
(23741, 28, -6877.010, -787.4286, -270.8881, 0, 0, 100, 0, 0),
(23741, 29, -6846.479, -813.2197, -271.6079, 0, 0, 100, 0, 0),
(23741, 30, -6818.916, -818.2520, -271.2222, 0, 0, 100, 0, 0),
(23741, 31, -6779.428, -812.8699, -271.0789, 0, 0, 100, 0, 0),
(23741, 32, -6755.685, -792.0954, -270.3067, 0, 0, 100, 0, 0),
(23741, 33, -6724.663, -788.2103, -271.2497, 0, 0, 100, 0, 0),
(23741, 34, -6689.906, -783.4278, -270.8324, 0, 0, 100, 0, 0),
(23741, 35, -6663.773, -772.0286, -269.8036, 0, 0, 100, 0, 0),
(23741, 36, -6649.637, -747.9213, -272.1153, 0, 0, 100, 0, 0),
(23741, 37, -6622.689, -749.4512, -274.8500, 0, 0, 100, 0, 0),
(23741, 38, -6588.304, -751.2559, -273.9518, 0, 0, 100, 0, 0),
(23741, 39, -6552.769, -751.0626, -275.1015, 0, 0, 100, 0, 0),
(23741, 40, -6513.466, -749.0881, -270.0725, 0, 0, 100, 0, 0),
-- #128983
(128983, 1, -6581.488, -1593.333, -272.0972, 0, 0, 100, 0, 0),
(128983, 2, -6620.022, -1615.327, -271.9393, 0, 0, 100, 0, 0),
(128983, 3, -6642.931, -1614.738, -271.5533, 0, 0, 100, 0, 0),
(128983, 4, -6665.917, -1636.544, -272.0972, 0, 0, 100, 0, 0),
(128983, 5, -6657.172, -1672.827, -272.0972, 0, 0, 100, 0, 0),
(128983, 6, -6644.029, -1715.733, -272.0597, 0, 0, 100, 0, 0),
(128983, 7, -6628.420, -1751.037, -272.0972, 0, 0, 100, 0, 0),
(128983, 8, -6609.313, -1783.584, -272.0972, 0, 0, 100, 0, 0),
(128983, 9, -6611.368, -1819.983, -271.6827, 0, 0, 100, 0, 0),
(128983, 10, -6614.993, -1855.266, -272.0972, 0, 0, 100, 0, 0),
(128983, 11, -6618.782, -1885.747, -272.4291, 0, 0, 100, 0, 0),
(128983, 12, -6627.069, -1913.767, -271.7879, 0, 0, 100, 0, 0),
(128983, 13, -6617.854, -1941.028, -271.9550, 0, 0, 100, 0, 0),
(128983, 14, -6587.061, -1960.615, -271.4847, 0, 0, 100, 0, 0),
(128983, 15, -6581.559, -1981.389, -271.1994, 0, 0, 100, 0, 0),
(128983, 16, -6583.634, -2012.885, -270.1444, 0, 0, 100, 0, 0),
(128983, 17, -6591.321, -2044.963, -271.3890, 0, 0, 100, 0, 0),
(128983, 18, -6622.141, -2060.476, -270.3766, 0, 0, 100, 0, 0),
(128983, 19, -6658.771, -2080.263, -272.1148, 0, 0, 100, 0, 0),
(128983, 20, -6689.481, -2078.725, -272.0719, 0, 0, 100, 0, 0),
(128983, 21, -6726.167, -2053.654, -272.1499, 0, 0, 100, 0, 0),
(128983, 22, -6737.058, -2017.684, -271.8973, 0, 0, 100, 0, 0),
(128983, 23, -6759.523, -1988.396, -268.4960, 0, 0, 100, 0, 0),
(128983, 24, -6741.284, -1956.012, -271.9158, 0, 0, 100, 0, 0),
(128983, 25, -6741.579, -1927.409, -271.6820, 0, 0, 100, 0, 0),
(128983, 26, -6750.096, -1889.458, -272.1020, 0, 0, 100, 0, 0),
(128983, 27, -6784.804, -1854.710, -272.0601, 0, 0, 100, 0, 0),
(128983, 28, -6816.659, -1859.177, -270.3125, 0, 0, 100, 0, 0),
(128983, 29, -6830.725, -1875.490, -271.2730, 0, 0, 100, 0, 0),
(128983, 30, -6816.659, -1859.177, -270.3125, 0, 0, 100, 0, 0),
(128983, 31, -6785.416, -1854.166, -272.0601, 0, 0, 100, 0, 0),
(128983, 32, -6750.096, -1889.458, -272.1020, 0, 0, 100, 0, 0),
(128983, 33, -6741.579, -1927.409, -271.6820, 0, 0, 100, 0, 0),
(128983, 34, -6741.284, -1956.012, -271.9158, 0, 0, 100, 0, 0),
(128983, 35, -6759.375, -1987.500, -268.5858, 0, 0, 100, 0, 0),
(128983, 36, -6737.058, -2017.684, -271.8973, 0, 0, 100, 0, 0),
(128983, 37, -6726.167, -2053.654, -271.9148, 0, 0, 100, 0, 0),
(128983, 38, -6689.481, -2078.725, -272.0719, 0, 0, 100, 0, 0),
(128983, 39, -6658.771, -2080.263, -272.1148, 0, 0, 100, 0, 0),
(128983, 40, -6622.141, -2060.476, -270.3766, 0, 0, 100, 0, 0),
(128983, 41, -6591.321, -2044.963, -272.1180, 0, 0, 100, 0, 0),
(128983, 42, -6583.634, -2012.885, -270.1444, 0, 0, 100, 0, 0),
(128983, 43, -6581.559, -1981.389, -271.1994, 0, 0, 100, 0, 0),
(128983, 44, -6587.061, -1960.615, -271.4847, 0, 0, 100, 0, 0),
(128983, 45, -6617.854, -1941.028, -271.9550, 0, 0, 100, 0, 0),
(128983, 46, -6627.069, -1913.767, -271.7879, 0, 0, 100, 0, 0),
(128983, 47, -6618.782, -1885.747, -272.4291, 0, 0, 100, 0, 0),
(128983, 48, -6614.993, -1855.266, -272.0972, 0, 0, 100, 0, 0),
(128983, 49, -6611.368, -1819.983, -271.6827, 0, 0, 100, 0, 0),
(128983, 50, -6609.313, -1783.584, -272.0972, 0, 0, 100, 0, 0),
(128983, 51, -6628.420, -1751.037, -272.0972, 0, 0, 100, 0, 0),
(128983, 52, -6644.029, -1715.733, -272.0597, 0, 0, 100, 0, 0),
(128983, 53, -6657.172, -1672.827, -272.0972, 0, 0, 100, 0, 0),
(128983, 54, -6665.917, -1636.544, -272.0972, 0, 0, 100, 0, 0),
(128983, 55, -6642.931, -1614.738, -271.5533, 0, 0, 100, 0, 0),
(128983, 56, -6620.022, -1615.327, -271.9393, 0, 0, 100, 0, 0),
(128983, 57, -6581.488, -1593.333, -272.0972, 0, 0, 100, 0, 0),
(128983, 58, -6555.971, -1586.052, -272.0972, 0, 0, 100, 0, 0);

-- Classic [1453]
/* Hallow's End Vendor Corrections
As per Dagochen's report, Katrina Shimmerstar was not present in this
event.  This NPC has been added and in addition the Pumpkin treat has
been added to her vendor list.
This item is only available when the Jesper(Alliance)/Spoops(Horde)
quests have been completed at the respective vendors (source: wowwiki */
-- page for each npc).
/* Adding Katrina to the Hallow's End Event */
DELETE FROM creature WHERE guid = 128984;
DELETE FROM creature_addon WHERE guid = 128984;
DELETE FROM creature_movement WHERE id = 128984;
DELETE FROM game_event_creature WHERE guid = 128984;
DELETE FROM game_event_creature_data WHERE guid = 128984;
DELETE FROM creature_battleground WHERE guid = 128984;
DELETE FROM creature_linking WHERE guid = 128984 OR master_guid = 128984;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128984, 15353, 0, 0, 0, -4918.637, -983.1412, 501.5376, 2.43867, 120, 0, 0, 1605, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid = 128984;
INSERT INTO game_event_creature (guid, event) VALUES
(128984, 12);
/* Adding conditions for Hallow's End Vendors */
DELETE FROM conditions WHERE condition_entry IN (3171, 3172);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(3171, 8, 8311, 0),
(3172, 8, 8312, 0);

/* Adding Treat to Katrina vendor table and adding quest completion conditions for both vendors */
DELETE FROM npc_vendor WHERE entry = 15353 AND item = 20557;
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, condition_id) VALUES
(15353, 20557, 0, 0, 3171);
UPDATE npc_vendor SET condition_id = 3172 WHERE entry = 15354 AND item = 20557;

-- Classic [1460]
-- Fixed Lolly Quests 
/* Fixed Lolly Quests for Hallow's End event
These quests involve Jesper and Spoops. They require the player to visit
innkeepers in each capital, perform an emote and receive their lollies.
Currently the initial quest from Jesper(8311) is unavailable as are the
quests from the alliance capital innkeepers. The innkeepers also do not
respond to the correct emote to complete the quest. All of these issues
have been corrected.
Spoops has the quest(8312) available but is incorrectly designated an
innkeeper with gossip. These have been corrected. Npcs involved in these
quests have available their respective quests once quest 8312 is
accepted but are unable to complete these quests upon receiving the
correct emote. These issues have been corrected. */
-- Adding Spoops (guid 99966) to Hallow's End npcs
DELETE FROM game_event_creature WHERE guid = 99966;
INSERT INTO game_event_creature (guid, event) VALUES (99966, 12);
-- Removing Gossip and Innkeeper functionality from Spoops (Should only be a questgiver)
UPDATE creature_template SET NpcFlags= 2 WHERE Entry = 15309;
-- Removing repeatability from Quest 8312
UPDATE quest_template SET SpecialFlags= 0 WHERE entry = 8312;
-- Horde
-- Quest 8359
-- Adding support for Alliance/Horde lolly collecting quests
UPDATE quest_template SET QuestFlags = 2, SpecialFlags = 2 WHERE entry IN (8353, 8354, 8355, 8356, 8357, 8358, 8359, 8360);
-- Removing casting creature requirement from quest 8359 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8359;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Flex for Innkeeper Gryshka' WHERE entry = 8359;
-- Quest 8358
-- Removing casting creature requirement from quest 8358 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8358;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Do the "train" for Kali Remik' WHERE entry = 8358;
-- Quest 8360
-- Removing casting creature requirement from quest 8360 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8360;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Dance for Innkeeper Pala' WHERE entry = 8360;
-- Quest 8354
-- Removing casting creature requirement from quest 8354 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8354;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Cluck like a chicken for Innkeeper Norman' WHERE entry = 8354;
-- Alliance
-- Quest 8356
-- Removing casting creature requirement from quest 8356 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8356;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Flex for Innkeeper Allison' WHERE entry = 8356;
-- Quest 8355
-- Removing casting creature requirement from quest 8355 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8355;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Do the "train" for Talvash' WHERE entry = 8355;
-- Quest 8353
-- Removing casting creature requirement from quest 8353 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8353;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Cluck like a chicken for Innkeeper Firebrew' WHERE entry = 8353;
-- Quest 8357
-- Removing casting creature requirement from quest 8357 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0, DetailsEmote1 = 1, OfferRewardEmote1 = 4 WHERE entry = 8357;
-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE quest_template SET ObjectiveText1 = '', EndText = 'Dance for Innkeeper Saelienne' WHERE entry = 8357;

-- Classic [1467]
-- Added support for Wickerman Festival 
-- Spawned related GO and NPCs
-- Added gossips
-- Added scripts
-- Wickerman
DELETE FROM gameobject WHERE guid = 85487;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(85487, 180433, 0, 1734.04, 504.05, 42.2861, 1.4131, 0, 0, 0.649213, 0.760607, 300, 100,1);
DELETE FROM game_event_gameobject WHERE guid = 85487;
INSERT INTO game_event_gameobject (guid, event) VALUES (85487, 12);
-- Adjusting size and removing player interaction
UPDATE gameobject_template SET flags = 16, size = 4 WHERE entry = 180433;
-- Pumpkins
DELETE FROM gameobject WHERE guid BETWEEN 85488 AND 85490;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(85488, 180405, 0, 1746.07, 517.066, 38.936, 3.40519, 0, 0, 0.991327, -0.131419, 300, 100, 1),
(85489, 180406, 0, 1728, 475.099, 63.6779, 3.49316, 0, 0, 0.98459, -0.174878, 300, 100, 1),
(85490, 180406, 0, 1719.67, 522.979, 36.8828, 3.30702, 0, 0, 0.996581, -0.0826182, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid BETWEEN 85488 AND 85490;
INSERT INTO game_event_gameobject (guid, event) VALUES 
(85488, 12),
(85489, 12),
(85490, 12);
-- Forsaken Banners
DELETE FROM gameobject WHERE guid BETWEEN 85491 AND 85493;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(85491, 180432, 0, 1732.167358, 474.855957, 61.656750, 1.52646, 0, 0, 0, 0, 300, 100, 1),
(85492, 180432, 0, 1749.28, 507.611, 39.2312, 1.49635, 0, 0, 0.680301, 0.732933, 300, 100, 1),
(85493, 180432, 0, 1712.63, 507.05, 38.2495, 1.58824, 0, 0, 0.713246, 0.700914, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid BETWEEN 85491 AND 85493;
INSERT INTO game_event_gameobject (guid, event) VALUES 
(85491, 12),
(85492, 12),
(85493, 12);
-- Wickerman Guardians
DELETE FROM creature WHERE guid IN (128987,128989,128992);
DELETE FROM creature_addon WHERE guid IN (128987,128989,128992);
DELETE FROM creature_movement WHERE id IN (128987,128989,128992);
DELETE FROM game_event_creature_data WHERE guid IN (128987,128989,128992);
DELETE FROM creature_battleground WHERE guid IN (128987,128989,128992);
DELETE FROM creature_linking WHERE guid IN (128987,128989,128992) OR master_guid IN (128987,128989,128992);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, Deathstate, MovementType) VALUES 
(128987, 15195, 0, 0, 0, 1713.1, 511.295, 37.2005, 1.48063, 300, 0, 0, 45780, 0, 0, 0),
(128989, 15195, 0, 0, 0, 1750.57, 511.697, 37.7587, 1.25444, 300, 0, 0, 45780, 0, 0, 0),
(128992, 15195, 0, 0, 0, 1729.046387, 552.650269, 34.302891, 4.543876, 300, 0, 0, 45780, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid IN (128987,128989,128992);
INSERT INTO game_event_creature (guid, event) VALUES
(128987, 12),
(128989, 12),
(128992, 12);
-- Making them guards
UPDATE creature_template SET UnitFlags = 36864, ExtraFlags = 1024 WHERE Entry = 15195;
-- Adding Wickerman Guardian Ember GO to DB to support spell 27005
DELETE FROM gameobject_template WHERE entry = 180574;
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES 
(180574, 2, 6421, 'Wickerman Guardian Ember', 0, 0, 5, 43, 0, 0, 6535, 0, 0, 19700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Adding Gossip menu and options for Wickerman Ember
DELETE FROM gossip_menu WHERE entry = 6535;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(6535, 7737, 0, 3173),
(6535, 7738, 0, 3174);
DELETE FROM gossip_menu_option WHERE menu_id = 6535;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(6535, 0, 0, 'Smear the ash on my face like war paint!', 1, 0, -1, 0, 6535, 0, 0, NULL, 1079);
DELETE FROM dbscripts_on_gossip WHERE id = 6535;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(6535, 0, 15, 24705, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Invocation of the Wickerman');
DELETE FROM conditions WHERE condition_entry IN (3173, 3174);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- Adding condition entry option when not buffed with 24705
(3173, 11, 24705, 0),
-- Adding condition entry option when already buffed with 24705
(3174, 1, 24705, 0);

-- Darkcaller Yanka
DELETE FROM creature WHERE guid = 128993;
DELETE FROM creature_addon WHERE guid = 128993;
DELETE FROM creature_movement WHERE id = 128993;
DELETE FROM game_event_creature_data WHERE guid = 128993;
DELETE FROM creature_battleground WHERE guid = 128993;
DELETE FROM creature_linking WHERE guid = 128993 OR master_guid = 128993;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(128993,15197,0,1,0,0,1734.6,508.803,41.2847,1.309420,300,0,0,9763,0,0,0);
DELETE FROM game_event_creature WHERE guid = 128993;
INSERT INTO game_event_creature (guid, event) VALUES
(128993, 12);
-- Adding Gossip_menu
DELETE FROM gossip_menu WHERE entry = 6537;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (6537, 7740, 0, 0);
UPDATE creature_template SET NpcFlags = 7, GossipMenuId = 6537 WHERE Entry = 15197;
DELETE FROM npc_vendor WHERE entry = 15197;
-- Bonfires
DELETE FROM gameobject WHERE guid BETWEEN 85494 AND 85498;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(85494, 180434, 0, 1758.89, 513.276, 35.8655, 1.28897, 0, 0, 0.600788, 0.799409, 300, 0, 1),
(85495, 180434, 0, 1704.48, 518.689, 35.4045, 1.30704, 0, 0, 0.607984, 0.793949, 300, 0, 1),
(85496, 180434, 0, 1743.098389, 473.444763, 61.655338, 1.4092, 0, 0, 0, 0, 300, 0, 1),
(85497, 180434, 0, 1712.852661, 472.536041, 61.646259, 1.589838, 0, 0, 0, 0, 300, 0, 1),
(85498, 180434, 0, 1738.741821, 551.096802, 33.496574, 4.59492, 0, 0, 0, 0, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid BETWEEN 85494 AND 85498;
INSERT INTO game_event_gameobject (guid, event) VALUES 
(85494, 12),
(85495, 12),
(85496, 12),
(85497, 12),
(85498, 12);
 
-- Classic [1472]
-- Added support and scripts for Wickerman Festival 
/* This is the event that occurs at 8pm every evening. Preceding this
are reminders at 30, 15 and 5 minutes before the event starts by
Darkcaller Yanka.
Upon starting, Sylvanas is summoned as the Banshee Queen and delivers
her speech after which, wickerman embers are summoned around the
wickerman (which give a buff) and Darkcaller Yanka starts dancing. This
lasts the night when the dancing stops and the embers despawn. */
/* Wickerman Embers */
DELETE FROM game_event WHERE entry = 112;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, description, linkedto) VALUES 
(112, '2016-10-18 20:01:07', '2020-12-31 22:59:59', 1440, 600, 0, 'Hallow\'s End - Wickerman Ember\'s', 12);
DELETE FROM gameobject WHERE guid IN (85499, 85500, 85501, 85502, 14834, 35833);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(85499, 180437, 0, 1739.410034, 508.948639, 40.772842, 4.315085, 0, 0, 0, 0, 300, 100, 1),
(85500, 180437, 0, 1722.443481, 508.140778, 40.494492, 5.355066, 0, 0, 0, 0, 300, 100, 1),
(85501, 180437, 0, 1721.620728, 499.970856, 41.403786, 0.032173, 0, 0, 0, 0, 300, 100, 1),
(85502, 180437, 0, 1743.792236, 501.707825, 41.423393, 3.427584, 0, 0, 0, 0, 300, 100, 1),
(14834, 180437, 0, 1734.531494, 510.871857, 40.652969, 4.601748, 0, 0, 0, 0, 300, 100, 1),
(35833, 180437, 0, 1733.452759, 494.314789, 42.159492, 1.446059, 0, 0, 0, 0, 300, 100, 1);
DELETE FROM game_event_gameobject WHERE guid IN (85499, 85500, 85501, 85502, 14834, 35833);
INSERT INTO game_event_gameobject VALUES
(85499, 112),
(85500, 112),
(85501, 112),
(85502, 112),
(14834, 112),
(35833, 112);
/* Yanka calls before Wickerman lighting */
-- Linked event
DELETE FROM game_event WHERE entry = 113;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, description, linkedto) VALUES 
(113, '2016-10-18 19:30:00', '2020-12-31 22:59:59', 1440, 45, 0, 'Hallow\'s End - Banshee Queen', 12);
-- Invisible trigger
DELETE FROM creature WHERE guid = 128987;
DELETE FROM creature_addon WHERE guid = 128987;
DELETE FROM creature_movement WHERE id = 128987;
DELETE FROM game_event_creature_data WHERE guid = 128987;
DELETE FROM creature_battleground WHERE guid = 128987;
DELETE FROM creature_linking WHERE guid = 128987 OR master_guid = 128987;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, Deathstate, MovementType) VALUES 
(128987, 12999, 0, 0, 0, 1732.31, 520.874, 36.3326, 1.30942, 300, 0, 0, 9763, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 128987;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(128987, 1, 1732.31, 520.874, 36.3326, 86400000, 1299901, 0, 0, 0, 0, 0, 0, 0, 1.30942, 0, 0);
DELETE FROM game_event_creature WHERE guid = 128987;
INSERT INTO game_event_creature VALUES
(128987, 113);
-- Script for Yanka announces
DELETE FROM dbscripts_on_creature_movement WHERE id = 1299901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1299901, 1, 0, 0, 0, 15197, 20, 0, 2000001018, 0, 0, 0, 0, 0, 0, 0, 'Yanka 30 Mins to Festival Start'),
(1299901, 15*60, 0, 0, 0, 15197, 20, 0, 2000001019, 0, 0, 0, 0, 0, 0, 0, 'Yanka 15 Mins to Festival Start'),
(1299901, 25*60, 0, 0, 0, 15197, 20, 0, 2000001020, 0, 0, 0, 0, 0, 0, 0, 'Yanka 5 Mins to Festival Start'),
(1299901, 30*60, 0, 0, 0, 15197, 20, 0, 2000001021, 0, 0, 0, 0, 0, 0, 0, 'Yanka Festival Start'),
(1299901, 30*60+1, 10, 15193, 72000, 0, 0, 0, 0, 0, 0, 0, 1734.6, 508.803, 41.2847, 1.6173, 'summon Banshee Queen'),
(1299901, 10*3600, 43, 0, 0, 180433, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Reset Wickerman'),
(1299901, 10*3600, 1, 26, 0, 15197, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yanka Stops Dancing');
/* Banshee Quen event */
-- Adding WP Movement to Banshee Queen, increasing size to match screenshot, setting non-attackable and always active
UPDATE creature_template SET MovementType = 2, Scale = 2, UnitFlags = 130, ExtraFlags = 4096 WHERE Entry = 15193;
DELETE FROM creature_movement_template WHERE entry = 15193;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(15193, 1, 1734.6, 508.803, 41.2847, 72000, 1519301, 0, 0, 0, 0, 0, 0, 0, 1.6173, 0, 0);
-- Adding Ghost Visual Aura (22650)
DELETE FROM creature_template_addon WHERE entry = 15193;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, emote, moveflags, auras) VALUES
(15193, 0, 0, 0, 0, 0, '22650');
-- DBscript for Banshee Queen event
DELETE FROM dbscripts_on_creature_movement WHERE id = 1519301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1519301, 1, 0, 0, 0, 0, 0, 0, 2000001012, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 1'),
(1519301, 9, 0, 0, 0, 0, 0, 0, 2000001013, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 2'),
(1519301, 18, 0, 0, 0, 0, 0, 0, 2000001014, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 3'),
(1519301, 27, 0, 0, 0, 0, 0, 0, 2000001015, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 4'),
(1519301, 49, 0, 0, 0, 0, 0, 0, 2000001016, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 5'),
(1519301, 58, 0, 0, 0, 0, 0, 0, 2000001017, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 6'),
(1519301, 68, 15, 14292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Throw Torch'),
(1519301, 70, 13, 0, 0, 180433, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Wickerman'),
(1519301, 71, 1, 10, 0, 15197, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yanka Dance');
-- Add Wickerman as target for spell Tosing Torch
DELETE FROM spell_script_target WHERE entry = 14292;
INSERT INTO spell_script_target VALUES (14292, 0, 180433, 0);
--  Sylvanas' speech texts to db_script_string
DELETE FROM db_script_string WHERE entry BETWEEN 2000001012 AND 2000001021;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001012, 'Children of the Night, heed your Queen\'s call!', 0, 6, 1, 22, 'Banshee Queen Speech Part 1'),
(2000001013, 'I join you in celebration of this most revered of nights - the night we Forsaken broke the Scourge\'s yoke of oppression!', 0, 6, 1, 1, 'Banshee Queen Speech Part 2'),
(2000001014, 'It is this night that our enemies fear us the most. It is THIS night that we show our enemies what it means to stand against the Forsaken!', 0, 6, 1, 1, 'Banshee Queen Speech Part 3'),
(2000001015, 'We burn the effigy of the Wickerman as a symbol of our struggle against those who would oppose us. We wear the ashes of the burnt Wickerman as a symbol of our neverending fight against those who would enslave us.', 0, 6, 1, 1, 'Banshee Queen Speech Part 4'),
(2000001016, 'Now is the time to shake the world to its foundations! NOW is the time to remind those who would enslave us that we shall never yield!', 0, 6, 1, 5, 'Banshee Queen Speech Part 5'),
(2000001017, 'NOW is the time of the Forsaken! Power to the Forsaken - NOW AND FOREVER!!!', 0, 6, 1, 15, 'Banshee Queen Speech Part 6'),
(2000001018, 'The burning of the Wickerman will begin in thirty minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', 0, 6, 1, 1, 'Yanka 30 Mins to Festival Start'),
(2000001019, 'The burning of the Wickerman will begin in fifteen minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', 0, 6, 1, 1, 'Yanka 15 Mins to Festival Start'),
(2000001020, 'The burning of the Wickerman will begin in five minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', 0, 6, 1, 1, 'Yanka 5 Mins to Festival Start'),
(2000001021, 'The Wickerman Festival now begins! Power to the Forsaken!', 0, 6, 1, 1, 'Yanka Festival Start');


