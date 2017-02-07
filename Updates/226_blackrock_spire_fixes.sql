-- ----------------------------------
-- CDB-0299
-- https://github.com/cmangos/classic-db/commit/6d5916fe1bed15849e0ca7d97e8797c40c587211
-- ----------------------------------
-- Fixed missing female version of Scarshield Legion creatures in Blackrock Spire
-- Thanks Stan84 for pointing and fixing
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9596, 9599, 9606, 9620, 9630, 9638);
-- Fixed model of male Scarshield raider
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` = 9637;

-- Added missing ModelId2 for Scarshield Legion creatures
UPDATE `creature_template` SET `ModelId2` = 9853 WHERE `entry` = 9045;
UPDATE `creature_model_info` SET `modelid_alternative` = 8898 WHERE `modelid` = 9853;

UPDATE `creature_template` SET `ModelId2` = 9857 WHERE `entry` = 9097;
UPDATE `creature_model_info` SET `modelid_alternative` = 9629 WHERE `modelid` = 9857;

UPDATE `creature_template` SET `ModelId2` = 9863 WHERE `entry` = 9098;
UPDATE `creature_model_info` SET `modelid_alternative` = 9618 WHERE `modelid` = 9863;

UPDATE `creature_template` SET `ModelId2` = 9859 WHERE `entry` = 9258;
UPDATE `creature_model_info` SET `modelid_alternative` = 9637 WHERE `modelid` = 9859;

-- Marked as male the ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 1 WHERE `modelid` IN (9854, 9856, 9858, 9860, 9862, 9864, 9609);
-- Marked as female the alternate ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 0 WHERE `modelid` IN (9855, 9861, 9853, 9857, 9863, 9865, 9859);

-- ----------------------------------
-- CDB-0314
-- https://github.com/cmangos/classic-db/commit/66cfcaf20f91b0390a24bb1f1590f6166fcd51fb
-- ----------------------------------
-- Added support for event in Blackrock Spire of Scarshield Infiltrator morphing into Vaelan
-- Source: http://www.youtube.com/watch?v=VVxOPiDVwNQ

SET @CONDITION := 2022;

-- Added condition for player having item 12219 (Unadorned Seal of Ascension) in his/her inventory
DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 2, 12219, 1);

-- Made Vaelan stand at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10296;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(10296, 0, 0, 1, 16, 0, 0, NULL);

-- Added gossip menu to creature 10296 (Vaelan)
-- Note that:
-- gossip ID are placeholders as correct Vaelan gossip ID is unknown
-- option text are acceptable guess works though they fit into the dialogue with Vaelan
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 15014 AND 15023;
INSERT INTO `gossip_menu` VALUES
(15014, 3301, 0, 0),
(15014, 3311, 0, @CONDITION), 
(15015, 3302, 0, 0),
(15016, 3303, 0, 0),
(15017, 3304, 0, 0),
(15018, 3305, 0, 0),
(15019, 3306, 0, 0),
(15020, 3307, 0, 0),
(15021, 3308, 0, 0),
(15022, 3309, 0, 0),
(15023, 3310, 0, 0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 15014 AND 15022;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(15014, 0, 0, 'Do you mean you are a dragon?', 1, 1, 15015, 0, 0, 0, 0, NULL, 0),
(15015, 0, 0, 'Yes, please.', 1, 1, 15016, 0, 0, 0, 0, NULL, 0),
(15016, 0, 0, 'Tell me.', 1, 1, 15017, 0, 0, 0, 0, NULL, 0),
(15017, 0, 0, 'But Deathwing is gone now.', 1, 1, 15018, 0, 0, 0, 0, NULL, 0),
(15018, 0, 0, 'Continue.', 1, 1, 15019, 0, 0, 0, 0, NULL, 0),
(15019, 0, 0, 'Why don\'t you do it?', 1, 1, 15020, 0, 0, 0, 0, NULL, 0),
(15020, 0, 0, 'Unless?', 1, 1, 15021, 0, 0, 0, 0, NULL, 0),
(15021, 0, 0, 'What must I do?', 1, 1, 15022, 0, 0, 0, 0, NULL, 0),
(15022, 0, 0, 'Continue.', 1, 1, 15023, 0, 0, 0, 0, NULL, 0);

-- Updated creature 10296 (Vaelan) to display gossip and stand idle (no random movement)
UPDATE `creature_template` SET `GossipMenuId` = 15014, `NpcFlags` = 3, `MovementType` = 0 WHERE `entry` = 10296;

-- ----------------------------------
-- CDB-0316
-- https://github.com/cmangos/classic-db/commit/1dc560fcdc51169d2a2f700724e91c3a8ef79426
-- ----------------------------------
-- Fixed factions of creatures in Blackrock Spire
-- Many of them were wrong and obviously manually updated
-- Data backported from UDB
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9096;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9097;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9098;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9196;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9197;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9198;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9199;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9200;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9201;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9216;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9217;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9236;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9237;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9239;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9240;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9241;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9257;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9258;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9259;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9260;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9261;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9262;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9263;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9264;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9265;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9266;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9267;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9268;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9269;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9416;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9568;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9583;
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` = 9596;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9692;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9693;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9696;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9716;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9717;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9736;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9817;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9818;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9819;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10083;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10220;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10221;
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 10257;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10299;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10316;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10317;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10318;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10319;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10363;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10366;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10371;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10372;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 10374;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 10375;
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` = 10376;
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` = 10430;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10442;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10447;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 10596;
UPDATE `creature_template` SET `FactionAlliance` = 45, `FactionHorde` = 45 WHERE `entry` = 10602;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10680;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10681;
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 10740;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10742;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 10762;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10814;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10899;

