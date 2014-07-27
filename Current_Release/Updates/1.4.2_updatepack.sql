-- ============================================================================================
-- ====     TBC-DB UPDATE PACK 1.4.2 "Work Must Go On!" FOR CMANGOS-TBC (2.4.3) CLIENT     ====
-- ============================================================================================

/* Copyright (C) 2009-2014 TBC-DB Project <http://udb.no-ip.org/>
 * Copyright (C) 2007-2014 UDB Project <http://udb.no-ip.org/>
 * Copyright (C) 2006-2014 ScriptDev2 <http://www.scriptdev2.com/>
 * Copyright (C) 2008-2014 ACID Project <http://www.scriptdev2.com/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License','or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not,write to the Free Software
 * Foundation,Inc.,59 Temple Place,Suite 330,Boston,MA  02111-1307  USA
 */

-- ===========
-- PATCH NOTES 
-- ===========
-- VARIOUS DB FIXES / QUEST IMPLEMENTATIONS / NPC WAYPOINT IMPLEMENTATIONS
-- OVERHAUL DUNGEON: TEMPEST KEEP: THE MECHANAR
-- OVERHAUL DUNGEON: TEMPEST KEEP: THE BOTANICA
-- OVERHAUL DUNGEON: TEMPEST KEEP: THE ARCATRAZ
-- OVERHAUL DUNGEON: HELLFIRE CITADEL: HELLFIRE RAMPARTS
-- FIX TBC DUNGEON PORTAL SPAWNS (NORMAL/HEROIC)
-- STATS SYSTEM RELATED ERRORS ARE NOT FIXED WITH THIS RELEASE (COMING WITH 1.4.3)

 
 
 -- ==================
-- DATABASE SAFEGUARD
-- ==================
ALTER TABLE db_version CHANGE COLUMN required_s2092_xxxxx_01_mangos_creature_template_classlevelstats required_s2092_xxxxx_01_mangos_creature_template_classlevelstats bit;



-- ==============
-- VERSION UPDATE
-- ==============
UPDATE db_version SET version = 'TBC-DB 1.4.2 \'WORK MUST GO ON!\' for CMaNGOS-TBC s2120';


-- ======================================
-- TBC-DB MISC DATABASE FIXES AND UPDATES - (BUG REPORTS AND RANDOM NON-SPECIFIC FIXES)
-- ======================================

-- ======================================
-- Fix Various Possible Rotation Problems - Let Core Automatically Calculate The Values Correctly (Found Several Rotation Problems And Expect More Out There)
-- ======================================
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=0, rotation3=0;


-- =========================================
-- Patch 2.4.3 (2008-07-15): Curse of Shadow - This spell has been removed. Its function has been replaced by Curse of the Elements.
-- =========================================
-- (THESE SPELLS HAVE BEEN MERGED INTO SPELL 1490) - Thanks LilleCarl
DELETE FROM npc_trainer_template WHERE spell IN (17862,17937,27229);


-- =============================
-- Fix Matrix Punchograph 3005-A - Thanks Zharvek
-- =============================
UPDATE `gameobject_template` SET `type`=2, `data0`=93, `data2`=0, `data3`=1045 WHERE `entry`=142345;


-- ==============================
-- Fix Cannoneer Whessan Position - Thanks Zharvek For The Report (Used Screenshot For Exact Position Instead Of Inside Cannon)
-- ==============================
UPDATE `creature` SET `position_x`=-2087.0337, `position_y`=-3499.281738, `position_z`=130.085, `orientation`=0.872212 WHERE `guid`=12166;


-- ===================================================
-- Correct Warchief Kargath Bladefist Normal Mode Loot - Thanks Zharvek
-- ===================================================
UPDATE creature_loot_template SET groupid=2 WHERE entry=16808 AND item=35003;


-- ==============================
-- Fix Quest: 10909 'Fel Spirits' - HACKISH FIX (REQUIRES SNIFF DATA AND MORE RESEARCH - I HAVE MANY HOURS INTO THIS ALREADY WITH CURRENT RESULTS)
-- ==============================
-- Spell Targets Required
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('39184','1','16878','0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('39206','1','16878','0');
-- Anchorite Relic Bunny
UPDATE creature_template SET UnitFlags=33556480 WHERE entry=22444;
-- Anchorite Relic
UPDATE gameobject_template SET size=3, data3=3000, data10=39184 WHERE entry=185298;


-- ===============================
-- Fix Quest: 1640 'Beat Bartleby' - Thanks Zharvek
-- ===============================
UPDATE `creature_template` SET `FactionAlliance`=12, `FactionHorde`=12 WHERE `entry`=6090;


-- ========================================================================================
-- Add Support For Quest: 10129 'Mission: Gateways Murketh and Shaadraz' - UDB BACKPORT
-- Add Support For Quest: 10146 'Mission: The Murketh and Shaadraz Gateways' - UDB BACKPORT
-- ========================================================================================
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('33655','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0','Create From Quest_Template');


-- ========================================================
-- Add Support For Quests: 10563 and 10596 'To Legion Hold' - UDB Backport (QUESTS TILL BROKEN DUE TO CORE ISSUE WITH A SPELL)
-- ========================================================
-- Script For Spell: Crate Disguise
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('37097','0','15','48342','0','0','0','0','0','0','0','0','0','0','0','0','Stun');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('37097','4','10','21633','61000','0','0','0','0','0','0','0','-3312.04','2948.81','171.12','4.83','Summon - Deathbringer Jovaan');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('37097','57','8','21502','0','0','0','0','0','0','0','0','0','0','0','0','Quest Completed');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('37097','60','14','48342','0','0','0','0','0','0','0','0','0','0','0','0','Stun');

-- Deathbringer Jovaan Movement
UPDATE creature_template SET MovementType=2 WHERE entry IN (21633);
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('21633','1','-3312.04','2948.81','171.12','1000','2163301','0','0','0','0','0','0','0','0','4.83','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('21633','2','-3308.27','2935.26','170.99','0','0','0','0','0','0','0','0','0','0','5.38','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('21633','3','-3304.39','2930.69','170.92','48000','2163302','0','0','0','0','0','0','0','0','5.57','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('21633','4','-3308.78','2935.84','171.02','0','0','0','0','0','0','0','0','0','0','1.75','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('21633','5','-3311.86','2949.64','171.12','0','0','0','0','0','0','0','0','0','0','1.82','0','0');

-- DB Scripts For Deathbringer Jovaan
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163301','0','15','7791','0','0','0','0','0','0','0','0','0','0','0','0','visual - summon');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','3','1','25','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','4','0','0','0','0','0','0','2000005568','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','4','28','8','0','0','0','0','0','0','0','0','0','0','0','0','STATE_KNEEL');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','5','10','21502','43000','0','0','0','0','0','0','0','-3300.25','2927.11','173.654','2.45862','summon - Image of Warbringer Razuun');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','6','0','0','0','21502','10','4','2000005569','0','0','0','0','0','0','0','force 21502 to: say text');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','6','1','1','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','11','0','0','0','0','0','0','2000005570','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','16','0','0','0','21502','10','4','2000005571','0','0','0','0','0','0','0','force 21502 to: say text');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','16','1','1','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','19','1','25','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','24','28','0','0','0','0','0','0','0','0','0','0','0','0','0','STATE_STAND');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','26','0','0','0','0','0','0','2000005572','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','26','1','66','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','31','0','0','0','21502','10','4','2000005573','0','0','0','0','0','0','0','force 21502 to: say text');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','31','1','6','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','35','0','0','0','0','0','0','2000005574','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','35','1','6','0','0','0','0','0','0','0','0','0','0','0','0','');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','39','0','0','0','21502','10','4','2000005575','0','0','0','0','0','0','0','force 21502 to: say text');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','39','1','274','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','42','1','25','0','21502','10','4','0','0','0','0','0','0','0','0','force 21502 to: emote');
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('2163302','45','1','66','0','0','0','0','0','0','0','0','0','0','0','0','');

-- DB Script Texts
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005568','Everything is in readiness, warbringer.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005569','Doom Lord Kazzak will be pleased. You are to increase the pace of your attacks. Destroy the orcish and dwarven strongholds with all haste.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005570','Warbringer, that will require the use of all the hold\'s infernals. It may leave us vulnerable to a counterattack','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005571','Don\'t worry about that. I\'ve increased production at the Deathforge. You\'ll have all the infernals you need to carry out your orders. Don\'t fail, Jovaan.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005572','It shall be as you say, warbringer. One last question, if I may...','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005573','Yes?','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005574','What\'s in the crate?','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005575','Crate? I didn\'t send you a crate, Jovaan. Don\'t you have more important things to worry about? Go see to them!','0','0','0','0',NULL);


-- =================================
-- Fix Quest: 9991 'Survey the Land' - Thanks Zharvek
-- =================================
UPDATE `conditions` SET `type` = '9' WHERE `condition_entry`=91;
DELETE FROM `dbscripts_on_quest_start` WHERE `id`=9991;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('7715','105','7','9991','0','0','0','0','0','0','0','0','0','0','0','0','Quest 9991 Credit');


-- ==========================================
-- Fix Quest: 10855 'Fel Reavers, No Thanks!' - Backported From UDB (Thanks Zharvek)
-- ==========================================
UPDATE `dbscripts_on_quest_end` SET `command` = '8', `datalong` = '22293' WHERE `id` = 10850 AND `delay` = 2 AND `command` = 7 LIMIT 1;


-- ================================================
-- Fix/Improve Quests 67/68/74 'Legend of Stalavan' - ClassicDB Backport (Thanks Cala and Evil@WoW)
-- ================================================
-- Removes end script for quest 67 (Legend of Stalvan) as it should occur
-- at the start of next quest in line
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 67;
UPDATE `quest_template` SET `CompleteScript` = 0 WHERE `entry` = 67;
-- Moves script to next quest in line : 68 (Legend of Stalvan)
-- Extends script to force spawned creature 2044 (Forlorn Spirit) to attack player
UPDATE `quest_template` SET `StartScript` = 68 WHERE `entry` = 68;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 68;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(68, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -10953.3, 1568.47, 46.978, 3.392, 'spawns Forlorn Spirit'),
(68, 3, 26, 0, 0, 2044, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'forces Forlorn Spirit to attack player');

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 74;
-- Extends script to force spawned creature 2044 (Forlorn Spirit) to attack player
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(74, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -8842.5372, 983.3404, 98.5200, 5.9781, 'spawns Forlorn Spirit'),
(74, 3, 26, 0, 0, 2044, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'forces Forlorn Spirit to attack player');


