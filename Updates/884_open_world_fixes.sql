/* DBScriptData
DBName: 0 Eastern Kingdoms / 1 Kalimdor / 530 Outland
DBScriptName: -
DB%Complete: 0
DBComment:
EndDBScriptData */

-- ============================================================================================================================================================
-- creature(_template) which need adjustments to their creature(_template) or (movement) or (movement_template) or (_addon) or (_template_addon)
-- ============================================================================================================================================================

-- =====================================================================================================
-- Map: 0 Eastern Kingdoms & Map: 1 Kalimdor
-- =====================================================================================================

-- Creatures with bytes1 = UNIT_STAND_STATE_SLEEP (3) and Random Movement
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (14081,14096,14108,14116,14117,14119,14166,14174,14175,14187,14256,14538,14546,14548,32267);

-- Creatures with bytes1 = UNIT_STAND_STATE_KNEEL (8) and Random Movement
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (14538,14546,31940);

-- Stonetusk Boar 113
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 113);
DELETE FROM `creature_template_addon` WHERE `entry` = 113;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (113, 0, 0, 1, 16, 0, 0, NULL);

-- Dark Iron Tunneler 1053
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1053);
DELETE FROM `creature_template_addon` WHERE `entry` = 1053;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (1053, 0, 0, 1, 16, 0, 0, '7164'); -- bytes1 1179648

-- Mo'grosh Enforcer 1179
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1179);
DELETE FROM `creature_template_addon` WHERE `entry` = 1179;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (1179, 0, 0, 1, 16, 0, 0, '7165'); -- bytes1 1114112

-- Syndicate Spy 2242
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2242);
DELETE FROM `creature_template_addon` WHERE `entry` = 2242;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2242, 0, 33554432, 1, 16, 0, 0, '22766'); -- bytes1 33554432

-- Syndicate Assassin 2246
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2246);
DELETE FROM `creature_template_addon` WHERE `entry` = 2246;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2246, 0, 33554432, 1, 16, 0, 0, '22766 7276'); -- bytes1 33554432

-- Syndicate Highwayman 2586
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2586);
DELETE FROM `creature_template_addon` WHERE `entry` = 2586;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2586, 0, 33554432, 1, 16, 0, 0, '22766'); -- bytes1 33554432

-- Silvermane Stalker 2926
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2926);
DELETE FROM `creature_template_addon` WHERE `entry` = 2926;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2926, 0, 33554432, 1, 16, 0, 0, '6408'); -- bytes1 33554432

-- Felmusk Shadowstalker 3763
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 3763);
DELETE FROM `creature_template_addon` WHERE `entry` = 3763;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (3763, 0, 33554432, 1, 16, 0, 0, '22766'); -- bytes1 131072

-- Jadefire Shadowstalker 7110
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 7110);
DELETE FROM `creature_template_addon` WHERE `entry` = 7110;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (7110, 0, 33554432, 1, 16, 0, 0, '6408'); -- bytes1 33554432

-- Frostsaber Stalker 7432
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 7432);
DELETE FROM `creature_template_addon` WHERE `entry` = 7432;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (7432, 0, 33554432, 1, 16, 0, 0, '6408'); -- bytes1 131072

-- Ashenvale Outrunner 12856
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12856);
DELETE FROM `creature_template_addon` WHERE `entry` = 12856;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (12856, 0, 33554432, 1, 16, 0, 0, '20540'); -- bytes1 131072

-- Scarshield Quartermaster 9046 - http://www.wowhead.com/npc=9046/scarshield-quartermaster#comments:id=599352
UPDATE `creature` SET `spawntimesecsmin` = 600, `spawntimesecsmax` = 900 WHERE `guid` = 248 AND `id` = 9046;

-- =====================================================================================================
-- Map: 530 Outland
-- =====================================================================================================

-- Creatures with bytes1 = UNIT_STAND_STATE_SIT_CHAIR (2) and Random Movement
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (71260,71272,71276,71279,71281,71282,71287,71300,71301,71306); -- might all be wrong bytes1

-- Creatures with bytes1 = UNIT_STAND_STATE_SLEEP (3) and Random Movement
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (63288,63291,63301,71424);

-- Creatures with bytes1 = UNIT_STAND_STATE_KNEEL (8) and Random Movement
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (58207,58209,67288,67289,67298,67301,67302,67357,67358,67371,70740,70745,70748,70755,70764,70770,70774,70775,70781,70785,70787,70790,70791,71638,71639,71640,71647,71682,71696,71943,71956,71958,71965,76555);

-- =====================================================================================================
-- Cleanup
-- =====================================================================================================

DELETE FROM `creature` WHERE `guid` IN (68988,73192,82379);
DELETE FROM `creature_addon` WHERE `guid` IN (68988,73192,82379);
DELETE FROM `creature_movement` WHERE `id` IN (68988,73192,82379);
DELETE FROM `game_event_creature` WHERE `guid` IN (68988,73192,82379);
DELETE FROM `game_event_creature_data` WHERE `guid` IN (68988,73192,82379);
DELETE FROM `creature_battleground` WHERE `guid` IN (68988,73192,82379);
DELETE FROM `creature_linking` WHERE `guid` IN (68988,73192,82379) OR `master_guid` IN (68988,73192,82379);
DELETE FROM `pool_creature` WHERE `guid` IN (68988,73192,82379);