-- ----------------------------------
-- CDB-0317
-- https://github.com/cmangos/classic-db/commit/9298eb61cf046744057c653465d84d7e41ae75fe
-- ----------------------------------
-- Fixed missing female version of Bloodaxe Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1 and fixed models boxing
UPDATE `creature_model_info` SET `gender` = 1, `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9634, 9603, 9626, 9619, 9614);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9633, 9602, 9625, 9617, 9613);

-- Added missing ModelId2 for Bloodaxe Legion creatures
UPDATE `creature_template` SET `ModelId2` = 9881 WHERE `entry` = 9583;
UPDATE `creature_model_info` SET `modelid_alternative` = 9633 WHERE `modelid` = 9881;

UPDATE `creature_template` SET `ModelId2` = 9875 WHERE `entry` = 9692;
UPDATE `creature_model_info` SET `modelid_alternative` = 9602 WHERE `modelid` = 9875;

UPDATE `creature_template` SET `ModelId2` = 9873 WHERE `entry` = 9693;
UPDATE `creature_model_info` SET `modelid_alternative` = 9625 WHERE `modelid` = 9873;

UPDATE `creature_template` SET `ModelId2` = 9883 WHERE `entry` = 9716;
UPDATE `creature_model_info` SET `modelid_alternative` = 9617 WHERE `modelid` = 9883;

UPDATE `creature_template` SET `ModelId2` = 9879 WHERE `entry` = 9717;
UPDATE `creature_model_info` SET `modelid_alternative` = 9613 WHERE `modelid` = 9879;

-- Marked as male the ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 0 WHERE `modelid` IN (9881, 9875, 9873, 9883, 9879);
-- Marked as female the alternate ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 1 WHERE `modelid` IN (9882, 9876, 9874, 9886, 9880);

-- ----------------------------------
-- CDB-0320
-- https://github.com/cmangos/classic-db/commit/1baa79b82558a45e11f7097c2c048435dcaba89e
-- ----------------------------------
-- Fixed missing female version of Firebrand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female 
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9665, 9661, 9645, 9649, 9653, 9657);

-- Fixed alternate modelid_1 & normal modelid_1 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656, 9665, 9661, 9645, 9649, 9653, 9657);

-- Added missing ModelId2 for Firebrand Legion creatures
UPDATE `creature_template` SET `ModelId2` = 9871 WHERE `entry` = 9259;
UPDATE `creature_model_info` SET `modelid_alternative` = 9664 WHERE `modelid` = 9871;

UPDATE `creature_template` SET `ModelId2` = 9884 WHERE `entry` = 9260;
UPDATE `creature_model_info` SET `modelid_alternative` = 9660 WHERE `modelid` = 9884;

UPDATE `creature_template` SET `ModelId2` = 9867 WHERE `entry` = 9261;
UPDATE `creature_model_info` SET `modelid_alternative` = 9644 WHERE `modelid` = 9867;

UPDATE `creature_template` SET `ModelId2` = 9877 WHERE `entry` = 9262;
UPDATE `creature_model_info` SET `modelid_alternative` = 9648 WHERE `modelid` = 9877;

UPDATE `creature_template` SET `ModelId2` = 9869 WHERE `entry` = 9263;
UPDATE `creature_model_info` SET `modelid_alternative` = 9652 WHERE `modelid` = 9869;

UPDATE `creature_template` SET `ModelId2` = 9888 WHERE `entry` = 9264;
UPDATE `creature_model_info` SET `modelid_alternative` = 9656 WHERE `modelid` = 9888;

-- Marked the ModelId2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888);

-- Fixed alternate ModelId2 & normal ModelId2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888, 9872, 9885, 9868, 9878, 9870, 9889);

-- ----------------------------------
-- CDB-1081
-- https://github.com/cmangos/classic-db/commit/c8895a5df7782530859ab9e0fa7b354d441d0030
-- ----------------------------------
UPDATE `creature_template` SET `UnitFlags`='32768', `CreatureTypeFlags`='72', `SpeedWalk`='1' WHERE `Entry`='10177';
UPDATE `creature_template` SET `UnitFlags`='32768', `CreatureTypeFlags`='72', `SpeedWalk`='1' WHERE `Entry`='9701';

-- ----------------------------------
-- CDB-1311
-- https://github.com/cmangos/classic-db/commit/1d83a7ac4e73800083f50471df557fd215c096c8
-- ----------------------------------
-- Fixed stats and flags for creatures summoned by Scarshield Warlocks in Lower Blackrock Spire

-- Burning Imp (9708)
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9708;
-- Burning Felhound (10261)
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10261;
-- Burning Felguard (10263)
UPDATE creature_template SET FactionAlliance=90, FactionHorde=90, SpeedWalk=1 WHERE Entry=10263;

-- ----------------------------------
-- CDB-1545
-- https://github.com/cmangos/classic-db/commit/94b4cb42c8bb3fc35858351a3ad6a542887ce545
-- CDB-1549
-- https://github.com/cmangos/classic-db/commit/40a9d028f1d46d46d2052491e6d62a8edd912097
-- ----------------------------------
-- Fixed stats for some Boss NPCs in Lower Blackrock Spire

-- Gizrul the Slavener
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10268;
-- Highlord Omokk
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9196;
-- Mor Grayhoof
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=16080;
-- Overlord Wyrmthalak
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9568;
-- Quartermaster Zigris
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9736;
-- Shadow Hunter Vosh'gajin
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9236;
-- Urok Doomhowl
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10584;
-- Urok Enforcer
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10601;
-- Urok Ogre Magus
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10602;
-- War Master Voone
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=9237;
-- Scarshield Portal
UPDATE creature_template SET UnitFlags=256+512+33554432 WHERE Entry=9707;

-- ----------------------------------
-- CDB-1547
-- https://github.com/cmangos/classic-db/commit/bf62b0bc64a74fe41c46be8b0d0633371db3d1d8
-- ----------------------------------
DELETE FROM `creature_loot_template` WHERE `item` = 16250;
INSERT INTO `creature_loot_template` VALUES
-- Bosses
(10363, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10220, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9816, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10899, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10430, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9196, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9236, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9219, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10376, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9736, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9568, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9237, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9596, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10509, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9718, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10596, 16250, 2, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
-- Trashs
(10371, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10318, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10317, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10083, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9817, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9692, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9717, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9693, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9716, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9583, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10374, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9263, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9264, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9260, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9262, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9261, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9266, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9268, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9241, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9265, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9269, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9239, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9267, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9217, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9197, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9216, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9198, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9200, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9199, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9258, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9045, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9098, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9257, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9097, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10319, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10366, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10762, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(10372, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9096, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9819, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9818, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking'),
(9240, 16250, 1, 0, 1, 1, 0, 'Formula: Enchant Weapon - Superior Striking');

-- ----------------------------------
-- CDB-297 / WDB-742
-- https://github.com/cmangos/wotlk-db/commit/1167f5bcad288f70402cb4dc8ba6d834eede0432
-- ----------------------------------
-- Quest 'Bijou's Belongings'
-- http://www.wowhead.com/quest=4982 should be Horde only
-- http://www.wowhead.com/quest=5001 should be Alliance only
UPDATE quest_template SET RequiredRaces = 690 WHERE entry = 4982;
UPDATE quest_template SET RequiredRaces = 1101 WHERE entry = 5001;

DELETE FROM `pool_template` WHERE `entry` = 1668;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES 
(1668,1,'QUEST OBJECT - Bijou''s Belongings - 175334');

DELETE FROM `pool_gameobject_template` WHERE `id` = 175334;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(175334,1668,0,'Bijou''s Belongings');

-- ----------------------------------
-- CDB-1389
-- https://github.com/cmangos/classic-db/commit/4b39c7757943444022c253b15f0a479786ffec8c
-- ----------------------------------

UPDATE `item_template` SET `name` = 'Monster - Spear, Sharp Thin' WHERE `entry` = 6680;
UPDATE `item_template` SET `name` = 'Monster - Staff, Large Metal Shaft' WHERE `entry` = 5304;
UPDATE `item_template` SET `name` = 'Monster - Mace, Spiked Heavy' WHERE `entry` = 3361;
UPDATE `item_template` SET `name` = 'Monster - Shield, Kite Metal' WHERE `entry` = 1984;
UPDATE `item_template` SET `name` = 'Monster - Staff, Metal /w Spike Crystal' WHERE `entry` = 5277;
UPDATE `item_template` SET `name` = 'Monster - Mace2H, Wood Handle Large Spiked Head' WHERE `entry` = 5300;
UPDATE `item_template` SET `name` = 'Monster - Sword, Horde Jagged Brown' WHERE `entry` = 12297;
UPDATE `item_template` SET `name` = 'Monster - Staff, Ornate Warlock Staff' WHERE `entry` = 2559;
UPDATE `item_template` SET `name` = 'Monster - Sword, Red Long' WHERE `entry` = 10825;
UPDATE `item_template` SET `name` = 'Monster - Spear, Rusty' WHERE `entry` = 2023;

-- Blackhand Assassin
UPDATE `creature_template` SET `EquipmentTemplateId`='10318' WHERE `entry`='10318';

DELETE FROM `creature_equip_template` WHERE `entry`='10318';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10318', '12297', '12298', '0');

-- Blackhand Iron Guard
UPDATE `creature_template` SET `EquipmentTemplateId`='10319' WHERE `entry`='10319';

DELETE FROM `creature_equip_template` WHERE `entry`='10319';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10319', '12304', '1984', '0');

DELETE FROM `item_template` WHERE `entry`='12304';
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(12304,2,7,-1,'Monster - Sword, Horde Broad Pointed',22378,0,0,1,0,0,13,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'',0,0,0,0,0,0);

-- Blackhand Thug
UPDATE `creature_template` SET `EquipmentTemplateId`='10762' WHERE `entry`='10762';

DELETE FROM `creature_equip_template` WHERE `entry`='10762';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10762', '12788', '0', '0');

DELETE FROM `item_template` WHERE `entry`='12788';
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(12788,2,4,-1,'Monster - Mace, Horde Bone Spike Hammer',23255,0,0,1,0,0,13,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'',0,0,0,0,0,0);

-- Summoned Blackhand Dreadweaver
UPDATE `creature_template` SET `EquipmentTemplateId`='10680' WHERE `entry`='10680';

DELETE FROM `creature_equip_template` WHERE `entry`='10680';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10680', '2559', '0', '0');

-- Rookery Guardian
UPDATE `creature_template` SET `EquipmentTemplateId`='10258' WHERE `entry`='10258';

DELETE FROM `creature_equip_template` WHERE `entry`='10258';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10258', '10825', '0', '0');

-- Chromatic Elite Guard
UPDATE `creature_template` SET `EquipmentTemplateId`='10814' WHERE `entry`='10814';

DELETE FROM `creature_equip_template` WHERE `entry`='10814';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10814', '12331', '0', '0');

DELETE FROM `item_template` WHERE `entry`='12331';
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(12331,2,8,-1,'Monster - Sword2H, Horde Massive Green',22402,0,0,1,0,0,17,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'',0,0,0,0,0,0);

-- General Drakkisath
UPDATE `creature_template` SET `EquipmentTemplateId`='10363' WHERE `entry`='10363';

DELETE FROM `creature_equip_template` WHERE `entry`='10363';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10363', '12755', '0', '0');

DELETE FROM `item_template` WHERE `entry`='12755';
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(12755,2,8,-1,'Monster - Sword2H, Blackblade of Shahram',22906,0,0,1,0,0,17,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'',0,0,0,0,0,0);

-- Warchief Rend Blackhand
UPDATE `creature_template` SET `EquipmentTemplateId`='10429' WHERE `entry`='10429';

DELETE FROM `creature_equip_template` WHERE `entry`='10429';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10429', '12338', '0', '0');

DELETE FROM `item_template` WHERE `entry`='12338';
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(12338,2,6,-1,'Monster - Polearm, Rend Blackhand',22411,0,0,1,0,0,17,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'',0,0,0,0,0,0);

-- Goraluk Anvilcrack
UPDATE `creature_template` SET `EquipmentTemplateId`='10899' WHERE `entry`='10899';

DELETE FROM `creature_equip_template` WHERE `entry`='10899';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10899', '12788', '0', '0');

-- Christmas Warchief Rend Blackhand
UPDATE `creature_template` SET `EquipmentTemplateId`='15776' WHERE `entry`='15776';

DELETE FROM `creature_equip_template` WHERE `entry`='15776';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('15776', '12338', '0', '0');

-- Christmas Goraluk Anvilcrack
UPDATE `creature_template` SET `EquipmentTemplateId`='15796' WHERE `entry`='15796';

DELETE FROM `creature_equip_template` WHERE `entry`='15796';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('15796', '12788', '0', '0');

-- Solakar Flamewreath
UPDATE `creature_template` SET `EquipmentTemplateId`='10429' WHERE `entry`='10429';

DELETE FROM `creature_equip_template` WHERE `entry`='10429';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10429', '2023', '0', '0');

-- Lord Victor Nefarius
UPDATE `creature_template` SET `EquipmentTemplateId`='10162' WHERE `entry`='10162';

DELETE FROM `creature_equip_template` WHERE `entry`='10162';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('10162', '19404', '0', '0');

DELETE FROM `item_template` WHERE `entry` = 19404;
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`name`,`displayid`,`Quality`,`Flags`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`dmg_min3`,`dmg_max3`,`dmg_type3`,`dmg_min4`,`dmg_max4`,`dmg_type4`,`dmg_min5`,`dmg_max5`,`dmg_type5`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`Duration`,`ExtraFlags`) VALUES 
(19404,2,4,'Monster - Mace, The Hand of Nefarius',31935,0,0,1,0,0,13,-1,-1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0);

-- ----------------------------------
-- https://github.com/cmangos/classic-db/blob/315a3ac03da7b728793f5b8d13009e4b7839bed6/updates/0294_areatrigger_teleport.sql
-- ----------------------------------
-- Thanks Ela for fixing
-- Lower Blackrock Spire fall out teleport. Currently if you fall out of lbrs you do not get teleported, therefore you can fall through the world
DELETE FROM `areatrigger_teleport` WHERE `id` = 2068;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(2068, 'Blackrock Spire - Fall out', 0, 0, 0, 0, 0, -7524.19, -1230.13, 285.743, 2.09544);

-- ----------------------------------
-- Port some equip templates from classic-db
-- ----------------------------------
DELETE FROM `creature_equip_template` WHERE `entry`=9262;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (9262, 1906, 0, 0); -- Firebrand Invoker
DELETE FROM `creature_equip_template` WHERE `entry`=9269;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (9269, 12328, 0, 0); -- Smolderthorn Seer
DELETE FROM `creature_equip_template` WHERE `entry`=9261;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (9261, 10619, 0, 0); -- Firebrand Darkweaver

UPDATE `creature_template` SET `EquipmentTemplateId`=9262 WHERE `entry`=9262;
UPDATE `creature_template` SET `EquipmentTemplateId`=9269 WHERE `entry`=9269;
UPDATE `creature_template` SET `EquipmentTemplateId`=9261 WHERE `entry`=9261;

