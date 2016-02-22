-- ==============
-- VERSION UPDATE
-- ==============
UPDATE db_version SET version = 'TBC-DB 1.4.3 - 006 \'PRE-RELEASE BETA BUILD\' for CMaNGOS-TBC';


-- ===========================================================
-- Remove Random Spawned Silverwind Emissary in Stormwind City - NPC Waypoint Spawns (Will Add Waypoint Movement Later)
-- ===========================================================
DELETE FROM creature WHERE id IN (15102) AND guid IN (98179,98178,98159,98160);
DELETE FROM game_event_creature WHERE guid IN (98179,98178,98159,98160);


-- ====================================
-- Backport Missing Spell Script Target
-- ====================================
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('38966','1','22358','0');


-- =========================================================
-- Fix Stormwind Guards From Attacking Stuff While on Patrol
-- =========================================================
UPDATE creature_template SET UnitFlags=UnitFlags|512 WHERE entry IN (1423);

-- ========================
-- Fix a Few Teleport Names
-- ========================
UPDATE areatrigger_teleport SET name='Blackfathom Deeps Entrance' WHERE id=257;
UPDATE areatrigger_teleport SET name='Blackfathom Deeps Instance Start' WHERE id=259;

-- ================================================
-- Generic DB_Scripts Data Used In Movement Scripts - Common With UDB 4.3.4 (Scripts 1-20 Reserved For Generic Scripts) - Should Be Ported To UDB and ClassicDB
-- ================================================
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1 AND 8;
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (1,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Despawn Self');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (2,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 0 - Idle');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (3,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 1 - Random');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (4,0,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 2 - Waypoint');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (5,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Run Mode On');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (6,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Run Mode Off');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (7,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Waypoint Pause');
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (8,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Waypoint Unpause'); 


-- ======================================================================
-- Fix Love In In The Air Vendor Items To Only Sell During The Game Event
-- ======================================================================
DELETE FROM conditions WHERE condition_entry IN (474);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES ('474','12','8','0'); -- Love is in the Air
-- Love Token / Perfume Bottle / Cologne Bottle
UPDATE npc_vendor SET condition_id=474 WHERE item IN (21815,21829,21833);
UPDATE npc_vendor_template SET condition_id=474 WHERE item IN (21815,21829,21833);

-- ========================================================================
-- Fix Feast of Winter Veil Vendor Items To Only Sell During The Game Event
-- ========================================================================
-- Red Ribboned Wrapping Paper
UPDATE npc_vendor SET condition_id=238 WHERE item IN (5042);
UPDATE npc_vendor_template SET condition_id=238 WHERE item IN (5042);

-- ==================================
-- Fix Gug Fatcandle Faction and Loot
-- ==================================
UPDATE creature_template SET FactionAlliance=26, FactionHorde=26, MinLootGold=2, MaxLootGold=4 WHERE entry IN (62);
DELETE FROM creature_loot_template WHERE entry IN (62);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('62','56147','100','0','1','1','0');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('62','117','1.1','1','1','1','0');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('62','159','0.7','1','1','1','0');
