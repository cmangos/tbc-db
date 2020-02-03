-- Preparations for removal of DeathState field.
-- SELECT * FROM creature where deathstate > 0;

-- =======================
-- npc_redemption_targetAI
-- =======================
-- guid		entry	map
-- 6129		6177	0
-- 63139	17542	530
-- 63505	17768	530
-- 81163	6172	0
-- https://youtu.be/VKXoTRDmarY?t=10
-- https://youtu.be/KQgvQUeBKrA?t=1 - yell bct 14365 - tbc
UPDATE `creature` SET `DeathState` = 0 WHERE `id` IN (6177,17542,17768,6172);
-- spell does not target "corpse" anymore
UPDATE `spell_script_target` SET `type` = 1 WHERE `entry` IN (8593,31225); -- 6172,6177,17542,17768

UPDATE `creature_template` SET `NpcFlags` = 0 WHERE `entry` IN (6172,6177); -- npc_redemption_target sets it 1sec after text, which is wrong, pending rewrite (text is wrong etc, dwarfs dont talk like that)

UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|4096 WHERE `entry` = 6177; -- pre wotlk (UNIT_FLAG_PVP) - all others have it

-- this wouldve been a hack just for some visual
-- Else Questlog says: Narm Faulk / Henze Faulk slain: 0/1 -> Quest is completed by getting NpcFlags Set & ReqSpellCast1 8593
 -- this together with ReqSpellCast1 = 8593 should do the trick, ReqSpellCast1 is custom field though (like this it will still show the "killed xyz in combat log"
-- UPDATE `quest_template` SET `Method` = 1, `ReqCreatureOrGOID1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 1783; -- 2, 6177	1
-- UPDATE `quest_template` SET `Method` = 1, `ReqCreatureOrGOID1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 1786; -- 2, 6172	1

-- Tome of Divinity Quest must be repeatable, as if you take/autocomplete it
-- you get a quest item to start a quest, if you delete that item you can not proceed anymore as you cant get it back
UPDATE `quest_template` SET `SpecialFlags` = 1, `RequiredCondition` = 9014 WHERE `entry` = 1641;
UPDATE `quest_template` SET `SpecialFlags` = 1, `RequiredCondition` = 9015 WHERE `entry` = 1645;

-- Make Symbol of Life i.6866 retrievable until you dont have to speak to Henze Faulk 6172, Narm Faulk 6177 for followup quest - no wonder they changed this for the tbc versions
-- people can get stuck after rezzing if they dont complete the quest and abort it, they can not retake the item to rezz the npc again to take the quest from him
UPDATE `quest_template` SET `RequiredCondition` = 9018, `PrevQuestId` = 0 WHERE `entry` = 1789; -- -1783, should be 1783 and 1784 as you can get stuck inbetween
UPDATE `quest_template` SET `RequiredCondition` = 9021, `PrevQuestId` = 0 WHERE `entry` = 1790; -- -1786, should be 1786 and 1787 as you can get stuck inbetween

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 9014 AND 9021;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9014, 22, 1642, 0, 0, 0, 0, 'Quest ID 1642 NOT Taken AND NOT Rewarded'),
(9015, 22, 1646, 0, 0, 0, 0, 'Quest ID 1642 NOT Taken AND NOT Rewarded'),

(9016, 9, 1783, 0, 0, 0, 0, 'Quest ID 1783 Taken'),
(9017, 9, 1784, 0, 0, 0, 0, 'Quest ID 1784 Taken'),
(9018, -2, 9016, 9017, 0, 0, 0, '(Quest ID 1783 Taken) OR (Quest ID 1784 Taken)'),

(9019, 9, 1786, 0, 0, 0, 0, 'Quest ID 1786 Taken'),
(9020, 9, 1787, 0, 0, 0, 0, 'Quest ID 1787 Taken'),
(9021, -2, 9019, 9020, 0, 0, 0, '(Quest ID 1786 Taken) OR (Quest ID 1787 Taken)');

-- 1 to ~5 kills some say over 9000...
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6846 AND `entry` = 474; -- Defias Script not 100%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6847 AND `entry` = 6123; -- Dark Iron Script not 100%

-- ====
-- TBC+
-- ====

-- https://youtu.be/6RXj0KEM3ao?t=290 - not sniff+path, but better then ontop of the player
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 17716;
DELETE FROM `creature_movement_template` WHERE `entry` = 17716;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES (17716, 1, 8099.31, -7542.30, 151.38, 100, 1, 2, 'Sniff Me Please');
UPDATE `dbscripts_on_go_template_use` SET `dataint` = 1, `x` = 8063.39, `y` = -7537.30, `z` = 151.11 WHERE `id` = 181956; -- Improve Sangrias Stillblade 17716 spawn location
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` = 14365; -- Yell

-- ToDo:
-- 17845 reaction to i.24157 channeling?
-- 17768 different afterscript when he is rezzed
-- Young Furbolg Shaman might also have a different afterscript

-- Catlord Corpse 23705
UPDATE `creature` SET `DeathState` = 0 WHERE `id` = 23705;
UPDATE `creature_template_addon` SET `bytes1` = 7, `auras` = NULL WHERE `entry` = 23705; -- UnitFlags 33587968, Faction 35

-- Hexxer Corpse 23716
UPDATE `creature` SET `DeathState` = 0 WHERE `id` = 23716;
UPDATE `creature_template_addon` SET `bytes1` = 7, `auras` = NULL WHERE `entry` = 23716; -- UnitFlags 33587968, Faction 35

-- Murkblood Miner 23287 (some are alive)
UPDATE `creature` SET `DeathState` = 0 WHERE `id` = 23287;
REPLACE INTO `creature_addon` (`guid`, `auras`) SELECT `guid`, '31261' FROM `creature` WHERE `guid` IN (
52029,52028,52027,52026,52025,140705,140706,140707,140708,140709,140710,140711,140712,140713,140714,140715,
140716,140717,140718,140719,140720,140721,140722,140723,140724,140725,140726,140727,140728,140729,140730,
140731,140732,140733,140734,140735,140736,140737,140738,140739,140740,140741,140742,140743,140744,140745,
140746,140747,140748,140749,140750,140751,140752,140753,140754,127324,127325,127326,127327,127328,127329,
127330,127331,127332,127333,127334,127335,127336,127337,127340,127341,127342,127343,127344,127345,127346);

-- Black Temple Npcs that are dead have special unitflags
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (10001,10002); -- 10000+ tbc range
INSERT INTO `creature_spawn_data_template` (`entry`, `UnitFlags`) VALUES
(10001, 33587200),
(10002, 33587264);

-- ToDo: Drop currentwaypoint & DeathState