-- =======================================
-- Add DB Scripting For Quests 790,808,823 - Thanks Grz3s
-- =======================================
-- Sarkoth (Durotar) -- redone (this time 100% correct)
DELETE FROM dbscripts_on_quest_end WHERE id = 790;
INSERT INTO dbscripts_on_quest_end VALUES
(790,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(790,5,0,0,0,0,0,0,2000005089,0,0,0,0,0,0,0,''),
(790,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_DEATH');
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000005089','Go swiftly, $N. My fate is in your hands.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
UPDATE quest_template SET CompleteScript = 790 WHERE entry = 790;
-- Minshina's Skull(q.808)
DELETE FROM dbscripts_on_quest_end WHERE id = 808;
INSERT INTO dbscripts_on_quest_end VALUES
(808,2,10,3289,15000,0,0,0,0,0,0,0,-822.285,-4921.8,19.4009,2.6098,'summon'),
(808,5,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
(808,7,0,0,0,0,0,0,2000005776,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005776;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005776,'I thank you, $N. And my brother thanks you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL);
UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
UPDATE creature_template SET movementType = 0 WHERE entry = 3289;
-- Report to Orgnil(q.823)
DELETE FROM dbscripts_on_quest_end WHERE id = 823;
INSERT INTO dbscripts_on_quest_end VALUES
(823,1,0,0,0,0,0,0,2000005777,0,0,0,0,0,0,0,''),
(823,4,0,0,0,0,0,0,2000005778,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005777, 2000005778);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005777,'%s listens to Sigilbringer\'s report...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005778,'What?? The Burning Blade is spreading! We must investigate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 823 WHERE entry = 823;

-- =========================
-- Missing Waypoint Movement - Thanks Grz3s
-- =========================
-- Sen'jin Watcher
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 6401;
DELETE FROM creature_movement WHERE id = 6401;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(6401,1,-827.616,-4936.48,20.8528,0,0,0,0,0,0,0,0,0,0,2.32393,0,0),
(6401,2,-830.761,-4929.45,20.5111,0,0,0,0,0,0,0,0,0,0,2.19434,0,0),
(6401,3,-839.201,-4923.22,20.6271,0,0,0,0,0,0,0,0,0,0,2.70721,0,0),
(6401,4,-841.734,-4919.66,20.5596,0,0,0,0,0,0,0,0,0,0,1.7663,0,0),
(6401,5,-841.262,-4914.79,20.2692,0,0,0,0,0,0,0,0,0,0,1.22202,0,0),
(6401,6,-838.219,-4907.74,19.9134,0,0,0,0,0,0,0,0,0,0,0.803401,0,0),
(6401,7,-830.196,-4901.08,19.8305,0,0,0,0,0,0,0,0,0,0,0.782196,0,0),
(6401,8,-820.589,-4896.57,19.2993,0,0,0,0,0,0,0,0,0,0,6.09361,0,0),
(6401,9,-813.357,-4898.34,19.1296,0,0,0,0,0,0,0,0,0,0,5.87763,0,0),
(6401,10,-805.803,-4902.86,19.3516,0,0,0,0,0,0,0,0,0,0,6.22734,0,0),
(6401,11,-799.058,-4902.18,19.4843,0,0,0,0,0,0,0,0,0,0,0.382402,0,0),
(6401,12,-795.003,-4900.82,19.5072,0,0,0,0,0,0,0,0,0,0,6.10638,0,0),
(6401,13,-791.825,-4901.95,19.5425,0,0,0,0,0,0,0,0,0,0,5.56682,0,0),
(6401,14,-789.253,-4903.92,19.5929,0,0,0,0,0,0,0,0,0,0,5.22282,0,0),
(6401,15,-789.067,-4907.64,19.6142,0,0,0,0,0,0,0,0,0,0,4.38245,0,0),
(6401,16,-790.609,-4909.58,19.5996,0,0,0,0,0,0,0,0,0,0,3.71643,0,0),
(6401,17,-794.697,-4910.41,19.548,0,0,0,0,0,0,0,0,0,0,3.3795,0,0),
(6401,18,-802.157,-4910.6,19.3913,0,0,0,0,0,0,0,0,0,0,3.5028,0,0),
(6401,19,-807.364,-4913.22,19.2282,0,0,0,0,0,0,0,0,0,0,3.85623,0,0),
(6401,20,-817.404,-4923.08,19.4963,0,0,0,0,0,0,0,0,0,0,4.15076,0,0),
(6401,21,-821.698,-4931.91,20.2532,0,0,0,0,0,0,0,0,0,0,4.71153,0,0),
(6401,22,-819.679,-4936.64,20.7199,0,0,0,0,0,0,0,0,0,0,4.82776,0,0),
(6401,23,-821.131,-4940.8,21.2849,0,0,0,0,0,0,0,0,0,0,3.98032,0,0);
	
	
-- ====================================================
-- Fix Some NPC Spawn Z Value Issues In Wailing Caverns - NPC Below Floor Level
-- ====================================================
UPDATE creature SET position_z='-106.160' WHERE guid IN (26257);
UPDATE creature SET position_z='-106.707' WHERE guid IN (33979);
UPDATE creature SET position_z='-79.2175' WHERE guid IN (85900);
UPDATE creature SET position_z='-79.5085' WHERE guid IN (52598);
UPDATE creature SET position_z='-55.4227' WHERE guid IN (86048);
UPDATE creature SET position_z='-70.9617' WHERE guid IN (87125);
UPDATE creature SET position_z='-71.0915' WHERE guid IN (87121);
UPDATE creature SET position_z='-106.0118' WHERE guid IN (18678);
UPDATE creature SET position_z='-106.3817' WHERE guid IN (38134);
UPDATE creature SET position_z='-106.1595' WHERE guid IN (26206);
UPDATE creature SET position_z='-106.1595' WHERE guid IN (26258);
UPDATE creature SET position_z='-106.1595' WHERE guid IN (26254);
UPDATE creature SET position_z='-106.4102' WHERE guid IN (27365);
UPDATE creature SET position_z='-72.4514' WHERE guid IN (27386);
UPDATE creature SET position_z='-106.1595' WHERE guid IN (33970);
UPDATE creature SET position_z='-105.8142' WHERE guid IN (18677);
UPDATE creature SET position_z='-106.7121' WHERE guid IN (38133);
UPDATE creature SET position_z='-62.8618' WHERE guid IN (86003);
UPDATE creature SET position_z='-106.1847' WHERE guid IN (27370);

-- ===================================================================
-- Fix Some NPC Spawn Position and Z Value Issues In Blackfathom Deeps
-- ===================================================================
UPDATE creature SET position_x='-303.8273', position_y='344.955', position_z='-53.5', orientation='3.472466', spawndist=0, movementtype=0 WHERE guid IN (26120);
UPDATE creature SET position_z='-58.1807' WHERE guid IN (26143);
UPDATE creature SET position_z='-58.1102' WHERE guid IN (26144);
UPDATE creature SET position_z='-58.0236' WHERE guid IN (26145);
UPDATE creature SET position_z='-58.084' WHERE guid IN (26146);
UPDATE creature SET position_z='-48.0472' WHERE guid IN (18750);
UPDATE creature SET position_z='-48.0811' WHERE guid IN (18749);
UPDATE creature SET position_z='-48.0797' WHERE guid IN (18744);
UPDATE creature SET position_z='-47.9456' WHERE guid IN (18746);
UPDATE creature SET position_z='-48.3319' WHERE guid IN (18748);
UPDATE creature SET position_z='-48.1517' WHERE guid IN (18745);
UPDATE creature SET position_z='-48.4283' WHERE guid IN (18742);
UPDATE creature SET position_z='-48.4976' WHERE guid IN (18741);
UPDATE creature SET position_z='-48.2054' WHERE guid IN (18740);
UPDATE creature SET position_z='-34.7544' WHERE guid IN (27400);
UPDATE creature_addon SET auras='' WHERE guid IN (27407);
UPDATE creature SET position_x='-811.5183', position_y='-85.8134', position_z='-40.6232' WHERE guid IN (27405);
UPDATE creature SET position_z='-33.8519' WHERE guid IN (27434);
UPDATE creature SET position_z='-33.8884' WHERE guid IN (27435);

-- ===============================================================
-- Pathing for Empoor Entry: 18482 and Formation for his Bodyguard - Thanks Malcrom
-- ===============================================================
-- Empoor
UPDATE creature_template SET MovementType=2 WHERE entry=18482;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1954.978,`position_y`=4752.3,`position_z`=-2.763442 WHERE `guid`=66605;
-- Empoor's Bodyguard
UPDATE `creature` SET `position_x`=-1956.585, `position_y`=4751.758, `position_z`=-2.86066, `orientation`=2.005122 WHERE `guid`=66606;

DELETE FROM creature_linking WHERE master_guid IN (66605);
INSERT INTO creature_linking VALUES (66606,66605,515);

DELETE FROM creature_movement_template WHERE entry=18482;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(18482,1,-1954.978,4752.3,-2.763442,0),
(18482,2,-1957.74,4762.069,-2.1277,0),
(18482,3,-1958.931,4774.595,-1.305666,0),
(18482,4,-1959.278,4786.453,-0.680666,0),
(18482,5,-1957.059,4799.901,-0.05566597,0),
(18482,6,-1952.969,4812.153,0.4542291,0),
(18482,7,-1947.459,4824.405,0.695318,0),
(18482,8,-1940.22,4836.162,1.116857,0),
(18482,9,-1931.706,4848.864,1.735298,0),
(18482,10,-1926.987,4857.382,1.735298,0),
(18482,11,-1922.212,4869.189,1.888846,0),
(18482,12,-1918.467,4883.836,2.155447,0),
(18482,13,-1918.326,4893.268,2.520438,0),
(18482,14,-1921.362,4904.434,4.286795,0),
(18482,15,-1926.933,4916.866,7.852347,0),
(18482,16,-1932.68,4930.549,12.62505,0),
(18482,17,-1936.969,4938.175,15.91945,0),
(18482,18,-1943.332,4944.548,19.00856,0),
(18482,19,-1949.685,4955.148,22.99416,0),
(18482,20,-1957.245,4971.249,26.83323,0),
(18482,21,-1959.033,4989.208,29.75962,0),
(18482,22,-1959.903,5001.704,31.27128,0),
(18482,23,-1958.824,5016.848,32.75065,0),
(18482,24,-1955.496,5027.162,32.08219,0),
(18482,25,-1949.074,5037.299,27.67075,0),
(18482,26,-1940.842,5049.157,22.12509,0),
(18482,27,-1933.553,5052.723,20.48105,0),
(18482,28,-1932.813,5055.973,19.7382,0),
(18482,29,-1935.718,5059.009,19.13364,0),
(18482,30,-1938.679,5057.717,19.45517,0),
(18482,31,-1940.78,5053.983,20.79599,0),
(18482,32,-1940.788,5050.398,21.78232,0),
(18482,33,-1943.925,5045.257,23.89938,0),
(18482,34,-1948.459,5038.444,27.02377,0),
(18482,35,-1952.349,5033.815,29.49814,0),
(18482,36,-1955.94,5026.934,32.19035,0),
(18482,37,-1958.847,5018.866,32.87931,0),
(18482,38,-1960.388,5008.151,32.10392,0),
(18482,39,-1959.649,4995.389,30.60495,0),
(18482,40,-1958.526,4982.475,28.72519,0),
(18482,41,-1956.045,4969.47,26.49472,0),
(18482,42,-1951.652,4957.231,23.63356,0),
(18482,43,-1946.108,4948.339,20.83034,0),
(18482,44,-1939.516,4941.397,17.3329,0),
(18482,45,-1932.445,4928.974,12.04595,0),
(18482,46,-1927.229,4916.588,7.915579,0),
(18482,47,-1922.276,4905.163,4.571219,0),
(18482,48,-1915.32,4900.36,2.12908,0),
(18482,49,-1909.361,4900.604,1.032401,0),
(18482,50,-1901.186,4904.915,-0.7529998,0),
(18482,51,-1893.884,4911.838,-3.170728,0),
(18482,52,-1886.202,4920.901,-6.797315,0),
(18482,53,-1878.948,4930.252,-11.26155,0),
(18482,54,-1873.738,4937.32,-14.07134,0),
(18482,55,-1869.677,4942.98,-16.16705,0),
(18482,56,-1866.752,4948.752,-17.90313,0),
(18482,57,-1864.945,4956.149,-19.62491,0),
(18482,58,-1864.546,4965.338,-21.15067,0),
(18482,59,-1865.516,4969.611,-21.61164,0),
(18482,60,-1867.728,4970.081,-21.52201,0),
(18482,61,-1869.4,4967.932,-21.26408,0),
(18482,62,-1868.561,4963.51,-20.60308,0),
(18482,63,-1866.918,4958.647,-20.03289,0),
(18482,64,-1867.127,4953.813,-18.94048,0),
(18482,65,-1868.12,4949.346,-17.88165,0),
(18482,66,-1870.746,4943.62,-16.19219,0),
(18482,67,-1874.541,4937.907,-14.24078,0),
(18482,68,-1879.867,4930.647,-11.21943,0),
(18482,69,-1886.922,4921.398,-6.743848,0),
(18482,70,-1894.731,4912.087,-2.997022,0),
(18482,71,-1901.48,4905.404,-0.8352752,0),
(18482,72,-1908.661,4897.943,1.188406,0),
(18482,73,-1915.186,4888.852,2.12908,0),
(18482,74,-1919.656,4879.008,2.12908,0),
(18482,75,-1922.473,4867.417,2.00408,0),
(18482,76,-1927.96,4855.975,1.735298,0),
(18482,77,-1934.882,4844.2,1.505529,0),
(18482,78,-1943.717,4831.167,0.7706354,0),
(18482,79,-1950.078,4818.386,0.5792291,0),
(18482,80,-1957.056,4801.952,0.1136529,0),
(18482,81,-1958.388,4790.062,-0.430666,0),
(18482,82,-1958.355,4777.865,-1.180666,0),
(18482,83,-1956.92,4764.738,-1.932387,0),
(18482,84,-1956.379,4755.673,-2.520034,0),
(18482,85,-1952.63,4747.662,-2.888442,0),
(18482,86,-1947.632,4738.14,-3.12416,0),
(18482,87,-1943.565,4726.114,-3.106597,0),
(18482,88,-1940.986,4712.541,-2.731597,0),
(18482,89,-1941.015,4699.2,-2.249105,0),
(18482,90,-1941.772,4688.908,-2.124105,0),
(18482,91,-1945.519,4676.243,-1.860556,0),
(18482,92,-1949.903,4664.792,-1.32178,0),
(18482,93,-1953.648,4652.405,-0.9228547,0),
(18482,94,-1955.702,4641.475,-0.1967804,0),
(18482,95,-1954.826,4628.333,0.6725454,0),
(18482,96,-1953.227,4618.669,1.832091,0),
(18482,97,-1949.518,4608.742,3.148376,0),
(18482,98,-1947.033,4598.139,4.958476,0),
(18482,99,-1946.533,4587.874,6.832988,0),
(18482,100,-1948.285,4576.442,8.562114,0),
(18482,101,-1952.725,4567.673,9.98936,0),
(18482,102,-1958.148,4560.353,11.17323,0),
(18482,103,-1965.709,4551.65,12.39723,0),
(18482,104,-1971.081,4543.296,13.14356,0),
(18482,105,-1975.564,4532.993,13.48565,0),
(18482,106,-1977.15,4525.117,13.41509,0),
(18482,107,-1978.05,4513.065,12.86065,0),
(18482,108,-1978.589,4501.11,12.18145,0),
(18482,109,-1981.737,4483.694,11.36078,0),
(18482,110,-1987.182,4470.06,10.33051,0),
(18482,111,-1996.76,4455.001,8.793629,0),
(18482,112,-2004.436,4442.11,7.641087,0),
(18482,113,-2007.973,4429.895,6.499888,0),
(18482,114,-2013.409,4410.697,4.321177,0),
(18482,115,-2023.097,4394.424,2.780378,0),
(18482,116,-2032.503,4383.386,2.058576,0),
(18482,117,-2043.49,4372.459,1.706719,0),
(18482,118,-2051.505,4359.686,2.099432,0),
(18482,119,-2054.104,4350.861,2.433538,0),
(18482,120,-2056.367,4340.22,2.724432,0),
(18482,121,-2056.542,4330.677,2.99682,0),
(18482,122,-2056.664,4324.11,2.99682,0),
(18482,123,-2056.214,4332.018,2.99682,0),
(18482,124,-2056.039,4340.757,2.724432,0),
(18482,125,-2054.203,4351.41,2.349432,0),
(18482,126,-2051.373,4359.925,2.099432,0),
(18482,127,-2045.291,4369.335,1.699029,0),
(18482,128,-2036.629,4378.904,1.956719,0),
(18482,129,-2028.419,4387.346,2.141706,0),
(18482,130,-2020.791,4397.267,2.932233,0),
(18482,131,-2014.119,4409.571,4.224986,0),
(18482,132,-2010.106,4421.343,5.473643,0),
(18482,133,-2006.266,4435.879,7.076633,0),
(18482,134,-2000.813,4450.336,8.24387,0),
(18482,135,-1991.514,4462.025,9.336842,0),
(18482,136,-1984.121,4478.006,10.909,0),
(18482,137,-1979.109,4494.063,11.96088,0),
(18482,138,-1977.873,4513.339,12.86065,0),
(18482,139,-1977.565,4527.156,13.43194,0),
(18482,140,-1974.89,4537.26,13.51856,0),
(18482,141,-1965.713,4550.698,12.51149,0),
(18482,142,-1956.546,4560.43,11.15467,0),
(18482,143,-1949.815,4570.688,9.502421,0),
(18482,144,-1945.956,4583.912,7.290629,0),
(18482,145,-1947.067,4599.292,4.717265,0),
(18482,146,-1951.106,4613.875,2.407409,0),
(18482,147,-1955.157,4628.071,0.7039175,0),
(18482,148,-1955.746,4639.441,-0.1173127,0),
(18482,149,-1952.89,4651.96,-0.8695099,0),
(18482,150,-1949.483,4665.713,-1.32178,0),
(18482,151,-1945.589,4678.891,-2.186483,0),
(18482,152,-1942.095,4687.913,-2.124105,0),
(18482,153,-1941.368,4696.736,-2.249105,0),
(18482,154,-1941.158,4708.608,-2.731597,0),
(18482,155,-1942.176,4717.764,-2.855133,0),
(18482,156,-1945.629,4731.166,-3.231597,0),
(18482,157,-1949.973,4740.833,-2.925796,0);


-- ====================================================================
-- Pathing for Captain Dranarus Entry: 25138 and Shattered Sun Trainees - Thanks Malcrom
-- ====================================================================
-- ----------------
-- Captain Dranarus
-- ----------------
UPDATE creature_template SET MovementType=2 WHERE entry=25138;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1842.622,`position_y`=5313.065,`position_z`=-12.42815 WHERE `guid`=96619;

DELETE FROM creature_movement_template WHERE entry=25138;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `emote`) VALUES
(25138,1,-1842.622,5313.065,-12.42815,0,2000,0),
(25138,2,-1842.622,5313.065,-12.42815,2.478368,4000,25), -- OneShotPoint (25)
(25138,3,-1842.622,5313.065,-12.42815,0,4000,6), -- OneShotQuestion (6)
(25138,4,-1842.622,5313.065,-12.42815,0,12000,22), -- OneShotShot (22) -- play sound 9739
(25138,5,-1842.622,5313.065,-12.42815,0,4000,18), -- OneShotCry (18)
(25138,6,-1850.026,5310.596,-12.42815,0,0,0),
(25138,7,-1852.461,5313.779,-12.42815,0,0,0),
(25138,8,-1851.368,5318.353,-12.42815,0,0,0),
(25138,9,-1843.579,5320.41,-12.42815,0,0,0),
(25138,10,-1840.255,5319.294,-12.42815,0,1000,0),
(25138,11,-1840.255,5319.294,-12.42815,4.502949,4000,25), -- OneShotPoint (25)
(25138,12,-1840.255,5319.294,-12.42815,0,13000,5), -- OneShotExclamation (5)
(25138,13,-1840.255,5319.294,-12.42815,0,4000,21), -- OneShotApplaud (21)
(25138,14,-1835.1,5320.241,-12.42815,0,0,0),
(25138,15,-1835.244,5316.951,-12.42815,0,1000,0),
(25138,16,-1835.23,5317.261,-12.42815,3.141593,20000,0),
(25138,17,-1835.23,5317.261,-12.42815,0,11000,22), -- OneShotShot (22) -- play sound 9739
(25138,18,-1840.227,5311.866,-12.42815,0,0,0),
(25138,19,-1842.643,5312.999,-12.42815,0,1000,0),
(25138,20,-1842.643,5312.999,-12.42815,1.239184,4000,25), -- OneShotPoint (25)
(25138,21,-1842.643,5312.999,-12.42815,0,7000,274), -- OneShotNo (274)
(25138,22,-1842.643,5312.999,-12.42815,0,3000,25), -- OneShotPoint (25)
(25138,23,-1842.643,5312.999,-12.42815,0,7000,11), -- OneShotLaugh (11)
(25138,24,-1847.878,5310.522,-12.42815,0,0,0),
(25138,25,-1851.1,5314.04,-12.42815,0,1000,0),
(25138,26,-1851.1,5314.04,-12.42815,0.08726646,5000,0),
(25138,27,-1851.1,5314.04,-12.42815,0,21000,22), -- OneShotShot (22) -- play sound 9739
(25138,28,-1846.24,5319.435,-12.42815,0,0,0),
(25138,29,-1843.72,5318.517,-12.42815,0,0,0),
(25138,30,-1843.72,5318.517,-12.42815,5.445427,7000,25), -- OneShotPoint (25)
(25138,31,-1843.72,5318.517,-12.42815,0,4000,273), -- OneShotYes (273)
(25138,32,-1843.72,5318.517,-12.42815,0,11000,21), -- OneShotApplaud (21)
(25138,33,-1836.766,5321.29,-12.42815,0,0,0),
(25138,34,-1835.244,5316.951,-12.42815,0,21000,0),
(25138,35,-1835.244,5316.951,-12.42815,3.141593,10000,22), -- OneShotShot (22) -- play sound 9739
(25138,36,-1840.227,5311.866,-12.42815,0,0,0);

-- -----------------------------------------
-- Shattered Sun Trainee - Practice Fighting (GUID: 96596,96595,96610,96600,96611,96612,96603,96604)
-- -----------------------------------------
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid` IN (96596,96595,96610,96600,96611,96612,96603,96604);
DELETE FROM `creature_movement` WHERE `id` IN (96596,96595,96610,96600,96611,96612,96603,96604);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
('96595','1','-1841.71','5317.6','-12.3448','4.76475','3000','9659501'),
('96596','1','-1838.47','5318.06','-12.3448','4.69494','3000','9659501'),
('96600','1','-1847.88','5316.36','-12.3448','4.86947','3000','9659501'),
('96603','1','-1841.16','5314.73','-12.3448','1.5708','3000','9659501'),
('96604','1','-1837.87','5315.29','-12.3448','1.48353','3000','9659501'),
('96610','1','-1845.03','5317.04','-12.3448','4.83456','3000','9659501'),
('96611','1','-1847.71','5313.56','-12.3448','1.71042','3000','9659501'),
('96612','1','-1844.47','5314.21','-12.3448','1.67552','3000','9659501');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (9659501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('9659501','0','1','36','0','0','0','0','43','54','0','0','0','0','0','0','Shattered Sun Trainee - Practice Fighting Emotes');


-- =========================
-- Shattrath City Misc Fixes
-- =========================
-- -----------------------------------------
-- Skyguard Neather Ray Should not be moving
-- -----------------------------------------
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE guid=79011;

-- --------------------------------------
-- Add Missing Shattrath City Peacekeeper
-- --------------------------------------
DELETE FROM `creature` WHERE `guid`=107577;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(107577, 19687, 530, 1, -1976.909, 5112.424, 7.589328, 4.276057, 120, 0, 0);

-- ---------------------------------------------------
-- Pathing for Shattrath City Peacekeeper Entry: 19687
-- ---------------------------------------------------
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1966.495,`position_y`=5121.907,`position_z`=10.32379 WHERE `guid`=70228;
DELETE FROM `creature_addon` WHERE `guid`=70228;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
('70228','17063','0','1','16','0','0','');
DELETE FROM `creature_movement` WHERE `id`=70228;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(70228,1,-1966.495,5121.907,10.32379,0),
(70228,2,-1951.699,5166.294,17.25317,0),
(70228,3,-1938.637,5205.161,15.87822,0),
(70228,4,-1931.686,5226.178,13.69076,0),
(70228,5,-1916.49,5271.667,3.115327,0),
(70228,6,-1907.977,5296.765,1.137226,0),
(70228,7,-1901.641,5315.616,0.8860542,0),
(70228,8,-1907.977,5296.765,1.137226,0),
(70228,9,-1916.49,5271.667,3.115327,0),
(70228,10,-1931.686,5226.178,13.69076,0),
(70228,11,-1938.637,5205.161,15.87822,0),
(70228,12,-1951.699,5166.294,17.25317,0);

-- ------------------------------
-- Pathing for Vekax Entry: 22429
-- ------------------------------
UPDATE creature_template SET MovementType=2 WHERE entry=22429;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1668.65,`position_y`=5531.648,`position_z`=2.084388 WHERE `guid`=78783;
DELETE FROM creature_movement_template WHERE entry=22429;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(22429,1,-1668.65,5531.648,2.084388,0),
(22429,2,-1675.535,5539.932,4.808745,0),
(22429,3,-1669.465,5544.53,5.413347,0),
(22429,4,-1656.403,5534.61,6.1091,0),
(22429,5,-1642.701,5537.171,6.172705,0),
(22429,6,-1641.732,5532.27,5.289427,0),
(22429,7,-1638.772,5516.784,-3.276233,0),
(22429,8,-1633.397,5489.191,-14.53821,0),
(22429,9,-1629.011,5484.991,-14.49736,0),
(22429,10,-1624.565,5486.951,-14.3688,0),
(22429,11,-1615.755,5487.401,-14.04851,0),
(22429,12,-1606.827,5480.522,-14.09892,0),
(22429,13,-1602.518,5469.729,-14.09986,0),
(22429,14,-1604.27,5462.537,-14.10011,0),
(22429,15,-1612.627,5453.875,-14.09042,0),
(22429,16,-1623.32,5451.606,-14.07838,0),
(22429,17,-1633.862,5457.565,-14.19732,0),
(22429,18,-1637.261,5469.756,-14.69115,0),
(22429,19,-1632.431,5481.022,-14.52123,0),
(22429,20,-1637.261,5469.756,-14.69115,0),
(22429,21,-1633.862,5457.565,-14.19732,0),
(22429,22,-1623.32,5451.606,-14.07838,0),
(22429,23,-1612.843,5453.652,-14.09002,0),
(22429,24,-1604.27,5462.537,-14.10011,0),
(22429,25,-1602.518,5469.729,-14.09986,0),
(22429,26,-1606.827,5480.522,-14.09892,0),
(22429,27,-1615.755,5487.401,-14.04851,0),
(22429,28,-1624.565,5486.951,-14.3688,0),
(22429,29,-1629.011,5484.991,-14.49736,0),
(22429,30,-1633.36,5489.002,-14.55791,0),
(22429,31,-1638.772,5516.784,-3.276233,0),
(22429,32,-1641.732,5532.27,5.289427,0),
(22429,33,-1642.701,5537.171,6.172705,0),
(22429,34,-1656.217,5534.645,6.133076,0),
(22429,35,-1669.465,5544.53,5.413347,0),
(22429,36,-1675.535,5539.932,4.808745,0),
(22429,37,-1668.774,5531.669,2.197366,0),
(22429,38,-1648.668,5528.287,-5.18554,0);

-- ----------------------------------------
-- Pathing for Skettis Outcast Entry: 19075
-- ----------------------------------------
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1622.079,`position_y`=5473.997,`position_z`=-4.175363 WHERE `guid`=68385;
DELETE FROM `creature_movement` WHERE `id`=68385;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(68385,1,-1622.079,5473.997,-4.175363,0),
(68385,2,-1624.692,5470.754,-4.14517,0),
(68385,3,-1624.417,5467.651,-4.055672,0),
(68385,4,-1622.095,5464.667,-4.021505,0),
(68385,5,-1618.157,5464.342,-4.122393,0),
(68385,6,-1614.648,5466.909,-3.965191,0),
(68385,7,-1614.635,5471.312,-4.240356,0),
(68385,8,-1618.361,5474.586,-3.982594,0);


-- =========================================
-- Fix All Normal/Heroic TBC Dungeon Portals
-- =========================================
-- -----------------------------------
-- HELLFIRE CITADEL: HELLFIRE RAMPARTS
-- -----------------------------------
-- Normal Mode (Outside Instance) - 184127
UPDATE gameobject SET position_x='-364.502', position_y='3081.91', position_z='-14.7253', orientation='1.84872', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26341;
-- Heroic Mode (Outside Instance) - 184128
UPDATE gameobject SET position_x='-364.488', position_y='3081.89', position_z='-14.7177', orientation='1.85181', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=25033;
-- Normal Mode (Inside Instance) - 184179
UPDATE gameobject SET position_x='-1357.394', position_y='1636.751', position_z='65.54296', orientation='1.015861', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26342;
-- Heroic Mode (Inside Instance) - 184180
UPDATE gameobject SET position_x='-1357.4', position_y='1636.72', position_z='65.5564', orientation='1.01896', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26343;

-- -------------------------------
-- HELLFIRE CITADEL: BLOOD FURNACE
-- -------------------------------
-- Normal Mode (Outside Instance) - 184131
UPDATE gameobject SET position_x='-305.589', position_y='3167.3', position_z='30.9894', orientation='2.15615', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=29716;
-- Heroic Mode (Outside Instance) - 184132
UPDATE gameobject SET position_x='-305.563', position_y='3167.28', position_z='31.0006', orientation='2.15924', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26344;
-- Normal Mode (Inside Instance) - 184175
UPDATE gameobject SET position_x='-0.626152', position_y='25.2928', position_z='-45.1701', orientation='-1.9627', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26345;
-- Heroic Mode (Inside Instance) - 184176
UPDATE gameobject SET position_x='-0.629567', position_y='25.3203', position_z='-45.1592', orientation='-1.95961', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26346;

-- ---------------------------------
-- HELLFIRE CITADEL: SHATTERED HALLS
-- ---------------------------------
-- Normal Mode (Outside Instance) - 184130
UPDATE gameobject SET position_x='-310.372', position_y='3087.27', position_z='-4.18958', orientation='1.38937', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=29713;
-- Heroic Mode (Outside Instance) - 184129
UPDATE gameobject SET position_x='-310.372', position_y='3087.27', position_z='-4.18958', orientation='1.38937', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26347;
-- Normal Mode (Inside Instance) - 184177
UPDATE gameobject SET position_x='-42.0439', position_y='-26.523', position_z='-14.1031', orientation='-1.70302', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26348;
-- Heroic Mode (Inside Instance) - 184178
UPDATE gameobject SET position_x='-42.0505', position_y='-26.5066', position_z='-14.0962', orientation='-1.69993', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26349;

-- ----------------------------------
-- COILFANG RESERVOIR: THE SLAVE PENS
-- ----------------------------------
-- Normal Mode (Outside Instance) - 184211
UPDATE gameobject SET position_x='740.112', position_y='7014.18', position_z='-70.4291', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26350;
-- Heroic Mode (Outside Instance) - 184210
UPDATE gameobject SET position_x='740.112', position_y='7014.18', position_z='-70.4291', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26351;
-- Normal Mode (Inside Instance) - 184198
UPDATE gameobject SET position_x='120.902', position_y='-137.014', position_z='1.05554', orientation='1.57079', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26353;
-- Heroic Mode (Inside Instance) - 184197
UPDATE gameobject SET position_x='120.902', position_y='-137.014', position_z='1.05554', orientation='1.57079', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26352;

-- --------------------------------
-- COILFANG RESERVOIR: THE UNDERBOG
-- --------------------------------
-- Normal Mode (Outside Instance) - 184206
UPDATE gameobject SET position_x='781.97', position_y='6745.99', position_z='-72.4238', orientation='1.65806', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26354;
-- Heroic Mode (Outside Instance) - 184207
UPDATE gameobject SET position_x='781.97', position_y='6745.99', position_z='-72.4238', orientation='1.65806', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=25063;
-- Normal Mode (Inside Instance) - 184200
UPDATE gameobject SET position_x='5.22929', position_y='-12.1156', position_z='-2.63621', orientation='2.09439', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26355;
-- Heroic Mode (Inside Instance) - 184199
UPDATE gameobject SET position_x='5.22929', position_y='-12.1156', position_z='-2.63621', orientation='2.09439', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26356;

-- ----------------------------------
-- COILFANG RESERVOIR: THE STEAMVAULT
-- ----------------------------------
-- Normal Mode (Outside Instance) - 184208
UPDATE gameobject SET position_x='818.386', position_y='6947.67', position_z='-79.147', orientation='1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26357;
-- Heroic Mode (Outside Instance) - 184209
UPDATE gameobject SET position_x='818.386', position_y='6947.67', position_z='-79.147', orientation='1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26358;
-- Normal Mode (Inside Instance) - 184201
UPDATE gameobject SET position_x='-23.7936', position_y='4.42258', position_z='-2.84397', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=12082;
-- Heroic Mode (Inside Instance) - 184202
UPDATE gameobject SET position_x='-23.7936', position_y='4.42258', position_z='-2.84397', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=11952;

-- ----------------------
-- AUCHINDOUN: MANA TOMBS
-- ----------------------
-- Normal Mode (Outside Instance) - 184181
UPDATE gameobject SET position_x='-3073.97', position_y='4943.09', position_z='-102.055', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26359;
-- Heroic Mode (Outside Instance) - 184182
UPDATE gameobject SET position_x='-3073.97', position_y='4943.09', position_z='-102.055', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26360;
-- Normal Mode (Inside Instance) - 184194
UPDATE gameobject SET position_x='6.65736', position_y='1.04132', position_z='-2.00546', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=43138;
-- Heroic Mode (Inside Instance) - 184193
UPDATE gameobject SET position_x='6.65736', position_y='1.04132', position_z='-2.00546', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=43139;

-- ---------------------------
-- AUCHINDOUN: AUCHENAI CRYPTS
-- ---------------------------
-- Normal Mode (Outside Instance) - 184185
UPDATE gameobject SET position_x='-3362', position_y='5230.92', position_z='-102.056', orientation='1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26361;
-- Heroic Mode (Outside Instance) - 184186
UPDATE gameobject SET position_x='-3362', position_y='5230.92', position_z='-102.056', orientation='1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26362;
-- Normal Mode (Inside Instance) - 184192
UPDATE gameobject SET position_x='-28.5773', position_y='0.158444', position_z='-1.18062', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26363;
-- Heroic Mode (Inside Instance) - 184191
UPDATE gameobject SET position_x='-28.5773', position_y='0.158444', position_z='-1.18062', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26364;

-- -------------------------
-- AUCHINDOUN: SETHEKK HALLS
-- -------------------------
-- Normal Mode (Outside Instance) - 184183
UPDATE gameobject SET position_x='-3361.93', position_y='4655.23', position_z='-102.056', orientation='-1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26365;
-- Heroic Mode (Outside Instance) - 184184
UPDATE gameobject SET position_x='-3361.93', position_y='4655.23', position_z='-102.056', orientation='-1.5708', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=25060;
-- Normal Mode (Inside Instance) - 184190
UPDATE gameobject SET position_x='-8.53784', position_y='-0.0184067', position_z='-1.0496', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=112784;
-- Heroic Mode (Inside Instance) - 184189
UPDATE gameobject SET position_x='-8.53784', position_y='-0.0184067', position_z='-1.0496', orientation='0', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=112783;

-- ----------------------------
-- AUCHINDOUN: SHADOW LABYRINTH
-- ----------------------------
-- Normal Mode (Outside Instance) - 184188
UPDATE gameobject SET position_x='-3649.94', position_y='4943.07', position_z='-102.091', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26366;
-- Heroic Mode (Outside Instance) - 184187
UPDATE gameobject SET position_x='-3649.94', position_y='4943.07', position_z='-102.091', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26367;
-- Normal Mode (Inside Instance) - 184196
UPDATE gameobject SET position_x='7.54602', position_y='-0.166749', position_z='-2.13578', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=25062;
-- Heroic Mode (Inside Instance) - 184195
UPDATE gameobject SET position_x='7.54602', position_y='-0.166749', position_z='-2.13578', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=25061;

-- ----------------------------------------
-- CAVERNS OF TIME: OLD HILLSBRAD FOOTHILLS
-- ----------------------------------------
-- Normal Mode (Outside Instance) - 184527
UPDATE gameobject SET position_x='-8335.52', position_y='-4056.65', position_z='-208.092', orientation='0.666106', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=17457;
-- Heroic Mode (Outside Instance) - 184526
UPDATE gameobject SET position_x='-8335.52', position_y='-4056.65', position_z='-208.092', orientation='0.666106', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=17456;
-- Normal Mode (Inside Instance) - 184174
UPDATE gameobject SET position_x='2761.42', position_y='1296.29', position_z='13.5566', orientation='2.83853', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=30237;
-- Heroic Mode (Inside Instance) - 184173
UPDATE gameobject SET position_x='2761.42', position_y='1296.29', position_z='13.5566', orientation='2.83853', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=30236;

-- ---------------------------------
-- CAVERNS OF TIME: THE BLACK MORASS
-- ---------------------------------
-- Normal Mode (Outside Instance) - 184529
UPDATE gameobject SET position_x='-8768.41', position_y='-4170.35', position_z='-207.596', orientation='1.89224', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=17459;
-- Heroic Mode (Outside Instance) - 184528
UPDATE gameobject SET position_x='-8768.41', position_y='-4170.35', position_z='-207.596', orientation='1.89224', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=17458;
-- Normal Mode (Inside Instance) - 184171
UPDATE gameobject SET position_x='-1493.51', position_y='7030.03', position_z='35.5439', orientation='1.39482', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26368;
-- Heroic Mode (Inside Instance) - 184172
UPDATE gameobject SET position_x='-1493.51', position_y='7030.03', position_z='35.5439', orientation='1.39482', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26369;

-- --------------------------
-- TEMPEST KEEP: THE MECHANAR
-- --------------------------
-- Normal Mode (Outside Instance) - 184220
UPDATE gameobject SET position_x='2861.24', position_y='1544.99', position_z='252.083', orientation='0.733038', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26370;
-- Heroic Mode (Outside Instance) - 184219
UPDATE gameobject SET position_x='2861.24', position_y='1544.99', position_z='252.083', orientation='0.733038', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26371;
-- Normal Mode (Inside Instance) - 184227
UPDATE gameobject SET position_x='-38.0125', position_y='0.10273', position_z='0.504373', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26372;
-- Heroic Mode (Inside Instance) - 184228
UPDATE gameobject SET position_x='-38.0125', position_y='0.10273', position_z='0.504373', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26373;
-- Normal Mode (End Of Instance) - 184225
UPDATE gameobject SET position_x='73.9475', position_y='149.684', position_z='27.7701', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26374;
-- Heroic Mode (End Of Instance) - 184226
UPDATE gameobject SET position_x='73.9475', position_y='149.684', position_z='27.7701', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26375;

-- Main Areatriggers In and Out of Instance (Labels Were Wrong)
DELETE FROM areatrigger_teleport WHERE id IN (4469,4461);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('4469','The Mechanar (Entrance)','68','0','0','30634','0','0','0','554','-28.906','0.680314','-1.81282','0.0345509');
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('4461','The Mechanar (Exit)','0','0','0','0','0','0','0','530','2862.41','1546.09','252.161','0.805457');
-- Portal Out At Final Boss (Missing)
DELETE FROM areatrigger_teleport WHERE id IN (4614);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('4614','The Mechanar (Boss Exit)','0','0','0','0','0','0','0','530','2862.41','1546.09','252.161','0.805457');

-- --------------------------
-- TEMPEST KEEP: THE BOTANICA
-- --------------------------
-- Normal Mode (Outside Instance) - 184223
UPDATE gameobject SET position_x='3415.27', position_y='1481.96', position_z='182.74', orientation='2.49582', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26376;
-- Heroic Mode (Outside Instance) - 184222
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('119999','184222','530','1','3415.27','1481.96','182.74','2.4958','0','0','0','0','0','0','0');
UPDATE gameobject SET position_x='3415.27', position_y='1481.96', position_z='182.74', orientation='2.49582', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=119999;
-- Normal Mode (Inside Instance) - 184215
UPDATE gameobject SET position_x='47.5461', position_y='-35.5614', position_z='1.41111', orientation='2.35619', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=30822;
-- Heroic Mode (Inside Instance) - 184216
UPDATE gameobject SET position_x='47.5461', position_y='-35.5614', position_z='1.41111', orientation='2.35619', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=30823;
-- Normal Mode (End Of Instance) - 184217
UPDATE gameobject SET position_x='159.893', position_y='391.743', position_z='-34.6478', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26377;
-- Heroic Mode (End Of Instance) - 184218
UPDATE gameobject SET position_x='159.893', position_y='391.743', position_z='-34.6478', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26378;

-- Areatrigger Out of Instance After Final Boss
DELETE FROM areatrigger_teleport WHERE id IN (4612);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('4612','The Botanica (Atrium Exit)','0','0','0','0','0','0','0','530','3409.85','1486.26','182.837','2.53073');

-- --------------------------
-- TEMPEST KEEP: THE ARCATRAZ
-- --------------------------
-- Normal Mode (Outside Instance) - 184221
UPDATE gameobject SET position_x='3312.75', position_y='1330.01', position_z='505.652', orientation='1.94604', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26379;
-- Heroic Mode (Outside Instance) - 184222
UPDATE gameobject SET position_x='3312.75', position_y='1330.01', position_z='505.652', orientation='1.94604', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26380;
-- Normal Mode (Inside Instance) - 184213
UPDATE gameobject SET position_x='-3.77762', position_y='0.178076', position_z='-1.55146', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26218;
-- Heroic Mode (Inside Instance) - 184214
UPDATE gameobject SET position_x='-3.77762', position_y='0.178076', position_z='-1.55146', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=26219;

-- Main Areatriggers In and Out of Instance (Labels Were Wrong)
DELETE FROM areatrigger_teleport WHERE id IN (4455,4468);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('4455','The Arcatraz (Exit)','0','0','0','0','0','0','0','530','3312.09','1331.89','505.559','2.00554');
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('4468','The Arcatraz (Entrance)','68','0','0','30634','0','0','0','552','-1.23165','0.0143459','-0.204293','0.0157123');

-- ------------------
-- MAGISTER'S TERRACE
-- ------------------
-- Normal/Heroic Mode (Outside Instance) - 188178 (NEW DESIGN IN 2.4 SINGLE GAMEOBJECT FOR BOTH MODES)
UPDATE gameobject SET position_x='12882.4', position_y='-7341.65', position_z='67.3815', orientation='1.09083', spawntimesecs='0', animprogress='0', state='0', SpawnMask='1' WHERE guid=26381;
-- Normal/Heroic Mode (Inside Instance) - 188177 (NEW DESIGN IN 2.4 SINGLE GAMEOBJECT FOR BOTH MODES)
UPDATE gameobject SET position_x='-5.48751', position_y='0', position_z='-0.678789', orientation='3.14159', spawntimesecs='0', animprogress='0', state='0', SpawnMask='3' WHERE guid=99801;


-- ======================================================
-- TEMPEST KEEP: THE MECHANAR - COMPLETE DUNGEON OVERHAUL
-- ======================================================
-- ---------------
-- DEVELOPER NOTES
-- ---------------
-- Tempest-Forge Patrollers OOC Random Yells (Reduce Them Significantly)


-- ========================================
-- CREATURE SPAWN / MOVEMENT / LINKING DATA
-- ========================================
-- --------------------------------------------------------------
-- Add Waypoint Movement for Tempest-Forge Patrollers at Entrance
-- --------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83197,83195);

-- Add Waypoint Movement for Left Tempest-Forge Patroller
DELETE FROM creature_movement WHERE id IN (83197);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,1, 30.412413,16.788836,0.000004,1.010184, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,2, 36.220158,25.138645,0.004621,0.963060, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,3, 40.694798,29.127783,0.004768,0.649686, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,4, 45.805305,31.141100,0.001092,0.308823, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,5, 44.015568,30.612194,-0.000453,3.349887, 0,7000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,6, 39.310558,29.368536,0.006656,3.383659, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,7, 32.127644,20.360249,0.000805,4.152564, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,8, 28.386742,11.934106,-0.000624,4.256237, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83197,9, 25.123917,10.674655,-0.000624,3.353028, 0,10000);

-- Add Waypoint Movement for Right Tempest-Forge Patroller
DELETE FROM creature_movement WHERE id IN (83195);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,1, 30.826485,-14.130724,-0.000624,5.151590, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,2, 38.110409,-23.433033,0.001603,5.341657, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,3, 40.605125,-24.640640,0.006674,5.260761, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,4, 44.810520,-26.274139,0.007961,6.240939, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,5, 43.838703,-25.854248,0.007961,3.061649, 0,7000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,6, 39.890831,-25.479780,0.006565,2.775764, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,7, 31.973940,-15.707380,-0.000693,2.266825, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,8, 27.719234,-9.830593,-0.000693,2.323374, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83195,9, 23.979473,-6.516403,-0.000693,2.573131, 0,10000);

-- -----------------------------------------------------------------------------
-- Add Waypoint Movement for Tempest-Forge Patrollers at Entrance - Left Hallway
-- -----------------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83189);
DELETE FROM creature_movement WHERE id IN (83189);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,1, 31.522797,40.752026,0.010816,4.448660, 0,3000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,2, 30.842739,54.284309,0.161750,1.604735, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,3, 34.066273,59.263588,0.161750,0.950498, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,4, 43.226204,59.598656,1.907646,0.099126, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,5, 77.777420,59.946453,14.924679,0.003307, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,6, 43.765900,59.991734,2.115064,3.157468, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,7, 34.121117,59.838612,0.163070,3.157468, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83189,8, 30.854591,55.892593,0.163070,4.026904, 0,0);

-- ------------------------------------------------------------------------------
-- Add Waypoint Movement for Tempest-Forge Patrollers at Entrance - Right Hallway
-- ------------------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83229);
DELETE FROM creature_movement WHERE id IN (83229);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,1, 32.364780,-36.320389,0.012541,1.545048, 0,3000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,2, 31.340508,-52.536175,0.161877,4.806805, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,3, 34.967564,-56.532352,0.161877,5.409991, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,4, 44.134144,-56.400688,2.256888,6.118421, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,5, 77.792725,-56.561775,14.924669,6.099571, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,6, 52.576408,-55.619606,5.768441,3.060867, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,7, 34.518326,-56.106770,0.163073,3.140978, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83229,8, 30.980734,-49.934277,0.163073,1.980159, 0,0);

-- -----------------------------------------------------------
-- Working Emotes for Mechanar Drillers and Mechanar Tinkerers - Right Platform
-- -----------------------------------------------------------
DELETE FROM creature_addon WHERE guid IN (83222,83223,83219,83220);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83222','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83223','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83219','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83220','0','0','1','0','28','0',NULL);

-- -------------------------------------------------------------
-- Add Waypoint Movement for Sunseeker Engineer - Right Platform
-- -------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83224);
DELETE FROM creature_movement WHERE id IN (83224);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,1, 99.881767,-54.005016,14.925436,4.732195, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,2, 103.471436,-61.750763,14.925436,5.313391, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,3, 103.371628,-72.745293,14.926078,4.635592, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,4, 100.888191,-76.364113,14.926305,4.110945, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,5, 104.719116,-70.519615,14.926305,1.038466, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,6, 100.447876,-48.726372,14.924889,1.872559, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,7, 101.485870,-38.418503,14.924889,1.470435, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,8, 107.033684,-19.532484,14.924889,1.285081, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,9, 100.549118,-33.546970,14.924889,4.279020, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83224,10, 99.185951,-44.549625,14.924889,4.549982, 0,0);

-- -----------------------------------------------------------
-- Add Waypoint Movement for Mechanar Crusher - Right Platform
-- -----------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83221);
DELETE FROM creature_movement WHERE id IN (83221);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,1, 105.541664,-76.030334,14.926203,5.197936, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,2, 105.907463,-80.626686,14.927241,4.933257, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,3, 105.469017,-75.875488,14.927241,1.941674, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,4, 102.454506,-73.001167,14.927241,2.268400, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,5, 95.037025,-71.383080,14.927241,2.949341, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,6, 91.062798,-72.778725,14.925817,3.536033, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83221,7, 96.733337,-71.023415,14.925817,0.300194, 0,0);

-- ----------------------------------------------------------------------
-- Fix Spawn Location and Add Waypoint Movement for Gatewatcher Iron-Hand
-- ----------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (83240);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('83240','19710','554','3','0','0','176.955','-77.0281','0.005777','1.00923','7200','0','0','121770','0','0','0');
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83240);
DELETE FROM creature_movement WHERE id IN (83240);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83240,1, 203.509796,-78.732452,0.003570,6.262937, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83240,2, 167.854065,-77.111694,1.042257,3.068724, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83240,3, 118.427399,-73.824837,14.926277,3.116634, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83240,4, 171.947784,-77.088531,0.004957,6.255871, 0,0);

-- --------------------------------------------------------------------
-- Add Random Movement for Mechanar Tinkerer Near Gatewatcher Iron-Hand
-- --------------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83207);

-- ----------------------------------------------------------------------
-- Add Waypoint Movement for Mechanar Tinkerer Near Gatewatcher Iron-Hand
-- ----------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83208);
DELETE FROM creature_movement WHERE id IN (83208);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,1, 226.707336,-109.535568,-0.006930,5.827829, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,2, 207.090210,-95.417854,-0.000968,2.555076, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,3, 204.143082,-88.258736,0.000499,1.961315, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,4, 206.055771,-76.719559,0.001450,1.336137, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,5, 213.491028,-69.769669,0.001450,0.724312, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,6, 220.044479,-69.263107,0.001450,0.077143, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,7, 212.019775,-69.871193,0.001450,3.127631, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,8, 205.587433,-76.048233,0.001631,3.906747, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,9, 202.411667,-87.217392,0.001631,4.396050, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83208,10, 203.795670,-92.609741,0.001631,4.936404, 0,0);

-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=8320801 WHERE id=83208 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=8320801;
INSERT INTO dbscripts_on_creature_movement VALUES (8320801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Mechanar Tinkerer (Mechanar) RUN ON');

-- -----------------------------------------------------------------------
-- Add Waypoint Movement for Sunseeker Engineer Near Gatewatcher Iron-Hand
-- -----------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83213);
DELETE FROM creature_movement WHERE id IN (83213);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,1, 224.938416,-55.702831,0.000941,6.276293, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,2, 229.919647,-57.626045,0.006562,5.951138, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,3, 224.517746,-55.831520,0.001421,2.864524, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,4, 217.022369,-59.497818,0.001421,3.596516, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,5, 214.244583,-63.656807,0.001421,4.154934, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,6, 213.930435,-67.416534,0.001421,4.732202, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,7, 214.230560,-61.333935,0.001421,1.521496, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,8, 220.343903,-55.360817,0.001421,0.773796, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83213,9, 225.221817,-55.463398,0.001421,6.262158, 0,0);

-- -----------------------------------------------------------------------------------
-- Working Emotes for Mechanar Drillers/Wreckers/Tinkerers Near Mechano-Lord Capacitus
-- -----------------------------------------------------------------------------------
DELETE FROM creature_addon WHERE guid IN (83209,83210,83211,83212);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83209','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83210','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83211','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83212','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83202','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83203','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83166','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83167','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83200','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83170','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83171','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83201','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83182','0','0','1','0','28','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83183','0','0','1','0','28','0',NULL);

-- ---------------------------------------------------------------------
-- Add Random Movement for Mechanar Tinkerer Near Mechano-Lord Capacitus
-- ---------------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83205);

-- ---------------------------------------------------------------------
-- Add Random Movement for Mechanar Tinkerer Near Mechano-Lord Capacitus
-- ---------------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83204);

-- ----------------------------------------------------------------------
-- Add Random Movement for Sunseeker Engineer Near Mechano-Lord Capacitus
-- ----------------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83199);

-- ----------------------------------------------------------------------
-- Add Random Movement for Sunseeker Engineer Near Mechano-Lord Capacitus
-- ----------------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83161);
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83199);

-- ----------------------------------------------------------------------
-- Add Random Movement for Sunseeker Engineer Near Mechano-Lord Capacitus
-- ----------------------------------------------------------------------
UPDATE creature SET position_x = '131.177628', position_y = '40.859821', position_z = '0.007842', orientation = '1.005482' WHERE guid = '83164';
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83164);

-- -----------------------------------------------------------------------
-- Add Waypoint Movement for Sunseeker Engineer Near Gatewatcher Iron-Hand
-- -----------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83165);
DELETE FROM creature_movement WHERE id IN (83165);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,1, 161.706573,53.282810,0.002310,0.546809, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,2, 161.060913,59.076488,0.002684,1.541124, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,3, 160.107513,51.911293,0.002794,4.538205, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,4, 150.199112,46.691360,0.005608,3.668769, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,5, 142.633331,46.352474,0.007714,3.140981, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,6, 137.854980,38.167126,0.006300,4.183990, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,7, 131.464996,37.728703,0.004902,3.210096, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,8, 139.445343,39.673992,0.005337,0.255427, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,9, 143.096222,45.951504,0.007527,1.055748, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83165,10, 151.936371,47.027950,0.007527,0.047296, 0,0);

-- ---------------------------------------------------------
-- Add Waypoint Movement for Mechanar Tinkerer Near Elevator
-- ---------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83168);
DELETE FROM creature_movement WHERE id IN (83168);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,1, 199.667145,41.566208,-0.006497,0.084213, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,2, 201.486237,38.811203,-0.006497,5.295330, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,3, 198.420441,41.301003,-0.006497,2.544864, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,4, 177.188675,38.745346,-0.006497,3.276856, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,5, 175.856964,36.210339,1.010475,4.159644, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,6, 180.795578,39.218742,-0.006297,0.397588, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83168,7, 191.441925,40.948536,-0.006297,0.124269, 0,0);

-- ------------------------------------------------------------
-- Add Waypoint Movement for Sunseeker Engineer - Left Platform
-- ------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83180);
DELETE FROM creature_movement WHERE id IN (83180);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,1, 98.721977,51.839466,14.925819,4.395267, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,2, 104.441872,42.031506,14.925819,5.240356, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,3, 114.305786,38.485058,14.925819,5.903233, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,4, 105.319809,41.786606,14.925819,2.815048, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,5, 100.334404,50.523270,14.925819,2.089340, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,6, 102.819885,64.991608,14.922036,1.358134, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,7, 114.836563,73.296341,14.922540,0.601010, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83180,8, 103.302742,64.102264,14.920649,4.108596, 0,0);

-- ---------------------------------------------------------
-- Add Random Movement for Mechanar Tinkerer - Left Platform
-- ---------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (87087);

-- -------------------------------------------------------------------------
-- Fix Spawn Location and Remove Waypoint Movement for Gatewatcher Gyro-Kill
-- -------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (83239);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('83239','19218','554','3','0','0','89.4443','24.2701','14.9247','0.79717','7200','0','0','92250','0','0','0');
UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (83239);
DELETE FROM creature_movement WHERE id IN (83239);

-- -----------------------------------------------------------------------------
-- Add Waypoint Movement for Tempest-Forge Patroller - Left Stairs Near Elevator
-- -----------------------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83177);
DELETE FROM creature_movement WHERE id IN (83177);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,1, 119.042442,78.411469,14.930287,3.083655, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,2, 173.877182,78.911194,0.003358,6.070525, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,3, 185.382538,69.350937,-0.005670,5.589861, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,4, 186.104767,50.859516,-0.005670,4.731421, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,5, 181.486160,47.454895,-0.005670,3.726111, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,6, 162.611740,47.148445,-0.003422,3.037317, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,7, 183.524628,47.419853,-0.006211,6.180482, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,8, 188.253357,53.326355,-0.006211,0.874332, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,9, 187.457611,68.593544,-0.006211,1.637740, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83177,10, 168.656601,80.567276,0.781544,2.595926, 0,0);

-- -------------------------------------------------------------
-- Add Waypoint Movement for Tempest-Forge Destroyer at Elevator
-- -------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83173);
DELETE FROM creature_movement WHERE id IN (83173);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83173,1, 202.825165,51.625511,-0.006384,3.066385, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83173,2, 225.529556,52.278435,-0.005581,0.021395, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83173,3, 244.322769,52.261787,0.180044,6.203264, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83173,4, 227.569061,52.611259,-0.002380,3.009837, 0,0);

-- -----------------------------------------
-- Remove 2 NPC At Top Of Elevator
-- -----------------------------------------
DELETE FROM creature WHERE guid IN (83231,83232);

-- -----------------------------------------
-- Remove 2 NPC Before Long Walkway Upstairs
-- -----------------------------------------
DELETE FROM creature WHERE guid IN (83235,83236);

-- ----------------------------------------------------------------
-- Remove Movement for Tempest-Forge Destroyer at Nethermancer Boss
-- ----------------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (83233);
UPDATE creature SET position_x = '291.911', position_y = '30.5269', position_z = '25.3862', orientation = '1.54016' WHERE guid = '83233';
DELETE FROM creature_movement WHERE id IN (83233);

-- ----------------------------------------------------------------
-- Remove Movement for Tempest-Forge Destroyer at Nethermancer Boss
-- ----------------------------------------------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83234);
UPDATE creature SET position_x = '295.365295', position_y = '-23.752296', position_z = '25.386166', orientation = '1.812110' WHERE guid = '83234';
DELETE FROM creature_movement WHERE id IN (83234);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('139984','19168','554','3','0','0','272.683','-24.5176','26.3284','0.0714562','10800','0','0','21636','3080','0','0'),
('139986','19510','554','3','0','0','274.023','-17.8571','26.3284','6.26825','10800','0','0','20958','0','0','0'),
('139987','19510','554','3','0','0','273.889','-26.8161','26.3284','6.25254','10800','0','0','20958','0','0','0'),
('139985','19168','554','3','0','0','272.424','-20.9008','26.3284','0.0714562','10800','0','0','21636','3080','0','0');

-- Group Linking
DELETE FROM creature_linking WHERE master_guid IN (139984);
INSERT INTO creature_linking VALUES (139987,139984,3);
INSERT INTO creature_linking VALUES (139985,139984,3);
INSERT INTO creature_linking VALUES (139986,139984,3);

-- ----------------------------------
-- Remove NPC From Final Boss Chamber
-- ----------------------------------
DELETE FROM creature WHERE guid IN (83245);

-- -------------------------
-- Missing UDB NPC Backports - RE-GUID BECAUSE OF CONFLICT
-- -------------------------
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('139988','19168','554','3','0','0','308.545','15.4713','25.3862','3.14629','10800','0','0','21636','3080','0','0'),
('139989','19510','554','3','0','0','308.485','20.3946','25.3862','3.12981','10800','0','0','20958','0','0','0'),
('139990','19510','554','3','0','0','308.485','11.1399','25.3862','3.11175','10800','0','0','20958','0','0','0'),
('139991','19168','554','3','0','0','308.593','5.20942','25.3862','3.14629','10800','0','0','21636','3080','0','0');


-- =======================
-- NPC Group Aggro Linking
-- =======================
-- Front Area - Group of 3 Right Side
DELETE FROM creature_linking WHERE master_guid IN (83194);
INSERT INTO creature_linking VALUES (83193,83194,3);
INSERT INTO creature_linking VALUES (83196,83194,3);

-- Front Area - Group of 3 Left Side
DELETE FROM creature_linking WHERE master_guid IN (83191);
INSERT INTO creature_linking VALUES (83192,83191,3);
INSERT INTO creature_linking VALUES (83190,83191,3);

-- Front Area - Group of 2 Right Side Bottom Stairs
DELETE FROM creature_linking WHERE master_guid IN (83228);
INSERT INTO creature_linking VALUES (83227,83228,3);

-- Group of 2 Right Side Top of Stairs
DELETE FROM creature_linking WHERE master_guid IN (83226);
INSERT INTO creature_linking VALUES (83225,83226,3);

-- Front Area - Group of 2 Left Side Bottom Stairs
DELETE FROM creature_linking WHERE master_guid IN (83188);
INSERT INTO creature_linking VALUES (83187,83188,3);

-- Group of 2 Left Side Top of Stairs
DELETE FROM creature_linking WHERE master_guid IN (83185);
INSERT INTO creature_linking VALUES (83186,83185,3);

-- Group of 3 Right Side Platform
DELETE FROM creature_linking WHERE master_guid IN (83224);
INSERT INTO creature_linking VALUES (83222,83224,3);
INSERT INTO creature_linking VALUES (83223,83224,3);

-- Group of 3 Right Side Platform
DELETE FROM creature_linking WHERE master_guid IN (83221);
INSERT INTO creature_linking VALUES (83219,83221,3);
INSERT INTO creature_linking VALUES (83220,83221,3);

-- Group of 2 Right Side Top of Stairs Down
DELETE FROM creature_linking WHERE master_guid IN (83217);
INSERT INTO creature_linking VALUES (83218,83217,3);

-- Group of 3 Right Side Bottom of Stairs
DELETE FROM creature_linking WHERE master_guid IN (83216);
INSERT INTO creature_linking VALUES (83215,83216,3);
INSERT INTO creature_linking VALUES (83214,83216,3);

-- Group of 4 Right Side Main Floor
DELETE FROM creature_linking WHERE master_guid IN (83208);
INSERT INTO creature_linking VALUES (83207,83208,3);
INSERT INTO creature_linking VALUES (83209,83208,3);
INSERT INTO creature_linking VALUES (83210,83208,3);

-- Group of 3 Right Side Main Floor
DELETE FROM creature_linking WHERE master_guid IN (83213);
INSERT INTO creature_linking VALUES (83211,83213,3);
INSERT INTO creature_linking VALUES (83212,83213,3);

-- Group of 4 Centre Main Floor
DELETE FROM creature_linking WHERE master_guid IN (83205);
INSERT INTO creature_linking VALUES (83202,83205,3);
INSERT INTO creature_linking VALUES (83203,83205,3);
INSERT INTO creature_linking VALUES (83204,83205,3);

-- Group of 4 Centre Main Floor
DELETE FROM creature_linking WHERE master_guid IN (83199);
INSERT INTO creature_linking VALUES (83161,83199,3);
INSERT INTO creature_linking VALUES (83162,83199,3);
INSERT INTO creature_linking VALUES (83163,83199,3);

-- Group of 5 Centre Main Floor
DELETE FROM creature_linking WHERE master_guid IN (83165);
INSERT INTO creature_linking VALUES (83164,83165,3);
INSERT INTO creature_linking VALUES (83200,83165,3);
INSERT INTO creature_linking VALUES (83166,83165,3);
INSERT INTO creature_linking VALUES (83167,83165,3);

-- Group of 4 Main Floor Near Elevator
DELETE FROM creature_linking WHERE master_guid IN (83168);
INSERT INTO creature_linking VALUES (83170,83168,3);
INSERT INTO creature_linking VALUES (83171,83168,3);
INSERT INTO creature_linking VALUES (83201,83168,3);

-- Group of 4 Right Side Platform
DELETE FROM creature_linking WHERE master_guid IN (83180);
INSERT INTO creature_linking VALUES (83182,83180,3);
INSERT INTO creature_linking VALUES (87087,83180,3);
INSERT INTO creature_linking VALUES (83183,83180,3);

-- Group of 2 Right Side Platform
DELETE FROM creature_linking WHERE master_guid IN (83179);
INSERT INTO creature_linking VALUES (83178,83179,3);

-- Group of 3 Left Side Bottom of Stairs
DELETE FROM creature_linking WHERE master_guid IN (83175);
INSERT INTO creature_linking VALUES (83174,83175,3);
INSERT INTO creature_linking VALUES (83176,83175,3);

-- Group of 2 at Elevator
DELETE FROM creature_linking WHERE master_guid IN (83169);
INSERT INTO creature_linking VALUES (83172,83169,3);

-- Group of 4 Upstairs
DELETE FROM creature_linking WHERE master_guid IN (139988);
INSERT INTO creature_linking VALUES (139989,139988,3);
INSERT INTO creature_linking VALUES (139990,139988,3);
INSERT INTO creature_linking VALUES (139991,139988,3);



-- =====================================
-- General Health and Mana Value Cleanup
-- =====================================
UPDATE creature, creature_template SET creature.curhealth=creature_template.minlevelhealth,creature.curmana=creature_template.minlevelmana WHERE creature.id=creature_template.entry and creature_template.RegenerateHealth = '1';


-- ======================================================
-- TEMPEST KEEP: THE BOTANICA - COMPLETE DUNGEON OVERHAUL
-- ======================================================


-- ------------------------
-- DEFINE GUID START POINTS
-- ------------------------
SET @CGUID := 140296;


-- ========================================
-- CREATURE SPAWN / MOVEMENT / LINKING DATA
-- ========================================
-- ---------------------------------
-- 4 Bloodwarder Protectors At Front
-- ---------------------------------
DELETE FROM creature_addon WHERE guid IN (83152,83151,83154,83155);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83151','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83152','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83154','0','0','1','0','333','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83155','0','0','1','0','333','0',NULL);

UPDATE creature SET position_x = '0.319128', position_y = '93.350929', position_z = '-5.652020', orientation = '4.749768' WHERE guid = '83151';
UPDATE creature SET position_x = '-2.910640', position_y = '93.303818', position_z = '-5.652020', orientation = '4.661018' WHERE guid = '83152';

-- Scripts For NPC To Salute and Assume Battle Stance
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8315101);  -- Left Group of NPC
INSERT INTO dbscripts_on_creature_movement VALUES (8315101,1,1,66,0,0,0,0,0,0,0,0,0,0,0,0,'Bloodwarder Protector (Botanica) - Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8315101,3,1,333,0,0,0,0,0,0,0,0,0,0,0,0,'Bloodwarder Protector (Botanica) - Ready For Combat');
INSERT INTO dbscripts_on_creature_movement VALUES (8315101,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bloodwarder Protector (Botanica) - Disable Waypoint Movement');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83151);
DELETE FROM creature_movement WHERE id IN (83151);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83151','1','0.319128','93.350929','-5.652020','2000','0','0','0','0','0','0','0','0','0','4.749768','0','0'),
('83151','2','0.304653','53.7379','-5.65205','0','0','0','0','0','0','0','0','0','0','4.80789','0','0'),
('83151','3','0.246856','49.9056','-5.61616','0','0','0','0','0','0','0','0','0','0','4.84559','0','0'),
('83151','4','1.77807','47.0135','-5.52788','0','0','0','0','0','0','0','0','0','0','5.07885','0','0'),
('83151','5','2.35202','46.2708','-5.53589','10000','8315101','0','0','0','0','0','0','0','0','4.48292','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83152);
DELETE FROM creature_movement WHERE id IN (83152);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83152','1','-2.910640','93.303818','-5.652020','2000','0','0','0','0','0','0','0','0','0','4.661018','0','0'),
('83152','2','-3.09647','53.6826','-5.65205','0','0','0','0','0','0','0','0','0','0','4.75056','0','0'),
('83152','3','-2.9898','50.0713','-5.62371','0','0','0','0','0','0','0','0','0','0','3.9573','0','0'),
('83152','4','-3.98776','46.8545','-5.53157','0','0','0','0','0','0','0','0','0','0','4.35943','0','0'),
('83152','5','-4.7336','45.9968','-5.55443','10000','8315101','0','0','0','0','0','0','0','0','4.8874','0','0');



-- -------------------------------
-- First Tempest-Forge Peacekeeper
-- -------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83153);
DELETE FROM creature_movement WHERE id IN (83153);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,1, -1.238058,53.229778,-5.650580,1.580233, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,2, -1.056883,93.744209,-5.651805,1.738884, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,3, -0.781224,113.317207,-5.583306,1.758519, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,4, -1.384052,95.681999,-5.650106,4.739892, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,5, -1.409816,55.045288,-5.651893,4.761883, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (83153,6, -1.025726,43.837605,-5.606754,4.636219, 0,0);

-- ------------------------
-- 2 Bloodwarder Protectors
-- ------------------------
UPDATE creature SET position_x = '-10.472994', position_y = '160.509964', position_z = '-5.540343', orientation = '4.944090' WHERE guid = '83156';
UPDATE creature SET position_x = '9.051096', position_y = '160.359482', position_z = '-5.540343', orientation = '4.428083' WHERE guid = '82984';
DELETE FROM creature_addon WHERE guid IN (83156,82984);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83156','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82984','0','0','1','0','0','0',NULL);

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82984);
DELETE FROM creature_movement WHERE id IN (82984);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82984','1','9.051096','160.359482','-5.540343','8000','0','0','0','0','0','0','0','0','0','4.428083','0','0'),
('82984','2','7.00565','151.863','-5.54034','0','0','0','0','0','0','0','0','0','0','4.61972','0','0'),
('82984','3','2.13972','149.017','-5.54034','0','0','0','0','0','0','0','0','0','0','3.65525','0','0'),
('82984','4','2.85909','133.568','-5.54034','0','0','0','0','0','0','0','0','0','0','4.71868','0','0'),
('82984','5','4.66944','131.582','-5.53933','10000','8315101','0','0','0','0','0','0','0','0','4.39113','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83156);
DELETE FROM creature_movement WHERE id IN (83156);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83156','1','-10.472994','160.509964','-5.540343','8000','0','0','0','0','0','0','0','0','0','4.944090','0','0'),
('83156','2','-9.05886','151.889','-5.54034','0','0','0','0','0','0','0','0','0','0','4.99122','0','0'),
('83156','3','-3.30866','147.948','-5.54034','0','0','0','0','0','0','0','0','0','0','5.68237','0','0'),
('83156','4','-3.96269','134.198','-5.54034','0','0','0','0','0','0','0','0','0','0','4.71083','0','0'),
('83156','5','-5.29153','130.642','-5.53917','10000','8315101','0','0','0','0','0','0','0','0','4.81372','0','0');


-- -----------------------
-- Bloodwarder Greenkeeper
-- -----------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82983);
DELETE FROM creature_movement WHERE id IN (82983);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','1','-0.268618','160.028','-5.5395','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','2','-4.24328','161.149','-5.5395','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','3','-6.01467','167.23','-5.5395','34000','0','0','0','0','0','0','69','0','0','1.609301','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','4','-3.54166','160.511','-5.5395','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','5','2.36906','161.495','-5.5395','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82983','6','2.31835','163.18','-5.54038','16000','0','0','0','0','0','0','69','0','0','2.318516','0','0');

DELETE FROM creature_addon WHERE guid IN (83150);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83150','0','0','0','0','69','0',NULL);

-- ------------------------------
-- Add Missing Bloodwarder Mender
-- ------------------------------
DELETE FROM creature WHERE guid IN (@CGUID);
INSERT INTO creature VALUES (@CGUID,19633,553,3,0,0,6.15941,166.406,-5.54122,1.51584,7200,3,0,14199,21093,0,1);

-- -----------------------------
-- Left Bloodwarder Greenkeepers
-- -----------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82981);
DELETE FROM creature_movement WHERE id IN (82981);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','1','-19.4848','197.125','-5.54034','29000','0','0','0','0','0','0','69','0','0','1.06967','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','2','-18.3153','195.691','-5.54122','0','0','0','0','0','0','0','0','0','0','5.31716','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','3','-14.4761','195.052','-5.54122','0','0','0','0','0','0','0','0','0','0','6.11827','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','4','-9.28239','198.789','-5.54122','0','0','0','0','0','0','0','0','0','0','0.623626','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','5','-7.14421','203.369','-5.54122','0','0','0','0','0','0','0','0','0','0','1.55354','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','6','-8.27586','203.442','-5.54122','24000','0','0','0','0','0','0','69','0','0','3.07721','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','7','-6.73612','202.567','-5.54122','0','0','0','0','0','0','0','0','0','0','5.76642','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','8','-8.75032','199.727','-5.54122','0','0','0','0','0','0','0','0','0','0','4.15635','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','9','-13.0694','195.498','-5.54122','0','0','0','0','0','0','0','0','0','0','3.85475','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','10','-17.5981','194.664','-5.54122','0','0','0','0','0','0','0','0','0','0','3.32383','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82981','11','-19.281','195.896','-5.54122','0','0','0','0','0','0','0','0','0','0','2.41276','0','0');

DELETE FROM creature_addon WHERE guid IN (82981,82982);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82981','0','0','0','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82982','0','8','0','0','0','0',NULL);

-- ------------------------------
-- Right Bloodwarder Greenkeepers
-- ------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82977);
DELETE FROM creature_movement WHERE id IN (82977);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','1','13.8952','197.464','-5.54041','18000','0','0','0','0','0','0','69','0','0','0.944012','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','2','15.0475','193.183','-5.54122','0','0','0','0','0','0','0','0','0','0','5.06034','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','3','16.6998','192.651','-5.54122','0','0','0','0','0','0','0','0','0','0','1.017895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','4','17.8517','192.8757','-5.54122','20000','0','0','0','0','0','0','69','0','0','1.017895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','5','17.5705','192.439','-5.54122','0','0','0','0','0','0','0','0','0','0','6.14419','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','6','14.347','193.671','-5.54122','0','0','0','0','0','0','0','0','0','0','2.7764','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82977','7','13.4535','196.095','-5.54122','0','0','0','0','0','0','0','0','0','0','2.07583','0','0');

DELETE FROM creature_addon WHERE guid IN (82977,82978);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82977','0','0','0','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82978','0','8','0','0','0','0',NULL);

-- -------------------------------
-- First Tempest-Forge Peacekeeper
-- -------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82992);
DELETE FROM creature_movement WHERE id IN (82992);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','1','13.2272','178.591','-5.5404','0','0','0','0','0','0','0','0','0','0','5.07526','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','2','13.7786','193.285','-5.5404','0','0','0','0','0','0','0','0','0','0','1.59438','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','3','9.13868','197.798','-5.5404','5000','0','0','0','0','0','0','0','0','0','2.30752','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','4','-0.635412','203.851','-5.5404','0','0','0','0','0','0','0','0','0','0','2.58712','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','5','-0.660702','223.381','-5.5404','0','0','0','0','0','0','0','0','0','0','1.5881','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','6','-0.571616','247.901','-5.51829','0','0','0','0','0','0','0','0','0','0','1.44751','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','7','-0.697975','222.215','-5.54037','3000','0','0','0','0','0','0','0','0','0','4.71005','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','8','-0.301946','204.186','-5.54037','0','0','0','0','0','0','0','0','0','0','4.2663','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','9','8.68828','198.154','-5.54037','0','0','0','0','0','0','0','0','0','0','5.7028','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82992','10','13.1168','194.426','-5.54037','0','0','0','0','0','0','0','0','0','0','5.58342','0','0');

-- ------------------------
-- 2 Bloodwarder Protectors
-- ------------------------
UPDATE creature SET position_x = '-14.725861', position_y = '244.255112', position_z = '-5.214353', orientation = '6.011446' WHERE guid = '82985';
UPDATE creature SET position_x = '12.536785', position_y = '244.131027', position_z = '-5.276653', orientation = '3.282975' WHERE guid = '82991';
DELETE FROM creature_addon WHERE guid IN (82985,82991);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82985','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82991','0','0','1','0','0','0',NULL);

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82985);
DELETE FROM creature_movement WHERE id IN (82985);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82985','1','-14.725861','244.255112','-5.214353','8000','0','0','0','0','0','0','0','0','0','6.011446','0','0'),
('82985','2','-3.16054','243.291','-5.5165','0','0','0','0','0','0','0','0','0','0','0.021216','0','0'),
('82985','3','-3.54976','215.113','-5.53931','0','0','0','0','0','0','0','0','0','0','4.55846','0','0'),
('82985','4','-5.031358','214.277512','-5.540350','10000','8315101','0','0','0','0','0','0','0','0','4.386477','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82991);
DELETE FROM creature_movement WHERE id IN (82991);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82991','1','12.536785','244.131027','-5.276653','8000','0','0','0','0','0','0','0','0','0','3.282975','0','0'),
('82991','2','2.36405','242.874','-5.51154','0','0','0','0','0','0','0','0','0','0','3.34423','0','0'),
('82991','3','2.44798','215.308','-5.54035','0','0','0','0','0','0','0','0','0','0','4.78387','0','0'),
('82991','4','3.941355','214.042435','-5.540350','10000','8315101','0','0','0','0','0','0','0','0','4.790172','0','0');

-- ----------------------------------------
-- 2 Green Keepers and One Mender in Middle
-- ----------------------------------------
-- Left Green Keeper
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82994);
DELETE FROM creature_movement WHERE id IN (82994); -- Left Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','1','-4.23689','254.019','-5.4428','22000','0','0','0','0','0','0','69','0','0','2.29894','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','2','-4.23689','254.019','-5.4428','7000','0','0','0','0','0','0','378','0','0','6.05072','0','0'); -- Facing Other Green Keeper
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','3','-4.23689','254.019','-5.4428','30000','0','0','0','0','0','0','69','0','0','2.29894','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','4','-4.23689','254.019','-5.4428','7000','0','0','0','0','0','0','378','0','0','6.05072','0','0'); -- Facing Other Green Keeper
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','5','-4.23689','254.019','-5.4428','16000','0','0','0','0','0','0','69','0','0','2.29894','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82994','6','-4.23689','254.019','-5.4428','7000','0','0','0','0','0','0','378','0','0','6.05072','0','0'); -- Facing Other Green Keeper
-- Right Green Keeper
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82993);
DELETE FROM creature_movement WHERE id IN (82993); -- Left Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','1','4.00238','252.355','-5.47518','22000','0','0','0','0','0','0','69','0','0','1.10514','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','2','4.00238','252.355','-5.47518','7000','0','0','0','0','0','0','378','0','0','2.97588','0','0'); -- Facing Other Green Keeper
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','3','4.00238','252.355','-5.47518','30000','0','0','0','0','0','0','69','0','0','1.10514','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','4','4.00238','252.355','-5.47518','7000','0','0','0','0','0','0','378','0','0','2.97588','0','0'); -- Facing Other Green Keeper
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','5','4.00238','252.355','-5.47518','16000','0','0','0','0','0','0','69','0','0','1.10514','0','0'); -- Facing Table
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('82993','6','4.00238','252.355','-5.47518','7000','0','0','0','0','0','0','378','0','0','2.97588','0','0'); -- Facing Other Green Keeper
-- Addon Data
DELETE FROM creature_addon WHERE guid IN (83000,82994,82993);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82994','0','0','0','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('82993','0','0','0','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83000','0','8','0','0','0','0',NULL);

-- --------------------
-- Bloodwarder Falconer
-- --------------------
-- Remove 3 BloodFalcons (Should Only Be 3)
DELETE FROM creature WHERE guid IN (82999,83159,83158);
-- Random Movement for Remaining BloodFalcons
UPDATE creature SET Spawndist=10, MovementType=1 WHERE guid IN (82996,82997,82998);

-- ------------------------
-- 2 Bloodwarder Protectors
-- ------------------------
DELETE FROM creature_addon WHERE guid IN (83001,83002);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83001','0','0','1','0','333','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83002','0','0','1','0','333','0',NULL);

-- ------------------------
-- 2 Bloodwarder Protectors
-- ------------------------
DELETE FROM creature_addon WHERE guid IN (83004,83005);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83004','0','0','1','0','333','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83005','0','0','1','0','333','0',NULL);

-- -----------------------------------
-- Bloodwarder Steward Pathing in Hall
-- -----------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83006);
DELETE FROM creature_movement WHERE id IN (83006);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('83006','1','50.9215','293.818','-5.63032','0','0','0','0','0','0','0','0','0','0','1.68861','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('83006','2','50.4144','282.994','-5.64831','0','0','0','0','0','0','0','0','0','0','4.90482','0','0');

-- -------------------------------------
-- Bloodwarder Falconer and Bloodfalcons
-- -------------------------------------
-- Random Movement for Falconer and BloodFalcons
UPDATE creature SET Spawndist=10, MovementType=1 WHERE guid IN (83008,83009,83010);
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83007);

-- ----------------------------------
-- NPC In Front Of Commander Sarannis
-- ----------------------------------
-- Fix Spawns With Sniff Data (Current Ones Badly Placed Better To Fix All Of The With Sniff Data)
DELETE FROM creature WHERE guid IN (83011,83014,83012,83013,83015);
DELETE FROM creature WHERE guid IN (@CGUID+1,@CGUID+2,@CGUID+3,@CGUID+4,@CGUID+5,@CGUID+6,@CGUID+7,@CGUID+8,@CGUID+9);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 18404, 0, 553, 3, 149.5653, 281.7874, -4.653852, 1.016146, 7200, 0, 0), -- 18404 (Area: 0) (possible waypoints or random movement)
(@CGUID+2, 17993, 0, 553, 3, 151.6609, 281.7887, -4.334745, 1.612284, 7200, 0, 0), -- 17993 (Area: 0) (possible waypoints or random movement)
(@CGUID+3, 17993, 0, 553, 3, 153.7568, 281.7442, -4.008605, 2.176939, 7200, 0, 0), -- 17993 (Area: 0) (possible waypoints or random movement)
(@CGUID+4, 17993, 0, 553, 3, 165.1652, 295.5352, -4.371663, 3.110243, 7200, 0, 0), -- 17993 (Area: 0) (possible waypoints or random movement)
(@CGUID+5, 18404, 0, 553, 3, 165.1942, 298.2077, -4.774447, 3.852716, 7200, 0, 0), -- 18404 (Area: 0) (possible waypoints or random movement)
(@CGUID+6, 17993, 0, 553, 3, 164.9687, 292.9525, -4.00805, 2.373266, 7200, 0, 0), -- 17993 (Area: 0) (possible waypoints or random movement)
(@CGUID+7, 17993, 0, 553, 3, 161.4033, 285.5994, -3.098177, 1.742907, 7200, 0, 0), -- 17993 (Area: 0) (possible waypoints or random movement)
(@CGUID+8, 18404, 0, 553, 3, 159.1362, 283.813, -3.272108, 1.297487, 7200, 0, 0), -- 18404 (Area: 0) (possible waypoints or random movement)
(@CGUID+9, 17993, 0, 553, 3, 163.1084, 287.8988, -3.313203, 2.552928, 7200, 0, 0); -- 17993 (Area: 0) (possible waypoints or random movement)

-- ------------------
-- Commander Sarannis
-- ------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82986);
DELETE FROM creature_movement WHERE id IN (82986);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82986','1','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','2','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','3','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','4','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','5','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','6','151.954','283.758','-4.67356','3000','8298601','0','0','0','0','0','66','0','0','4.76895','0','0'), -- Front of Left NPC and Salute
('82986','7','151.954','283.758','-4.67356','6000','0','0','0','0','0','0','378','0','0','4.76895','0','0'), -- Front of Left NPC and Talk
('82986','8','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','9','162.800','295.447','-4.80194','3000','8298603','0','0','0','0','0','66','0','0','0.02357','0','0'), -- Front of Right NPC and Salute
('82986','10','162.800','295.447','-4.80194','6000','0','0','0','0','0','0','378','0','0','0.02357','0','0'), -- Front of Right NPC and Talk
('82986','11','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','2.39233','0','0'), -- Front of Bridge With NPC (Facing To Back)
('82986','12','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','13','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','14','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','15','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','16','159.540','287.615','-4.10529','3000','8298602','0','0','0','0','0','66','0','0','5.37920','0','0'), -- Front of Center NPC and Salute
('82986','17','159.540','287.615','-4.10529','6000','0','0','0','0','0','0','378','0','0','5.37920','0','0'), -- Front of Center NPC and Talk
('82986','18','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','19','151.954','283.758','-4.67356','3000','8298601','0','0','0','0','0','66','0','0','4.76895','0','0'), -- Front of Left NPC and Salute
('82986','20','151.954','283.758','-4.67356','6000','0','0','0','0','0','0','378','0','0','4.76895','0','0'), -- Front of Left NPC and Talk
('82986','21','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','2.39233','0','0'), -- Front of Bridge With NPC (Facing To Back)
('82986','22','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','23','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','24','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','25','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','26','162.800','295.447','-4.80194','3000','8298603','0','0','0','0','0','66','0','0','0.02357','0','0'), -- Front of Right NPC and Salute
('82986','27','162.800','295.447','-4.80194','6000','0','0','0','0','0','0','378','0','0','0.02357','0','0'), -- Front of Right NPC and Talk
('82986','28','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','29','159.540','287.615','-4.10529','3000','8298602','0','0','0','0','0','66','0','0','5.37920','0','0'), -- Front of Center NPC and Salute
('82986','30','159.540','287.615','-4.10529','6000','0','0','0','0','0','0','378','0','0','5.37920','0','0'), -- Front of Center NPC and Talk
('82986','31','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','2.39233','0','0'), -- Front of Bridge With NPC (Facing To Back)
('82986','32','120.012','327.677','-4.99033','0','0','0','0','0','0','0','0','0','0','5.47973','0','0'), -- Back Of Bridge
('82986','33','152.491','294.444','-4.6658','0','0','0','0','0','0','0','0','0','0','5.52686','0','0'), -- Front of Bridge With NPC
('82986','34','159.540','287.615','-4.10529','10000','0','2000005550','0','0','0','0','4','0','0','5.37920','0','0'); -- Front of Center NPC and Yell and Cheer
DELETE FROM db_script_string WHERE entry IN (2000005550);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
('2000005550','We must not fail our leader!  Kael\'thas will redeem us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','Commander Sarannis in Botanica');

-- Scripts For NPC To Salute Back To Commander Sarannis
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8298601);  -- Left Group of NPC
INSERT INTO dbscripts_on_creature_movement VALUES (8298601,1,1,66,0,18404,@CGUID+1,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Steward Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298601,1,1,66,0,17993,@CGUID+2,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298601,1,1,66,0,17993,@CGUID+3,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8298602);  -- Centre Group of NPC
INSERT INTO dbscripts_on_creature_movement VALUES (8298602,1,1,66,0,18404,@CGUID+8,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Steward Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298602,1,1,66,0,17993,@CGUID+7,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298602,1,1,66,0,17993,@CGUID+9,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8298603);  -- Right Group of NPC
INSERT INTO dbscripts_on_creature_movement VALUES (8298603,1,1,66,0,18404,@CGUID+5,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Steward Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298603,1,1,66,0,17993,@CGUID+4,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');
INSERT INTO dbscripts_on_creature_movement VALUES (8298603,1,1,66,0,17993,@CGUID+6,23,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Bloodwarder Protector Salute');

-- --------------------------------------------------
-- Left Group of Researchers After Commander Sarannis
-- --------------------------------------------------
UPDATE creature SET position_x = '159.302002', position_y = '367.640228', position_z = '-5.411332', orientation = '3.524878' WHERE guid = '83018';
DELETE FROM creature_addon WHERE guid IN (83016,83017,83019);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83016','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83019','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83017','0','8','0','0','0','0',NULL);

-- ---------------------------------------------------
-- Right Group of Researchers After Commander Sarannis
-- ---------------------------------------------------
DELETE FROM creature_addon WHERE guid IN (83032,83033,83034,83030);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83032','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83033','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83034','0','0','1','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83030','0','8','0','0','0','0',NULL);

-- ----------------------------------------------------
-- Centre Group of Researchers After Commander Sarannis
-- ----------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+10);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+10, 18421, 17843, 553, 3, 175.8427, 387.1663, -5.303061, 2.234021, 7200, 0, 0); -- 18421 (Area: 0) (possible waypoints or random movement)

DELETE FROM creature_addon WHERE guid IN (83029,83020,@CGUID+10);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83029','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+10,'0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83020','0','0','1','0','69','0',NULL);

-- ------------------------------------------------------
-- Far Left Group of Researchers After Commander Sarannis
-- ------------------------------------------------------
UPDATE creature SET position_x = '164.376556', position_y = '408.294800', position_z = '-5.386406', orientation = '2.155144' WHERE guid = '83025';
DELETE FROM creature_addon WHERE guid IN (83028,83048,83021,83024);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83028','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83048','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83021','0','0','1','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83024','0','8','0','0','0','0',NULL);

-- ---------------------
-- Left Pathing Botanist
-- ---------------------
DELETE FROM creature_linking WHERE master_guid IN (83022);
INSERT INTO creature_linking VALUES (83023,83022,515);
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83022);
DELETE FROM creature_movement WHERE id IN (83022);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83022','1','153.194','402.43','-5.3864','21000','0','0','0','0','0','0','0','0','0','1.09406','0','0'),
('83022','2','152.247','399.99','-5.3864','0','0','0','0','0','0','0','0','0','0','4.42258','0','0'),
('83022','3','153.166','393.779','-5.3864','0','0','0','0','0','0','0','0','0','0','4.85926','0','0'),
('83022','4','157.038','387.449','-5.3864','0','0','0','0','0','0','0','0','0','0','5.26139','0','0'),
('83022','5','160.205','378.829','-5.3864','0','0','0','0','0','0','0','0','0','0','4.99357','0','0'),
('83022','6','159.918','377.573','-5.3864','26000','0','0','0','0','0','0','0','0','0','4.48777','0','0'),
('83022','7','162.102','381.613','-5.3864','0','0','0','0','0','0','0','0','0','0','1.03202','0','0'),
('83022','8','161.551','390.539','-5.3864','0','0','0','0','0','0','0','0','0','0','1.60222','0','0'),
('83022','9','155.869','395.531','-5.3864','0','0','0','0','0','0','0','0','0','0','2.50621','0','0'),
('83022','10','151.97','399.905','-5.3864','0','0','0','0','0','0','0','0','0','0','2.29887','0','0');

-- ----------------------
-- Right Pathing Botanist
-- ----------------------
UPDATE creature SET orientation = '2.16378' WHERE guid=83027;
DELETE FROM creature_linking WHERE master_guid IN (83027);
INSERT INTO creature_linking VALUES (83026,83027,515);
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83027);
DELETE FROM creature_movement WHERE id IN (83027);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83027','1','159.904','402.942','-5.3864','26000','0','0','0','0','0','0','0','0','0','2.17163','0','0'),
('83027','2','161.38','401.344','-5.3864','0','0','0','0','0','0','0','0','0','0','5.50722','0','0'),
('83027','3','168.674','402.822','-5.3864','0','0','0','0','0','0','0','0','0','0','6.18816','0','0'),
('83027','4','177.992','404.019','-5.3864','0','0','0','0','0','0','0','0','0','0','6.28162','0','0'),
('83027','5','182.163','403.591','-5.3864','0','0','0','0','0','0','0','0','0','0','5.64702','0','0'),
('83027','6','182.889','396.989','-5.3864','0','0','0','0','0','0','0','0','0','0','4.91896','0','0'),
('83027','7','181.288','388.73','-5.3864','0','0','0','0','0','0','0','0','0','0','4.46971','0','0'),
('83027','8','188.878','381.951','-5.43289','0','0','0','0','0','0','0','0','0','0','5.66351','0','0'),
('83027','9','191.392','382.601','-5.44611','0','0','0','0','0','0','0','0','0','0','0.146877','0','0'),
('83027','10','192.458','383.717','-5.44123','31000','0','0','0','0','0','0','0','0','0','0.775196','0','0'),
('83027','11','189.689','381.902','-5.43911','0','0','0','0','0','0','0','0','0','0','3.72201','0','0'),
('83027','12','182.847','387.644','-5.38726','0','0','0','0','0','0','0','0','0','0','2.44338','0','0'),
('83027','13','182.062','400.955','-5.38726','0','0','0','0','0','0','0','0','0','0','1.62971','0','0'),
('83027','14','178.353','404.378','-5.38726','0','0','0','0','0','0','0','0','0','0','2.39626','0','0'),
('83027','15','166.276','401.489','-5.38726','0','0','0','0','0','0','0','0','0','0','3.37644','0','0'),
('83027','16','161.438','401.543','-5.38726','0','0','0','0','0','0','0','0','0','0','3.16752','0','0');

-- ----------------------
-- First Group of Frayers
-- ----------------------
DELETE FROM creature WHERE guid IN (83044,83045,83047,83037); -- Delete Too Many Frayers
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83043,83046,83042,83040,83039,83041,83036,83038);
UPDATE creature SET position_x = '162.939285', position_y = '433.364624', position_z = '-6.835905', orientation = '1.929722' WHERE guid = '83040';
-- Sunseeker Geomancer Pathing
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83035);
DELETE FROM creature_movement WHERE id IN (83035);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83035','1','162.23','452.538','-5.41697','15000','0','0','0','0','0','0','0','34167','0','4.74775','0','0'), -- Cast Frost 
('83035','2','162.23','452.538','-5.41697','19000','0','0','0','0','0','0','0','34169','0','4.74775','0','0'), -- Cast Fire
('83035','3','163.493','446.524','-6.9092','0','0','0','0','0','0','0','0','0','0','4.91817','0','0'),
('83035','4','163.268','441.86','-6.86923','0','0','0','0','0','0','0','0','0','0','4.5883','0','0'),
('83035','5','162.006','437.507','-6.83356','0','0','0','0','0','0','0','0','0','0','4.22937','0','0'),
('83035','6','156.922','435.956','-6.77183','2000','0','0','0','0','0','0','0','34170','0','3.43769','0','0'), -- cast arcane
('83035','7','156.922','435.956','-6.77183','2000','0','0','0','0','0','0','0','34170','0','3.43769','0','0'), -- cast arcane
('83035','8','156.922','435.956','-6.77183','3000','0','0','0','0','0','0','0','34170','0','3.43769','0','0'), -- cast arcane
('83035','9','156.922','435.956','-6.77183','8000','0','2000005551','0','0','0','0','0','0','0','3.43769','0','0'), -- say
('83035','10','161.566','437.091','-6.82662','0','0','0','0','0','0','0','0','0','0','0.239552','0','0'),
('83035','11','163.727','441.472','-6.87038','0','0','0','0','0','0','0','0','0','0','1.23622','0','0'),
('83035','12','163.606','446.25','-6.90634','0','0','0','0','0','0','0','0','0','0','1.55666','0','0'),
('83035','13','162.23','452.538','-5.41697','2000','0','0','0','0','0','0','0','0','0','4.74775','0','0');
DELETE FROM db_script_string WHERE entry IN (2000005551);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000005551','Hmm...Frost, Fire, and Arcane defenses respond faster than Batch 7, but Nature defenses remain passive.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Sunseeker Geomancer in Botanica');

-- --------------------------------------
-- NPC in Front of High Botanist Freywinn
-- --------------------------------------
DELETE FROM creature_addon WHERE guid IN (83052,83053,83055,83051,83049);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83052','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83053','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83055','0','0','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83051','0','0','1','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83049','0','0','1','0','0','0',NULL);

-- Right Sunseeker Botanist
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83049);
DELETE FROM creature_movement WHERE id IN (83049);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83049','1','174.814','495.449','-2.62112','4000','0','2000005552','0','0','0','0','0','0','0','2.26981','0','0'), -- Say 
('83049','2','174.814','495.449','-2.62112','6000','0','0','0','0','0','0','0','34254','0','2.26981','0','0'), -- Cast Spell
('83049','3','174.814','495.449','-2.62112','55000','0','2000005553','0','0','0','0','0','0','0','2.26981','0','0'); -- Say
DELETE FROM db_script_string WHERE entry IN (2000005552,2000005553);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000005552','Hmm...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Sunseeker Botanist in Botanica'),
('2000005553','Yes. That did the trick.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Sunseeker Botanist in Botanica');

-- Left Sunseeker Botanist
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83055);
DELETE FROM creature_movement WHERE id IN (83055);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83055','1','159.537','508.659','-2.74336','25000','0','0','0','0','0','0','0','0','0','5.86693','0','0'), -- Spacer
('83055','2','159.537','508.659','-2.74336','4000','0','2000005552','0','0','0','0','0','0','0','5.86693','0','0'), -- Say 
('83055','3','159.537','508.659','-2.74336','6000','0','0','0','0','0','0','0','34254','0','5.86693','0','0'), -- Cast Spell
('83055','4','159.537','508.659','-2.74336','55000','0','2000005553','0','0','0','0','0','0','0','5.86693','0','0'); -- Say

-- Sunseeker Researcher Pathing
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83052);
DELETE FROM creature_movement WHERE id IN (83052);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83052','1','164.783','501.235','-2.07282','25000','0','0','0','0','0','0','0','0','0','0.239551','0','0'),
('83052','2','158.254','492.187','-4.47891','0','0','0','0','0','0','0','0','0','0','4.28121','0','0'),
('83052','3','136.829','470.648','-1.59932','0','0','0','0','0','0','0','0','0','0','3.93877','0','0'),
('83052','4','121.211','455.423','-4.88299','5000','0','0','0','0','0','0','1','0','0','3.87829','0','0'),
('83052','5','121.211','455.423','-4.88299','10000','0','0','0','0','0','0','1','0','0','3.87829','0','0'),
('83052','6','134.158','467.606','-1.69619','0','0','0','0','0','0','0','0','0','0','0.751624','0','0'),
('83052','7','158.166','491.949','-4.52846','0','0','0','0','0','0','0','0','0','0','0.748482','0','0');

-- ----------------------
-- High Botanist Freywinn
-- ----------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82987);
DELETE FROM creature_movement WHERE id IN (82987);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82987','1','116.584','455.602','-4.95288','0','0','0','0','0','0','0','0','0','0','2.61773','0','0'),
('82987','2','115.153','455.568','-4.89346','10000','0','0','0','0','0','0','69','0','0','3.33087','0','0'),
('82987','3','115.153','455.568','-4.89346','10000','0','2000005554','2000005555','2000005556','2000005557','2000005555','69','0','0','3.33087','0','0'),
('82987','4','116.623','455.478','-4.94902','0','0','0','0','0','0','0','0','0','0','6.17716','0','0'),
('82987','5','120.628','451.036','-4.92864','0','0','0','0','0','0','0','0','0','0','5.62188','0','0'),
('82987','6','120.543','449.982','-4.88372','10000','0','0','0','0','0','0','69','0','0','4.41551','0','0'),
('82987','7','120.543','449.982','-4.88372','10000','0','2000005554','2000005555','2000005556','2000005557','2000005555','69','0','0','4.41551','0','0'),
('82987','8','120.796','450.93','-4.93171','0','0','0','0','0','0','0','0','0','0','1.61949','0','0');
DELETE FROM db_script_string WHERE entry IN (2000005554,2000005555,2000005556,2000005557);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000005554','...mumble...Petals of Fire...mumble...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','High Botanist Freywinn in Botanica'),
('2000005555','...mumble mumble...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','High Botanist Freywinn in Botanica'),
('2000005556','...with the right mixture, perhaps...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','High Botanist Freywinn in Botanica'),
('2000005557','...thorny vines...mumble...ouch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','High Botanist Freywinn in Botanica');

-- -----------------------
-- Second Group of Frayers
-- -----------------------
DELETE FROM creature WHERE guid IN (83060,83059,83068,83067,83066); -- Delete Too Many Frayers
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83065,83063,83064,83069,83062,82061,83058,83057);
UPDATE creature SET position_x = '106.104866', position_y = '497.827667', position_z = '-6.854609', orientation = '3.172230' WHERE guid = '83057';
-- Sunseeker Geomancer Pathing
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83056);
DELETE FROM creature_movement WHERE id IN (83056);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83056','1','88.4563','495.092','-5.38647','15000','0','0','0','0','0','0','0','34183','0','5.83944','0','0'), -- Cast Frost 
('83056','2','88.4563','495.092','-5.38647','19000','0','0','0','0','0','0','0','34185','0','5.83944','0','0'), -- Cast Fire
('83056','3','97.2095','493.595','-6.78375','0','0','0','0','0','0','0','0','0','0','6.13632','0','0'),
('83056','4','102.952','491.174','-6.76313','2000','0','0','0','0','0','0','0','34170','0','6.25021','0','0'), -- cast arcane
('83056','5','102.952','491.174','-6.76313','2000','0','0','0','0','0','0','0','34170','0','6.25021','0','0'), -- cast arcane
('83056','6','102.952','491.174','-6.76313','4000','0','0','0','0','0','0','0','34170','0','6.25021','0','0'), -- cast arcane
('83056','7','97.2095','493.595','-6.78375','0','0','0','0','0','0','0','0','0','0','6.13632','0','0'),
('83056','8','88.4563','495.092','-5.38647','4000','0','0','0','0','0','0','0','0','0','5.83944','0','0');

-- ------------------------------------------
-- NPC At Entry to Thorngrin the Tenders Room
-- ------------------------------------------
-- Move NPC to Correct Locations and Spawns
UPDATE creature SET position_x = '0.743981', position_y = '504.740265', position_z = '-5.319865', orientation = '2.016919' WHERE guid = '83070';
UPDATE creature SET position_x = '-17.591831', position_y = '505.420837', position_z = '-5.307605', orientation = '2.085249' WHERE guid = '83075';
UPDATE creature SET position_x = '1.367998', position_y = '493.800598', position_z = '-5.412396', orientation = '2.885726' WHERE guid = '83073';
DELETE FROM creature WHERE guid IN (@CGUID+11,@CGUID+12,@CGUID+13,@CGUID+14,@CGUID+15);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+11, 19508, 21338, 553, 3, -16.26085, 482.7058, -5.385756, 3.944444, 7200, 0, 0), -- 19508 (Area: 0) (possible waypoints or random movement)
(@CGUID+12, 19508, 21339, 553, 3, -17.32133, 485.0991, -5.368748, 2.96706, 7200, 0, 0), -- 19508 (Area: 0) (possible waypoints or random movement)
(@CGUID+13, 19509, 21333, 553, 3, -15.03868, 479.9812, -5.405121, 1.396263, 7200, 0, 0), -- 19509 (Area: 0) (possible waypoints or random movement)
(@CGUID+14, 19555, 11686, 553, 3, -18.09245, 509.9142, 1.612676, 3.525565, 7200, 0, 0), -- 19555 (Area: 0) -- TK Atrium Channel Target
(@CGUID+15, 19555, 11686, 553, 3, -1.838774, 510.5453, 0.6243833, 2.583087, 7200, 0, 0); -- 19555 (Area: 0) -- TK Atrium Channel Target

-- Outside Pathing Nethervine Inciter
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83072);
DELETE FROM creature_movement WHERE id IN (83072);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83072','1','-14.2594','491.108','-5.40935','0','0','0','0','0','0','0','0','0','0','4.77539','0','0'),
('83072','2','-8.55427','483.309','-5.47117','0','0','0','0','0','0','0','0','0','0','5.42413','0','0'),
('83072','3','2.78195','481.305','-5.58427','0','0','0','0','0','0','0','0','0','0','0.001745','0','0'),
('83072','4','-8.53638','482.843','-5.4743','0','0','0','0','0','0','0','0','0','0','3.0381','0','0'),
('83072','5','-15.5274','491.044','-5.41147','0','0','0','0','0','0','0','0','0','0','2.29275','0','0'),
('83072','6','-17.9647','501.451','-5.33586','0','0','0','0','0','0','0','0','0','0','1.88906','0','0');

-- Inside Pathing Nethervine Inciter
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83073);
DELETE FROM creature_movement WHERE id IN (83073);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83073','1','-4.02644','494.172','-5.3942','0','0','0','0','0','0','0','0','0','0','2.98076','0','0'),
('83073','2','-9.07605','497.28','-5.36563','0','0','0','0','0','0','0','0','0','0','2.54251','0','0'),
('83073','3','-13.1972','502.904','-5.32566','0','0','0','0','0','0','0','0','0','0','2.20321','0','0'),
('83073','4','-11.7771','511.38','-5.33284','0','0','0','0','0','0','0','0','0','0','1.51992','0','0'),
('83073','5','-12.8163','503.922','-5.31762','0','0','0','0','0','0','0','0','0','0','4.51621','0','0'),
('83073','6','-8.46771','497.311','-5.36527','0','0','0','0','0','0','0','0','0','0','5.52231','0','0'),
('83073','7','-3.33881','493.658','-5.39807','0','0','0','0','0','0','0','0','0','0','5.61813','0','0'),
('83073','8','6.10934','493.845','-5.4377','0','0','0','0','0','0','0','0','0','0','0.01981','0','0'),
('83073','9','15.9986','496.659','-5.46175','0','0','0','0','0','0','0','0','0','0','0.230297','0','0'),
('83073','10','6.36544','494.456','-5.43269','0','0','0','0','0','0','0','0','0','0','3.26036','0','0');

-- TARGET SCRIPTS FOR CHANNEL SPELL
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8307101,8307102);
INSERT INTO dbscripts_on_creature_movement VALUES (8307101,0,15,34221,0,19555,15,1,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target');
INSERT INTO dbscripts_on_creature_movement VALUES (8307102,0,15,34200,0,19511,83073,17,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Crystal Channel Nethervine Inciter');
INSERT INTO dbscripts_on_creature_movement VALUES (8307102,7,15,34187,0,19511,83073,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing');

-- SPELL SCRIPT TARGET ENTRIES
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('34221','1','19505','0');
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('34221','1','19555','0');
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('34200','1','19511','0');

-- Sunseeker Channeler
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83071);
DELETE FROM creature_movement WHERE id IN (83071);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83071','1','-7.07519','507.14','-5.29541','10000','8307101','0','0','0','0','0','0','0','0','0.657381','0','0'), -- Channeling
('83071','2','-7.07519','507.14','-5.29541','4000','0','0','0','0','0','0','0','34173','0','0.657381','0','0'), -- Stop Channel
('83071','3','-7.07519','507.14','-5.29541','11000','8307102','0','0','0','0','0','0','0','0','0.657381','0','0'), -- Channel Nethervine Inciter
('83071','4','-7.07519','507.14','-5.29541','70000','0','0','0','0','0','0','11','0','0','0.657381','0','0'); -- Emote

-- Sunseeker Channeler
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83070);
DELETE FROM creature_movement WHERE id IN (83070);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83070','1','0.743981','504.74','-5.31987','10000','8307101','0','0','0','0','0','0','0','0','2.01692','0','0'), -- Channeling
('83070','2','0.743981','504.74','-5.31987','85000','0','0','0','0','0','0','0','34173','0','2.01692','0','0'); -- Stop Channel

-- Sunseeker Channeler
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83075);
DELETE FROM creature_movement WHERE id IN (83075);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83075','1','-17.5918','505.421','-5.3076','10000','8307101','0','0','0','0','0','0','0','0','2.01692','0','0'), -- Channeling
('83075','2','-17.5918','505.421','-5.3076','85000','0','0','0','0','0','0','0','34173','0','2.08525','0','0'); -- Stop Channel

-- Sunseeker Channeler
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83074);
DELETE FROM creature_movement WHERE id IN (83074);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83074','1','-24.473','507.265','-5.30362','10000','8307101','0','0','0','0','0','0','0','0','0.22148','0','0'), -- Channeling
('83074','2','-24.473','507.265','-5.30362','85000','0','0','0','0','0','0','0','34173','0','0.22148','0','0'); -- Stop Channel

-- -----------------------------------------------------------
-- Nethervine Inciter Pathing in Front of Thorngrin the Tender
-- -----------------------------------------------------------
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83086);
DELETE FROM creature_movement WHERE id IN (83086);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83086','1','-23.5901','562.602','-18.0989','0','0','0','0','0','0','0','0','0','0','2.55595','0','0'),
('83086','2','-30.229','570.418','-17.9359','0','0','0','0','0','0','0','0','0','0','2.33603','0','0'),
('83086','3','-23.8211','563.044','-18.0996','0','0','0','0','0','0','0','0','0','0','5.40144','0','0'),
('83086','4','-16.2925','559.634','-18.1095','0','0','0','0','0','0','0','0','0','0','5.87661','0','0'),
('83086','5','31.0858','559.317','-18.1989','0','0','0','0','0','0','0','0','0','0','6.12087','0','0'),
('83086','6','40.6974','562.026','-17.609','0','0','0','0','0','0','0','0','0','0','0.297927','0','0'),
('83086','7','31.3911','559.043','-18.2044','0','0','0','0','0','0','0','0','0','0','3.19369','0','0'),
('83086','8','-15.7247','559.729','-18.1073','0','0','0','0','0','0','0','0','0','0','3.20704','0','0');

-- ----------------------------------------------------------------------------------
-- Nethervine Inciter and Nethervine Reaper Pathing Around Thorngrin the Tenders Room
-- ----------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+16,@CGUID+17);
INSERT INTO creature VALUES (@CGUID+16,19512,553,3,0,0,-18.8205,518.483,-6.07107,6.05097,7200,0,0,20958,0,0,0);
INSERT INTO creature VALUES (@CGUID+17,19511,553,3,0,0,-19.6808,514.978,-5.89398,5.61429,7200,0,0,20958,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+16);
INSERT INTO creature_linking VALUES (@CGUID+17,@CGUID+16,515);
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+16);
DELETE FROM creature_movement WHERE id IN (@CGUID+16);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+16,'1','-11.1495','518.438','-5.74976','0','0','0','0','0','0','0','0','0','0','6.22769','0','0'),
(@CGUID+16,'2','-4.07179','518.313','-5.74221','0','0','0','0','0','0','0','0','0','0','0.133783','0','0'),
(@CGUID+16,'3','6.70262','522.214','-8.08245','0','0','0','0','0','0','0','0','0','0','0.347411','0','0'),
(@CGUID+16,'4','17.3582','529.537','-12.428','0','0','0','0','0','0','0','0','0','0','0.643507','0','0'),
(@CGUID+16,'5','20.4706','535.661','-15.3494','0','0','0','0','0','0','0','0','0','0','1.08883','0','0'),
(@CGUID+16,'6','20.9221','543.053','-18.4064','0','0','0','0','0','0','0','0','0','0','1.5098','0','0'),
(@CGUID+16,'7','16.8279','549.014','-18.3111','0','0','0','0','0','0','0','0','0','0','2.17268','0','0'),
(@CGUID+16,'8','9.84162','550.811','-18.2149','0','0','0','0','0','0','0','0','0','0','2.72246','0','0'),
(@CGUID+16,'9','-8.74968','551.02','-18.2178','0','0','0','0','0','0','0','0','0','0','2.9298','0','0'),
(@CGUID+16,'10','-26.358','551.434','-18.2145','0','0','0','0','0','0','0','0','0','0','3.09945','0','0'),
(@CGUID+16,'11','-36.5401','550.107','-18.263','0','0','0','0','0','0','0','0','0','0','3.27302','0','0'),
(@CGUID+16,'12','-42.5133','546.936','-18.3103','0','0','0','0','0','0','0','0','0','0','3.59661','0','0'),
(@CGUID+16,'13','-43.7557','542.668','-18.4038','0','0','0','0','0','0','0','0','0','0','4.42913','0','0'),
(@CGUID+16,'14','-39.4576','531.936','-14.0649','0','0','0','0','0','0','0','0','0','0','5.13442','0','0'),
(@CGUID+16,'15','-35.2496','526.307','-10.4672','0','0','0','0','0','0','0','0','0','0','5.35433','0','0'),
(@CGUID+16,'16','-29.7596','522.783','-8.69191','0','0','0','0','0','0','0','0','0','0','5.71247','0','0'),
(@CGUID+16,'17','-23.0708','519.459','-6.90383','0','0','0','0','0','0','0','0','0','0','5.82164','0','0'),
(@CGUID+16,'18','-18.2628','518.513','-5.97764','0','0','0','0','0','0','0','0','0','0','6.24732','0','0');

-- -----------------------------------------------------
-- Sunseeker Channelers In Front of Thorngrin the Tender
-- -----------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+18,@CGUID+19);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+18, 19555, 11686, 553, 3, -9.877317, 599.7631, -8.542097, 6.038839, 7200, 0, 0), -- 19555 (Area: 0) -- TK Atrium Channel Target
(@CGUID+19, 19555, 11686, 553, 3, 20.09065, 599.7101, -8.299042, 3.141593, 7200, 0, 0); -- 19555 (Area: 0) -- TK Atrium Channel Target

-- TARGET SCRIPTS FOR CHANNEL SPELL (RIGHT NPC)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8298801,8298802);
INSERT INTO dbscripts_on_creature_movement VALUES (8298801,0,15,34221,0,19555,15,1,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target');
INSERT INTO dbscripts_on_creature_movement VALUES (8298802,2,15,34222,0,0,0,0,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing AOE');
INSERT INTO dbscripts_on_creature_movement VALUES (8298802,3,15,34173,0,19512,83085,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Reaper Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8298802,3,15,34173,0,19512,83084,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Reaper Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8298802,3,15,34173,0,19511,83082,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8298802,3,15,34173,0,19511,83083,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing');

-- TARGET SCRIPTS FOR CHANNEL SPELL (RIGHT NPC)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8307701,8307702);
INSERT INTO dbscripts_on_creature_movement VALUES (8307701,0,15,34221,0,19555,15,1,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target');
INSERT INTO dbscripts_on_creature_movement VALUES (8307702,2,15,34222,0,0,0,0,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing AOE');
INSERT INTO dbscripts_on_creature_movement VALUES (8307702,3,15,34173,0,19512,83081,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Reaper Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8307702,3,15,34173,0,19512,83079,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Reaper Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8307702,3,15,34173,0,19511,83078,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing');
INSERT INTO dbscripts_on_creature_movement VALUES (8307702,3,15,34173,0,19511,83080,23,0,0,0,0,0,0,0,0,'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing');


-- Right Sunseeker Channeler Pathing
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (82988);
DELETE FROM creature_movement WHERE id IN (82988);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('82988','1','21.6491','588.464','-17.7652','32000','8298801','0','0','0','0','0','0','0','0','1.46975','0','0'), -- Channeling 
('82988','2','21.6491','588.464','-17.7652','4000','0','0','0','0','0','0','0','34173','0','1.46975','0','0'), -- Cast Sunseeker Blessing 
('82988','3','19.3148','583.8','-17.8192','0','0','0','0','0','0','0','0','0','0','4.30189','0','0'),
('82988','4','18.6946','574.077','-17.9568','6000','8298802','0','0','0','0','0','0','0','0','4.89958','0','0'), -- Cast In Middle of Group (2 Sec Delay)
('82988','5','19.3882','583.435','-17.8253','0','0','0','0','0','0','0','0','0','0','1.66296','0','0'),
('82988','6','21.6491','588.464','-17.7652','30000','0','0','0','0','0','0','0','0','0','1.46975','0','0'); -- Wait at Channeling Position

-- Left Sunseeker Channeler Pathing
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (83077);
DELETE FROM creature_movement WHERE id IN (83077);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('83077','1','-11.5331','590.832','-17.7077','32000','8307701','0','0','0','0','0','0','0','0','1.39957','0','0'), -- Channeling
('83077','2','-11.5331','590.832','-17.7077','4000','0','0','0','0','0','0','0','34173','0','1.39957','0','0'), -- Cast Sunseeker Blessing
('83077','3','-3.60459','580.712','-17.8252','0','0','0','0','0','0','0','0','0','0','5.37684','0','0'),
('83077','4','-5.46937','575.998','-17.8898','6000','8307702','0','0','0','0','0','0','0','0','4.46421','0','0'), -- Cast In Middle of Group (2 Sec Delay)
('83077','5','-3.59916','581.005','-17.8215','0','0','0','0','0','0','0','0','0','0','1.18831','0','0'),
('83077','6','-11.5331','590.832','-17.7077','30000','0','0','0','0','0','0','0','0','0','1.39957','0','0');  -- Wait at Channeling Position

-- --------------------------
-- Fix Nethervine Trickster's
-- --------------------------
UPDATE creature SET Spawndist=5, MovementType=1 WHERE guid IN (83087,83088);
DELETE FROM creature_movement WHERE id IN (83087);
UPDATE creature SET position_x = '-88.661102', position_y = '547.243958', position_z = '-17.805691', orientation = '0.557306' WHERE guid = '83088';
DELETE FROM creature WHERE guid=83089;
DELETE FROM creature_addon WHERE guid=83089;
DELETE FROM creature_movement WHERE id=83089;

-- ---------------------
-- Fix Gene-Splicer Room
-- ---------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83092,83090,83099,83098,83101,83100);
UPDATE creature SET position_x = '-150.864899', position_y = '525.923035', position_z = '-17.823814', orientation = '3.511526' WHERE guid = '83097';
UPDATE creature SET position_x = '-154.763702', position_y = '529.822021', position_z = '-17.823814', orientation = '4.188539' WHERE guid = '83095';
UPDATE creature SET position_x = '-163.409683', position_y = '504.117920', position_z = '-17.823814', orientation = '4.029104' WHERE guid = '83102';
UPDATE creature SET position_x = '-129.737488', position_y = '504.990234', position_z = '-17.823814', orientation = '3.721230' WHERE guid = '83091';
UPDATE creature SET position_x = '-157.169098', position_y = '471.524658', position_z = '-17.824739', orientation = '1.367393' WHERE guid = '83106';
UPDATE creature SET position_x = '-165.245972', position_y = '472.490967', position_z = '-17.824739', orientation = '1.426298' WHERE guid = '83105';

DELETE FROM creature_addon WHERE guid IN (83095,83097,83096,83091,83093,83094,83104,83103,83102);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83095','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83097','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83096','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83091','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83093','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83094','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83104','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83103','0','0','0','0','69','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('83102','0','0','0','0','69','0',NULL);

-- -------------------------------------------------------------
-- Add Missing Gene-Splicer Spawns Laying on Floor in Laj's Room
-- -------------------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+20,@CGUID+21,@CGUID+22,@CGUID+23,@CGUID+24,@CGUID+25,@CGUID+26,@CGUID+27,@CGUID+28,@CGUID+29,@CGUID+30,@CGUID+31);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `DeathState`, `MovementType`) VALUES
(@CGUID+20, 19507, 21337, 553, 3, -157.6343, 411.7007, -17.61243, 1.27409, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+21, 19507, 21335, 553, 3, -177.2168, 408.9644, -17.60689, 2.076942, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+22, 19507, 21336, 553, 3, -150.5405, 400.3017, -17.75786, 2.75762, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+23, 19507, 21335, 553, 3, -172.6049, 403.9249, -17.61106, 4.747295, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+24, 19507, 21335, 553, 3, -173.2738, 390.1292, -17.60731, 3.508112, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+25, 19507, 21336, 553, 3, -177.0949, 378.2484, -17.60809, 5.183628, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+26, 19507, 21336, 553, 3, -172.3201, 380.3159, -17.61069, 0.8901179, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+27, 19507, 21337, 553, 3, -166.8567, 398.4712, -17.6142, 4.223697, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+28, 19507, 21337, 553, 3, -154.356, 386.3756, -17.72159, 4.433136, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+29, 19507, 21337, 553, 3, -179.9221, 401.1072, -17.60423, 0.4886922, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+30, 19507, 21336, 553, 3, -164.2751, 375.6826, -17.61685, 2.75762, 7200, 0, 1, 0), -- 19507 (Area: 0)
(@CGUID+31, 19507, 21336, 553, 3, -152.4001, 372.6643, -17.60546, 0.3316126, 7200, 0, 1, 0); -- 19507 (Area: 0)

DELETE FROM creature_addon WHERE guid IN (@CGUID+20,@CGUID+21,@CGUID+22,@CGUID+23,@CGUID+24,@CGUID+25,@CGUID+26,@CGUID+27,@CGUID+28,@CGUID+29,@CGUID+30,@CGUID+31);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+20,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+21,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+22,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+23,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+24,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+25,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+26,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+27,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+28,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+29,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+30,'0','7','1','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+31,'0','7','1','0','0','0',NULL);

DELETE FROM creature WHERE guid IN (@CGUID+32,@CGUID+33);
INSERT INTO creature VALUES (@CGUID+32,17993,553,3,0,0,-155.507,389.66,-17.7781,2.1041,7200,0,0,16208,3080,0,0);
INSERT INTO creature VALUES (@CGUID+33,17993,553,3,0,0,-160.717,374.429,-17.6977,2.19363,7200,0,0,16208,3155,0,0);

DELETE FROM db_script_string WHERE entry IN (2000005558,2000005559);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000005558','Get out of here, there are too many of them! Escape while you can!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','Sunseeker Protector in Botanica'),
('2000005559','Help! Someone help us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','Sunseeker Protector in Botanica');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1799301,1799302);
INSERT INTO dbscripts_on_creature_movement VALUES (1799301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sunseeker Protector (Botanica) - Run Mode On');
INSERT INTO dbscripts_on_creature_movement VALUES (1799302,0,15,37493,0,0,0,0,0,0,0,0,0,0,0,0,'Sunseeker Protector (Botanica) - Feign Death');
INSERT INTO dbscripts_on_creature_movement VALUES (1799302,15,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunseeker Protector (Botanica) - Despawn');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+32);
DELETE FROM creature_movement WHERE id IN (@CGUID+32);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+32,'1','-155.507','389.66','-17.7781','16000','1799301','0','0','0','0','0','0','0','0','2.1041','0','0'),
(@CGUID+32,'2','-155.507','389.66','-17.7781','0','0','0','0','0','0','0','0','0','0','2.1041','0','0'),
(@CGUID+32,'3','-161.64','398.266','-17.734','0','0','0','0','0','0','0','0','0','0','2.23573','0','0'),
(@CGUID+32,'4','-157.994','405.455','-17.6956','0','0','2000005559','0','0','0','0','0','0','0','0.805515','0','0'),
(@CGUID+32,'5','-164.289','411.495','-17.7221','0','0','0','0','0','0','0','0','0','0','2.44307','0','0'),
(@CGUID+32,'6','-169.0393','407.6524','-17.69853','60000','1799302','0','0','0','0','0','0','0','0','1.727011','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+33);
DELETE FROM creature_movement WHERE id IN (@CGUID+33);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+33,'1','-160.717','374.429','-17.6977','16000','1799301','0','0','0','0','0','0','0','0','2.19363','0','0'),
(@CGUID+33,'2','-160.717','374.429','-17.6977','0','0','0','0','0','0','0','0','0','0','2.19363','0','0'),
(@CGUID+33,'3','-167.591','389.41','-17.6984','0','0','0','0','0','0','0','0','0','0','1.9899','0','0'),
(@CGUID+33,'4','-170.008','400.085','-17.696','0','0','0','0','0','0','0','0','0','0','1.75349','0','0'),
(@CGUID+33,'5','-161.8523','407.7832','-17.69849','0','0','2000005558','0','0','0','0','0','0','0','1.729398','0','0'),
(@CGUID+33,'6','-163.7475','428.2452','-17.78011','60000','1799302','0','0','0','0','0','0','0','0','1.727011','0','0');

-- ------------------------
-- Fix Warp Splinter's Room
-- ------------------------
UPDATE creature SET Spawndist=3, MovementType=1 WHERE guid IN (83119,83120,83121,83122,83123,83125,83127,83128,83129,83130,83131,83134,83135,83137,83139,83141,83143,83146,83148,83149);
DELETE FROM creature WHERE guid IN  (83133,83147,83136,83138,83145,83144,83140,83142,83132,83124,83126);


-- =======================
-- NPC Group Aggro Linking
-- =======================
-- Front Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83152);
INSERT INTO creature_linking VALUES (83151,83152,3);

-- Front Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83155);
INSERT INTO creature_linking VALUES (83154,83155,3);

-- Front Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83156);
INSERT INTO creature_linking VALUES (82984,83156,3);

-- First Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83150);
INSERT INTO creature_linking VALUES (82983,83150,3);
INSERT INTO creature_linking VALUES (@CGUID,83150,3);

-- First Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (82982);
INSERT INTO creature_linking VALUES (82981,82982,3);
INSERT INTO creature_linking VALUES (82980,82982,3);

-- First Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (82979);
INSERT INTO creature_linking VALUES (82978,82979,3);
INSERT INTO creature_linking VALUES (82977,82979,3);

-- First Room - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (82985);
INSERT INTO creature_linking VALUES (82991,82985,3);

-- Second Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83000);
INSERT INTO creature_linking VALUES (82994,83000,3);
INSERT INTO creature_linking VALUES (82993,83000,3);

-- Second Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (82995);
INSERT INTO creature_linking VALUES (82996,82995,3);
INSERT INTO creature_linking VALUES (82997,82995,3);
INSERT INTO creature_linking VALUES (82998,82995,3);

-- Second Room - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83002);
INSERT INTO creature_linking VALUES (83001,83002,3);

-- Second Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83006);
INSERT INTO creature_linking VALUES (83005,83006,3);
INSERT INTO creature_linking VALUES (83004,83006,3);

-- First Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83007);
INSERT INTO creature_linking VALUES (83008,83007,3);
INSERT INTO creature_linking VALUES (83009,83007,3);
INSERT INTO creature_linking VALUES (83010,83007,3);

-- First Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+1);
INSERT INTO creature_linking VALUES (@CGUID+2,@CGUID+1,3);
INSERT INTO creature_linking VALUES (@CGUID+3,@CGUID+1,3);

-- First Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+5);
INSERT INTO creature_linking VALUES (@CGUID+4,@CGUID+5,3);
INSERT INTO creature_linking VALUES (@CGUID+6,@CGUID+5,3);

-- First Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+8);
INSERT INTO creature_linking VALUES (@CGUID+7,@CGUID+8,3);
INSERT INTO creature_linking VALUES (@CGUID+9,@CGUID+8,3);

-- Fourth Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83016);
INSERT INTO creature_linking VALUES (83017,83016,3);
INSERT INTO creature_linking VALUES (83018,83016,3);
INSERT INTO creature_linking VALUES (83019,83016,3);

-- Fourth Room - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (83034);
INSERT INTO creature_linking VALUES (83033,83034,3);
INSERT INTO creature_linking VALUES (83032,83034,3);
INSERT INTO creature_linking VALUES (83031,83034,3);
INSERT INTO creature_linking VALUES (83030,83034,3);

-- Fourth Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83020);
INSERT INTO creature_linking VALUES (83029,83020,3);
INSERT INTO creature_linking VALUES (@CGUID+10,83020,3);

-- Fourth Room - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (83021);
INSERT INTO creature_linking VALUES (83048,83021,3);
INSERT INTO creature_linking VALUES (83028,83021,3);
INSERT INTO creature_linking VALUES (83024,83021,3);
INSERT INTO creature_linking VALUES (83025,83021,3);

-- First Group of Frayers
DELETE FROM creature_linking WHERE master_guid IN (83035);
INSERT INTO creature_linking VALUES (83043,83035,3);
INSERT INTO creature_linking VALUES (83046,83035,3);
INSERT INTO creature_linking VALUES (83042,83035,3);
INSERT INTO creature_linking VALUES (83040,83035,3);
INSERT INTO creature_linking VALUES (83041,83035,3);
INSERT INTO creature_linking VALUES (83039,83035,3);
INSERT INTO creature_linking VALUES (83036,83035,3);
INSERT INTO creature_linking VALUES (83038,83035,3);

-- Second Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83049);
INSERT INTO creature_linking VALUES (83050,83049,3);
INSERT INTO creature_linking VALUES (83051,83049,3);

-- Second Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (83053);
INSERT INTO creature_linking VALUES (83054,83053,3);
INSERT INTO creature_linking VALUES (83055,83053,3);

-- Second Group of Frayers
DELETE FROM creature_linking WHERE master_guid IN (83056);
INSERT INTO creature_linking VALUES (83057,83056,3);
INSERT INTO creature_linking VALUES (83058,83056,3);
INSERT INTO creature_linking VALUES (83061,83056,3);
INSERT INTO creature_linking VALUES (83062,83056,3);
INSERT INTO creature_linking VALUES (83063,83056,3);
INSERT INTO creature_linking VALUES (83064,83056,3);
INSERT INTO creature_linking VALUES (83065,83056,3);
INSERT INTO creature_linking VALUES (83069,83056,3);

-- Third Boss Room - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+13);
INSERT INTO creature_linking VALUES (@CGUID+11,@CGUID+13,3);
INSERT INTO creature_linking VALUES (@CGUID+12,@CGUID+13,3);

-- Second Boss Room - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83071);
INSERT INTO creature_linking VALUES (83070,83071,3);

-- Second Boss Room - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83075);
INSERT INTO creature_linking VALUES (83074,83075,3);

-- Third Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83082);
INSERT INTO creature_linking VALUES (83083,83082,3);
INSERT INTO creature_linking VALUES (83084,83082,3);
INSERT INTO creature_linking VALUES (83085,83082,3);

-- Third Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83078);
INSERT INTO creature_linking VALUES (83079,83078,3);
INSERT INTO creature_linking VALUES (83080,83078,3);
INSERT INTO creature_linking VALUES (83081,83078,3);

-- Fifth Room - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (83095);
INSERT INTO creature_linking VALUES (83096,83095,3);
INSERT INTO creature_linking VALUES (83097,83095,3);
INSERT INTO creature_linking VALUES (83098,83095,3);
INSERT INTO creature_linking VALUES (83099,83095,3);

-- Fifth Room - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (83090);
INSERT INTO creature_linking VALUES (83091,83090,3);
INSERT INTO creature_linking VALUES (83092,83090,3);
INSERT INTO creature_linking VALUES (83093,83090,3);
INSERT INTO creature_linking VALUES (83094,83090,3);

-- Fifth Room - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (83100);
INSERT INTO creature_linking VALUES (83101,83100,3);
INSERT INTO creature_linking VALUES (83102,83100,3);
INSERT INTO creature_linking VALUES (83103,83100,3);
INSERT INTO creature_linking VALUES (83104,83100,3);

-- Fifth Room - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (83106);
INSERT INTO creature_linking VALUES (83105,83106,3);

-- Fourth Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83107);
INSERT INTO creature_linking VALUES (83108,83107,3);
INSERT INTO creature_linking VALUES (83109,83107,3);
INSERT INTO creature_linking VALUES (83112,83107,3);

-- Fourth Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83110);
INSERT INTO creature_linking VALUES (83111,83110,3);
INSERT INTO creature_linking VALUES (83113,83110,3);
INSERT INTO creature_linking VALUES (83114,83110,3);

-- Fourth Boss Room - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (83115);
INSERT INTO creature_linking VALUES (83116,83115,3);
INSERT INTO creature_linking VALUES (83117,83115,3);
INSERT INTO creature_linking VALUES (83118,83115,3);

-- Final Boss Room - Group of 10
DELETE FROM creature_linking WHERE master_guid IN (83148);
INSERT INTO creature_linking VALUES (83134,83148,3);
INSERT INTO creature_linking VALUES (83135,83148,3);
INSERT INTO creature_linking VALUES (83131,83148,3);
INSERT INTO creature_linking VALUES (83149,83148,3);
INSERT INTO creature_linking VALUES (83146,83148,3);
INSERT INTO creature_linking VALUES (83137,83148,3);
INSERT INTO creature_linking VALUES (83139,83148,3);
INSERT INTO creature_linking VALUES (83141,83148,3);
INSERT INTO creature_linking VALUES (83143,83148,3);

-- Final Boss Room - Group of 10
DELETE FROM creature_linking WHERE master_guid IN (83120);
INSERT INTO creature_linking VALUES (83127,83120,3);
INSERT INTO creature_linking VALUES (83119,83120,3);
INSERT INTO creature_linking VALUES (83121,83120,3);
INSERT INTO creature_linking VALUES (83122,83120,3);
INSERT INTO creature_linking VALUES (83125,83120,3);
INSERT INTO creature_linking VALUES (83123,83120,3);
INSERT INTO creature_linking VALUES (83129,83120,3);
INSERT INTO creature_linking VALUES (83128,83120,3);
INSERT INTO creature_linking VALUES (83130,83120,3);


-- =====================================
-- General Health and Mana Value Cleanup
-- =====================================
UPDATE creature, creature_template SET creature.curhealth=creature_template.minlevelhealth,creature.curmana=creature_template.minlevelmana WHERE creature.id=creature_template.entry and creature_template.RegenerateHealth = '1';



-- ======================================================
-- TEMPEST KEEP: THE ARCATRAZ - COMPLETE DUNGEON OVERHAUL
-- ======================================================
-- ---------------
-- DEVELOPER NOTES
-- ---------------
-- Intro NPC Speed - Small Guys Should Be Walk Mode  Big Guys Are Run Mode (Fix in SD2)
-- Need To Determine How Many Corpse Should be Spawned From Pool

-- ------------------------
-- DEFINE GUID START POINTS
-- ------------------------
SET @CGUID := 140330;


-- ===============================
-- GENERAL DATABASE FIXES REQUIRED
-- ===============================
-- Arcane Warders Target Arcane Warder Target
INSERT IGNORE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values ('36327','1','21186','0');

-- Fix Arcane Warder Target To Allow Aggro and Stay Rooted (NPC Will target Them and Warders Will Target These For Visual AOE Attack)
UPDATE creature_template SET UnitFlags=33554688, DynamicFlags=8, ExtraFlags=128 WHERE entry IN (21186);

-- Fix Arcatraz Sentinel (Still Need To Make It Change Template Too)
UPDATE creature_template SET UnitFlags=536870976, DynamicFlags=32, RegenerateHealth=0 WHERE entry IN (20869,21586);
UPDATE creature SET curhealth=46108 WHERE id IN (20869); -- Normal Mode
UPDATE creature SET curhealth=64908 WHERE id IN (21586); -- Heroic Mode
UPDATE creature_template_addon SET auras='' WHERE entry IN (21761);
UPDATE creature_template SET ModelId1=19971 WHERE entry=21761;


-- ========================================
-- CREATURE SPAWN / MOVEMENT / LINKING DATA
-- ========================================
-- -----------------------------------------------------------------
-- Spawn All Warder Corpse and Defender Corpse NPC's From Sniff Data
-- -----------------------------------------------------------------
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+43;
-- Arcatraz Warder/Defender Corpse Pool 1
INSERT INTO creature VALUES (@CGUID,21303,552,3,0,0,197.795,-86.5381,-10.1018,5.90384,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+1,21304,552,3,0,0,197.795,-86.5381,-10.1018,5.90384,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 2
INSERT INTO creature VALUES (@CGUID+2,21303,552,3,0,0,206.3423,-98.27836,-10.02623,2.6529,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+3,21304,552,3,0,0,206.3423,-98.27836,-10.02623,2.6529,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 3
INSERT INTO creature VALUES (@CGUID+4,21303,552,3,0,0,213.6261,-161.4238,-10.0346,2.740167,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+5,21304,552,3,0,0,213.6261,-161.4238,-10.0346,2.740167,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 4
INSERT INTO creature VALUES (@CGUID+6,21303,552,3,0,0,273.4377,-64.06999,22.45336,22.45336,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+7,21304,552,3,0,0,273.4377,-64.06999,22.45336,22.45336,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 5
INSERT INTO creature VALUES (@CGUID+8,21303,552,3,0,0,270.8191,-45.47938,22.4534,4.468043,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+9,21304,552,3,0,0,270.8191,-45.47938,22.4534,4.468043,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 6
INSERT INTO creature VALUES (@CGUID+10,21303,552,3,0,0,226.1842,-162.0961,-10.03523,0.3490658,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+11,21304,552,3,0,0,226.1842,-162.0961,-10.03523,0.3490658,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 7
INSERT INTO creature VALUES (@CGUID+12,21303,552,3,0,0,245.9822,-194.6173,-10.02174,0.8726646,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+13,21304,552,3,0,0,245.9822,-194.6173,-10.02174,0.8726646,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 8
INSERT INTO creature VALUES (@CGUID+14,21303,552,3,0,0,285.4156,127.1274,22.29513,4.694936,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+15,21304,552,3,0,0,285.4156,127.1274,22.29513,4.694936,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 9
INSERT INTO creature VALUES (@CGUID+16,21303,552,3,0,0,253.6892,139.8683,22.41207,2.303835,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+17,21304,552,3,0,0,253.6892,139.8683,22.41207,2.303835,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 10
INSERT INTO creature VALUES (@CGUID+18,21303,552,3,0,0,253.9511,155.0008,22.38065,4.939282,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+19,21304,552,3,0,0,253.9511,155.0008,22.38065,4.939282,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 11
INSERT INTO creature VALUES (@CGUID+20,21303,552,3,0,0,298.8479,151.7484,22.31051,5.707227,7200,0,0,20283,0,0,0); 
INSERT INTO creature VALUES (@CGUID+21,21304,552,3,0,0,298.8479,151.7484,22.31051,5.707227,7200,0,0,20283,0,0,0); 
-- Arcatraz Warder/Defender Corpse Pool 12
INSERT INTO creature VALUES (@CGUID+22,21303,552,3,0,0,306.976,141.112,22.2286,3.0285,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+23,21304,552,3,0,0,306.976,141.112,22.2286,3.0285,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 13
INSERT INTO creature VALUES (@CGUID+24,21303,552,3,0,0,272.5006,-40.19271,22.50897,2.9147,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+25,21304,552,3,0,0,272.5006,-40.19271,22.50897,2.9147,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 14
INSERT INTO creature VALUES (@CGUID+26,21303,552,3,0,0,232.7542,-198.1254,-10.02295,5.61996,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+27,21304,552,3,0,0,232.7542,-198.1254,-10.02295,5.61996,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 15
INSERT INTO creature VALUES (@CGUID+28,21303,552,3,0,0,262.5602,-65.59807,22.45336,1.500983,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+29,21304,552,3,0,0,262.5602,-65.59807,22.45336,1.500983,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 16
INSERT INTO creature VALUES (@CGUID+30,21303,552,3,0,0,312.9286,-7.190621,22.5245,4.031711,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+31,21304,552,3,0,0,312.9286,-7.190621,22.5245,4.031711,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 17
INSERT INTO creature VALUES (@CGUID+32,21303,552,3,0,0,311.1194,-5.503693,22.5245,1.570796,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+33,21304,552,3,0,0,311.1194,-5.503693,22.5245,1.570796,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 18
INSERT INTO creature VALUES (@CGUID+34,21303,552,3,0,0,293.8853,70.93681,22.52617,1.553343,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+35,21304,552,3,0,0,293.8853,70.93681,22.52617,1.553343,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 19
INSERT INTO creature VALUES (@CGUID+36,21303,552,3,0,0,291.632,70.58091,22.52693,2.007129,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+37,21304,552,3,0,0,291.632,70.58091,22.52693,2.007129,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 20
INSERT INTO creature VALUES (@CGUID+38,21303,552,3,0,0,397.0705,25.33308,48.29603,0.5235988,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+39,21304,552,3,0,0,397.0705,25.33308,48.29603,0.5235988,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 21
INSERT INTO creature VALUES (@CGUID+40,21303,552,3,0,0,392.0042,18.38568,48.29601,1.48353,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+41,21304,552,3,0,0,392.0042,18.38568,48.29601,1.48353,7200,0,0,20283,0,0,0);
-- Arcatraz Warder/Defender Corpse Pool 22
INSERT INTO creature VALUES (@CGUID+42,21303,552,3,0,0,257.3438,155.5679,22.33209,4.712389,7200,0,0,20283,0,0,0);
INSERT INTO creature VALUES (@CGUID+43,21304,552,3,0,0,257.3438,155.5679,22.33209,4.712389,7200,0,0,20283,0,0,0);

-- Pool Templates
DELETE FROM pool_template WHERE entry BETWEEN 30000 AND 30022;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30000','16','Arcatraz - Warder/Defender Corpses - Master Pool'); -- UNKNOWN MAX LIMIT FOR TOTAL IN DUNGEON TO BE SPAWNED
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30001','1','Arcatraz - Warder/Defender Corpses - Pool 1');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30002','1','Arcatraz - Warder/Defender Corpses - Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30003','1','Arcatraz - Warder/Defender Corpses - Pool 3');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30004','1','Arcatraz - Warder/Defender Corpses - Pool 4');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30005','1','Arcatraz - Warder/Defender Corpses - Pool 5');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30006','1','Arcatraz - Warder/Defender Corpses - Pool 6');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30007','1','Arcatraz - Warder/Defender Corpses - Pool 7');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30008','1','Arcatraz - Warder/Defender Corpses - Pool 8');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30009','1','Arcatraz - Warder/Defender Corpses - Pool 9');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30010','1','Arcatraz - Warder/Defender Corpses - Pool 10');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30011','1','Arcatraz - Warder/Defender Corpses - Pool 11');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30012','1','Arcatraz - Warder/Defender Corpses - Pool 12');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30013','1','Arcatraz - Warder/Defender Corpses - Pool 13');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30014','1','Arcatraz - Warder/Defender Corpses - Pool 14');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30015','1','Arcatraz - Warder/Defender Corpses - Pool 15');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30016','1','Arcatraz - Warder/Defender Corpses - Pool 16');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30017','1','Arcatraz - Warder/Defender Corpses - Pool 17');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30018','1','Arcatraz - Warder/Defender Corpses - Pool 18');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30019','1','Arcatraz - Warder/Defender Corpses - Pool 19');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30020','1','Arcatraz - Warder/Defender Corpses - Pool 20');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30021','1','Arcatraz - Warder/Defender Corpses - Pool 21');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30022','1','Arcatraz - Warder/Defender Corpses - Pool 22');

-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry BETWEEN 30001 AND 30022;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID,'30001','0','Arcatraz - Defender Corpse - Pool 1');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+1,'30001','0','Arcatraz - Warder Corpse - Pool 1');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+2,'30002','0','Arcatraz - Defender Corpse - Pool 2');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+3,'30002','0','Arcatraz - Warder Corpse - Pool 2');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+4,'30003','0','Arcatraz - Defender Corpse - Pool 3');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+5,'30003','0','Arcatraz - Warder Corpse - Pool 3');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+6,'30004','0','Arcatraz - Defender Corpse - Pool 4');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+7,'30004','0','Arcatraz - Warder Corpse - Pool 4');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+8,'30005','0','Arcatraz - Defender Corpse - Pool 5');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+9,'30005','0','Arcatraz - Warder Corpse - Pool 5');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+10,'30006','0','Arcatraz - Defender Corpse - Pool 6');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+11,'30006','0','Arcatraz - Warder Corpse - Pool 6');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+12,'30007','0','Arcatraz - Defender Corpse - Pool 7');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+13,'30007','0','Arcatraz - Warder Corpse - Pool 7');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+14,'30008','0','Arcatraz - Defender Corpse - Pool 8');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+15,'30008','0','Arcatraz - Warder Corpse - Pool 8');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+16,'30009','0','Arcatraz - Defender Corpse - Pool 9');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+17,'30009','0','Arcatraz - Warder Corpse - Pool 9');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+18,'30010','0','Arcatraz - Defender Corpse - Pool 10');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+19,'30010','0','Arcatraz - Warder Corpse - Pool 10');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+20,'30011','0','Arcatraz - Defender Corpse - Pool 11');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+21,'30011','0','Arcatraz - Warder Corpse - Pool 11');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+22,'30012','0','Arcatraz - Defender Corpse - Pool 12');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+23,'30012','0','Arcatraz - Warder Corpse - Pool 12');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+24,'30013','0','Arcatraz - Defender Corpse - Pool 13');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+25,'30013','0','Arcatraz - Warder Corpse - Pool 13');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+26,'30014','0','Arcatraz - Defender Corpse - Pool 14');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+27,'30014','0','Arcatraz - Warder Corpse - Pool 14');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+28,'30015','0','Arcatraz - Defender Corpse - Pool 15');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+29,'30015','0','Arcatraz - Warder Corpse - Pool 15');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+30,'30016','0','Arcatraz - Defender Corpse - Pool 16');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+31,'30016','0','Arcatraz - Warder Corpse - Pool 16');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+32,'30017','0','Arcatraz - Defender Corpse - Pool 17');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+33,'30017','0','Arcatraz - Warder Corpse - Pool 17');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+34,'30018','0','Arcatraz - Defender Corpse - Pool 18');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+35,'30018','0','Arcatraz - Warder Corpse - Pool 18');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+36,'30019','0','Arcatraz - Defender Corpse - Pool 19');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+37,'30019','0','Arcatraz - Warder Corpse - Pool 19');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+38,'30020','0','Arcatraz - Defender Corpse - Pool 20');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+39,'30020','0','Arcatraz - Warder Corpse - Pool 20');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+40,'30021','0','Arcatraz - Defender Corpse - Pool 21');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+41,'30021','0','Arcatraz - Warder Corpse - Pool 21');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+42,'30022','0','Arcatraz - Defender Corpse - Pool 22');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+43,'30022','0','Arcatraz - Warder Corpse - Pool 22');

-- Master Spawn Pool
DELETE FROM pool_pool WHERE pool_id BETWEEN 30001 AND 30022;
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30001','30000','0','Arcatraz - Warder/Defender Corpses - Pool 1');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30002','30000','0','Arcatraz - Warder/Defender Corpses - Pool 2');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30003','30000','0','Arcatraz - Warder/Defender Corpses - Pool 3');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30004','30000','0','Arcatraz - Warder/Defender Corpses - Pool 4');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30005','30000','0','Arcatraz - Warder/Defender Corpses - Pool 5');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30006','30000','0','Arcatraz - Warder/Defender Corpses - Pool 6');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30007','30000','0','Arcatraz - Warder/Defender Corpses - Pool 7');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30008','30000','0','Arcatraz - Warder/Defender Corpses - Pool 8');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30009','30000','0','Arcatraz - Warder/Defender Corpses - Pool 9');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30010','30000','0','Arcatraz - Warder/Defender Corpses - Pool 10');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30011','30000','0','Arcatraz - Warder/Defender Corpses - Pool 11');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30012','30000','0','Arcatraz - Warder/Defender Corpses - Pool 12');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30013','30000','0','Arcatraz - Warder/Defender Corpses - Pool 13');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30014','30000','0','Arcatraz - Warder/Defender Corpses - Pool 14');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30015','30000','0','Arcatraz - Warder/Defender Corpses - Pool 15');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30016','30000','0','Arcatraz - Warder/Defender Corpses - Pool 16');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30017','30000','0','Arcatraz - Warder/Defender Corpses - Pool 17');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30018','30000','0','Arcatraz - Warder/Defender Corpses - Pool 18');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30019','30000','0','Arcatraz - Warder/Defender Corpses - Pool 19');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30020','30000','0','Arcatraz - Warder/Defender Corpses - Pool 20');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30021','30000','0','Arcatraz - Warder/Defender Corpses - Pool 21');
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES ('30022','30000','0','Arcatraz - Warder/Defender Corpses - Pool 22');

-- -----------------------------------------------------------
-- Remove Eredar Soul Eater (This is an EXTREMELY wrong spawn)
-- -----------------------------------------------------------
DELETE FROM creature WHERE guid=86053;
DELETE FROM creature_addon WHERE guid=86053;
DELETE FROM creature_movement WHERE id=86053;

-- -------------------------------------------------------------------------------------------------------
-- Add Missing Protean Nightmare and Protean Horror Spawns in First Room (Delete Guid 79454 Already There)
-- -------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79454,@CGUID+44,@CGUID+45,@CGUID+46);
INSERT INTO creature VALUES (@CGUID+44,20864,552,3,0,0,208.859,6.44106,-7.46839,4.26597,25,0,0,46676,0,0,2); -- Protean Nightmare
INSERT INTO creature VALUES (@CGUID+45,20865,552,3,0,0,212.562,6.48385,-7.46839,3.46093,25,0,0,8178,0,0,0); -- Protean Horror
INSERT INTO creature VALUES (@CGUID+46,20865,552,3,0,0,209.099,10.6454,-7.4684,4.9173,7200,0,0,8178,0,0,0); -- Protean Horror

DELETE FROM creature_linking WHERE master_guid IN (@CGUID+44);
INSERT INTO creature_linking VALUES (@CGUID+45,@CGUID+44,515);
INSERT INTO creature_linking VALUES (@CGUID+46,@CGUID+44,515);

DELETE FROM creature_movement WHERE id=@CGUID+44;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,1,218.647339,8.709291,-7.468386,0.240802,0,0); 
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,2,223.847092,-1.618047,-8.210444,5.041155,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,3,224.021225,-12.192992,-9.421474,4.719927,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,4,218.005096,-17.964638,-10.109095,3.906254,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,5,211.043930,-16.059084,-10.085238,2.753289,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,6,194.756409,-1.592626,-10.103669,2.459550,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,7,193.059967,5.981993,-10.103669,3.413809,0,30000); -- Stop Point On Floor in Front of Ledge (30 Seconds)
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,8,184.626175,9.869833,-10.078323,2.695955,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,9,183.574585,14.728133,-10.103496,1.839870,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,10,188.755112,21.108707,-9.446897,0.761518,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,11,196.325409,21.570499,-8.626263,6.099084,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,12,205.938950,18.123007,-7.582917,5.938863,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,13,211.359039,9.439790,-7.468381,4.862867,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+44,14,206.970108,5.479094,-7.468381,3.940809,0,30000); -- On Top of Ledge Stop Point (30 Seconds)

-- ------------------------------------------------------------------------------------------------------------
-- GROUP OF 6 PROTEAN HORROR'S - MOVE EXISTING SPAWNS / ADD MISSING SPAWNS / LINK SPAWNS FOR MOVEMENT AND AGGRO
-- ------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79456,79457,79458,@CGUID+47,@CGUID+48,@CGUID+49,@CGUID+50,@CGUID+51,@CGUID+52);
INSERT INTO creature VALUES (@CGUID+47,20865,552,3,0,0,208.434,-21.0154,-10.0878,0.166969,7200,0,0,8178,0,0,2);
INSERT INTO creature VALUES (@CGUID+48,20865,552,3,0,0,206.383,-20.1627,-10.0984,0.611504,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+49,20865,552,3,0,0,207.515,-23.0306,-10.0875,0.361747,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+50,20865,552,3,0,0,205.901,-21.77,-10.0973,0.187389,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+51,20865,552,3,0,0,204.041,-20.9714,-10.1009,0.0931411,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+52,20865,552,3,0,0,205.502,-23.8515,-10.0948,1.00813,7200,0,0,8178,0,0,0);

DELETE FROM creature_movement WHERE id=@CGUID+47;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,1,216.848267,-18.881395,-10.098760,0.296885,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,2,224.404907,-10.905930,-9.184657,1.199313,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,3,224.718613,-4.696578,-8.655243,1.544103,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,4,219.629547,5.646447,-7.485297,2.183418,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,5,207.049744,16.887529,-7.468389,2.540774,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,6,198.094162,21.969025,-8.388568,2.458307,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,7,189.256256,21.147505,-9.359654,3.234281,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,8,184.528610,17.122450,-10.063705,3.846891,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,9,184.106415,-12.764568,-10.111907,4.698264,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,10,197.460083,-22.889290,-10.103550,5.634459,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,11,196.538254,-38.496593,-10.103550,4.679414,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,12,196.502731,-61.281567,-10.090692,4.710830,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,13,202.605331,-63.888237,-10.099648,5.879503,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,14,208.133896,-60.967098,-10.085385,0.595344,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,15,209.608978,-48.554283,-10.079647,1.737314,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,16,209.365677,-22.774431,-10.079889,1.580234,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+47,17,213.747040,-20.220253,-10.074949,0.527800,0,0);
DELETE FROM creature_linking WHERE master_guid IN (@CGUID+47);
INSERT INTO creature_linking VALUES (@CGUID+48,@CGUID+47,515);
INSERT INTO creature_linking VALUES (@CGUID+49,@CGUID+47,515);
INSERT INTO creature_linking VALUES (@CGUID+50,@CGUID+47,515);
INSERT INTO creature_linking VALUES (@CGUID+51,@CGUID+47,515);
INSERT INTO creature_linking VALUES (@CGUID+52,@CGUID+47,515);

-- --------------------------------------------------------------------------------------------------------
-- Group of Protean Nightmare and 2 Protean Horrors at the End of the First Room (Movement and NPC Linking)
-- --------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79452,79453,79455,@CGUID+53,@CGUID+54,@CGUID+55);
INSERT INTO creature VALUES (@CGUID+53,20864,552,3,0,0,202.329,-40.5555,-10.0961,4.59888,7200,0,0,46676,0,0,2); -- Protean Nightmare
INSERT INTO creature VALUES (@CGUID+54,20865,552,3,0,0,201.214,-36.4609,-10.0973,3.43722,7200,0,0,8178,0,0,0); -- Protean Horror
INSERT INTO creature VALUES (@CGUID+55,20865,552,3,0,0,205.26,-45.3562,-10.1119,3.64711,7200,0,0,8178,0,0,0); -- Protean Horror

DELETE FROM creature_movement WHERE id IN (79452,@CGUID+53);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+53,1,202.676270,-20.579115,-10.103319,4.523112,0,25000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+53,2,202.722672,-41.737045,-10.101971,4.527824,0,25000);
DELETE FROM creature_linking WHERE master_guid IN (79452,@CGUID+53);
INSERT INTO creature_linking VALUES (@CGUID+54,@CGUID+53,515);
INSERT INTO creature_linking VALUES (@CGUID+55,@CGUID+53,515);

-- ---------------------------------------------------------
-- Fix Entropic Eye / Death Watcher Spawns (First Boss Room)
-- ---------------------------------------------------------
DELETE FROM creature WHERE guid IN (79486,79481,@CGUID+56,@CGUID+57,@CGUID+58,@CGUID+59,@CGUID+60,@CGUID+61);
INSERT INTO creature VALUES (@CGUID+56,20868,552,3,0,0,254.9104,-125.0874,-10.12324,2.890443,7200,10,0,39123,0,0,1); -- Position: X: 254.9104 Y: -125.0874 Z: -10.12324 Orientation: 2.890443
INSERT INTO creature VALUES (@CGUID+57,20868,552,3,0,0,266.335,-187.128,-10.1051,4.02795,7200,10,0,45409,0,0,1); -- Entropic Eye (Pool 1)
INSERT INTO creature VALUES (@CGUID+58,20867,552,3,0,0,266.335,-187.128,-10.1051,4.02795,7200,10,0,45409,0,0,1); -- Death Watcher (Pool 1)
INSERT INTO creature VALUES (@CGUID+59,20867,552,3,0,0,215.3317,-140.6983,-10.11088,5.292313,7200,10,0,45409,0,0,1); -- Position: X: 215.3317 Y: -140.6983 Z: -10.11088 Orientation: 5.292313
INSERT INTO creature VALUES (@CGUID+60,20868,552,3,0,0,244.258,-156.479,-10.104,4.38315,7200,10,0,45409,0,0,1); -- Entropic Eye (Pool 2)
INSERT INTO creature VALUES (@CGUID+61,20867,552,3,0,0,244.258,-156.479,-10.104,4.38315,7200,10,0,45409,0,0,1); -- Death Watcher (Pool 2)

DELETE FROM pool_template WHERE entry IN (30023,30024);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30023','1','Arcatraz - Entropic Eye/Death Watcher - Pool 1');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30024','1','Arcatraz - Entropic Eye/Death Watcher - Pool 2');

DELETE FROM pool_creature WHERE pool_entry IN (30023,30024);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+57,'30023','0','Arcatraz - Entropic Eye - Pool 1');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+58,'30023','0','Arcatraz - Death Watcher - Pool 1');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+60,'30024','0','Arcatraz - Entropic Eye - Pool 2');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+61,'30024','0','Arcatraz - Death Watcher - Pool 2');

-- -------------------------------
-- Add Missing Soul Devourer Spawn
-- -------------------------------
DELETE FROM creature WHERE guid IN (79477,@CGUID+62,@CGUID+63);
INSERT INTO creature VALUES (@CGUID+62,20866,552,3,0,0,220.7691,-128.9336,-10.10977,0.01072759,7200,0,0,45409,0,0,2);
INSERT INTO creature VALUES (@CGUID+63,20866,552,3,0,0,219.579,-152.526,-10.1123,6.26082,7200,0,0,45409,0,0,2);

-- Add Waypoint Movement for Soul Devourers
DELETE FROM creature_movement WHERE id IN (@CGUID+62,@CGUID+63);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,1,245.293396,-129.893524,-10.120201,0.001575,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,2,245.006241,-144.436340,-10.112171,4.412370,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,3,272.792816,-144.850235,-10.117709,6.206221,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,4,244.845596,-143.878174,-10.112766,1.827626,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,5,244.414139,-130.211563,-10.119827,1.872394,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+62,6,205.551437,-130.425522,-10.117700,3.116466,0,0);

INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+63,1,253.960022,-147.831024,-10.111561,0.245833,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+63,2,252.369537,-174.190125,-10.103443,4.497192,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+63,3,253.708878,-148.431763,-10.110702,1.304547,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+63,4,207.511337,-153.823273,-10.113735,3.239769,0,0);

-- -----------------------------------------------------------------
-- Fix 6 Protean Horror Placement For Pathing Around First Boss Room
-- -----------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79478,79479,79480,@CGUID+64,@CGUID+65,@CGUID+66,@CGUID+67,@CGUID+68,@CGUID+69);
INSERT INTO creature VALUES (@CGUID+64,20865,552,3,0,0,213.449,-120.089,-10.1083,2.4144,7200,0,0,8178,0,0,2);
INSERT INTO creature VALUES (@CGUID+65,20865,552,3,0,0,216.056,-119.667,-10.1204,3.17144,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+66,20865,552,3,0,0,217.345,-121.596,-10.1199,2.99551,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+67,20865,552,3,0,0,217.556,-118.237,-10.1212,3.08662,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+68,20865,552,3,0,0,215.016,-121.252,-10.1204,3.3945,7200,0,0,8178,0,0,0);
INSERT INTO creature VALUES (@CGUID+69,20865,552,3,0,0,214.844,-118.252,-10.1188,2.43393,7200,0,0,8178,0,0,0);

DELETE FROM creature_linking WHERE master_guid IN (@CGUID+64);
INSERT INTO creature_linking VALUES (@CGUID+65,@CGUID+64,515);
INSERT INTO creature_linking VALUES (@CGUID+66,@CGUID+64,515);
INSERT INTO creature_linking VALUES (@CGUID+67,@CGUID+64,515);
INSERT INTO creature_linking VALUES (@CGUID+68,@CGUID+64,515);
INSERT INTO creature_linking VALUES (@CGUID+69,@CGUID+64,515);

-- Waypoint Movement for 6 Protean Horror's in First Boss Room
DELETE FROM creature_movement WHERE id=@CGUID+64;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,1,200.417557,-117.797157,-10.121884,3.082693,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,2,196.680008,-138.121567,-10.118616,4.563955,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,3,197.441513,-146.303894,-10.116393,4.909530,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,4,211.090561,-156.501984,-10.114545,5.497008,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,5,229.877884,-157.158936,-10.110607,6.177949,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,6,235.302383,-161.837494,-10.107670,5.551986,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,7,237.075363,-172.449677,-10.106312,4.782295,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,8,232.312439,-181.700851,-10.109240,4.037738,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,9,232.484512,-190.902832,-10.107521,4.666842,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,10,260.106995,-192.488022,-10.106289,0.003934,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,11,273.485718,-175.798553,-10.106289,0.945627,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,12,274.816711,-164.848145,-10.105530,1.434930,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,13,277.810608,-152.978165,-10.113414,1.279421,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,14,277.979736,-139.472931,-10.119408,1.642275,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,15,267.372345,-132.869247,-10.120901,2.584753,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,16,259.278687,-120.858826,-10.122385,2.163780,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,17,238.092804,-122.442680,-10.122385,3.216214,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,18,218.314133,-121.632462,-10.120625,3.041855,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (@CGUID+64,19,208.415344,-118.459152,-10.119198,2.831368,0,0);

-- ------------------------------------------------------------------------
-- Waypoint Movement for Protean Horror Running Fast Around First Boss Room
-- ------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79485);
INSERT INTO creature VALUES (79485,20865,552,3,0,0,253.873,-148.56,-10.1103,2.60445,7200,5,0,8178,0,0,2);

DELETE FROM creature_movement WHERE id=79485;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,1,219.423737,-159.582596,-10.109697,3.386648,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,2,238.576538,-156.828522,-10.106292,6.271416,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,3,238.719421,-188.230408,-10.107300,4.644070,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,4,260.300720,-187.154465,-10.105927,0.113109,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,5,273.417450,-155.947067,-10.110563,1.333619,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,6,219.423737,-159.582596,-10.109697,3.386648,0,1000); -- RESET POINT AT BOTTOM OF STAIRS
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,7,221.418625,-170.111130,-6.530465,4.791728,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,8,224.955399,-180.223587,-2.252718,5.110600,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,9,231.421036,-186.304611,1.389626,5.528432,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,10,239.355362,-189.083817,5.071302,5.946264,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,11,246.303619,-189.989212,7.906513,6.153609,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,12,253.008530,-187.978180,10.734591,0.291397,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,13,262.221161,-180.071991,15.643401,0.709229,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,14,266.803650,-170.353149,20.758307,1.130203,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,15,267.635040,-160.139359,22.709887,1.545679,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,16,267.698853,-98.665016,22.533136,1.655635,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,17,267.631500,-163.200089,22.721127,4.541974,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,18,264.618652,-176.454178,17.391729,4.492494,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,19,254.650314,-185.509323,11.554505,3.761288,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,20,249.936523,-187.553650,9.215827,3.343456,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,21,237.336990,-187.444992,3.769906,3.132969,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,22,232.253189,-185.096588,1.492478,2.708854,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,23,226.582001,-180.257507,-1.869559,2.342858,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,24,221.051743,-168.552002,-7.273007,2.133157,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,25,219.423737,-159.582596,-10.109697,3.386648,0,1000); -- RESET POINT AS BOTTOM OF STAIRS
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,26,203.100998,-150.079544,-10.114161,2.535281,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,27,198.943787,-122.771667,-10.120299,1.698832,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,28,258.830627,-121.746956,-10.123139,0.110756,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,29,258.964966,-155.836700,-10.109425,4.615799,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79485,30,219.423737,-159.582596,-10.109697,3.386648,0,1000); -- RESET POINT AS BOTTOM OF STAIRS

-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=7948501 WHERE id=79485 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=7948501;
INSERT INTO dbscripts_on_creature_movement VALUES (7948501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror (Arcatraz) RUN ON');

-- -----------------------------------------------------
-- Fix First Boss (Zereketh the Unbound) Random Movement
-- -----------------------------------------------------
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid=79391;

-- ---------------------------------------------
-- Delete 2 NPC's who do not exist (Top of Ramp)
-- ---------------------------------------------
DELETE FROM creature WHERE guid=79484;
DELETE FROM creature WHERE guid=79506;

-- -----------------------------------------------
-- Properly Spawn Arcatraz Sentinel at Top of Ramp 
-- -----------------------------------------------
DELETE FROM creature WHERE guid IN (79506,@CGUID+70);
INSERT INTO creature VALUES (@CGUID+70,20869,552,3,0,0,264.2865,-61.32112,22.45335,5.288348,7200,0,0,46108,0,0,0);

-- -------------------------------------------------------------------
-- Waypoint Movement for Front Protean Horror in Negaton Screamer Room
-- -------------------------------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79467;
DELETE FROM creature_movement WHERE id=79467;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,1, 276.188873,-4.195693,22.441347,1.577086, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,2, 266.139313,7.796986,22.441347,2.258027, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,3, 266.247437,-22.611425,22.447418,4.787796, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,4, 281.419769,-21.592731,22.445967,0.053416, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,5, 283.910217,-8.088942,22.441710,1.495407, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,6, 276.132172,-11.520005,22.443382,3.880663, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,7, 278.105957,-27.949659,22.444387,4.902466, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,8, 279.399078,-11.178328,22.443960,1.593585, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,9, 268.779388,-0.587566,22.441538,1.920310, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,10, 279.826538,-10.056340,22.441916,5.771905, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,11, 267.893188,-24.198978,22.447971,4.043243, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,12, 266.199005,1.033335,22.442314,1.815853, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,13, 278.066620,-8.708308,22.442314,5.699646, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,14, 277.867279,-28.168938,22.444113,4.878904, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,15, 279.702942,-17.528187,22.443876,1.119204, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,16, 287.853210,-22.004072,22.443991,5.841802, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,17, 279.812073,-8.400301,22.442545,2.115874, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,18, 270.201996,0.472228,22.442545,2.365631, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,19, 266.016205,9.325026,22.442545,1.980786, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,20, 267.740295,0.898820,22.442545,5.031271, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,21, 277.642578,-5.017527,22.442545,5.710640, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,22, 280.211182,-20.043873,22.444384,5.083107, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,23, 278.357483,-7.861632,22.442942,1.746737, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,24, 281.523712,-20.043016,22.444191,4.930742, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,25, 278.958374,-7.842030,22.442770,1.927378, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,26, 263.748688,3.748354,22.441378,2.488938, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,27, 267.410004,-22.776783,22.447727,4.938596, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,28, 278.466949,-9.572640,22.443493,1.066584, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,29, 278.334595,-27.713200,22.445286,4.677058, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79467,30, 282.311005,-16.807537,22.445286,0.962126, 0,0);

-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=7946701 WHERE id=79467 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=7946701;
INSERT INTO dbscripts_on_creature_movement VALUES (7946701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror (Arcatraz) RUN ON');

-- ------------------------------------------------------------------
-- Waypoint Movement for Rear Protean Horror in Negaton Screamer Room
-- ------------------------------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79466;
DELETE FROM creature_movement WHERE id=79466;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,1, 300.756775,40.685520,22.441168,6.154399, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,2, 266.581726,45.614574,22.441168,3.004168, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,3, 300.608124,40.575359,22.441168,6.273780, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,4, 267.060394,41.358055,22.441168,3.063856, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,5, 284.294586,41.908459,22.441168,0.031433, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,6, 269.809875,34.175770,22.441168,3.615989, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,7, 264.533600,44.058380,22.441168,2.108809, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,8, 295.828278,42.082439,22.441168,6.181098, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,9, 263.093414,44.391598,22.441168,3.745581, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,10, 282.177612,42.438896,22.441168,6.163035, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,11, 262.842407,42.357197,22.441168,3.104696, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79466,12, 302.240265,41.506519,22.441168,6.205446, 0,0);

-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=7946601 WHERE id=79466 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=7946601;
INSERT INTO dbscripts_on_creature_movement VALUES (7946601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror (Arcatraz) RUN ON');

-- --------------------------------------------------------------------------
-- Waypoint Movement for Protean Horror at Very Back of Negaton Screamer Room
-- --------------------------------------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79520;
DELETE FROM creature_movement WHERE id=79520;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,1, 300.642761,132.433136,22.227863,2.364850, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,2, 280.267914,145.768295,22.224611,2.508578, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,3, 205.459442,147.222336,22.529886,3.096842, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,4, 178.317276,161.465225,22.439648,2.624817, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,5, 177.155533,132.549988,22.439648,4.784663, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,6, 206.136734,146.360229,22.533291,0.494819, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,7, 285.687653,145.897919,22.228125,6.217230, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,8, 299.448425,130.976807,22.225727,5.418480, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,9, 301.781494,110.523033,22.224663,4.698269, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79520,10, 301.418518,72.443741,22.452053,4.580460, 0,0);

-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=7952001 WHERE id=79520 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=7952001;
INSERT INTO dbscripts_on_creature_movement VALUES (7952001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror (Arcatraz) RUN ON');

-- --------------------------------------------------------------------------
-- Correct Direction Facing of Eredar Deathbringer Standing in Middle of Room
-- --------------------------------------------------------------------------
UPDATE creature SET orientation = '1.541828' WHERE guid=81626;

-- --------------------------------------------------
-- Add Missing Eredar Soul-Eater Spawn in Eredar Room
-- --------------------------------------------------
DELETE FROM creature WHERE guid in (@CGUID+71,@CGUID+74);
INSERT INTO creature VALUES (@CGUID+71,20879,552,3,0,0,285.5186,146.1547,22.31179,5.794493,7200,0,0,39123,12620,0,0);
INSERT INTO creature VALUES (@CGUID+74,20879,552,3,0,0,305.191,148.248,24.7556,4.09202,7200,0,0,39123,12620,0,0);

-- -------------------------------------------------------------------------
-- Delete 2 Destroyed Sentinels That Do Not Exist (Eredar Deathbringer Room)
-- -------------------------------------------------------------------------
DELETE FROM creature WHERE guid=79535;
DELETE FROM creature_addon WHERE guid=79535;
DELETE FROM creature_movement WHERE id=79535;

DELETE FROM creature WHERE guid=79533;
DELETE FROM creature_addon WHERE guid=79533;
DELETE FROM creature_movement WHERE id=79533;

-- -------------------------------------------------------------------------------
-- Delete Pile of Arcatraz Sentinels in Eredar Deathbringer Room That Do Not Exist
-- -------------------------------------------------------------------------------
DELETE FROM creature WHERE guid=86055;
DELETE FROM creature_addon WHERE guid=86055;
DELETE FROM creature_movement WHERE id=86055;

DELETE FROM creature WHERE guid=86054;
DELETE FROM creature_addon WHERE guid=86054;
DELETE FROM creature_movement WHERE id=86054;

DELETE FROM creature WHERE guid=86057;
DELETE FROM creature_addon WHERE guid=86057;
DELETE FROM creature_movement WHERE id=86057;

DELETE FROM creature WHERE guid=86059;
DELETE FROM creature_addon WHERE guid=86059;
DELETE FROM creature_movement WHERE id=86059;

DELETE FROM creature WHERE guid=86056;
DELETE FROM creature_addon WHERE guid=86056;
DELETE FROM creature_movement WHERE id=86056;

DELETE FROM creature WHERE guid=86058;
DELETE FROM creature_addon WHERE guid=86058;
DELETE FROM creature_movement WHERE id=86058;

-- ---------------------------------------------
-- Delete Non-Existant Pathing Arcatraz Sentinel
-- ---------------------------------------------
DELETE FROM creature WHERE guid=86060;
DELETE FROM creature_addon WHERE guid=86060;
DELETE FROM creature_movement WHERE id=86060;

-- ---------------------------------------------------------------------------------------------------------------------------------
-- Add 2 Missing Arcatraz Sentinels Not Currently Spawned on Either Side of Doorway at Back of Eredar Deathbringer Room (Stationary)
-- ---------------------------------------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid in (@CGUID+72,@CGUID+73);
INSERT INTO creature VALUES (@CGUID+72,20869,552,3,0,0,253.743,131.448,22.3164,1.05009,7200,0,0,46108,0,0,0);
INSERT INTO creature VALUES (@CGUID+73,20869,552,3,0,0,254.359,160.747,22.2955,5.44126,7200,0,0,46108,0,0,0);

-- -------------------------------------------
-- Unbound Devastator in 2 Boss Room Waypoints
-- -------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79532;
DELETE FROM creature_movement WHERE id=79532;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,1, 201.657578,138.055450,22.479853,0.953483, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,2, 198.899292,135.182098,22.437172,3.947423, 0,2000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,3, 199.475754,140.639740,22.499559,1.465563, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,4, 202.355179,134.738785,22.412693,5.166358, 0,3000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,5, 197.448563,140.795837,22.422436,2.189698, 0,1000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,6, 201.672913,135.623749,22.413099,5.397266, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,7, 189.193069,134.967987,22.439667,3.264909, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,8, 176.915665,133.268021,22.439667,3.238991, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,9, 177.011566,143.452576,22.439667,1.561380, 0,4000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,10, 177.485199,132.554306,22.439667,4.898535, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,11, 186.466354,134.748276,22.439667,0.206567, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79532,12, 200.482025,134.913269,22.416996,0.047131, 0,0);

-- --------------------------------------------------------------------------
-- Delete Skulking Witches - They Are Summoned By Spiteful Temptress on Aggro
-- --------------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79549,79553);

-- -------------------------------------------------------------------
-- Unbound Devastator/Spiteful Temptress Pool In Center of 2-Boss Room
-- -------------------------------------------------------------------
DELETE FROM creature WHERE guid IN (79542,@CGUID+86,@CGUID+87);
INSERT INTO creature VALUES  (@CGUID+86,'20883','552','3','0','0','148.05','146.994','20.8982','6.26573','7200','0','0','38553','12620','0','0');
INSERT INTO creature VALUES  (@CGUID+87,'20881','552','3','0','0','148.05','146.994','20.8982','6.26573','7200','0','0','48902','0','0','0');

-- Pool Templates
DELETE FROM pool_template WHERE entry=30023;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('30023','1','Arcatraz - Unbound Devastator/Spiteful Temptress - Pool'); 

-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry=30023;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+86,'30023','0','Arcatraz - Spiteful Temptress - Pool');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@CGUID+87,'30023','0','Arcatraz - Unbound Devastator - Pool');

-- ------------------------------------
-- Spiteful Temptress Waypoint Movement
-- ------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79534;
DELETE FROM creature_movement WHERE id=79534;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,1, 203.624054,156.420914,22.422407,0.049380, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,2, 201.115082,157.017273,22.430033,3.310352, 0,3000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,3, 200.380508,154.526321,22.430033,4.425618, 0,4000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,4, 198.234100,155.301224,22.436960,2.795131, 0,1000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,5, 202.348206,156.520584,22.426357,0.288139, 0,2000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,6, 199.168381,158.032578,22.437122,2.697742, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,7, 188.511398,159.850830,22.439934,3.135994, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,8, 176.867661,160.700134,22.439934,3.095153, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,9, 176.784149,146.914825,22.439934,4.596835, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,10, 181.197891,147.084335,22.439934,0.038385, 0,1000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,11, 178.418488,148.857788,22.439934,2.573648, 0,3000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,12, 177.628510,145.204224,22.439934,4.499445, 0,2000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,13, 176.239075,148.944489,22.439934,1.926480, 0,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,14, 176.538452,161.781204,22.439934,1.542420, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,15, 187.246719,159.954849,22.439934,6.141710, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79534,16, 201.458374,159.143387,22.432077,6.200615, 0,0);

-- -----------------------------------------------------
-- Delete 2 Sentinels That Do Not Exist At Top of Stairs
-- -----------------------------------------------------
DELETE FROM creature WHERE guid IN (86063,86064);

-- ----------------------------------------------------------
-- Protean Horror Pathing Along Long Walkway at Top of Stairs - Run Mode On
-- ----------------------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid=79459;
DELETE FROM creature_movement WHERE id=79459;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,1, 206.893188,22.994820,48.213863,3.201962, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,2, 223.208313,22.342752,48.339237,0.076076, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,3, 267.205200,21.640602,48.350433,0.023454, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,4, 313.569244,22.101646,48.350433,6.232811, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,5, 344.486847,22.378342,48.337875,0.032093, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,6, 368.271088,21.997456,48.212669,0.017170, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,7, 400.191498,22.012131,48.212669,0.010102, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,8, 419.790466,22.210125,48.213303,0.010102, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,9, 424.230743,14.892774,48.213303,4.598397, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,10, 425.881134,3.239856,48.206142,4.834016, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,11, 443.302032,-0.542986,48.211395,6.261086, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,12, 457.661499,1.599466,48.230694,0.164825, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,13, 464.794922,5.553366,48.404144,0.537104, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,14, 468.034668,13.963913,49.422935,1.152071, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,15, 467.408478,18.293869,49.793346,1.714416, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,16, 463.347015,27.697102,50.751137,1.920190, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,17, 459.654327,36.577274,50.846516,2.113399, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,18, 455.159546,39.475204,50.846516,2.568930, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,19, 445.222137,41.122322,50.347519,2.977337, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,20, 437.780609,43.674835,49.549824,2.816330, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,21, 432.251740,42.931530,48.982998,3.210600, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,22, 427.619476,39.698357,48.312069,3.750955, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,23, 423.373840,27.909573,48.230087,4.366707, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,24, 410.734009,22.510492,48.216408,3.568742, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,25, 401.738312,22.077915,48.213680,3.154052, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,26, 368.434387,21.900286,48.213680,3.119494, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,27, 346.604187,22.395164,48.333515,3.113211, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,28, 304.417847,22.712563,48.350433,3.155622, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,29, 264.006775,22.318815,48.350433,3.110855, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79459,30, 229.906219,22.600843,48.314240,3.100645, 0,0);
-- ENABLE RUN MODE
UPDATE creature_movement SET script_id=7945901 WHERE id=79459 and point=1;
DELETE FROM dbscripts_on_creature_movement WHERE id=7945901;
INSERT INTO dbscripts_on_creature_movement VALUES (7945901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Protean Horror (Arcatraz) RUN ON');

-- -------------------------------------------------------------------------
-- Remove 2 Incorrectly Spawned Sentinel and Add 2 Properly Spawned Sentinel
-- -------------------------------------------------------------------------
DELETE FROM creature WHERE guid in (79561,79570,@CGUID+75,@CGUID+76);
INSERT INTO creature VALUES (@CGUID+75,20869,552,3,0,0,336.5143,27.42666,48.42604,3.839724,7200,0,0,46108,0,0,0);
INSERT INTO creature VALUES (@CGUID+76,20869,552,3,0,0,395.413,18.19484,48.29602,2.495821,7200,0,0,46108,0,0,0);

-- -----------------------------------------------
-- Ethereium Waypoint Movement in Containment Core
-- -----------------------------------------------
UPDATE creature SET position_x = '461.361481', position_y = '39.636238', position_z = '50.799458', orientation = '2.688958' WHERE guid = '79569';
UPDATE creature SET position_x = '460.075256', position_y = '36.932503', position_z = '50.846470', orientation = '2.891591' WHERE guid = '79568';

DELETE FROM creature_linking WHERE master_guid IN (79566);
INSERT INTO creature_linking VALUES (79567,79566,515);
INSERT INTO creature_linking VALUES (79568,79566,515);
INSERT INTO creature_linking VALUES (79569,79566,515);

UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid in (79567,79568,79569);
UPDATE creature SET MovementType=2 WHERE guid in (79566);

DELETE FROM creature_movement WHERE id=79566;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,1, 454.720398,39.429810,50.846470,2.846823, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,2, 445.098267,43.004402,50.307037,2.872742, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,3, 436.149292,44.500755,49.445507,2.912012, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,4, 429.377563,43.071075,48.646275,3.279578, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,5, 425.879517,39.237438,48.198914,3.942455, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,6, 427.006897,31.302124,48.237396,4.853518, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,7, 437.728271,17.481710,48.213081,5.395442, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,8, 440.470703,6.125143,48.211678,4.949336, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,9, 440.767151,-16.458893,48.211678,4.588052, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,10, 450.292023,-15.927221,48.226391,0.156837, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,11, 451.300568,-6.256669,48.234272,1.466881, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,12, 451.921631,0.912464,48.230587,1.484160, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,13, 453.762817,2.724073,48.234756,0.777301, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,14, 463.692871,4.924800,48.292850,0.218098, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,15, 468.068268,10.702532,49.106396,0.950874, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,16, 467.922394,18.886110,49.854065,1.588618, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,17, 466.032013,23.588348,50.324493,1.953043, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,18, 462.582062,28.266960,50.846508,2.236572, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,19, 461.344940,34.926785,50.846508,1.706428, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79566,20, 457.106720,38.776997,50.846508,2.404647, 0,0);

-- -----------------------------------------------
-- Abyssal Waypoint Movement in Final Boss Chamber
-- -----------------------------------------------
UPDATE creature SET MovementType=2 WHERE guid in (79433);
DELETE FROM creature_movement WHERE id=79433;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,1, 445.795166,-60.789742,48.395481,1.580772, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,2, 445.867126,-79.721024,48.347279,4.880230, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,3, 443.590271,-111.476212,43.100109,4.505596, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,4, 442.416565,-124.400269,43.100109,4.661105, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,5, 436.618011,-138.834335,43.102058,4.294323, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,6, 443.983246,-154.158844,43.076141,5.290209, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,7, 445.068939,-160.755096,43.066151,4.875518, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,8, 462.307648,-174.316940,43.107048,5.594943, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,9, 444.267700,-153.474655,43.074203,2.276637, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,10, 437.304504,-134.904251,43.101089,1.873728, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,11, 444.126984,-120.394928,43.101089,1.121316, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,12, 444.903351,-95.872215,43.101089,1.539148, 0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,wpguid,waittime) VALUES (79433,13, 445.893311,-77.828835,48.395470,1.563495, 0,0);

-- -----------------------------------------------
-- Random Movement for 2 NPC in Final Boss Chamber
-- -----------------------------------------------
UPDATE creature SET Spawndist=5, MovementType=1 WHERE guid in (79448,79405);

-- -------------------------------------------------------------------------------------------------
-- Spawn Heroic Sentinels With Proper 40% Heroic Health and Set Existing Spawns for Normal Mode Only
-- -------------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid in (@CGUID+77,@CGUID+78,@CGUID+79,@CGUID+80,@CGUID+81,@CGUID+82,@CGUID+83,@CGUID+84,@CGUID+85);
UPDATE creature SET spawnMask=1 WHERE id=20869; -- Existing Spawns Are For Normal Mode Only (Below is Adding Heroic Only Spawns)
INSERT INTO creature VALUES (@CGUID+77,'20869','552','2','0','0','203.401','126.201','22.5118','1.52555','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+78,'20869','552','2','0','0','195.709','126.549','22.4416','1.52555','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+79,'20869','552','2','0','0','202.84','46.4277','48.3155','2.42562','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+80,'20869','552','2','0','0','196.555','47.0605','48.3239','1.20301','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+81,'20869','552','2','0','0','264.286','-61.3211','22.4534','5.28835','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+82,'20869','552','2','0','0','253.743','131.448','22.3164','1.05009','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+83,'20869','552','2','0','0','254.359','160.747','22.2955','5.44126','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+84,'20869','552','2','0','0','336.514','27.4267','48.426','3.83972','7200','0','0','64907','0','0','0');
INSERT INTO creature VALUES (@CGUID+85,'20869','552','2','0','0','395.413','18.1948','48.296','2.49582','7200','0','0','64907','0','0','0');


-- =======================
-- NPC Group Aggro Linking
-- =======================
-- Front Area - Group of 2 Right Side Bottom Stairs
DELETE FROM creature_linking WHERE master_guid IN (79392);
INSERT INTO creature_linking VALUES (79393,79392,3);

-- Front Area - Group of 2 Left Side Bottom Stairs
DELETE FROM creature_linking WHERE master_guid IN (79397);
INSERT INTO creature_linking VALUES (79396,79397,3);

-- Front Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (79399);
INSERT INTO creature_linking VALUES (79395,79399,3);
INSERT INTO creature_linking VALUES (79400,79399,3);

-- Containment Core - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (79563);
INSERT INTO creature_linking VALUES (79562,79563,3);
INSERT INTO creature_linking VALUES (79564,79563,3);
INSERT INTO creature_linking VALUES (79565,79563,3);

-- Final Boss - Group of 2 Right Side
DELETE FROM creature_linking WHERE master_guid IN (79576);
INSERT INTO creature_linking VALUES (79575,79576,3);

-- Final Boss - Group of 2 Left Side
DELETE FROM creature_linking WHERE master_guid IN (79578);
INSERT INTO creature_linking VALUES (79577,79578,3);


-- ===============================================================
-- HELLFIRE CITADEL: HELLFIRE RAMPARTS - COMPLETE DUNGEON OVERHAUL
-- ===============================================================

-- ---------------------------------------------------------------------------------------------
-- Delete Old Spawns From Much Older Ported Version Of Dungeon Fixes - Now GUID In Sync With UDB
-- ---------------------------------------------------------------------------------------------
DELETE FROM creature WHERE guid=99292;
DELETE FROM creature_addon WHERE guid=99292;
DELETE FROM creature_movement WHERE id=99292;
DELETE FROM game_event_creature WHERE guid=99292;
DELETE FROM game_event_creature_data WHERE guid=99292;
DELETE FROM creature_battleground WHERE guid=99292;
DELETE FROM creature_linking WHERE guid=99292 OR master_guid=99292;
DELETE FROM creature WHERE guid=99293;
DELETE FROM creature_addon WHERE guid=99293;
DELETE FROM creature_movement WHERE id=99293;
DELETE FROM game_event_creature WHERE guid=99293;
DELETE FROM game_event_creature_data WHERE guid=99293;
DELETE FROM creature_battleground WHERE guid=99293;
DELETE FROM creature_linking WHERE guid=99293 OR master_guid=99293;
DELETE FROM creature WHERE guid=99295;
DELETE FROM creature_addon WHERE guid=99295;
DELETE FROM creature_movement WHERE id=99295;
DELETE FROM game_event_creature WHERE guid=99295;
DELETE FROM game_event_creature_data WHERE guid=99295;
DELETE FROM creature_battleground WHERE guid=99295;
DELETE FROM creature_linking WHERE guid=99295 OR master_guid=99295;
DELETE FROM creature WHERE guid=99294;
DELETE FROM creature_addon WHERE guid=99294;
DELETE FROM creature_movement WHERE id=99294;
DELETE FROM game_event_creature WHERE guid=99294;
DELETE FROM game_event_creature_data WHERE guid=99294;
DELETE FROM creature_battleground WHERE guid=99294;
DELETE FROM creature_linking WHERE guid=99294 OR master_guid=99294;
DELETE FROM creature WHERE guid=99296;
DELETE FROM creature_addon WHERE guid=99296;
DELETE FROM creature_movement WHERE id=99296;
DELETE FROM game_event_creature WHERE guid=99296;
DELETE FROM game_event_creature_data WHERE guid=99296;
DELETE FROM creature_battleground WHERE guid=99296;
DELETE FROM creature_linking WHERE guid=99296 OR master_guid=99296;
DELETE FROM creature WHERE guid=99297;
DELETE FROM creature_addon WHERE guid=99297;
DELETE FROM creature_movement WHERE id=99297;
DELETE FROM game_event_creature WHERE guid=99297;
DELETE FROM game_event_creature_data WHERE guid=99297;
DELETE FROM creature_battleground WHERE guid=99297;
DELETE FROM creature_linking WHERE guid=99297 OR master_guid=99297;
DELETE FROM creature WHERE guid=99298;
DELETE FROM creature_addon WHERE guid=99298;
DELETE FROM creature_movement WHERE id=99298;
DELETE FROM game_event_creature WHERE guid=99298;
DELETE FROM game_event_creature_data WHERE guid=99298;
DELETE FROM creature_battleground WHERE guid=99298;
DELETE FROM creature_linking WHERE guid=99298 OR master_guid=99298;
DELETE FROM creature WHERE guid=99301;
DELETE FROM creature_addon WHERE guid=99301;
DELETE FROM creature_movement WHERE id=99301;
DELETE FROM game_event_creature WHERE guid=99301;
DELETE FROM game_event_creature_data WHERE guid=99301;
DELETE FROM creature_battleground WHERE guid=99301;
DELETE FROM creature_linking WHERE guid=99301 OR master_guid=99301;
DELETE FROM creature WHERE guid=99302;
DELETE FROM creature_addon WHERE guid=99302;
DELETE FROM creature_movement WHERE id=99302;
DELETE FROM game_event_creature WHERE guid=99302;
DELETE FROM game_event_creature_data WHERE guid=99302;
DELETE FROM creature_battleground WHERE guid=99302;
DELETE FROM creature_linking WHERE guid=99302 OR master_guid=99302;
DELETE FROM creature WHERE guid=99304;
DELETE FROM creature_addon WHERE guid=99304;
DELETE FROM creature_movement WHERE id=99304;
DELETE FROM game_event_creature WHERE guid=99304;
DELETE FROM game_event_creature_data WHERE guid=99304;
DELETE FROM creature_battleground WHERE guid=99304;
DELETE FROM creature_linking WHERE guid=99304 OR master_guid=99304;
DELETE FROM creature WHERE guid=99303;
DELETE FROM creature_addon WHERE guid=99303;
DELETE FROM creature_movement WHERE id=99303;
DELETE FROM game_event_creature WHERE guid=99303;
DELETE FROM game_event_creature_data WHERE guid=99303;
DELETE FROM creature_battleground WHERE guid=99303;
DELETE FROM creature_linking WHERE guid=99303 OR master_guid=99303;
DELETE FROM creature WHERE guid=99305;
DELETE FROM creature_addon WHERE guid=99305;
DELETE FROM creature_movement WHERE id=99305;
DELETE FROM game_event_creature WHERE guid=99305;
DELETE FROM game_event_creature_data WHERE guid=99305;
DELETE FROM creature_battleground WHERE guid=99305;
DELETE FROM creature_linking WHERE guid=99305 OR master_guid=99305;
DELETE FROM creature WHERE guid=99306;
DELETE FROM creature_addon WHERE guid=99306;
DELETE FROM creature_movement WHERE id=99306;
DELETE FROM game_event_creature WHERE guid=99306;
DELETE FROM game_event_creature_data WHERE guid=99306;
DELETE FROM creature_battleground WHERE guid=99306;
DELETE FROM creature_linking WHERE guid=99306 OR master_guid=99306;
DELETE FROM creature WHERE guid=99307;
DELETE FROM creature_addon WHERE guid=99307;
DELETE FROM creature_movement WHERE id=99307;
DELETE FROM game_event_creature WHERE guid=99307;
DELETE FROM game_event_creature_data WHERE guid=99307;
DELETE FROM creature_battleground WHERE guid=99307;
DELETE FROM creature_linking WHERE guid=99307 OR master_guid=99307;
DELETE FROM creature WHERE guid=99308;
DELETE FROM creature_addon WHERE guid=99308;
DELETE FROM creature_movement WHERE id=99308;
DELETE FROM game_event_creature WHERE guid=99308;
DELETE FROM game_event_creature_data WHERE guid=99308;
DELETE FROM creature_battleground WHERE guid=99308;
DELETE FROM creature_linking WHERE guid=99308 OR master_guid=99308;
DELETE FROM creature WHERE guid=99309;
DELETE FROM creature_addon WHERE guid=99309;
DELETE FROM creature_movement WHERE id=99309;
DELETE FROM game_event_creature WHERE guid=99309;
DELETE FROM game_event_creature_data WHERE guid=99309;
DELETE FROM creature_battleground WHERE guid=99309;
DELETE FROM creature_linking WHERE guid=99309 OR master_guid=99309;
DELETE FROM creature WHERE guid=99310;
DELETE FROM creature_addon WHERE guid=99310;
DELETE FROM creature_movement WHERE id=99310;
DELETE FROM game_event_creature WHERE guid=99310;
DELETE FROM game_event_creature_data WHERE guid=99310;
DELETE FROM creature_battleground WHERE guid=99310;
DELETE FROM creature_linking WHERE guid=99310 OR master_guid=99310;
DELETE FROM creature WHERE guid=99311;
DELETE FROM creature_addon WHERE guid=99311;
DELETE FROM creature_movement WHERE id=99311;
DELETE FROM game_event_creature WHERE guid=99311;
DELETE FROM game_event_creature_data WHERE guid=99311;
DELETE FROM creature_battleground WHERE guid=99311;
DELETE FROM creature_linking WHERE guid=99311 OR master_guid=99311;
DELETE FROM creature WHERE guid=99312;
DELETE FROM creature_addon WHERE guid=99312;
DELETE FROM creature_movement WHERE id=99312;
DELETE FROM game_event_creature WHERE guid=99312;
DELETE FROM game_event_creature_data WHERE guid=99312;
DELETE FROM creature_battleground WHERE guid=99312;
DELETE FROM creature_linking WHERE guid=99312 OR master_guid=99312;
DELETE FROM creature WHERE guid=99313;
DELETE FROM creature_addon WHERE guid=99313;
DELETE FROM creature_movement WHERE id=99313;
DELETE FROM game_event_creature WHERE guid=99313;
DELETE FROM game_event_creature_data WHERE guid=99313;
DELETE FROM creature_battleground WHERE guid=99313;
DELETE FROM creature_linking WHERE guid=99313 OR master_guid=99313;
DELETE FROM creature WHERE guid=99317;
DELETE FROM creature_addon WHERE guid=99317;
DELETE FROM creature_movement WHERE id=99317;
DELETE FROM game_event_creature WHERE guid=99317;
DELETE FROM game_event_creature_data WHERE guid=99317;
DELETE FROM creature_battleground WHERE guid=99317;
DELETE FROM creature_linking WHERE guid=99317 OR master_guid=99317;
DELETE FROM creature WHERE guid=99318;
DELETE FROM creature_addon WHERE guid=99318;
DELETE FROM creature_movement WHERE id=99318;
DELETE FROM game_event_creature WHERE guid=99318;
DELETE FROM game_event_creature_data WHERE guid=99318;
DELETE FROM creature_battleground WHERE guid=99318;
DELETE FROM creature_linking WHERE guid=99318 OR master_guid=99318;
DELETE FROM creature WHERE guid=99316;
DELETE FROM creature_addon WHERE guid=99316;
DELETE FROM creature_movement WHERE id=99316;
DELETE FROM game_event_creature WHERE guid=99316;
DELETE FROM game_event_creature_data WHERE guid=99316;
DELETE FROM creature_battleground WHERE guid=99316;
DELETE FROM creature_linking WHERE guid=99316 OR master_guid=99316;
DELETE FROM creature WHERE guid=99319;
DELETE FROM creature_addon WHERE guid=99319;
DELETE FROM creature_movement WHERE id=99319;
DELETE FROM game_event_creature WHERE guid=99319;
DELETE FROM game_event_creature_data WHERE guid=99319;
DELETE FROM creature_battleground WHERE guid=99319;
DELETE FROM creature_linking WHERE guid=99319 OR master_guid=99319;
DELETE FROM creature WHERE guid=99320;
DELETE FROM creature_addon WHERE guid=99320;
DELETE FROM creature_movement WHERE id=99320;
DELETE FROM game_event_creature WHERE guid=99320;
DELETE FROM game_event_creature_data WHERE guid=99320;
DELETE FROM creature_battleground WHERE guid=99320;
DELETE FROM creature_linking WHERE guid=99320 OR master_guid=99320;
DELETE FROM creature WHERE guid=99325;
DELETE FROM creature_addon WHERE guid=99325;
DELETE FROM creature_movement WHERE id=99325;
DELETE FROM game_event_creature WHERE guid=99325;
DELETE FROM game_event_creature_data WHERE guid=99325;
DELETE FROM creature_battleground WHERE guid=99325;
DELETE FROM creature_linking WHERE guid=99325 OR master_guid=99325;
DELETE FROM creature WHERE guid=99326;
DELETE FROM creature_addon WHERE guid=99326;
DELETE FROM creature_movement WHERE id=99326;
DELETE FROM game_event_creature WHERE guid=99326;
DELETE FROM game_event_creature_data WHERE guid=99326;
DELETE FROM creature_battleground WHERE guid=99326;
DELETE FROM creature_linking WHERE guid=99326 OR master_guid=99326;
DELETE FROM creature WHERE guid=99324;
DELETE FROM creature_addon WHERE guid=99324;
DELETE FROM creature_movement WHERE id=99324;
DELETE FROM game_event_creature WHERE guid=99324;
DELETE FROM game_event_creature_data WHERE guid=99324;
DELETE FROM creature_battleground WHERE guid=99324;
DELETE FROM creature_linking WHERE guid=99324 OR master_guid=99324;
DELETE FROM creature WHERE guid=99321;
DELETE FROM creature_addon WHERE guid=99321;
DELETE FROM creature_movement WHERE id=99321;
DELETE FROM game_event_creature WHERE guid=99321;
DELETE FROM game_event_creature_data WHERE guid=99321;
DELETE FROM creature_battleground WHERE guid=99321;
DELETE FROM creature_linking WHERE guid=99321 OR master_guid=99321;
DELETE FROM creature WHERE guid=99322;
DELETE FROM creature_addon WHERE guid=99322;
DELETE FROM creature_movement WHERE id=99322;
DELETE FROM game_event_creature WHERE guid=99322;
DELETE FROM game_event_creature_data WHERE guid=99322;
DELETE FROM creature_battleground WHERE guid=99322;
DELETE FROM creature_linking WHERE guid=99322 OR master_guid=99322;
DELETE FROM creature WHERE guid=99323;
DELETE FROM creature_addon WHERE guid=99323;
DELETE FROM creature_movement WHERE id=99323;
DELETE FROM game_event_creature WHERE guid=99323;
DELETE FROM game_event_creature_data WHERE guid=99323;
DELETE FROM creature_battleground WHERE guid=99323;
DELETE FROM creature_linking WHERE guid=99323 OR master_guid=99323;
DELETE FROM creature WHERE guid=99327;
DELETE FROM creature_addon WHERE guid=99327;
DELETE FROM creature_movement WHERE id=99327;
DELETE FROM game_event_creature WHERE guid=99327;
DELETE FROM game_event_creature_data WHERE guid=99327;
DELETE FROM creature_battleground WHERE guid=99327;
DELETE FROM creature_linking WHERE guid=99327 OR master_guid=99327;
DELETE FROM creature WHERE guid=99328;
DELETE FROM creature_addon WHERE guid=99328;
DELETE FROM creature_movement WHERE id=99328;
DELETE FROM game_event_creature WHERE guid=99328;
DELETE FROM game_event_creature_data WHERE guid=99328;
DELETE FROM creature_battleground WHERE guid=99328;
DELETE FROM creature_linking WHERE guid=99328 OR master_guid=99328;
DELETE FROM creature WHERE guid=99329;
DELETE FROM creature_addon WHERE guid=99329;
DELETE FROM creature_movement WHERE id=99329;
DELETE FROM game_event_creature WHERE guid=99329;
DELETE FROM game_event_creature_data WHERE guid=99329;
DELETE FROM creature_battleground WHERE guid=99329;
DELETE FROM creature_linking WHERE guid=99329 OR master_guid=99329;
DELETE FROM creature WHERE guid=99330;
DELETE FROM creature_addon WHERE guid=99330;
DELETE FROM creature_movement WHERE id=99330;
DELETE FROM game_event_creature WHERE guid=99330;
DELETE FROM game_event_creature_data WHERE guid=99330;
DELETE FROM creature_battleground WHERE guid=99330;
DELETE FROM creature_linking WHERE guid=99330 OR master_guid=99330;
DELETE FROM creature WHERE guid=99338;
DELETE FROM creature_addon WHERE guid=99338;
DELETE FROM creature_movement WHERE id=99338;
DELETE FROM game_event_creature WHERE guid=99338;
DELETE FROM game_event_creature_data WHERE guid=99338;
DELETE FROM creature_battleground WHERE guid=99338;
DELETE FROM creature_linking WHERE guid=99338 OR master_guid=99338;
DELETE FROM creature WHERE guid=99337;
DELETE FROM creature_addon WHERE guid=99337;
DELETE FROM creature_movement WHERE id=99337;
DELETE FROM game_event_creature WHERE guid=99337;
DELETE FROM game_event_creature_data WHERE guid=99337;
DELETE FROM creature_battleground WHERE guid=99337;
DELETE FROM creature_linking WHERE guid=99337 OR master_guid=99337;
DELETE FROM creature WHERE guid=99331;
DELETE FROM creature_addon WHERE guid=99331;
DELETE FROM creature_movement WHERE id=99331;
DELETE FROM game_event_creature WHERE guid=99331;
DELETE FROM game_event_creature_data WHERE guid=99331;
DELETE FROM creature_battleground WHERE guid=99331;
DELETE FROM creature_linking WHERE guid=99331 OR master_guid=99331;
DELETE FROM creature WHERE guid=99333;
DELETE FROM creature_addon WHERE guid=99333;
DELETE FROM creature_movement WHERE id=99333;
DELETE FROM game_event_creature WHERE guid=99333;
DELETE FROM game_event_creature_data WHERE guid=99333;
DELETE FROM creature_battleground WHERE guid=99333;
DELETE FROM creature_linking WHERE guid=99333 OR master_guid=99333;
DELETE FROM creature WHERE guid=99336;
DELETE FROM creature_addon WHERE guid=99336;
DELETE FROM creature_movement WHERE id=99336;
DELETE FROM game_event_creature WHERE guid=99336;
DELETE FROM game_event_creature_data WHERE guid=99336;
DELETE FROM creature_battleground WHERE guid=99336;
DELETE FROM creature_linking WHERE guid=99336 OR master_guid=99336;
DELETE FROM creature WHERE guid=99335;
DELETE FROM creature_addon WHERE guid=99335;
DELETE FROM creature_movement WHERE id=99335;
DELETE FROM game_event_creature WHERE guid=99335;
DELETE FROM game_event_creature_data WHERE guid=99335;
DELETE FROM creature_battleground WHERE guid=99335;
DELETE FROM creature_linking WHERE guid=99335 OR master_guid=99335;
DELETE FROM creature WHERE guid=99340;
DELETE FROM creature_addon WHERE guid=99340;
DELETE FROM creature_movement WHERE id=99340;
DELETE FROM game_event_creature WHERE guid=99340;
DELETE FROM game_event_creature_data WHERE guid=99340;
DELETE FROM creature_battleground WHERE guid=99340;
DELETE FROM creature_linking WHERE guid=99340 OR master_guid=99340;
DELETE FROM creature WHERE guid=99339;
DELETE FROM creature_addon WHERE guid=99339;
DELETE FROM creature_movement WHERE id=99339;
DELETE FROM game_event_creature WHERE guid=99339;
DELETE FROM game_event_creature_data WHERE guid=99339;
DELETE FROM creature_battleground WHERE guid=99339;
DELETE FROM creature_linking WHERE guid=99339 OR master_guid=99339;


-- ------------------------
-- DEFINE GUID START POINTS
-- ------------------------
SET @CGUID := 140286;


-- ========================================
-- CREATURE SPAWN / MOVEMENT / LINKING DATA
-- ========================================
-- -----------------------------
-- Add Missing Hungerer at Start
-- -----------------------------
DELETE FROM creature WHERE guid IN (@CGUID+9);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+9,'17259','543','3','0','0','-1286.73','1669.91','68.9444','6.10865','7200','0','0','14439','0','0','0');

-- ------------------------------------------
-- Linked Movement for First Set of Warhounds
-- ------------------------------------------
DELETE FROM creature_linking WHERE master_guid IN (62012);
INSERT INTO creature_linking VALUES (62066,62012,515);
INSERT INTO creature_linking VALUES (62065,62012,515);
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (62066,62065);
DELETE FROM creature_movement WHERE id IN (62066,62065);

-- -------------------------------
-- Add Missing Bonechewer Hungerer -- NEED DIFFERENT EQUIPMENT ID (HAMMER AND SWORD INSTEAD OF AXE AND SWORD)
-- -------------------------------
DELETE FROM creature WHERE guid IN (@CGUID);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID,'17259','543','3','0','0','-1293.19','1493.8','68.6832','3.50811','7200','0','0','14439','0','0','0');
DELETE FROM creature_addon WHERE guid IN (@CGUID);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID,'0','0','1','0','173','0',NULL);

-- -----------------------------------------
-- Add Missing Warhounds and Ravener Pathing
-- -----------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+1,@CGUID+2,@CGUID+3);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+1,'17280','543','3','0','0','-1290.56','1536.05','68.5896','1.85287','7200','0','0','4142','0','0','0'),
(@CGUID+2,'17280','543','3','0','0','-1297.28','1534.1','68.6081','1.85287','7200','0','0','4142','0','0','0'),
(@CGUID+3,'17264','543','3','0','0','-1294.11','1535.6','68.5949','1.86208','7200','0','0','14958','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (@CGUID+3);
INSERT INTO creature_linking VALUES (@CGUID+1,@CGUID+3,515);
INSERT INTO creature_linking VALUES (@CGUID+2,@CGUID+3,515);

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+3);
DELETE FROM creature_movement WHERE id IN (@CGUID+3);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+3,'1','-1292.36','1540.43','68.5946','0','0','0','0','0','0','0','0','0','0','1.10731','0','0'),
(@CGUID+3,'2','-1282.12','1555.41','68.5931','0','0','0','0','0','0','0','0','0','0','0.937666','0','0'),
(@CGUID+3,'3','-1269.72','1570.64','68.613','0','0','0','0','0','0','0','0','0','0','0.862268','0','0'),
(@CGUID+3,'4','-1283.81','1552.44','68.5924','0','0','0','0','0','0','0','0','0','0','4.09497','0','0'),
(@CGUID+3,'5','-1293.9','1538.24','68.5943','0','0','0','0','0','0','0','0','0','0','4.09497','0','0'),
(@CGUID+3,'6','-1293.64','1523.46','68.5913','0','0','0','0','0','0','0','0','0','0','4.72957','0','0'),
(@CGUID+3,'7','-1285.84','1503.83','68.5807','0','0','0','0','0','0','0','0','0','0','5.11127','0','0'),
(@CGUID+3,'8','-1263.85','1479.5','68.5757','0','0','0','0','0','0','0','0','0','0','5.44742','0','0'),
(@CGUID+3,'9','-1247.75','1466.51','68.5773','0','0','0','0','0','0','0','0','0','0','5.59272','0','0'),
(@CGUID+3,'10','-1232.82','1458.5','68.5782','0','0','0','0','0','0','0','0','0','0','5.79064','0','0'),
(@CGUID+3,'11','-1210.74','1453.07','68.5486','0','0','0','0','0','0','0','0','0','0','6.04197','0','0'),
(@CGUID+3,'12','-1228.86','1458.19','68.5776','0','0','0','0','0','0','0','0','0','0','2.953','0','0'),
(@CGUID+3,'13','-1244.22','1466.45','68.5761','0','0','0','0','0','0','0','0','0','0','2.64827','0','0'),
(@CGUID+3,'14','-1260.87','1481.05','68.5715','0','0','0','0','0','0','0','0','0','0','2.3883','0','0'),
(@CGUID+3,'15','-1275.45','1494.73','68.5715','0','0','0','0','0','0','0','0','0','0','2.3883','0','0'),
(@CGUID+3,'16','-1283.63','1505.74','68.5756','0','0','0','0','0','0','0','0','0','0','2.35453','0','0'),
(@CGUID+3,'17','-1289.75','1518.26','68.5811','0','0','0','0','0','0','0','0','0','0','2.10791','0','0'),
(@CGUID+3,'18','-1294.24','1535.83','68.5937','0','0','0','0','0','0','0','0','0','0','1.85266','0','0');

-- -------------------------------------------------------
-- Add Missing Ravener Pathing and Fixing Near First Boss -- NEED DIFFERENT EQUIPMENT ID (HAMMER AND SWORD INSTEAD OF DUAL SWORDS)
-- -------------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+4);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+4,'17264','543','3','0','0','-1240.97','1446.21','68.5984','5.1549','7200','0','0','14439','0','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+4);
DELETE FROM creature_movement WHERE id IN (@CGUID+4);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+4,'1','-1240.97','1446.21','68.5984','30000','0','0','0','0','0','0','173','0','0','5.1549','0','0'),
(@CGUID+4,'2','-1243.09','1449.52','68.5958','0','0','0','0','0','0','0','0','0','0','2.20101','0','0'),
(@CGUID+4,'3','-1241.51','1455.69','68.5882','0','0','0','0','0','0','0','0','0','0','1.3732','0','0'),
(@CGUID+4,'4','-1234.59','1458.39','68.5809','0','0','0','0','0','0','0','0','0','0','0.293282','0','0'),
(@CGUID+4,'5','-1227.2','1454.88','68.5809','0','0','0','0','0','0','0','0','0','0','5.80049','0','0'),
(@CGUID+4,'6','-1218.59','1446.96','68.5853','0','0','0','0','0','0','0','0','0','0','5.53974','0','0'),
(@CGUID+4,'7','-1197.95','1448.35','68.497','0','0','0','0','0','0','0','0','0','0','0.169974','0','0'),
(@CGUID+4,'8','-1192.06','1447.4','68.4697','0','0','0','0','0','0','0','0','0','0','6.12329','0','0'),
(@CGUID+4,'9','-1188.54','1445.09','68.4572','0','0','0','0','0','0','0','0','0','0','5.70232','0','0'),
(@CGUID+4,'10','-1185.8','1437.97','68.4558','30000','0','0','0','0','0','0','173','0','0','5.09992','0','0'),
(@CGUID+4,'11','-1193.05','1445.75','68.4767','0','0','0','0','0','0','0','0','0','0','2.2984','0','0'),
(@CGUID+4,'12','-1201.56','1449.2','68.5109','0','0','0','0','0','0','0','0','0','0','2.75708','0','0'),
(@CGUID+4,'13','-1216.51','1449.78','68.5786','0','0','0','0','0','0','0','0','0','0','3.04532','0','0'),
(@CGUID+4,'14','-1229.94','1452.14','68.5853','0','0','0','0','0','0','0','0','0','0','2.97149','0','0'),
(@CGUID+4,'15','-1238.79','1454.29','68.5876','0','0','0','0','0','0','0','0','0','0','2.95028','0','0'),
(@CGUID+4,'16','-1242.89','1451.69','68.5929','0','0','0','0','0','0','0','0','0','0','3.70741','0','0');

-- -------------------------------------------------------
-- Add Missing Ravener Pathing and Fixing Near First Boss -- NEED DIFFERENT EQUIPMENT ID (HAMMER AND SWORD INSTEAD OF DUAL SWORDS)
-- -------------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+5);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+5,'17264','543','3','0','0','-1157.34','1475.44','68.4187','0.224954','7200','0','0','14958','0','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+5);
DELETE FROM creature_movement WHERE id IN (@CGUID+5);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+5,'1','-1157.34','1475.44','68.4187','27000','0','0','0','0','0','0','173','0','0','0.224954','0','0'),
(@CGUID+5,'2','-1160.04','1474.68','68.4217','0','0','0','0','0','0','0','0','0','0','3.44744','0','0'),
(@CGUID+5,'3','-1169.9','1462.82','68.4243','0','0','0','0','0','0','0','0','0','0','4.04199','0','0'),
(@CGUID+5,'4','-1175.9','1453.44','68.4261','0','0','0','0','0','0','0','0','0','0','4.12131','0','0'),
(@CGUID+5,'5','-1178.3','1454.4','68.4302','0','0','0','0','0','0','0','0','0','0','2.761','0','0'),
(@CGUID+5,'6','-1187.27','1461.73','68.4486','0','0','0','0','0','0','0','0','0','0','2.48533','0','0'),
(@CGUID+5,'7','-1187.33','1464.84','68.451','0','0','0','0','0','0','0','0','0','0','1.58997','0','0'),
(@CGUID+5,'8','-1183.45','1471.54','68.451','0','0','0','0','0','0','0','0','0','0','1.04648','0','0'),
(@CGUID+5,'9','-1186.24','1473.29','68.4563','0','0','0','0','0','0','0','0','0','0','2.59371','0','0'),
(@CGUID+5,'10','-1189.62','1473.59','68.4611','27000','0','0','0','0','0','0','173','0','0','3.05239','0','0'),
(@CGUID+5,'11','-1185.84','1472.15','68.4565','0','0','0','0','0','0','0','0','0','0','5.77458','0','0'),
(@CGUID+5,'12','-1183.75','1469.04','68.4518','0','0','0','0','0','0','0','0','0','0','5.30334','0','0'),
(@CGUID+5,'13','-1188.46','1461.63','68.4513','0','0','0','0','0','0','0','0','0','0','4.03178','0','0'),
(@CGUID+5,'14','-1176.02','1453.01','68.4282','0','0','0','0','0','0','0','0','0','0','5.80992','0','0'),
(@CGUID+5,'15','-1172.34','1456.6','68.4252','0','0','0','0','0','0','0','0','0','0','0.616868','0','0'),
(@CGUID+5,'16','-1164.67','1468.12','68.4238','0','0','0','0','0','0','0','0','0','0','0.999357','0','0'),
(@CGUID+5,'17','-1161.06','1474.41','68.4238','0','0','0','0','0','0','0','0','0','0','0.891757','0','0');

-- ---------------------------------------------------
-- Add 2 Missing Bleeding Hollow Archers At First Boss
-- ---------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+6,@CGUID+7);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+6,'17270','543','3','0','0','-1148.55','1497.48','68.4854','3.08923','7200','0','0','11554','2434','0','0'),
(@CGUID+7,'17270','543','3','0','0','-1148.28','1511.81','68.4805','0.0349066','7200','0','0','11554','2434','0','0');
DELETE FROM creature_addon WHERE guid IN (@CGUID+6,@CGUID+7);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+6,'0','0','0','0','0','0',NULL);
INSERT INTO creature_addon (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (@CGUID+7,'0','0','0','0','0','0',NULL);

-- ------------------------------------------------------
-- Fix Watchkeeper Gargolmar Pathing and Linking For Adds
-- ------------------------------------------------------
UPDATE creature SET position_x = '-1184.730835', position_y = '1453.478271', position_z = '68.439384', orientation = '1.172138' WHERE guid = '62088';
UPDATE creature SET position_x = '-1178.800659', position_y = '1452.270264', position_z = '68.430794', orientation = '1.410114' WHERE guid = '62089';
DELETE FROM creature_linking WHERE master_guid IN (62083);
INSERT INTO creature_linking VALUES (62088,62083,515);
INSERT INTO creature_linking VALUES (62089,62083,515);
UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (62088,62089);
UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (62083);
DELETE FROM creature_movement WHERE id IN (62083,62088,62089);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('62083','1','-1169.96','1474.88','68.4357','0','0','0','0','0','0','0','0','0','0','1.14308','0','0'),
('62083','2','-1170.63','1511.93','68.4449','0','0','0','0','0','0','0','0','0','0','1.63161','0','0'),
('62083','3','-1196.09','1540.39','68.4821','0','0','0','0','0','0','0','0','0','0','2.35102','0','0'),
('62083','4','-1170.63','1511.93','68.4449','0','0','0','0','0','0','0','0','0','0','1.63161','0','0'),
('62083','5','-1169.96','1474.88','68.4357','0','0','0','0','0','0','0','0','0','0','1.14308','0','0'),
('62083','6','-1181.54','1452.92','68.4353','0','0','0','0','0','0','0','0','0','0','1.39127','0','0');

-- ---------------------------------------------------
-- Add Missing Hungerer Pathing on Top Floor and Fixing -- NEED DIFFERENT EQUIPMENT ID (HAMMER AND SHIELD INSTEAD OF AXE AND SHIELD)
-- ---------------------------------------------------
DELETE FROM creature WHERE guid IN (@CGUID+8);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID+8,'17259','543','3','0','0','-1276.92','1640.51','91.6726','2.69189','7200','0','0','14439','0','0','0');

UPDATE creature SET Spawndist=0, MovementType=2 WHERE guid IN (@CGUID+8);
DELETE FROM creature_movement WHERE id IN (@CGUID+8);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
(@CGUID+8,'1','-1276.92','1640.51','91.6726','22000','0','0','0','0','0','0','173','0','0','2.69188','0','0'),
(@CGUID+8,'2','-1276.52','1638.6','91.6777','0','0','0','0','0','0','0','0','0','0','4.62397','0','0'),
(@CGUID+8,'3','-1278.69','1636.47','91.6955','0','0','0','0','0','0','0','0','0','0','3.85742','0','0'),
(@CGUID+8,'4','-1282.16','1637.86','91.706','0','0','0','0','0','0','0','0','0','0','2.761','0','0'),
(@CGUID+8,'5','-1282.55','1639.29','91.7032','0','0','0','0','0','0','0','0','0','0','1.84051','0','0'),
(@CGUID+8,'6','-1282.15','1640.54','91.6982','26000','0','0','0','0','0','0','173','0','0','1.23026','0','0'),
(@CGUID+8,'7','-1283.46','1638.84','91.7092','0','0','0','0','0','0','0','0','0','0','4.3852','0','0'),
(@CGUID+8,'8','-1281.31','1635.72','91.7092','0','0','0','0','0','0','0','0','0','0','5.35595','0','0'),
(@CGUID+8,'9','-1277.05','1636.46','91.6883','0','0','0','0','0','0','0','0','0','0','0.177039','0','0'),
(@CGUID+8,'10','-1276.07','1639.22','91.6735','0','0','0','0','0','0','0','0','0','0','1.16271','0','0');

-- -----------------------------------------------------
-- Fix Ravener Pathing and Linking For Adds on Top Floor
-- -----------------------------------------------------
DELETE FROM creature WHERE guid IN (31957,31958);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('31957','17264','543','3','0','0','-1309.77','1619.39','91.7513','4.32237','7200','0','0','14439','0','0','2'),
('31958','17280','543','3','0','0','-1311.65','1620.14','91.7513','4.32394','7200','0','0','4142','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (31957);
INSERT INTO creature_linking VALUES (31958,31957,515);
INSERT INTO creature_linking VALUES (62068,31957,515);
UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (31958,62068);
DELETE FROM creature_movement WHERE id IN (31957,31958,62068);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('31957','1','-1315.75','1601.66','91.7501','0','0','0','0','0','0','0','0','0','0','4.33494','0','0'),
('31957','2','-1305.9','1593.47','91.7652','0','0','0','0','0','0','0','0','0','0','5.82091','0','0'),
('31957','3','-1287.94','1599.52','91.7758','0','0','0','0','0','0','0','0','0','0','0.217098','0','0'),
('31957','4','-1279.58','1616.86','91.7583','0','0','0','0','0','0','0','0','0','0','1.37478','0','0'),
('31957','5','-1288.32','1631.62','91.7501','0','0','0','0','0','0','0','0','0','0','2.00938','0','0'),
('31957','6','-1302.75','1628.88','91.7496','0','0','0','0','0','0','0','0','0','0','3.65086','0','0'),
('31957','7','-1315.75','1601.66','91.7501','0','0','0','0','0','0','0','0','0','0','4.33494','0','0'),
('31957','8','-1305.9','1593.47','91.7652','0','0','0','0','0','0','0','0','0','0','5.82091','0','0'),
('31957','9','-1287.94','1599.52','91.7758','0','0','0','0','0','0','0','0','0','0','0.217098','0','0'),
('31957','10','-1279.58','1616.86','91.7583','0','0','0','0','0','0','0','0','0','0','1.37478','0','0'),
('31957','11','-1288.32','1631.62','91.7501','7000','3195701','0','0','0','0','0','0','0','0','2.00938','0','0'),
('31957','12','-1302.75','1628.88','91.7496','0','0','0','0','0','0','0','0','0','0','3.65086','0','0'),
('31957','13','-1315.75','1601.66','91.7501','0','0','0','0','0','0','0','0','0','0','4.33494','0','0'),
('31957','14','-1305.9','1593.47','91.7652','0','0','0','0','0','0','0','0','0','0','5.82091','0','0'),
('31957','15','-1287.94','1599.52','91.7758','0','0','0','0','0','0','0','0','0','0','0.217098','0','0'),
('31957','16','-1279.58','1616.86','91.7583','0','0','0','0','0','0','0','0','0','0','1.37478','0','0'),
('31957','17','-1288.32','1631.62','91.7501','0','0','0','0','0','0','0','0','0','0','2.00938','0','0'),
('31957','18','-1302.75','1628.88','91.7496','0','0','0','0','0','0','0','0','0','0','3.65086','0','0');

DELETE FROM db_script_string WHERE entry IN (2000005560,2000005561);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000005560','You there!  Keep a close watch on these ramparts, intruders could approach at any time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','25','Bonechewer Ravener in Hellfire Ramparts'),
('2000005561','Yes sir!  I will not fail the Fel Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','66','Bleeding Hollow Darkcaster in Hellfire Ramparts');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (3195701);
INSERT INTO dbscripts_on_creature_movement VALUES (3195701,0,0,0,0,17269,62017,17,2000005560,0,0,0,0,0,0,0,'Bonechewer Ravener (Hellfire Ramparts) - Yell At Bleeding Hollow Darkcaster');
INSERT INTO dbscripts_on_creature_movement VALUES (3195701,4,0,0,0,17269,62017,19,2000005561,0,0,0,0,0,0,0,'Bleeding Hollow Darkcaster (Hellfire Ramparts) - Yell At Bonechewer Ravener');

-- --------------------------------------------------------
-- Fix 2 Hungerer Pathing Together and Linking on Top Floor - CORE SUPPORT REQUIRED TO PREVENT NPC FROM SWITCHING SIDES
-- --------------------------------------------------------
-- DELETE FROM creature_linking WHERE master_guid IN (61994);
-- INSERT INTO creature_linking VALUES (61995,61994,515);
-- UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (61995);
-- DELETE FROM creature_movement WHERE id IN (61995);

-- Temp Fix For Now, They Are Only Linked For Aggro To Prevent Pathing Issues (With Path Independantly For Now)
DELETE FROM creature_linking WHERE master_guid IN (61994);
INSERT INTO creature_linking VALUES (61995,61994,3);


-- --------------------------------------------------------
-- Fix 2 Hungerer Pathing Together and Linking on Top Floor - CORE SUPPORT REQUIRED TO PREVENT NPC FROM SWITCHING SIDES
-- --------------------------------------------------------
DELETE FROM creature_linking WHERE master_guid IN (61996);
INSERT INTO creature_linking VALUES (61997,61996,515);
UPDATE creature SET Spawndist=0, MovementType=0 WHERE guid IN (61997);
DELETE FROM creature_movement WHERE id IN (61997);

-- ------------------------------------------------------------
-- Add Missing Equipment Templates For NPC With Hammers Working (THIS ID NEEDS TO BE CHANGED TO FIT WITH TBC-DB NEW EQUIPMENT ID'S - FOR NOW THIS WILL NOT CONFLICT)
-- ------------------------------------------------------------
DELETE FROM creature_equip_template WHERE entry IN (2512);
INSERT INTO creature_equip_template VALUES (2512,2028,11589,0); -- Bonechewer Hungerer / Bonechewer Ravener
UPDATE creature SET equipment_id=2512 WHERE guid IN (@CGUID,@CGUID+4,@CGUID+5,@CGUID+8);

-- --------------------------------------
-- Backport Bunch Missing Spawns From UDB - (For Some Reason They Were Never Ported Into TBC-DB)
-- --------------------------------------
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('31959','17271','543','3','0','0','-1246.51','1645.73','67.7504','2.82305','7200','0','0','14439','0','0','0'),
('31960','17270','543','3','0','0','-1244.37','1648.46','67.5068','2.29683','7200','0','0','11554','2434','0','0'),
('31961','17270','543','3','0','0','-1246.53','1642.22','68.0499','3.52755','7200','0','0','11554','2434','0','0'),
('34521','17269','543','3','0','0','-1241','1622.44','68.4931','2.30468','7200','0','0','10104','5751','0','0'),
('57016','17271','543','3','0','0','-1242.17','1617.33','68.5032','3.57232','7200','0','0','14439','0','0','0'),
('64964','17270','543','3','0','0','-1239.48','1614.78','68.4823','4.2564','7200','0','0','11554','2434','0','0'),
('85635','17478','543','3','0','0','-1239.98','1632.94','68.4698','3.1219','7200','0','0','10104','5751','0','0'),
('64965','17280','543','3','0','0','-1255.54','1588.99','68.5629','6.26231','7200','0','0','4142','0','0','0'),
('64966','17280','543','3','0','0','-1257.71','1584.01','68.5609','5.76829','7200','0','0','4142','0','0','0'),
('64967','17259','543','3','0','0','-1253.03','1592.4','68.5577','5.81228','7200','5','0','14439','0','0','1'),
('64968','17259','543','3','0','0','-1260.65','1580.48','68.6319','6.11701','7200','5','0','14439','0','0','1'),
('77939','17271','543','3','0','0','-1277.48','1537.32','68.5684','1.78475','7200','0','0','14439','0','0','0'),
('77940','17271','543','3','0','0','-1271.42','1539.57','68.5593','1.24911','7200','0','0','14439','0','0','0'),
('77941','17269','543','3','0','0','-1283.25','1485.41','68.5938','0.617646','7200','0','0','10104','5751','0','0'),
('79288','17271','543','3','0','0','-1281.22','1479.85','68.5982','0.0929992','7200','0','0','14439','0','0','0'),
('79291','17259','543','3','0','0','-1229.04','1474.72','68.5588','3.75217','7200','5','0','14439','0','0','1'),
('79295','17259','543','3','0','0','-1218.31','1465.47','68.565','4.08753','7200','5','0','14439','0','0','1'),
('79317','17280','543','3','0','0','-1227.07','1471.13','68.562','3.83778','7200','0','0','4142','0','0','0'),
('79318','17280','543','3','0','0','-1222.93','1468.08','68.5654','4.0891','7200','0','0','4142','0','0','0'),
('79332','17259','543','3','0','0','-1206.34','1440.36','68.5478','2.25364','7200','0','0','14439','0','0','0'),
('79342','17271','543','3','0','0','-1199.86','1441.04','68.5164','1.17371','7200','0','0','14439','0','0','0'),
('79350','17269','543','3','0','0','-1196.94','1433.03','68.515','1.74941','7200','0','0','10104','5751','0','0'),
('79356','17280','543','3','0','0','-1201.71','1434.41','68.5346','1.3143','7200','0','0','4142','0','0','0'),
('79358','17280','543','3','0','0','-1194.15','1438.93','68.4923','2.04158','7200','0','0','4142','0','0','0'),
('79389','17264','543','3','0','0','-1171.39','1442.44','68.4135','2.39422','7200','0','0','14439','0','0','0'),
-- ------------------------
-- REGUID CONFLICT FROM UDB
('139980','17280','543','3','0','0','-1177.68','1443.05','68.4213','2.95107','7200','0','0','4142','0','0','0'),
('139981','17280','543','3','0','0','-1172.91','1448.22','68.4196','2.30547','7200','0','0','4142','0','0','0'),
('139982','17269','543','3','0','0','-1180.56','1480.53','68.4566','2.0133','7200','0','0','10104','5751','0','0'),
('139983','17269','543','3','0','0','-1181.91','1486.2','68.462','4.02078','7200','0','0','10104','5751','0','0'),
-- ------------------------
('84387','17271','543','3','0','0','-1185.22','1483.93','68.4648','5.58294','7200','0','0','14439','0','0','0'),
('84392','17271','543','3','0','0','-1150.4','1503.62','68.4036','3.05239','7200','0','0','14439','0','0','0'),
('84393','17280','543','3','0','0','-1156.34','1491.98','68.4241','3.12779','7200','0','0','4142','0','0','0'),
('84403','17280','543','3','0','0','-1157.2','1485.66','68.4256','3.49928','7200','0','0','4142','0','0','0'),
('84404','17259','543','3','0','0','-1207.63','1533.99','68.5564','0.599592','7200','0','0','14439','0','0','0'),
('84405','17259','543','3','0','0','-1216.72','1544.74','68.5586','0.832852','7200','0','0','14439','0','0','0'),
('84406','17271','543','3','0','0','-1264.6','1589','92.3484','5.67012','7200','0','0','14439','0','0','0'),
('84432','17271','543','3','0','0','-1259.27','1596.98','92.0051','5.76594','7200','0','0','14439','0','0','0'),
('84439','17271','543','3','0','0','-1273.79','1624.37','91.694','3.03589','7200','5','0','14439','0','0','1'),
('84444','17280','543','3','0','0','-1292.4','1637.55','91.7452','4.7732','7200','0','0','4142','0','0','0'),
('84484','17270','543','3','0','0','-1320.28','1612.95','91.7477','5.46592','7200','0','0','11554','2434','0','0'),
('84486','17271','543','3','0','0','-1316.16','1616.67','91.7485','5.5044','7200','5','0','14439','0','0','1'),
('84436','17269','543','3','0','0','-1298.88','1584.61','91.7838','1.40698','7200','0','0','10104','5751','0','0'),
('84437','17280','543','3','0','0','-1293.46','1589.14','91.7699','1.78947','7200','0','0','4142','0','0','0'),
('84487','17269','543','3','0','0','-1168.73','1699.03','91.4946','3.62259','7200','0','0','10104','5751','0','0'),
('84489','17269','543','3','0','0','-1162.51','1689.34','91.6866','3.57468','7200','0','0','10104','5751','0','0');



-- =======================
-- NPC Group Aggro Linking
-- =======================
-- Front Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (61998);
INSERT INTO creature_linking VALUES (61999,61998,3);

-- Front Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (62000);
INSERT INTO creature_linking VALUES (@CGUID+9,62000,3);

-- Front Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (62023);
INSERT INTO creature_linking VALUES (62018,62023,3);
INSERT INTO creature_linking VALUES (62015,62023,3);

-- Front Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (31959);
INSERT INTO creature_linking VALUES (31960,31959,3);
INSERT INTO creature_linking VALUES (31961,31959,3);

-- Front Area - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (57016);
INSERT INTO creature_linking VALUES (64964,57016,3);
INSERT INTO creature_linking VALUES (34521,57016,3);
INSERT INTO creature_linking VALUES (85635,57016,3);

-- Front Area - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (64967);
INSERT INTO creature_linking VALUES (64968,64967,3);
INSERT INTO creature_linking VALUES (64966,64967,3);
INSERT INTO creature_linking VALUES (64965,64967,3);

-- Front Area - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (85642);
INSERT INTO creature_linking VALUES (85641,85642,3);
INSERT INTO creature_linking VALUES (85639,85642,3);
INSERT INTO creature_linking VALUES (85638,85642,3);
INSERT INTO creature_linking VALUES (85636,85642,3);

-- Front Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (86360);
INSERT INTO creature_linking VALUES (77939,86360,3);
INSERT INTO creature_linking VALUES (77940,86360,3);

-- Front Area - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (@CGUID);
INSERT INTO creature_linking VALUES (85643,@CGUID,3);
INSERT INTO creature_linking VALUES (77941,@CGUID,3);
INSERT INTO creature_linking VALUES (79288,@CGUID,3);

-- First Boss Area - Group of 4
DELETE FROM creature_linking WHERE master_guid IN (79291);
INSERT INTO creature_linking VALUES (79317,79291,3);
INSERT INTO creature_linking VALUES (79318,79291,3);
INSERT INTO creature_linking VALUES (79295,79291,3);

-- First Boss Area - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (79342);
INSERT INTO creature_linking VALUES (79332,79342,3);
INSERT INTO creature_linking VALUES (79358,79342,3);
INSERT INTO creature_linking VALUES (79350,79342,3);
INSERT INTO creature_linking VALUES (79356,79342,3);

-- First Boss Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (79389);
INSERT INTO creature_linking VALUES (139980,79389,3);
INSERT INTO creature_linking VALUES (139981,79389,3);

-- First Boss Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (84097);
INSERT INTO creature_linking VALUES (84098,84097,3);

-- First Boss Area - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (84387);
INSERT INTO creature_linking VALUES (139982,84387,3);
INSERT INTO creature_linking VALUES (139983,84387,3);

-- First Boss Area - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (84392);
INSERT INTO creature_linking VALUES (84393,84392,3);
INSERT INTO creature_linking VALUES (84403,84392,3);
INSERT INTO creature_linking VALUES (@CGUID+6,84392,3);
INSERT INTO creature_linking VALUES (@CGUID+7,84392,3);

-- First Boss Area - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (84404);
INSERT INTO creature_linking VALUES (84405,84404,3);

-- Top Floor - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (85652);
INSERT INTO creature_linking VALUES (85646,85652,3);
INSERT INTO creature_linking VALUES (85650,85652,3);
INSERT INTO creature_linking VALUES (85647,85652,3);
INSERT INTO creature_linking VALUES (85649,85652,3);

-- Top Floor - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (84406);
INSERT INTO creature_linking VALUES (84432,84406,3);

-- Top Floor - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (84439);
INSERT INTO creature_linking VALUES (62020,84439,3);
INSERT INTO creature_linking VALUES (62021,84439,3);

-- Top Floor - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (62017);
INSERT INTO creature_linking VALUES (84444,62017,3);
INSERT INTO creature_linking VALUES (62067,62017,3);
INSERT INTO creature_linking VALUES (62016,62017,3);
INSERT INTO creature_linking VALUES (@CGUID+8,62017,3);

-- Top Floor - Group of 3
DELETE FROM creature_linking WHERE master_guid IN (84486);
INSERT INTO creature_linking VALUES (84484,84486,3);
INSERT INTO creature_linking VALUES (62019,84486,3);

-- Top Floor - Group of 5
DELETE FROM creature_linking WHERE master_guid IN (62022);
INSERT INTO creature_linking VALUES (84437,62022,3);
INSERT INTO creature_linking VALUES (62064,62022,3);
INSERT INTO creature_linking VALUES (84436,62022,3);
INSERT INTO creature_linking VALUES (61993,62022,3);

-- Second Boss - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (63011);
INSERT INTO creature_linking VALUES (63012,63011,3);

-- Final Boss - Group of 2
DELETE FROM creature_linking WHERE master_guid IN (84487);
INSERT INTO creature_linking VALUES (84489,84487,3);


-- =====================================
-- General Health and Mana Value Cleanup
-- =====================================
UPDATE creature, creature_template SET creature.curhealth=creature_template.minlevelhealth,creature.curmana=creature_template.minlevelmana WHERE creature.id=creature_template.entry and creature_template.RegenerateHealth = '1';


-- ==================================================================
-- This Is a UDB Backport - Original Work Is From XFurry (Thank You!)
-- ==================================================================

-- Zul Farrak Pyramid
UPDATE creature SET MovementType=2 WHERE id IN (7607, 7604, 7605, 7606, 7608);
UPDATE creature_template SET MovementType=0 WHERE entry IN (8877,8876,7275,7796);

DELETE FROM creature_movement_template WHERE entry IN (7607, 7604, 7605, 7606, 7608);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Weegli Blastfuse
(7607,1,1881.05, 1297.36, 48.419, 1000, 760701, 5.41),          -- workaround in order to pause the default wp movement. This is needed to avoid evade complications
(7607,2,1881.741, 1295.994, 48.323, 1000, 760702, 5.41),
(7607,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7607,4,1880.210, 1290.434, 45.970, 0, 0, 0),                   -- workaround in order to force move maps to do the right move path
(7607,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7607,6,1891.080, 1284.610, 43.580, 1000, 760706, 4.71),
(7607,7,1883.285, 1263.755, 41.576, 2000, 760707, 4.71),
(7607,8,1889.486, 1271.971, 41.626, 1000, 760701, 4.71),
(7607,9,1895.356, 1227.598, 9.521, 0, 0, 0),
(7607,10,1893.277, 1206.289, 8.877, 1000, 760701, 4.61),
-- blowing the door
(7607,11,1891.670, 1181.687, 8.877, 0, 0, 0),
(7607,12,1876.005, 1161.771, 9.653, 0, 0, 0),
(7607,13,1857.490, 1145.531, 15.119, 1000, 760713, 3.86),
-- run away
(7607,14,1877.107, 1148.825, 10.316, 0, 0, 0),
(7607,15,1886.306, 1137.952, 9.352, 0, 0, 0),
(7607,16,1869.976, 1092.893, 8.876, 0, 1, 0),
-- Sergeant Bly
(7604,1,1882.89, 1299.27, 48.3843, 1000, 760401, 4.83),
(7604,2,1883.395, 1297.178, 48.293, 1000, 760402, 4.83),
(7604,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7604,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7604,6,1886.896, 1264.077, 41.494, 1000, 760401, 4.71),
(7604,7,1886.703, 1227.956, 9.9242, 0, 0, 0),
(7604,8,1884.289, 1202.936, 8.8781, 60000, 0, 4.61),
(7604,9,1884.289, 1202.936, 8.8781, 15000, 760409, 4.61),
-- Raven
(7605,1,1886.64, 1299.11, 48.3146, 1000, 760501, 4.36),
(7605,2,1886.123, 1297.247, 48.241, 1000, 760502, 4.36),
(7605,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7605,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7605,6,1890.223, 1264.296, 41.420, 1000, 760501, 4.71),
(7605,7,1895.356, 1227.598, 9.521, 0, 0, 0),
(7605,8,1889.008, 1201.978, 8.878, 60000, 0, 4.54),
(7605,9,1889.008, 1201.978, 8.878, 15000, 760509, 4.54),
-- Oro Eyegouge
(7606,1,1889.62, 1298.01, 48.2581, 1000, 760601, 3.94),
(7606,2,1888.196, 1296.756, 48.203, 1000, 760602, 3.94),
(7606,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7606,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7606,6,1883.209, 1271.997, 41.850, 1000, 760601, 4.71),
(7606,7,1879.247, 1227.145, 9.276, 0, 0, 0),
(7606,8,1876.139, 1207.258, 8.877, 60000, 0, 4.64),
(7606,9,1876.139, 1207.258, 8.877, 15000, 760609, 4.64),
-- Murta Grimgut
(7608,1,1891.07, 1294.78, 48.2347, 1000, 760801, 3.31),
(7608,2,1889.018, 1294.428, 48.189, 1000, 760802, 3.31),
(7608,3,1881.001, 1293.345, 47.627, 0, 0, 0),
(7608,4,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,5,1880.210, 1290.434, 45.970, 0, 0, 0),
(7608,6,1886.345, 1271.890, 41.735, 1000, 760801, 4.71),
(7608,7,1886.703, 1227.956, 9.924, 0, 0, 0),
(7608,8,1884.856, 1208.976, 8.878, 60000, 0, 4.61),
(7608,9,1884.856, 1208.976, 8.878, 15000, 760809, 4.61);

-- texts
DELETE FROM db_script_string WHERE entry IN (2000005547,2000005548,2000005549,2000005564,2000005565,2000005566,2000005567);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005547,'Oh no! Here they come!',0,0,0,0,'Weegli Blastfuse - Say Event Start'),
(2000005548,'Ok, here I go!',0,0,0,0,'Weegli Blastfuse - Say Blow Door Normal'),
(2000005549,'What? How dare you say that to me?!?',0,0,0,6,'Sergeant Bly - Say Faction Change 1'),
(2000005564,'After all we\'ve been through? Well, I didn\'t like you anyway!!',0,0,0,5,'Sergeant Bly - Say Faction Change 2'),
(2000005565,'I\'m out of here!',0,0,0,0,'Weegli Blastfuse - Say Blow Door Forced'),
(2000005566,'Who dares step into my domain! Come! Come, and be consumed!',0,6,0,0,'Ukorz Sandscalp - Say After Door Blown'),
(2000005567,'Let\'s move forward!',0,0,0,0,'Sergeant Bly - Move Downstairs');

-- creature move scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760702,760402,760502,760602,760802,760706,760707,760701,760401,760501,760601,760801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, dataint, comments) VALUES
(760701, 0, 32, 1, 0, 'Weegli Blastfuse - Stop Movement'),
(760401, 0, 32, 1, 0, 'Sergeant Bly - Stop Movement'),
(760501, 0, 32, 1, 0, 'Raven - Stop Movement'),
(760601, 0, 32, 1, 0, 'Oro Eyegouge - Stop Movement'),
(760801, 0, 32, 1, 0, 'Murta Grimgut - Stop Movement'),
(760702, 0, 1, 71, 0, 'Sergeant Bly - Emote Cheer'),
(760402, 0, 1, 71, 0, 'Raven - Emote Cheer'),
(760502, 0, 1, 71, 0, 'Oro Eyegouge - Emote Cheer'),
(760602, 0, 1, 71, 0, 'Weegli Blastfuse - Emote Cheer'),
(760802, 0, 1, 71, 0, 'Murta Grimgut - Emote Cheer'),
(760702, 0, 22, 495, 0, 'Weegli Blastfuse - Update Faction'),
(760402, 0, 22, 495, 0, 'Sergeant Bly - Update Faction'),
(760502, 0, 22, 495, 0, 'Raven - Update Faction'),
(760602, 0, 22, 495, 0, 'Oro Eyegouge - Update Faction'),
(760802, 0, 22, 495, 0, 'Murta Grimgut - Update Faction'),
(760706, 0, 25, 1, 0, 'Weegli Blastfuse - Set Run On'),
(760707, 0, 0, 0, 2000005547, 'Weegli Blastfuse - Say Event Begin');

-- despawn self
DELETE FROM dbscripts_on_spell WHERE id = 11365;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(11365, 18, 1000, 'despawn self');
-- party escape and door is blown
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760713,760409,760809,760609,760509);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(760713, 0, 15, 10772, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Cast Create Weegli\'s Barrel'),
(760713, 2, 13, 0, 0, 141612, 20, 1, 0, 'Weegli Blastfuse - Use Weegli\'s Barrel'),
(760713, 5, 0, 6, 0, 7267, 200, 0, 2000005566, 'Ukorz Sandscalp - Yell Intro'),
(760409, 0, 15, 11365, 0, 0, 0, 0, 0, 'Sergeant Bly - Cast Bly\'s Band\'s Escape'),
(760409, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - Remove Gossip Flag'),
(760809, 0, 15, 11365, 0, 0, 0, 0, 0, 'Raven - Cast Bly\'s Band\'s Escape'),
(760609, 0, 15, 11365, 0, 0, 0, 0, 0, 'Oro Eyegouge - Cast Bly\'s Band\'s Escape'),
(760509, 0, 15, 11365, 0, 0, 0, 0, 0, 'Murta Grimgut - Cast Bly\'s Band\'s Escape');

-- gossip conditions
DELETE FROM conditions WHERE condition_entry IN (462, 463, 456, 457, 458, 459, 460, 461);
INSERT INTO conditions VALUES
(462, 33, 1, 0),
(463, 33, 10, 0),
(456, 33, 2, 1), -- wp >= 2
(457, 33, 8, 0), -- wp == 8
(458, 33, 8, 2), -- wp < 8
(459, 33, 10, 2), -- wp < 10
(460, -1, 456, 459), -- wp between 1 and 9
(461, -1, 456, 458); -- wp between 1 and 7

-- gossips
DELETE FROM gossip_menu WHERE entry IN (940,941);
INSERT INTO gossip_menu VALUES
-- weegli
(940, 1511, 0, 462),
(940, 1513, 0, 460),
(940, 1514, 0, 463),
-- bly
(941, 1515, 0, 462),
(941, 1516, 0, 461),
(941, 1517, 0, 457);

DELETE FROM gossip_menu_option WHERE menu_id IN (940, 941);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(940, 0, 0, 'Will you blow up that door now?', 1, 1, 94001, 463),
(941, 0, 0, 'Hey Bly!  Bilgewizzle wants his divino-matic rod back!', 1, 1, 0, 457),  -- Note: we are not sure what should be the action of this one - maybe similar to the one below
(941, 1, 0, 'That\'s it!  I\'m tired of helping you out.  It\'s time we settled things on the battlefield!', 1, 1, 94101, 457);

DELETE FROM dbscripts_on_gossip WHERE id IN (94001,94101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(94001, 0, 0, 0, 0, 0, 0, 0, 2000005548,'Weegli Blastfuse - Say Start Door Bombing'),
(94001, 0, 29, 1, 2, 0, 0, 0, 0, 'Weegli Blastfuse - Remove Gossip Flag'),
(94001, 0, 22, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Update Faction to Default'),
(94001, 0, 25, 1, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Set Run On'),
(94001, 0, 32, 0, 0, 0, 0, 0, 0,'Weegli Blastfuse - Start WP Movement'),
(94101, 0, 29, 1, 2, 0, 0, 0, 0, 'Sergeant Bly - Remove Gossip Flag'),
(94101, 0, 0, 0, 0, 0, 0, 0, 2000005549, 'Sergeant Bly - Say Start Combat 1'),
(94101, 3, 0, 0, 0, 0, 0, 0, 2000005564, 'Sergeant Bly - Say Start Combat 2'),
(94101, 6, 22, 14, 0, 0, 0, 0, 0, 'Sergeant Bly - Update Faction to Hostile'),
(94101, 6, 22, 14, 0, 7608, 30, 4, 0, 'Murta Grimgut - Update Faction'),
(94101, 6, 22, 14, 0, 7606, 30, 4, 0, 'Oro Eyegouge - Update Faction'),
(94101, 6, 22, 14, 0, 7605, 30, 4, 0, 'Raven - Update Faction'),
(94101, 6, 0, 0, 0, 7607, 30, 4, 2000005565,'Weegli Blastfuse - Say Start Door Bombing'),
(94101, 6, 29, 1, 2, 7607, 30, 4, 0, 'Weegli Blastfuse - Remove Gossip Flag'),
(94101, 6, 22, 0, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - Update Faction to Default'),
(94101, 0, 25, 1, 0, 7607, 30, 4, 0, 'Weegli Blastfuse - Set Run On'),
(94101, 6, 32, 0, 0, 7607, 30, 4, 0,'Weegli Blastfuse - Start WP Movement');

-- Summon event
DELETE FROM dbscripts_on_event WHERE id=2609;
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- Open cages
(2609, 0, 11, 27089, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27090, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27091, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27092, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
(2609, 0, 11, 27093, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Open Troll Cage'),
-- Start movement
(2609, 2, 32, 0, 0, 7604, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP Movement'),
(2609, 2, 32, 0, 0, 7605, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP Movement'),
(2609, 2, 32, 0, 0, 7606, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP Movement'),
(2609, 2, 32, 0, 0, 7607, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP Movement'),
(2609, 2, 32, 0, 0, 7608, 30, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP Movement'),
-- Spawn first troll wave; there are around 38 - 40 trolls per wave. (slave and drudge). Note: some coords are guesswork
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'Spawn Sandfury Slave'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'Spawn Sandfury Drudge'),
(2609, 10, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'Spawn Sandfury Drudge'),
-- Spawn second troll wave after 100 sec (slave, drudge and about 8 cretins)
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1902.83, 1223.41, 8.96, 3.95, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.64, 1206.29, 8.87, 2.22, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.45, 1204.44, 8.87, 0.88, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1875.18, 1221.24, 9.21, 0.84, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1879.02, 1223.06, 9.12, 5.91, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.07, 1225.7, 9.32, 5.69, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.97, 1225.86, 9.85, 5.79, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1892.28, 1225.49, 9.57, 5.63, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1894.72, 1221.91, 8.87, 2.34, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.08, 1218.68, 8.87, 1.59, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.5, 1218.25, 8.9, 0.67, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.93, 1221.4, 8.94, 1.6, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.76, 1222.3, 9.11, 6.26, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.82, 1222.51, 9.03, 0.97, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1898.23, 1217.97, 8.87, 3.42, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877.4, 1216.41, 8.97, 0.37, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1893.07, 1215.26, 8.87, 3.08, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.57, 1214.16, 8.87, 3.12, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1889.94, 1212.21, 8.87, 1.59, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.74, 1212.35, 8.87, 1.59, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1877, 1207.27, 8.87, 3.8, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.63, 1204.65, 8.87, 0.61, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1896.46, 1205.62, 8.87, 5.72, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1899.63, 1202.52, 8.87, 2.46, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1903.49, 1211.52, 8.88, 0.61, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1901.34, 1206.06, 8.87, 5.72, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7787, 9000000, 0, 0, 0, 0, 0, 0, 0, 1869.46, 1210.38, 9.15, 2.46, 'Spawn Sandfury Slave'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1872.73, 1203.04, 8.87, 6.26, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1881.32, 1205.39, 8.87, 0.97, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1887.19, 1205.09, 8.87, 3.42, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.50, 1203.33, 8.87, 0.37, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1868.75, 1213.85, 9.47, 3.08, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1886.06, 1213.20, 8.87, 3.12, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7788, 9000000, 0, 0, 0, 0, 0, 0, 0, 1906.30, 1220.33, 9.03, 1.59, 'Spawn Sandfury Drudge'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.61, 1202.73, 8.87, 1.59, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1897.06, 1216.08, 8.87, 3.12, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.07, 1216.37, 8.93, 1.59, 'Spawn Sandfury Cretin'),
(2609, 100, 10, 7789, 9000000, 0, 0, 0, 0, 0, 0, 0, 1891.60, 1209.43, 8.87, 1.59, 'Spawn Sandfury Cretin'),
-- npcs start to move downstairs when boss spawn
(2609, 250, 25, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Set Run Off'),
(2609, 250, 32, 0, 0, 7604, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Start WP Movement'),
(2609, 250, 0, 0, 0, 7604, 150, 4, 2000005567, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Yell At Movement Start'),
(2609, 250, 32, 0, 0, 7605, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Raven - Start WP Movement'),
(2609, 250, 32, 0, 0, 7606, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Oro Eyegouge - Start WP Movement'),
(2609, 250, 32, 0, 0, 7607, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Start WP Movement'),
(2609, 250, 32, 0, 0, 7608, 150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Murta Grimgut - Start WP Movement'),
-- boss spawns after 4 min and 10 sec after the first wave (250 sec) (acolytes and zealots + 2 bosses)
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1890.552, 1199.941, 8.96, 4.46, 'Spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1888.446, 1200.169, 8.96, 1.11, 'Spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1876.983, 1199.938, 8.96, 2.19, 'Spawn Sandfury Acolyte'),
(2609, 250, 10, 8876, 9000000, 0, 0, 0, 0, 0, 0, 0, 1873.311, 1197.546, 8.96, 4.60, 'Spawn Sandfury Acolyte'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1895.159, 1198.047, 8.96, 1.51, 'Spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1878.941, 1200.573, 8.96, 2.60, 'Spawn Sandfury Zealot'),
(2609, 250, 10, 8877, 9000000, 0, 0, 0, 0, 0, 0, 0, 1874.741, 1199.029, 8.96, 2.53, 'Spawn Sandfury Zealot'),
(2609, 250, 10, 7275, 9000000, 0, 0, 0, 0, 0, 0, 0, 1883.983, 1201.655, 8.96, 1.71, 'Spawn Shadowpriest Sezz\'ziz'),
(2609, 250, 10, 7796, 9000000, 0, 0, 0, 0, 0, 0, 0, 1882.324, 1201.454, 8.96, 6.05, 'Spawn Nekrum Gutchewer');


-- =========================================================
-- Backport From UDB Support For Quest 9531 'Tree's Company'
-- =========================================================
-- ---------------------------------------
-- Geezle - Should Spawn With Event_Script
-- ---------------------------------------
DELETE FROM creature WHERE id IN (17318);

-- ------------------
-- Script Event 10675
-- ------------------
DELETE FROM dbscripts_on_event WHERE id=10675;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','0','10','17318','100000','0','0','0','0','0','0','0','-5116.13','-11263','0.961','0','Summon Geezle');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','0','10','17243','100000','0','0','0','0','0','0','0','-5040.42','-11260.6','13.647','0','Summon Engineer \"Spark\" Overgrind');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','1','29','1','2','17243','200','0','0','0','0','0','0','0','0','0','remove npc_flag');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','20','0','2','0','17243','50','0','2000000297','0','0','0','0','0','0','0','text_emote Spark');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','21','0','0','0','17318','50','0','2000000298','0','0','0','0','0','0','0','Geezle say 1');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','21','1','1','0','17318','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','26','1','5','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotExclamation');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','26','0','0','0','17243','50','0','2000000299','0','0','0','0','0','0','0','Spark say 1');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','28','1','1','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','23','1','1','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','33','0','0','0','17243','50','0','2000000300','0','0','0','0','0','0','0','Spark say 2');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','44','1','1','0','17318','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','44','0','0','0','17318','50','0','2000000301','0','0','0','0','0','0','0','Geezle say 2');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','50','1','1','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','50','0','0','0','17243','50','0','2000000302','0','0','0','0','0','0','0','Spark say 3');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','53','1','5','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotExclamation');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','57','1','1','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','57','0','0','0','17243','50','0','2000000303','0','0','0','0','0','0','0','Spark say 4');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','60','1','25','0','17243','50','0','0','0','0','0','0','0','0','0','emote OneShotPoint');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','65','1','1','0','17318','50','0','0','0','0','0','0','0','0','0','emote OneShotTalk');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','65','0','0','0','17318','50','0','2000000304','0','0','0','0','0','0','0','Geezle say 2');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10675','65','8','17243','1','0','0','0','0','0','0','0','0','0','0','0','Kill Credit for quest 9531');

-- ------------
-- Script Texts
-- ------------
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000297','%s picks up the naga flag.','0','2','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000298','What\'s the big idea, Spark? Why\'d you call for this meeting?','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000299','What\'s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000300','The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000301','Relax, Spark! I have it all under control. We\'ll strip mine the Exodar right out from under \'em - making both you and I very, very rich in the process.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000302','Relax? Do you know what Kael\'thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000303','Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you...','0','0','0','0',NULL);
INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('2000000304','Yes, sir. It won\'t happen again...','0','0','0','0',NULL);

-- ---------------
-- Geezle Movement
-- ---------------
UPDATE creature_template SET MovementType=2 WHERE entry=17318;
DELETE FROM creature_movement_template WHERE entry=17318;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','1','-5093.29','-11254.7','0.24','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','2','-5091.67','-11253.8','0.51914','65000','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','3','-5097.71','-11258','0.8819','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','4','-5100.41','-11253.4','0.0595','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','5','-5108.41','-11250.4','-0.4404','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','6','-5115.16','-11248.2','0.0595','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','7','-5118.7','-11250.4','0.4533','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','8','-5120.28','-11250.8','1.1859','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','9','-5122.28','-11250.3','0.6859','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','10','-5126.28','-11249.8','-0.064','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','11','-5128.28','-11249.6','0.4359','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','12','-5130.28','-11249.3','1.1859','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','13','-5132.03','-11249.1','2.1859','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','14','-5133.03','-11248.8','2.9359','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','15','-5135.03','-11248.8','3.4359','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','16','-5137.03','-11248.6','4.1859','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','17','-5143.78','-11247.6','4.9359','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17318','18','-5146.41','-11246.4','5.2825','0','1','0','0','0','0','0','0','0','0','0','0','0');

-- -----------------------------------
-- Engineer "Spark" Overgrind Movement
-- -----------------------------------
UPDATE creature_template SET MovementType=2 WHERE entry=17243;
DELETE FROM creature_movement_template WHERE entry=17243;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','1','-5063.43','-11256.4','0.9326','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','2','-5078.62','-11254.6','0.5082','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','3','-5081.81','-11253.7','0.5838','60000','0','0','0','0','0','0','0','0','0','3.02','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','4','-5081.81','-11253.7','0.5838','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','5','-5067.8','-11258.5','0.5815','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','6','-5064.75','-11259.5','0.581','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','7','-5064.86','-11261.3','0.2768','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','8','-5060.36','-11265.3','0.7768','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','9','-5050.61','-11273.6','1.0268','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','10','-5047.41','-11274.7','1.4722','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','11','-5046.76','-11276.3','2.397','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','12','-5045.51','-11277.8','3.147','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','13','-5044.01','-11279.3','3.897','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','14','-5042.76','-11280.8','5.147','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','15','-5041.01','-11283.1','6.647','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','16','-5039.76','-11284.3','7.397','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','17','-5033.26','-11292.1','7.897','0','0','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('17243','18','-5031.4','-11293.5','8.2005','0','1','0','0','0','0','0','0','0','0','0','0','0');











