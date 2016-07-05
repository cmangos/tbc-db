-- ===============================================================================================
-- ======================                   MISC DB FIXES                   ======================
-- ===============================================================================================

-- =================================
-- Add Missing NPC in Shattrath City
-- =================================
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101254','19390','530','1','0','0','-1814.04','5608.85','130.813','1.2573','300','0','0','6986','0','0','0');

-- ===============
-- Fix Portal Name
-- ===============
UPDATE areatrigger_teleport SET name='Blackrock Depths - Main Entrance' WHERE id=2890;

-- =================================================
-- NPC at Wildhammer Stronghold Standing Underground
-- ================================================= 
UPDATE creature SET position_z=111.92439 WHERE guid IN (76723);

-- ===============================================================
-- Fix Creature_Template For Vendor Data (Missing From Innkeepers)
-- ===============================================================
UPDATE creature_template set NpcFlags=NpcFlags|640 WHERE entry IN (15433,21088);

-- ===============================================
-- Add Several Spell Targets (Gnarlpine Vengeance)
-- ===============================================
INSERT INTO spell_script_target VALUES 
(5628, 1, 2006, 0),
(5628, 1, 2007, 0),
(5628, 1, 2008, 0),
(5628, 1, 2009, 0),
(5628, 1, 2010, 0),
(5628, 1, 2011, 0),
(5628, 1, 2012, 0),
(5628, 1, 2013, 0),
(5628, 1, 2014, 0);

-- ===========================================================
-- Delete Extra Razormane Wolf Spawns (Summoned By Spell Only)
-- ===========================================================
DELETE FROM creature WHERE id = 3939;
DELETE FROM creature_addon WHERE guid IN (14324,14325,14326,14327,14328,14329,14330,14331,14332);

-- =======================================================
-- Delete Extra Trent Ally Spawns (Summoned By Spell Only)
-- =======================================================
DELETE FROM creature WHERE id = 5806;
DELETE FROM creature_addon WHERE guid IN (29974,29975,29976,29977,29978,29979,29980);

-- ===========================================
-- Fix Quest 362 "The Haunted Mill" Quest Loot
-- ===========================================
UPDATE creature_loot_template SET groupid=2 WHERE entry=1657 AND item=2831;

-- ======================================
-- Fix Quest: 11129 "Kyle's Gone Missing"
-- ======================================
-- Add Missing Quest Loot (Backport From UDB)
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('2957','33009','-10','2','1','1','0');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('3068','33009','-10','2','1','1','0');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values('2956','33009','-10','2','1','1','0');

-- ===============================
-- Fix Quest 9537: "Show Gnomercy"
-- ===============================
-- UDB Backport Movement (Template movement for different Spawn of same NPC) - Must use GUID based
DELETE FROM creature_movement WHERE id IN (61966);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','1','-4708.48','-12532','1.08789','0','0','0','0','0','0','0','0','0','3.66027','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','2','-4717.12','-12505.9','3.15087','0','0','0','0','0','0','0','0','0','1.90491','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','3','-4731.38','-12515.1','1.97766','0','0','0','0','0','0','0','0','0','3.71447','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','4','-4744.11','-12488.7','2.71445','0','0','0','0','0','0','0','0','0','1.7549','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','5','-4736.06','-12469.9','2.79717','0','0','0','0','0','0','0','0','0','1.16506','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','6','-4759.44','-12459.7','1.9132','0','0','0','0','0','0','0','0','0','2.7178','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','7','-4770.78','-12419.5','0.947688','0','0','0','0','0','0','0','0','0','1.846','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','8','-4754.78','-12415.2','3.25112','0','0','0','0','0','0','0','0','0','0.302696','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','9','-4741.05','-12462.7','3.47647','0','0','0','0','0','0','0','0','0','5.02844','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','10','-4749.05','-12504.2','1.28522','0','0','0','0','0','0','0','0','0','4.52186','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','11','-4699.79','-12527.7','1.98426','0','0','0','0','0','0','0','0','0','5.8374','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('61966','12','-4689.77','-12527.3','2.6005','0','0','0','0','0','0','0','0','0','0.045087','0','0');

-- ===========================
-- Fix Snapjaw Level and Stats - Was Not Bestiary Values (Now Corrected To Match Bestiary)
-- ===========================
UPDATE creature_template SET MinLevel='30', MaxLevel='31', MinLevelHealth='1051', MaxLevelHealth='1107', MeleeAttackPower='106', RangedAttackPower='9', MinMeleeDmg='42', MaxMeleeDmg='58', MinRangedDmg='29', MaxRangedDmg='44', DamageMultiplier='1.0', DamageVariance='1.0' WHERE entry=2408;

-- =================================
-- Add Missing Gossip (TBC Fix Only) - Lament of the Highborne
-- =================================
DELETE FROM gossip_menu_option WHERE menu_id IN (7178);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7178','0','0','What is it that you have for me, ambassador?','1','1','-1','0','717801','0','0',NULL,'481');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values
('479','8','9180','0'), -- Must Have Completed Quest 9180 To See Gossip
('480','24','30632','1'), -- Checks To See If Player Already Has Item
('481','-1','479','480'); -- Final Combined That Quest Has Been Completed and Player Does Not Already Have Item
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values
('717801','0','17','30632','1','0','0','0','0','0','0','0','0','0','0','0','Create Lament of the Highborne');

-- ======================================
-- Fix Quest 9813: "Meeting the Warchief"
-- ======================================
UPDATE quest_template SET PrevQuestId=9812 WHERE entry=9813;

-- ================================
-- Fix Quest 2987: "Gordunni Cobolt" -- HUGE Hack Workaround (Spell: 11757 activates GO: 144050 then prob casts spell: 19395 then should spawn GO 144064 that can be looted) - Hack is adding Quest Item to Player inventory
-- ================================
DELETE FROM dbscripts_on_go_template_use WHERE id IN (144050);
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('144050','0','15','19395','0','0','0','4','0','0','0','0','0','0','0','0','Cast Gordunni Trap'),
('144050','0','17','9463','1','0','0','0','0','0','0','0','0','0','0','0','Give Player Gordunni Cobalt - HACK FIX');

DELETE FROM dbscripts_on_spell WHERE id IN (19395);
-- insert into `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values
-- ('19395','0','???','????','0','0','0','0','0','0','0','0','0','0','0','0','NO CLUE WHAT Gordunni Trap SHOULD DO');

-- =====================================
-- quest 667 - Death From Below (Xfurry)
-- =====================================
-- conditions
DELETE FROM conditions WHERE condition_entry IN (944, 945);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(944, 36, 0, 60),
(945, 36, 3, 0);
DELETE FROM db_script_string WHERE entry IN (2000005632,2000005633);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005632,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000005633,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (667, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'), -- ??
(667, 0, 0, 0, 0, 0, 0, 0, 2000005632, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
-- Condition check
(667, 50, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000005633, 0, 0, 0, 0, 'say_protect_2'),
-- Condition check
(667, 100, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
-- Quest completed
(667, 190, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen'); 










