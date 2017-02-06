DROP PROCEDURE IF EXISTS script_npc;

DELIMITER $$  
CREATE PROCEDURE script_npc(npc_guid INT, npc_script_id INT)

    BEGIN
    DECLARE PX FLOAT Default 0 ;
    DECLARE PY FLOAT Default 0 ;
    DECLARE PZ FLOAT Default 0 ;
    DECLARE PO FLOAT Default 0 ;
    SET PX = (SELECT position_x FROM creature WHERE guid = npc_guid);
    SET PY = (SELECT position_y FROM creature WHERE guid = npc_guid);
    SET PZ = (SELECT position_z FROM creature WHERE guid = npc_guid);
    SET PO = (SELECT orientation FROM creature WHERE guid = npc_guid);
    DELETE FROM creature_movement WHERE id = npc_guid;
    INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,script_id, waittime) VALUES
    (npc_guid,1,PX,PY,PZ,PO,npc_script_id, 2000);

    UPDATE creature SET MovementType=2,spawndist=0 WHERE guid=npc_guid;

END $$

-- Generic scripts for groups of Scarshield NPCs chatting
-- Two legionnaires, one warlock, one spell binder
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909701;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909701, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909701, 6, 1, 1, 0, 0, 0, 0, 11, 21, 6, 0, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909701, 15, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909701, 21, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909701, 33, 1, 1, 0, 9097, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909701, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one Spellbinder, one acolyte
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909702;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909702, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909702, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909702, 21, 1, 1, 0, 9045, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Acolyte random emote'),
(909702, 33, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909702, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one warlock, one acolyte
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909703;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909703, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909703, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909703, 21, 1, 1, 0, 9045, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Acolyte random emote'),
(909703, 33, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909703, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one warlock, one Spellbinder
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909704;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909704, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909704, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Legionnaire random emote'),
(909704, 21, 1, 1, 0, 9257, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Warlock random emote'),
(909704, 33, 1, 1, 0, 9098, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Scarshield Spellbinder random emote'),
(909704, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Generic scripts for NPC drinking/eating (different timers)
DELETE FROM `dbscripts_on_creature_movement` WHERE id=909705;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909705, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909705, 2, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909705, 19, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id=909706;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909706, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909706, 9, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909706, 20, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE id=909707;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(909707, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(909707, 18, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'eat/drink emote'),
(909707, 21, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');


-- Various classic-db ports

-- Update Overlord Wyrmthalak's position (from classic-db)
UPDATE `creature` SET `position_x`=-22.6325,`position_y`=-486.186,`position_z`=90.7531,`orientation`=3.14159 WHERE `guid`=45757;

-- ----------------------------------
-- https://github.com/cmangos/classic-db/blob/315a3ac03da7b728793f5b8d13009e4b7839bed6/updates/0294_areatrigger_teleport.sql
-- ----------------------------------
-- Thanks Ela for fixing
-- Lower Blackrock Spire fall out teleport. Currently if you fall out of lbrs you do not get teleported, therefore you can fall through the world
DELETE FROM `areatrigger_teleport` WHERE `id` = 2068;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(2068, 'Blackrock Spire - Fall out', 0, 0, 0, 0, 0, -7524.19, -1230.13, 285.743, 2.09544);

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/594cfa91dd8cf21af4ad8553fa3e1c86a6de6c08
-- ----------------------------------
-- q.4867 'Urok Doomhowl'
-- Missing oblects added - empty guids reused -- UDB ONLY
DELETE FROM gameobject WHERE guid IN (66197,66201,66203,66204,66208,66209,66210,66211);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- Ogre Coup Summoning Circle
( 66197, 175571, 229, -47.9095, -369.089, 51.5425, 1.378809, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66201, 175571, 229, -27.8804, -385.891, 48.5067, 3.700105, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66203, 175571, 229, -13.7275, -384.816, 48.9746, 3.68265, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66204, 175571, 229, -12.3689, -376.475, 49.335, 5.044002, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66208, 175571, 229, -24.8824, -369.619, 49.7059, 3.403396, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66209, 175571, 229, -34.5437, -370.233, 50.3396, 5.358161, 0, 0, 0.835255, -0.549863, -65, 255, 1),
-- Challenge to Urok
( 66210, 175584, 229, -14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, -7200, 255, 1),
-- Challenge to Urok Trap
( 66211, 175589, 229, -14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, 30, 255, 1);
-- Urok's Tribute Pile - position Y corrected
UPDATE gameobject SET position_y = -395.729 WHERE guid = 99791;
-- updates for all ogres in this event 
UPDATE creature_template SET FactionAlliance = 40, FactionHorde = 40, MovementType = 2, ExtraFlags = 0 WHERE entry IN (10584,10601,10602);
DELETE FROM creature_movement_template WHERE entry IN (10584,10601,10602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10584,1,-18.9341,-389.926,48.6219,1000,1058401,255,0,0),
(10601,1,-18.9341,-389.926,48.6219,1000,1060101,255,0,0),
(10602,1,-18.9341,-389.926,48.6219,1000,1060201,255,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1058401,1060101,1060201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1058401,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060101,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060201,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random');

-- event
DELETE FROM dbscripts_on_event WHERE id = 4845;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4845,0,9,66210,7200,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66197,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66201,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66203,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66204,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66208,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66209,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
-- wave 1
(4845,5,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-16.12, -376.99, 49.20, 4.89,'summon ENFORCER'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-25.13, -376.60, 48.94, 5.17,'summon ENFORCER'),
-- wave 2
(4845,13,10,10602,432000,0,0,0,1,0,0,0,-14.93, -381.99, 49.04, 4.70,'summon MAGUS'),
(4845,28,10,10602,432000,0,0,0,1,0,0,0,-35.47, -371.36, 50.22, 4.79,'summon MAGUS'),
(4845,28,10,10601,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon ENFORCER'),
-- wave 3
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-14.58, -375.16, 49.31, 4.73,'summon MAGUS'),
(4845,42,10,10601,432000,0,0,0,1,0,0,0,-24.91, -376.41, 48.95, 4.67,'summon ENFORCER'),
-- Urok
(4845,58,10,10602,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon MAGUS'),
(4845,66,10,10584,432000,0,0,0,1,0,0,0,-23.97, -391.89, 48.58, 1.68,'summon Urok');

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/66cfcaf20f91b0390a24bb1f1590f6166fcd51fb
-- ----------------------------------
-- Added support for event in Blackrock Spire of Scarshield Infiltrator morphing into Vaelan
-- Source: http://www.youtube.com/watch?v=VVxOPiDVwNQ

-- Adjusted Scarshield Infiltrator position
UPDATE `creature` SET `position_x` = 56.797, `position_y` = -400.285, `position_z` = 64.348, `orientation` = 3.169 WHERE `guid` = 42798;

-- Made Scarshiel Infiltrator kneel at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10299;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(10299, 0, 8, 1, 16, 0, 0, NULL);

SET @CONDITION := 2021;

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

-- Removed Vaelan from game as it is spawned via script
DELETE FROM `creature` WHERE `id` = 10296;


-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/6737ca8dfe5d5c7107abfc5113071d994dbdf12b
-- ----------------------------------
DELETE FROM `gameobject` WHERE `guid` IN (87911, 87977, 87978);
INSERT INTO `gameobject` VALUES
(87911, 175334, 229, 1, 33.7166, -466.067, -18.4651, -1.53589, 0, 0, 0, 0, 25, 100, 1),
(87977, 175334, 229, 1, -78.5492, -402.515, -18.935, 5.53805, 0, 0, 0.36401, -0.931395, 25, 100, 1),
(87978, 175334, 229, 1, -9.06949, -462.313, -18.6442, 3.13474, 0, 0, 0.999994, 0.00342519, 25, 100, 1);
UPDATE `gameobject` SET `animprogress`=100, `spawntimesecs`=25 WHERE `guid`=82614;

-- Created pool for Bijou's belongings
DELETE FROM `pool_template` WHERE `entry` = 1668;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1668, 1, 'QUEST OBJECT - Bijous Belongings - 175334');
DELETE FROM `pool_gameobject_template` WHERE `id` = 175334;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (175334, 1668, 0, 'Bijous Belongings');

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/1d83a7ac4e73800083f50471df557fd215c096c8
-- ----------------------------------
-- Fixed stats and flags for creatures summoned by Scarshield Warlocks in Lower Blackrock Spire

-- Burning Imp (9708)
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=1.4, MinMeleeDmg=92, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9708;
-- Burning Felhound (10261)
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=2.0, MinMeleeDmg=111, MaxMeleeDmg=150, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2400 WHERE Entry=10261;
-- Burning Felguard (10263)
UPDATE creature_template SET FactionAlliance=90,FactionHorde=90, Rank=2, SpeedWalk=1, DamageMultiplier=4.5, MinMeleeDmg=110, MaxMeleeDmg=149, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2300, RangedBaseAttackTime=2300 WHERE Entry=10263;

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/c8895a5df7782530859ab9e0fa7b354d441d0030
-- ----------------------------------
UPDATE `creature_template` SET `MinLevel`='58', `UnitFlags`='32768', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='1.35', `ArmorMultiplier`='1', `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3435', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='10177';
UPDATE `creature_template` SET `MinLevel`='58', `UnitFlags`='32768', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='1.35', `ArmorMultiplier`='1', `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3435', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9701';


-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/94b4cb42c8bb3fc35858351a3ad6a542887ce545
-- https://github.com/cmangos/classic-db/commit/40a9d028f1d46d46d2052491e6d62a8edd912097
-- ----------------------------------
-- Fixed stats for some Boss NPCs in Lower Blackrock Spire

-- Gizrul the Slavener
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=6.5, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10268;

-- Bannok Grimaxe
UPDATE creature_template SET DamageMultiplier=1.25, MinMeleeDmg=122, MaxMeleeDmg=162, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2000 WHERE Entry=9596;

-- Ghok Bashguud
UPDATE creature_template SET DamageMultiplier=3.9, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9718;

-- Halycon
UPDATE creature_template SET DamageMultiplier=6.5, MinMeleeDmg=56, MaxMeleeDmg=74, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=1100, RangedBaseAttackTime=2000 WHERE Entry=10220;

-- Highlord Omokk
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=163, MaxMeleeDmg=216, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=3200, RangedBaseAttackTime=2000 WHERE Entry=9196;

-- Mor Grayhoof
UPDATE creature_template SET MinLevel=60, SpeedWalk=1, HealthMultiplier=19, PowerMultiplier=15, ArmorMultiplier=1, DamageMultiplier=8.4, MinMeleeDmg=93, MaxMeleeDmg=128, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=16080;

-- Overlord Wyrmthalak
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=7.0, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9568;

-- Quartermaster Zigris
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=102, MaxMeleeDmg=135, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9736;

-- Shadow Hunter Vosh'gajin
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=8.0, MinMeleeDmg=60, MaxMeleeDmg=80, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=1300, RangedBaseAttackTime=2000 WHERE Entry=9236;

-- Urok Doomhowl
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=6.66, MinMeleeDmg=116, MaxMeleeDmg=154, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2400, RangedBaseAttackTime=2000 WHERE Entry=10584;

-- Urok Enforcer
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=92, MaxMeleeDmg=125, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=228, RangedAttackPower=23, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10601;

-- Urok Ogre Magus
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=5.0, MinMeleeDmg=86, MaxMeleeDmg=116, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=214, RangedAttackPower=21, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10602;

-- War Master Voone
UPDATE creature_template SET MinLevel=58, MaxLevel=58, SpeedWalk=1, HealthMultiplier=10, PowerMultiplier=1, ArmorMultiplier=1, DamageMultiplier=7.5, MinMeleeDmg=100, MaxMeleeDmg=132, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=9237;

-- Scarshield Portal
UPDATE creature_template SET UnitFlags=256+512+33554432 WHERE Entry=9707;

-- ----------------------------------
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
-- https://github.com/cmangos/classic-db/commit/8516f5d182eaf197ec2258f6d96a48f120233ed0
-- ----------------------------------
-- Added Ogre patrol before Mok'doom entrance in Blackrock Spire
DELETE FROM creature_movement WHERE id=43503;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43503,2, -24.539305,-514.424866,29.163296, 2.98,30000),
(43503,4, -49.821911,-513.863159,29.187195, 0.006,30000);
UPDATE creature SET MovementType=2 WHERE guid=43503;

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/9bdf057a9a30c52c627b81060ac7b3eeb0cd9f00
-- ----------------------------------
-- Added missing patrols for the Firebrand orcs in LBRS

-- Single grunt patrolling all the way
DELETE FROM creature WHERE guid=43764;
DELETE FROM creature_addon WHERE guid=43764;
DELETE FROM creature_movement WHERE id=43764;
DELETE FROM game_event_creature WHERE guid=43764;
DELETE FROM game_event_creature_data WHERE guid=43764;
DELETE FROM creature_battleground WHERE guid=43764;
DELETE FROM creature_linking WHERE guid=43764 OR master_guid=43764;
DELETE FROM creature_movement WHERE id=151421;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(151421,1, -111.519859,-495.227142,-18.456940, 100),
(151421,2, -109.896652,-464.849060,-18.934961, 100),
(151421,3, -84.653816,-439.250580,-18.934961, 100),
(151421,4, -67.780334,-419.889923,-18.934961, 100),
(151421,5, -60.713531,-417.953033,-18.934961, 100),
(151421,6, -9.332710,-420.316162,-18.934961, 100),
(151421,7, -2.238527,-422.439362,-18.934961, 100),
(151421,8, -1.244248,-446.211823,-18.934753, 100),
(151421,9, 19.821653,-447.426331,-18.934378, 100),
(151421,10, 18.931326,-493.151703,-18.483871, 100),
(151421,11, 15.599535,-504.352753,-18.405764, 100),
(151421,12, 16.812010,-512.320251,-18.463589, 100),
(151421,13, 16.011930,-504.230652,-18.412947, 100),
(151421,14, 19.295931,-492.924255,-18.492430, 100),
(151421,15, 19.841694,-448.336029,-18.933733, 100),
(151421,16, -0.717553,-446.633148,-18.934631, 100),
(151421,17, -1.842408,-422.642365,-18.934040, 100),
(151421,18, -9.304630,-420.401215,-18.934040, 100),
(151421,19, -60.141975,-418.226532,-18.934040, 100),
(151421,20, -67.558952,-420.345734,-18.934040, 100),
(151421,21, -84.157814,-439.430664,-18.934040, 100),
(151421,22, -109.428772,-465.330292,-18.934040, 100),
(151421,23, -111.255486,-495.324738,-18.456909, 100);

-- Grunt in the middle of the main corridor patrolling back and forth between two tents
DELETE FROM creature WHERE guid=43767;
DELETE FROM creature_addon WHERE guid=43767;
DELETE FROM creature_movement WHERE id=43767;
DELETE FROM game_event_creature WHERE guid=43767;
DELETE FROM game_event_creature_data WHERE guid=43767;
DELETE FROM creature_battleground WHERE guid=43767;
DELETE FROM creature_linking WHERE guid=43767 OR master_guid=43767;
DELETE FROM creature_movement WHERE id=151424;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime) VALUES
(151424,1, -42.213486,-425.895782,-18.934973, 0.458297, 30*1000),
(151424,2, -53.331005,-413.390137,-18.934973, 2.311048, 30*1000);

-- Patrol of one grunt and one darkweaver patrolling all the way
DELETE FROM creature WHERE guid=43771;
DELETE FROM creature_addon WHERE guid=43771;
DELETE FROM creature_movement WHERE id=43771;
DELETE FROM game_event_creature WHERE guid=43771;
DELETE FROM game_event_creature_data WHERE guid=43771;
DELETE FROM creature_battleground WHERE guid=43771;
DELETE FROM creature_linking WHERE guid=43771 OR master_guid=43771;
DELETE FROM creature WHERE guid=43763;
DELETE FROM creature_addon WHERE guid=43763;
DELETE FROM creature_movement WHERE id=43763;
DELETE FROM game_event_creature WHERE guid=43763;
DELETE FROM game_event_creature_data WHERE guid=43763;
DELETE FROM creature_battleground WHERE guid=43763;
DELETE FROM creature_linking WHERE guid=43763 OR master_guid=43763;
DELETE FROM creature_movement WHERE id=151420;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES 
(151420,1, -111.095695,-457.167389,-18.934425, 100),
(151420,2, -111.467453,-475.041534,-18.539604, 100),
(151420,3, -110.836365,-457.761536,-18.933743, 100),
(151420,4, -90.937553,-443.860382,-18.933743, 100),
(151420,5, -65.725304,-416.266144,-18.933743, 100),
(151420,6, -1.099830,-418.993073,-18.759935, 100),
(151420,7, 0.389136,-443.609253,-18.934147, 100),
(151420,8, 23.756561,-446.480286,-18.934437, 100),
(151420,9, 20.058512,-473.346893,-18.416866, 100),
(151420,10, 19.636366,-497.844696,-18.437708, 100),
(151420,11, 16.802956,-496.517242,-18.383026, 100),
(151420,12, 15.794456,-472.194489,-18.580204, 100),
(151420,13, 19.537477,-449.352936,-18.934959, 100),
(151420,14, -1.293265,-448.573944,-18.935009, 100),
(151420,15, -4.664356,-423.750244,-18.933882, 100),
(151420,16, -24.780350,-420.808136,-18.933882, 100),
(151420,17, -65.957001,-420.163727,-18.933882, 100),
(151420,18, -90.123260,-445.283661,-18.933882, 100);
DELETE FROM creature_linking WHERE guid=151406;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(151406, 151420, 515);

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/40d7c9497d5d5d3cc44f202e3c7915ffcff578c9
-- ----------------------------------
-- Deleted perm. spawned dead minions in UBRS and LBRS 
DELETE FROM creature WHERE guid=45834;
DELETE FROM creature_addon WHERE guid=45834;
DELETE FROM creature_movement WHERE id=45834;
DELETE FROM game_event_creature WHERE guid=45834;
DELETE FROM game_event_creature_data WHERE guid=45834;
DELETE FROM creature_battleground WHERE guid=45834;
DELETE FROM creature_linking WHERE guid=45834 OR master_guid=45834;
DELETE FROM creature WHERE guid=45833;
DELETE FROM creature_addon WHERE guid=45833;
DELETE FROM creature_movement WHERE id=45833;
DELETE FROM game_event_creature WHERE guid=45833;
DELETE FROM game_event_creature_data WHERE guid=45833;
DELETE FROM creature_battleground WHERE guid=45833;
DELETE FROM creature_linking WHERE guid=45833 OR master_guid=45833;
DELETE FROM creature WHERE guid=45832;
DELETE FROM creature_addon WHERE guid=45832;
DELETE FROM creature_movement WHERE id=45832;
DELETE FROM game_event_creature WHERE guid=45832;
DELETE FROM game_event_creature_data WHERE guid=45832;
DELETE FROM creature_battleground WHERE guid=45832;
DELETE FROM creature_linking WHERE guid=45832 OR master_guid=45832;
DELETE FROM creature WHERE guid=45831;
DELETE FROM creature_addon WHERE guid=45831;
DELETE FROM creature_movement WHERE id=45831;
DELETE FROM game_event_creature WHERE guid=45831;
DELETE FROM game_event_creature_data WHERE guid=45831;
DELETE FROM creature_battleground WHERE guid=45831;
DELETE FROM creature_linking WHERE guid=45831 OR master_guid=45831;
DELETE FROM creature WHERE guid=45807;
DELETE FROM creature_addon WHERE guid=45807;
DELETE FROM creature_movement WHERE id=45807;
DELETE FROM game_event_creature WHERE guid=45807;
DELETE FROM game_event_creature_data WHERE guid=45807;
DELETE FROM creature_battleground WHERE guid=45807;
DELETE FROM creature_linking WHERE guid=45807 OR master_guid=45807;
DELETE FROM creature WHERE guid=45806;
DELETE FROM creature_addon WHERE guid=45806;
DELETE FROM creature_movement WHERE id=45806;
DELETE FROM game_event_creature WHERE guid=45806;
DELETE FROM game_event_creature_data WHERE guid=45806;
DELETE FROM creature_battleground WHERE guid=45806;
DELETE FROM creature_linking WHERE guid=45806 OR master_guid=45806;
DELETE FROM creature WHERE guid=43493;
DELETE FROM creature_addon WHERE guid=43493;
DELETE FROM creature_movement WHERE id=43493;
DELETE FROM game_event_creature WHERE guid=43493;
DELETE FROM game_event_creature_data WHERE guid=43493;
DELETE FROM creature_battleground WHERE guid=43493;
DELETE FROM creature_linking WHERE guid=43493 OR master_guid=43493;

-- *********************************************************
-- We were missing a ton of spawns especially around the area at the instance portal. 
-- I deleted and replaced all our existing spawns with the ones from classic-db. 
-- I also moved them to a new GUID range so that they are next to each other instead of random like before.
-- *********************************************************

-- Scarshield Legionnaires
-- Replace all our current ones with data from classic-db. (We were missing 28 of them)
-- Move them to a new GUID range

DELETE FROM `creature` WHERE `id`=9097;
DELETE FROM `creature` WHERE `guid`=42875; -- I left all these deletes for reference of their old guid
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151140, 9097, 229, 0, 0, 61.1247, -437.231, 42.1525, 5.29322, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=42876;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151141, 9097, 229, 0, 0, 66.684, -442.869, 40.768, 2.83099, 7200, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=42879;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151142, 9097, 229, 0, 0, 66.2, -508.76, 29.41, 3.18126, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43457;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151143, 9097, 229, 0, 0, 41.68, -460.86, 24.66, 0.81956, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43458;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151144, 9097, 229, 0, 0, 41.61, -455.02, 26.24, 5.29083, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43461;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151145, 9097, 229, 0, 0, 62.2, -458.45, 24.82, 3.69, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43467;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151146, 9097, 229, 0, 0, 62.5, -565.17, 30.79, 3.24, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43468;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151147, 9097, 229, 0, 0, 81.73, -580.41, 30.79, 4.55571, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43469;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151148, 9097, 229, 0, 0, 81.24, -583.87, 30.79, 1.48402, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43474;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151149, 9097, 229, 0, 0, -2.27374, -587.212, 29.1909, 2.32046, 7200, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43477;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151150, 9097, 229, 0, 0, -60.3966, -585.973, 29.1909, 0.580012, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43478;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151151, 9097, 229, 0, 0, -63.9999, -572.651, 29.1909, 6.18384, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43479;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151152, 9097, 229, 0, 0, -70.37, -575.97, 29.1909, 1.57276, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43480;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151153, 9097, 229, 0, 0, -32.392, -558.642, 29.1909, 5.39921, 7200, 0, 0, 7842, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43481;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151154, 9097, 229, 0, 0, -7.73006, -586.411, 29.1909, 0.711965, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43484;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151155, 9097, 229, 0, 0, -37.8278, -585.13, 29.1909, 1.47773, 7200, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43485;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151156, 9097, 229, 0, 0, -34.1753, -585.505, 29.1909, 6.24981, 7200, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43498;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151157, 9097, 229, 0, 0, -67.1433, -534.974, 29.1909, 3.64778, 7200, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43499;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151158, 9097, 229, 0, 0, 5.88, -523.11, 29.63, 3.44, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43500;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151159, 9097, 229, 0, 0, 0.66, -525.45, 29.48, 0.79, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160050;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151160, 9097, 229, 0, 0, 69.6397, -278.318, 60.6777, 0.296706, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160051;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151161, 9097, 229, 0, 0, 9.05815, -257.731, 65.4136, 0.698132, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160052;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151162, 9097, 229, 0, 0, 90.2249, -280.722, 60.6818, 4.83456, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160053;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151163, 9097, 229, 0, 0, 66.2384, -274.532, 60.7346, 6.23082, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160054;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151164, 9097, 229, 0, 0, 18.861, -285.759, 65.3758, 5.17706, 10800, 5, 0, 7599, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=160055;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151165, 9097, 229, 0, 0, 12.9029, -279, 65.3829, 5.19926, 10800, 5, 0, 7599, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=160056;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151166, 9097, 229, 0, 0, 52.8444, -312.811, 54.0037, 0.575959, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160057;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151167, 9097, 229, 0, 0, 52.1843, -307.34, 54.0019, 5.25344, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160058;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151168, 9097, 229, 0, 0, 46.6778, -270.906, 65.3656, 3.29382, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160059;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151169, 9097, 229, 0, 0, 45.1149, -280.844, 65.3549, 4.18092, 10800, 4, 0, 7599, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=160060;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151170, 9097, 229, 0, 0, 74.9769, -319.471, 55.7844, 6.20161, 10800, 4, 0, 7599, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=160061;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151171, 9097, 229, 0, 0, 51.8909, -287.351, 65.4592, 3.03687, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160062;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151172, 9097, 229, 0, 0, 70.9496, -282.071, 60.6077, 3.89208, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160063;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151173, 9097, 229, 0, 0, 80.2358, -286.308, 60.6998, 0.152765, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160064;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151174, 9097, 229, 0, 0, 83.9848, -287.04, 60.6998, 3.38829, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160065;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151175, 9097, 229, 0, 0, 71.373, -346.424, 60.702, 6.12824, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160066;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151176, 9097, 229, 0, 0, 51.745, -307.42, 53.919, 5.666, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160068;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151177, 9097, 229, 0, 0, 8.8431, -326.523, 48.8573, 5.11381, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160069;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151178, 9097, 229, 0, 0, 81.6109, -325.341, 55.8671, 1.79769, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160070;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151179, 9097, 229, 0, 0, 30.9196, -399.683, 48.7868, 2.8416, 10800, 0, 0, 7599, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160071;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151180, 9097, 229, 0, 0, 90.1113, -354.348, 60.7854, 4.4855, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160072;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151181, 9097, 229, 0, 0, 91.5369, -361.906, 60.7854, 2.25148, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160073;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151182, 9097, 229, 0, 0, 102.172, -308.932, 54.0022, 5.91667, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160074;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151183, 9097, 229, 0, 0, 107.024, -306.314, 54.0037, 4.2237, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160075;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151184, 9097, 229, 0, 0, 94.6544, -275.047, 60.7526, 3.14159, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160076;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151185, 9097, 229, 0, 0, 107.279, -324.247, 54.0037, 3.50811, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160077;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151186, 9097, 229, 0, 0, 14.2494, -254.14, 65.4355, 3.68265, 10800, 0, 0, 7599, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160078;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151187, 9097, 229, 0, 0, 6.909, -271.978, 65.4107, 0.20944, 10800, 0, 0, 7599, 0, 0, 0);
-- creature_addons
DELETE FROM `creature_addon` WHERE `guid` IN(151155,151156,151162,151163,151168,151176,151181,151183,151184,151185,151187);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151155, 0, 3, 1, 16, 0, 0, '6606');
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151156, 0, 3, 1, 16, 0, 0, '6606');
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151162, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151163, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151168, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151176, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151181, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151183, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151184, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151185, 0, 1, 1, 16, 0, 0, NULL);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (151187, 0, 1, 1, 16, 0, 0, NULL);


-- The wrong creature had this waypoint. As you can see in this video, https://youtu.be/NdA2fjMllxU?t=23s,
-- the creature used for this waypoint in classic-db shows as standing still in a room, but later you see a different one on this patrol.
-- Also the follower spawned too far away, so the linking distance was too large. I moved them both close to the first waypoint and added a new spawn for the room.
-- To be clear these two are guessed coordinates, but at least it's much better than the old ones.
DELETE FROM `creature` WHERE `guid`=151188;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151188, 9097, 229, 0, 0, 52.8444, -312.811, 54.0037, 0.575959, 10800, 0, 0, 7599, 0, 0, 0);
UPDATE `creature` SET `position_x`=44.270863, `position_y`=-326.399536, `position_z`=53.785858, `orientation`=3.214195 WHERE `guid`=151166;
UPDATE `creature` SET `position_x`=44.404659, `position_y`=-328.144409, `position_z`=53.847588, `orientation`=3.214195 WHERE `guid`=151167;

-- Missing Scarshield Legionnaire movement. Ported from classic-db
DELETE FROM `creature_movement` WHERE `id`=151166;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 1, 41.5168, -327.276, 53.7463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 2, 34.5769, -329.267, 53.6296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 3, 22.0622, -329.214, 48.7563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 4, 18.7198, -332.48, 48.7262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 5, 18.6102, -346.358, 48.6756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 6, 20.2517, -349.204, 48.6731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 7, 35.1303, -349.151, 48.6754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 8, 37.1637, -352.389, 48.6782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 9, 37.2667, -364.091, 48.6567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 10, 37.1637, -352.389, 48.6782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 11, 35.1303, -349.151, 48.6754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 12, 20.2517, -349.204, 48.6731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 13, 18.6102, -346.358, 48.6756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 14, 18.7198, -332.48, 48.7262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 15, 22.0622, -329.214, 48.7563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 16, 34.5769, -329.267, 53.6296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 17, 41.5168, -327.276, 53.7463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151166, 18, 53.4595, -325.36, 53.916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_linking` WHERE `guid`=151167;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (151167, 151166, 515);

DELETE FROM `creature_movement` WHERE `id`=151172;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151172, 1, 72.5072, -281.783, 60.6237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151172, 2, 87.1247, -283.336, 60.6086, 29000, 0, 0, 0, 0, 0, 0, 7, 0, 6.097, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151172, 3, 86.7408, -283.049, 60.6107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151172, 4, 70.9496, -282.071, 60.6077, 24000, 0, 0, 0, 0, 0, 0, 69, 0, 3.777, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=151173;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 1, 89.9381, -286.135, 60.5951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 2, 93.2999, -289.36, 60.5976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 3, 96.0648, -291.15, 60.6264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 4, 97.3805, -295.306, 60.6733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 5, 97.9475, -302.046, 62.4287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 6, 97.9478, -313.342, 65.4635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 7, 96.7286, -316.577, 65.4871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 8, 91.3134, -317.938, 65.4901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 9, 68.4867, -322.16, 65.4549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 10, 65.659, -322.929, 65.4505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 11, 66.2184, -330.474, 64.5625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 12, 66.0258, -334.439, 63.0384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 13, 66.7489, -344.389, 60.702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 14, 94.7288, -344.11, 60.702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 15, 95.9481, -341.314, 60.702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 16, 94.9044, -337.612, 61.8113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 17, 95.2904, -329.295, 65.0196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 18, 93.2917, -324.569, 65.4635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 19, 92.3302, -319.026, 65.4952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 20, 88.1107, -320.541, 65.4697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 21, 77.1285, -321.647, 65.4606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 22, 73.9044, -321.041, 65.4619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 23, 70.8984, -320.856, 65.4615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 24, 67.8924, -320.671, 65.4611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 25, 62.8699, -314.552, 65.4635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 26, 62.3815, -310.165, 65.4635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 27, 62.1636, -298.094, 60.9048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 28, 62.0786, -295.281, 60.7565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 29, 66.5189, -289.695, 60.6581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 30, 71.1994, -288.528, 60.6103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 31, 76.7199, -286.148, 60.667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (151173, 32, 83.9848, -287.04, 60.643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_linking` WHERE `guid`=151174;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (151174, 151173, 515);

-- Scarshield Acolytes
-- Replace all our current ones with data from classic-db. (We were missing 9 of them)
-- Move them to a new GUID range

DELETE FROM `creature` WHERE `id`=9045;
DELETE FROM `creature` WHERE `guid`=42887; -- I left all these deletes for reference of their old guid
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151189, 9045, 229, 0, 0, 62.34, -506.72, 29.36, 4.82745, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=43466;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151190, 9045, 229, 0, 0, 62.11, -561.1, 30.79, 3.24, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=43476;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151191, 9045, 229, 0, 0, -52.6788, -585.094, 29.1909, 2.93307, 7200, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=43487;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151192, 9045, 229, 0, 0, -31.7166, -564.232, 29.1909, 0.821129, 7200, 0, 0, 6273, 2117, 0, 0);
DELETE FROM `creature` WHERE `guid`=43496;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151193, 9045, 229, 0, 0, -68.4459, -539.299, 29.1909, 2.17437, 7200, 0, 0, 6273, 2117, 0, 0);
DELETE FROM `creature` WHERE `guid`=160041;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151194, 9045, 229, 0, 0, 8.43384, -253.377, 65.4404, 5.46288, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160042;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151195, 9045, 229, 0, 0, 17.8031, -277.089, 65.3758, 1.12928, 10800, 4, 0, 6078, 2041, 0, 1);
DELETE FROM `creature` WHERE `guid`=160043;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151196, 9045, 229, 0, 0, 57.8383, -310.132, 54.0015, 3.57792, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160044;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151197, 9045, 229, 0, 0, 80.0859, -353.866, 60.702, 4.12093, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160045;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151198, 9045, 229, 0, 0, 81.9819, -315.561, 55.7843, 5.85476, 10800, 4, 0, 6078, 2041, 0, 1);
DELETE FROM `creature` WHERE `guid`=160046;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151199, 9045, 229, 0, 0, 48.0625, -257.407, 65.4592, 0.418879, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160047;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151200, 9045, 229, 0, 0, 107.633, -311.387, 54.0037, 2.67035, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160048;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151201, 9045, 229, 0, 0, 29.0992, -396.495, 48.8011, 4.53786, 10800, 0, 0, 6078, 2041, 0, 0);
DELETE FROM `creature` WHERE `guid`=160049;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151202, 9045, 229, 0, 0, 107.412, -329.583, 54.0033, 5.20108, 10800, 0, 0, 6078, 2041, 0, 0);

-- Scarshield Spellbinders
-- Replace all our current ones with data from classic-db. (We were missing 9 of them)
-- Move them to a new GUID range

DELETE FROM `creature` WHERE `id`=9098;
DELETE FROM `creature` WHERE `guid`=42877;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151203, 9098, 229, 0, 0, 67.391, -440.77, 40.992, 3.40276, 7200, 0, 0, 6273, 4234, 0, 0);
DELETE FROM `creature` WHERE `guid`=42880;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151204, 9098, 229, 0, 0, 59.14, -509.15, 29.36, 0.1669, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=43459;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151205, 9098, 229, 0, 0, 46.05, -455.24, 26.06, 4.01221, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=43462;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151206, 9098, 229, 0, 0, 62.49, -463.61, 25.4, 3.33, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=43473;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151207, 9098, 229, 0, 0, 71.28, -587.309, 30.604, 6.21996, 7200, 0, 0, 6273, 4234, 0, 0);
DELETE FROM `creature` WHERE `guid`=43483;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151208, 9098, 229, 0, 0, -27.0788, -563.404, 29.1909, 2.86316, 7200, 0, 0, 6273, 4234, 0, 0);
DELETE FROM `creature` WHERE `guid`=43486;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151209, 9098, 229, 0, 0, -2.46548, -580.496, 29.1909, 4.07033, 7200, 0, 0, 6273, 4234, 0, 0);
DELETE FROM `creature` WHERE `guid`=43489;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151310, 9098, 229, 0, 0, -57.2777, -586.384, 29.1909, 1.41175, 7200, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=43497;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151311, 9098, 229, 0, 0, -73.8189, -537.626, 29.1909, 0.107986, 7200, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=43502;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151312, 9098, 229, 0, 0, 5.24, -518.2, 29.53, 3.97, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160079;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151313, 9098, 229, 0, 0, 57.5052, -314.922, 54.0019, 2.26893, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160080;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151314, 9098, 229, 0, 0, 44.0753, -274.978, 65.3712, 2.98813, 10800, 4, 0, 6078, 4082, 0, 1);
DELETE FROM `creature` WHERE `guid`=160081;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151315, 9098, 229, 0, 0, 85.1054, -358.043, 60.702, 3.21588, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160082;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151316, 9098, 229, 0, 0, 52.4136, -255.367, 65.4592, 3.63029, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160083;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151317, 9098, 229, 0, 0, 12.893, -329.743, 48.8472, 3.15905, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160084;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151318, 9098, 229, 0, 0, 102.43, -314.698, 54.0012, 1.06465, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160085;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151319, 9098, 229, 0, 0, 26.0838, -398.582, 48.8248, 6.07375, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160086;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151320, 9098, 229, 0, 0, 105.506, -332.577, 54.0028, 6.23082, 10800, 0, 0, 6078, 4082, 0, 0);
DELETE FROM `creature` WHERE `guid`=160087;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151321, 9098, 229, 0, 0, 14.1216, -259.228, 65.4331, 2.35619, 10800, 0, 0, 6078, 4082, 0, 0);

-- Scarshield Warlock
-- Replace all our current ones with data from classic-db. (We were missing 3 of them)
-- Move them to a new GUID range. Reuse 43470 - 43478 since it was emptied as a result of above deletions

-- Since I'm reusing guids I have to move some deletions up here.
DELETE FROM creature WHERE guid=43470;
DELETE FROM creature_addon WHERE guid=43470;
DELETE FROM creature_movement WHERE id=43470;
DELETE FROM game_event_creature WHERE guid=43470;
DELETE FROM game_event_creature_data WHERE guid=43470;
DELETE FROM creature_battleground WHERE guid=43470;
DELETE FROM creature_linking WHERE guid=43470 OR master_guid=43470;
DELETE FROM creature WHERE guid=43473;
DELETE FROM creature_addon WHERE guid=43473;
DELETE FROM creature_movement WHERE id=43473;
DELETE FROM game_event_creature WHERE guid=43473;
DELETE FROM game_event_creature_data WHERE guid=43473;
DELETE FROM creature_battleground WHERE guid=43473;
DELETE FROM creature_linking WHERE guid=43473 OR master_guid=43473;
DELETE FROM creature WHERE guid=43474;
DELETE FROM creature_addon WHERE guid=43474;
DELETE FROM creature_movement WHERE id=43474;
DELETE FROM game_event_creature WHERE guid=43474;
DELETE FROM game_event_creature_data WHERE guid=43474;
DELETE FROM creature_battleground WHERE guid=43474;
DELETE FROM creature_linking WHERE guid=43474 OR master_guid=43474;
DELETE FROM creature WHERE guid=43475;
DELETE FROM creature_addon WHERE guid=43475;
DELETE FROM creature_movement WHERE id=43475;
DELETE FROM game_event_creature WHERE guid=43475;
DELETE FROM game_event_creature_data WHERE guid=43475;
DELETE FROM creature_battleground WHERE guid=43475;
DELETE FROM creature_linking WHERE guid=43475 OR master_guid=43475;
DELETE FROM creature WHERE guid=43476;
DELETE FROM creature_addon WHERE guid=43476;
DELETE FROM creature_movement WHERE id=43476;
DELETE FROM game_event_creature WHERE guid=43476;
DELETE FROM game_event_creature_data WHERE guid=43476;
DELETE FROM creature_battleground WHERE guid=43476;
DELETE FROM creature_linking WHERE guid=43476 OR master_guid=43476;
DELETE FROM creature WHERE guid=43477;
DELETE FROM creature_addon WHERE guid=43477;
DELETE FROM creature_movement WHERE id=43477;
DELETE FROM game_event_creature WHERE guid=43477;
DELETE FROM game_event_creature_data WHERE guid=43477;
DELETE FROM creature_battleground WHERE guid=43477;
DELETE FROM creature_linking WHERE guid=43477 OR master_guid=43477;
DELETE FROM creature WHERE guid=43478;
DELETE FROM creature_addon WHERE guid=43478;
DELETE FROM creature_movement WHERE id=43478;
DELETE FROM game_event_creature WHERE guid=43478;
DELETE FROM game_event_creature_data WHERE guid=43478;
DELETE FROM creature_battleground WHERE guid=43478;
DELETE FROM creature_linking WHERE guid=43478 OR master_guid=43478;

DELETE FROM `creature` WHERE `id`=9257;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43470, 9257, 229, 0, 0, 65.1742, -437.335, 41.803, 4.35387, 7200, 0, 0, 6273, 2117, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43471, 9257, 229, 0, 0, 46.17, -461.07, 24.49, 2.1571, 10800, 0, 0, 6078, 2041, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43472, 9257, 229, 0, 0, 75.5058, -587.496, 30.604, 3.12235, 7200, 0, 0, 6273, 2117, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43473, 9257, 229, 0, 0, 57.94, -560.1, 30.77, 6.07, 10800, 0, 0, 6078, 2041, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43474, 9257, 229, 0, 0, 56.67, -565.77, 30.77, 0.16, 10800, 0, 0, 6078, 2041, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43475, 9257, 229, 0, 0, -8.47001, -581.302, 29.1909, 5.28141, 7200, 0, 0, 6273, 2117, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43476, 9257, 229, 0, 0, -53.7342, -579.435, 29.1909, 3.91796, 7200, 0, 0, 6078, 2041, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43477, 9257, 229, 0, 0, -1.35, -519.49, 29.43, 6.01, 10800, 0, 0, 6078, 2041, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43478, 9257, 229, 0, 0, 9.25125, -332.557, 48.7951, 1.23918, 10800, 0, 0, 6078, 2041, 0, 0);

-- Spirestone Battle Mage
-- Replace all our current ones with data from classic-db. (We were missing 3 of them)
-- Move them to a new GUID range. Reuse 43479 - 43481 since it was emptied as a result of above deletions

-- Since I'm reusing guids I have to move some deletions up here.
DELETE FROM creature WHERE guid=43479;
DELETE FROM creature_addon WHERE guid=43479;
DELETE FROM creature_movement WHERE id=43479;
DELETE FROM game_event_creature WHERE guid=43479;
DELETE FROM game_event_creature_data WHERE guid=43479;
DELETE FROM creature_battleground WHERE guid=43479;
DELETE FROM creature_linking WHERE guid=43479 OR master_guid=43479;
DELETE FROM creature WHERE guid=43480;
DELETE FROM creature_addon WHERE guid=43480;
DELETE FROM creature_movement WHERE id=43480;
DELETE FROM game_event_creature WHERE guid=43480;
DELETE FROM game_event_creature_data WHERE guid=43480;
DELETE FROM creature_battleground WHERE guid=43480;
DELETE FROM creature_linking WHERE guid=43480 OR master_guid=43480;
DELETE FROM creature WHERE guid=43481;
DELETE FROM creature_addon WHERE guid=43481;
DELETE FROM creature_movement WHERE id=43481;
DELETE FROM game_event_creature WHERE guid=43481;
DELETE FROM game_event_creature_data WHERE guid=43481;
DELETE FROM creature_battleground WHERE guid=43481;
DELETE FROM creature_linking WHERE guid=43481 OR master_guid=43481;

DELETE FROM `creature` WHERE `id`=9197;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43479, 9197, 229, 0, 0, -22.3431, -395.947, 48.6226, 2.7924, 7200, 1, 0, 11135, 11205, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43480, 9197, 229, 0, 0, -16.8941, -385.101, 48.9515, 0.593412, 7200, 1, 0, 11135, 11205, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43481, 9197, 229, 0, 0, -40.6361, -372.216, 50.5612, 0.855211, 7200, 1, 0, 11135, 11205, 0, 1);

-- Spirestone Warlord
-- Replace all our current ones with data from classic-db. (We were missing 3 of them)
-- Move them to a new GUID range. Reuse 43483 - 43488 since it was emptied as a result of above deletions

-- Since I'm reusing guids I have to move some deletions up here.
DELETE FROM creature WHERE guid=43483;
DELETE FROM creature_addon WHERE guid=43483;
DELETE FROM creature_movement WHERE id=43483;
DELETE FROM game_event_creature WHERE guid=43483;
DELETE FROM game_event_creature_data WHERE guid=43483;
DELETE FROM creature_battleground WHERE guid=43483;
DELETE FROM creature_linking WHERE guid=43483 OR master_guid=43483;
DELETE FROM creature WHERE guid=43484;
DELETE FROM creature_addon WHERE guid=43484;
DELETE FROM creature_movement WHERE id=43484;
DELETE FROM game_event_creature WHERE guid=43484;
DELETE FROM game_event_creature_data WHERE guid=43484;
DELETE FROM creature_battleground WHERE guid=43484;
DELETE FROM creature_linking WHERE guid=43484 OR master_guid=43484;
DELETE FROM creature WHERE guid=43485;
DELETE FROM creature_addon WHERE guid=43485;
DELETE FROM creature_movement WHERE id=43485;
DELETE FROM game_event_creature WHERE guid=43485;
DELETE FROM game_event_creature_data WHERE guid=43485;
DELETE FROM creature_battleground WHERE guid=43485;
DELETE FROM creature_linking WHERE guid=43485 OR master_guid=43485;
DELETE FROM creature WHERE guid=43486;
DELETE FROM creature_addon WHERE guid=43486;
DELETE FROM creature_movement WHERE id=43486;
DELETE FROM game_event_creature WHERE guid=43486;
DELETE FROM game_event_creature_data WHERE guid=43486;
DELETE FROM creature_battleground WHERE guid=43486;
DELETE FROM creature_linking WHERE guid=43486 OR master_guid=43486;
DELETE FROM creature WHERE guid=43487;
DELETE FROM creature_addon WHERE guid=43487;
DELETE FROM creature_movement WHERE id=43487;
DELETE FROM game_event_creature WHERE guid=43487;
DELETE FROM game_event_creature_data WHERE guid=43487;
DELETE FROM creature_battleground WHERE guid=43487;
DELETE FROM creature_linking WHERE guid=43487 OR master_guid=43487;
DELETE FROM creature WHERE guid=43488;
DELETE FROM creature_addon WHERE guid=43488;
DELETE FROM creature_movement WHERE id=43488;
DELETE FROM game_event_creature WHERE guid=43488;
DELETE FROM game_event_creature_data WHERE guid=43488;
DELETE FROM creature_battleground WHERE guid=43488;
DELETE FROM creature_linking WHERE guid=43488 OR master_guid=43488;

DELETE FROM `creature` WHERE `id`=9216;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43483, 9216, 229, 0, 0, -79.4547, -523.615, 82.6267, 0.80285, 7200, 0, 0, 13920, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43484, 9216, 229, 0, 0, -49.0348, -427.765, 77.8322, 1.64061, 7200, 0, 0, 13920, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43485, 9216, 229, 0, 0, -19.7833, -365.125, 50.1377, 5.49779, 7200, 0, 0, 13920, 0, 0, 2);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43486, 9216, 229, 0, 0, -29.912, -388.997, 48.7112, 1.81514, 7200, 1, 0, 13920, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43487, 9216, 229, 0, 0, -44.3139, -364.787, 52.0571, 1.8326, 7200, 1, 0, 13920, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43488, 9216, 229, 0, 0, -22.8555, -377.87, 49.0487, 6.16101, 7200, 1, 0, 13920, 0, 0, 1);

DELETE FROM `creature_movement` WHERE `id` IN(43485,44456); -- 44456 is the old guid
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 1, -29.4354, -374.537, 49.2465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 2, -35.8591, -385.568, 48.6559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 3, -46.1924, -393.206, 49.2342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 4, -61.7472, -396.152, 44.5767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 5, -88.6538, -400.578, 37.8984, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 6, -54.4929, -392.754, 46.3396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 7, -32.5814, -377.415, 49.0143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 8, -25.1649, -365.964, 50.3259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 9, -19.7295, -365.061, 50.0607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43485, 10, -19.7295, -365.061, 50.0607, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 5.5676, 0, 0);


-- Scarshield Raider
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range.
DELETE FROM `creature` WHERE `id`=9258;
DELETE FROM `creature` WHERE `guid`=42888;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151322, 9258, 229, 0, 0, 44.95, -495.62, 29.43, 0.72, 10800, 0, 0, 7842, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43463;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151323, 9258, 229, 0, 0, 65.98, -470.9, 26.07, 3.22, 10800, 0, 0, 7842, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43482;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151324, 9258, 229, 0, 0, -60.5682, -548.082, 29.1909, 0.690753, 7200, 0, 0, 7842, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43490;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151325, 9258, 229, 0, 0, -45.94, -554.16, 29.37, 5.51, 10800, 0, 0, 7842, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160095;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151326, 9258, 229, 0, 0, 42.2404, -400.9, 48.789, 1.39626, 10800, 0, 0, 7842, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160096;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151327, 9258, 229, 0, 0, 18.6335, -319.564, 48.9254, 4.69494, 10800, 0, 0, 7842, 0, 0, 0);

-- Scarshield Worg
-- Replace all our current ones with data from classic-db. (We were missing 4 of them)
-- Move them to a new GUID range.
DELETE FROM `creature` WHERE `id`=9416;
DELETE FROM `creature` WHERE `guid`=42889;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151328, 9416, 229, 11420, 0, 41.68, -494.48, 30.16, 0.22, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43456;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151329, 9416, 229, 11420, 0, 47.23, -498.17, 29.38, 1.42, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43464;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151330, 9416, 229, 11420, 0, 61.73, -472.86, 26.34, 3, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43465;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151331, 9416, 229, 11420, 0, 62.06, -468.93, 25.94, 3.63, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43491;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151332, 9416, 229, 11420, 0, -43.61, -555.03, 29.37, 5.48, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43492;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151333, 9416, 229, 11420, 0, -45.76, -557.21, 29.37, 5.54, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43494;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151334, 9416, 229, 11420, 0, -58.96, -550.4, 29.37, 0.89, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43495;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151335, 9416, 229, 11420, 0, -62.87, -545.28, 29.37, 0.46, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160097;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151336, 9416, 229, 0, 0, 44.2465, -401.75, 48.8482, 1.41372, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160098;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151337, 9416, 229, 0, 0, 39.9758, -401.308, 48.734, 1.37881, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160099;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151338, 9416, 229, 0, 0, 15.7057, -319.695, 48.9296, 4.81711, 10800, 0, 0, 3189, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160100;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151339, 9416, 229, 0, 0, 21.6264, -319.307, 48.9218, 4.59022, 10800, 0, 0, 3189, 0, 0, 0);

-- Bloodaxe Veteran
-- Replace all our current ones with data from classic-db. (We were missing 1 of them)
-- Move them to a new GUID range. Reuse 43489 - 43501 since it was emptied as a result of above deletions

-- Since I'm reusing guids I have to move some deletions up here.
DELETE FROM creature WHERE guid=43489;
DELETE FROM creature_addon WHERE guid=43489;
DELETE FROM creature_movement WHERE id=43489;
DELETE FROM game_event_creature WHERE guid=43489;
DELETE FROM game_event_creature_data WHERE guid=43489;
DELETE FROM creature_battleground WHERE guid=43489;
DELETE FROM creature_linking WHERE guid=43489 OR master_guid=43489;
DELETE FROM creature WHERE guid=43496;
DELETE FROM creature_addon WHERE guid=43496;
DELETE FROM creature_movement WHERE id=43496;
DELETE FROM game_event_creature WHERE guid=43496;
DELETE FROM game_event_creature_data WHERE guid=43496;
DELETE FROM creature_battleground WHERE guid=43496;
DELETE FROM creature_linking WHERE guid=43496 OR master_guid=43496;
DELETE FROM creature WHERE guid=43497;
DELETE FROM creature_addon WHERE guid=43497;
DELETE FROM creature_movement WHERE id=43497;
DELETE FROM game_event_creature WHERE guid=43497;
DELETE FROM game_event_creature_data WHERE guid=43497;
DELETE FROM creature_battleground WHERE guid=43497;
DELETE FROM creature_linking WHERE guid=43497 OR master_guid=43497;
DELETE FROM creature WHERE guid=43498;
DELETE FROM creature_addon WHERE guid=43498;
DELETE FROM creature_movement WHERE id=43498;
DELETE FROM game_event_creature WHERE guid=43498;
DELETE FROM game_event_creature_data WHERE guid=43498;
DELETE FROM creature_battleground WHERE guid=43498;
DELETE FROM creature_linking WHERE guid=43498 OR master_guid=43498;

DELETE FROM `creature` WHERE `id`=9583;
DELETE FROM `creature` WHERE `guid`=45815;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43489, 9583, 229, 0, 0, -53.6383, -442.827, 78.2854, 4.70957, 7200, 0, 0, 8613, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=45821;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43490, 9583, 229, 0, 0, -58.8099, -481.005, 77.9991, 4.41568, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45811;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43491, 9583, 229, 0, 0, -56.9907, -427.546, 77.8323, 1.44862, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45819;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43492, 9583, 229, 0, 0, -43.5588, -515.171, 88.5866, 3.70166, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45771;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43493, 9583, 229, 0, 0, -135.985, -298.889, 70.9525, 3.46716, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45775;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43494, 9583, 229, 0, 0, -137.597, -302.617, 70.9524, 2.91659, 7200, 0, 0, 8883, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45776;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43495, 9583, 229, 0, 0, -144.06, -300.461, 70.9524, 4.78584, 7200, 0, 0, 8883, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45784;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43496, 9583, 229, 0, 0, -56.4305, -299.876, 70.9413, 3.96801, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45789;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43497, 9583, 229, 0, 0, -114.808, -295.624, 70.9524, 2.52233, 7200, 0, 0, 8613, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=45795;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43498, 9583, 229, 0, 0, -46.2715, -299.369, 70.9406, 4.84137, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45800;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43499, 9583, 229, 0, 0, -50.3003, -298.146, 70.9406, 6.24567, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45804;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43500, 9583, 229, 0, 0, -56.2781, -338.82, 70.9415, 3.66563, 7200, 0, 0, 8613, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160104;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43501, 9583, 229, 0, 0, -59.6305, -342.961, 70.9415, 1.32436, 7200, 0, 0, 8883, 0, 0, 2);

DELETE FROM `creature_movement` WHERE `id` IN(43489,45815); -- 45815 is the old guid
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 1, -53.7135, -469.51, 77.8413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 2, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 3, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 4, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 5, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 6, -78.755, -497.51, 77.9866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 7, -77.5, -506.46, 79.4722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 8, -73.2358, -515.496, 81.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 9, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 10, -57.8619, -517.623, 86.636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 11, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 12, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 13, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 14, -33.9322, -488.698, 90.6663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 15, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 16, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 17, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 18, -57.8619, -517.623, 86.636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 19, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 20, -73.2358, -515.496, 81.09, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 21, -77.5, -506.46, 79.4722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 22, -78.755, -497.51, 77.9866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 23, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 24, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 25, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 26, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 27, -53.7135, -469.51, 77.8413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43489, 28, -53.3688, -431.997, 78.2854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Bloodaxe Evoker
-- Replace all our current ones with data from classic-db. (We were missing 1 of them)
-- Move them to a new GUID range.
DELETE FROM `creature` WHERE `id`=9692;
DELETE FROM `creature` WHERE `guid`=45759;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151340, 9692, 229, 0, 0, -49.4956, -482.156, 77.9991, 2.37365, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45813;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151341, 9692, 229, 0, 0, -37.5607, -521.641, 87.716, 3.45575, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45490;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151342, 9692, 229, 0, 0, -166.923, -331.402, 64.401, 1.55629, 7200, 0, 0, 8352, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=45745;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151343, 9692, 229, 0, 0, -165.81, -459.49, 87.57, 2.31, 10800, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45766;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151344, 9692, 229, 0, 0, -83.1993, -342.576, 70.9524, 2.65953, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45787;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151345, 9692, 229, 0, 0, -88.3541, -338.735, 70.9511, 1.8791, 7200, 0, 0, 8613, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=160103;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151346, 9692, 229, 0, 0, -48.3513, -331.665, 71.0322, 2.98451, 10800, 0, 0, 8352, 0, 0, 0);

-- Bloodaxe Worg
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range.
DELETE FROM `creature` WHERE `id`=9696;
DELETE FROM `creature` WHERE `guid`=45758;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151347, 9696, 229, 0, 0, -47.1127, -480.153, 77.9991, 2.82743, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45812;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151348, 9696, 229, 0, 0, -51.8879, -483.818, 77.9991, 1.88496, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45761;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151349, 9696, 229, 0, 0, -38.1504, -519.232, 88.0403, 3.36848, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45814;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151350, 9696, 229, 0, 0, -36.2227, -523.632, 87.432, 3.56047, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45491;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151351, 9696, 229, 0, 0, -86.8814, -338.539, 70.9524, 2.06288, 7200, 0, 0, 2784, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45746;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151352, 9696, 229, 0, 0, -166.59, -462.11, 87.57, 2.31, 10800, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45747;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151353, 9696, 229, 0, 0, -163.2, -458.92, 87.57, 2.34, 10800, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45773;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151354, 9696, 229, 0, 0, -168.377, -330.114, 64.4008, 4.79843, 7200, 0, 0, 2784, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45792;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151356, 9696, 229, 0, 0, -89.2504, -339.809, 70.9524, 2.06288, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45793;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151357, 9696, 229, 0, 0, -86.1008, -344.653, 70.9524, 2.22285, 7200, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45794;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151358, 9696, 229, 0, 0, -80.3922, -340.294, 70.9524, 2.22285, 7200, 0, 0, 2784, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=45801;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151359, 9696, 229, 0, 0, -165.692, -329.882, 64.4008, 4.79843, 7200, 0, 0, 2784, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160105;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151360, 9696, 229, 0, 0, -48.098, -329.209, 71.0323, 3.07178, 10800, 0, 0, 2699, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=160106;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151361, 9696, 229, 0, 0, -48.495, -335.444, 71.0313, 2.23402, 10800, 0, 0, 2699, 0, 0, 0);

-- Scarshield Sentries. These ones are outside the instance portal, but I did them too while I was at it.
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range.
DELETE FROM `creature` WHERE `id`=9044;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151362, 9044, 0, 0, 0, -7543.94, -1280.48, 273.24, 0.366519, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151363, 9044, 0, 0, 0, -7575.96, -1279.52, 278.272, 4.66003, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151364, 9044, 0, 0, 0, -7540.21, -1274.36, 273.235, 5.55015, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151365, 9044, 0, 0, 0, -7579.89, -1280.52, 245.605, 3.12414, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151366, 9044, 0, 0, 0, -7574.09, -1318.32, 245.617, 6.24828, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151367, 9044, 0, 0, 0, -7552.64, -1239.98, 285.404, 5.37561, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151368, 9044, 0, 0, 0, -7532.29, -1277.22, 250.551, 2.47837, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151369, 9044, 0, 0, 0, -7578.5, -1240.42, 284.846, 4.53786, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151370, 9044, 0, 0, 0, -7652.35, -1221.21, 287.671, 5.63741, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151371, 9044, 0, 0, 0, -7655.13, -1227, 287.74, 5.96903, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151372, 9044, 0, 0, 0, -7584.25, -1241.37, 284.846, 5.16617, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151373, 9044, 0, 0, 0, -7585.46, -1284.79, 245.394, 2.77507, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151374, 9044, 0, 0, 0, -7546.97, -1279.6, 273.16, 2.85963, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151375, 9044, 0, 0, 0, -7573.4, -1279.34, 278.188, 0.0718153, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151376, 9044, 0, 0, 0, -7548.78, -1276.79, 273.162, -0.861968, 500, 0, 0, 7359, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151377, 9044, 0, 0, 0, -7551.3, -1278.32, 250.532, 6.16482, 500, 0, 0, 7359, 0, 0, 0);

-- Spirestone Reavers. 
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range. Reuse 43456 - 43461 since it was emptied as a result of above deletions
DELETE FROM creature WHERE guid=43520;
DELETE FROM creature_addon WHERE guid=43520;
DELETE FROM creature_movement WHERE id=43520;
DELETE FROM game_event_creature WHERE guid=43520;
DELETE FROM game_event_creature_data WHERE guid=43520;
DELETE FROM creature_battleground WHERE guid=43520;
DELETE FROM creature_linking WHERE guid=43520 OR master_guid=43520;

DELETE FROM `creature` WHERE `id`=9200;
DELETE FROM `creature` WHERE `guid`=43510;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43456, 9200, 229, 11562, 0, -14.58, -352.69, 31.8, 3.1, 10800, 2, 0, 13070, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=43512;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43457, 9200, 229, 11581, 0, -14.17, -326.66, 31.75, 3.11, 10800, 2, 0, 13070, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=43517;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43458, 9200, 229, 11581, 0, -52.41, -306.9, 43.34, 5.53, 10800, 0, 0, 13070, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43520;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43459, 9200, 229, 0, 0, -44.1083, -429.344, 31.7916, 5.42672, 7200, 0, 0, 13070, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=660075;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43460, 9200, 229, 0, 0, -38.0091, -405.164, 31.5373, 1.24134, 7200, 0, 0, 13070, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=660079;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43461, 9200, 229, 0, 0, -30.519, -364.791, 31.6182, 1.34537, 7200, 2, 0, 13070, 0, 0, 1);
-- Update pool with new GUID
UPDATE `pool_creature` SET `guid`=43458 WHERE `guid`=43517 AND `pool_entry`=25549;


-- Smolderthorn Witch Doctors. 
-- Replace all our current ones with data from classic-db. (We were missing 1 of them)
-- Move them to a new GUID range. Reuse 43462 - 43469 since it was emptied as a result of above deletions

DELETE FROM `creature` WHERE `id`=9266;
DELETE FROM `creature` WHERE `guid`=43570;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43462, 9266, 229, 0, 0, -57.48, -454.82, -18.46, 2.55, 10800, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43578;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43463, 9266, 229, 0, 0, -41.1078, -576.433, -18.8398, 0.0357499, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43707;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43464, 9266, 229, 0, 0, -37.1037, -576.521, -18.8406, 3.23075, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43748;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43465, 9266, 229, 0, 0, -74.6853, -578.084, -18.8531, 5.41, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43752;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43466, 9266, 229, 0, 0, -43.84, -519.52, -18.63, 0, 10800, 5, 0, 6477, 2163, 0, 1);
DELETE FROM `creature` WHERE `guid`=43756;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43467, 9266, 229, 0, 0, -32.8316, -477.702, -18.7734, 3.14907, 7200, 0, 0, 6681, 2241, 0, 0);
DELETE FROM `creature` WHERE `guid`=43760;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43468, 9266, 229, 0, 0, -22.8984, -557.704, -18.7822, 6.22312, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=660081;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43469, 9266, 229, 0, 0, -41.2865, -457.887, -18.6442, 0.00433396, 7200, 0, 0, 6681, 2241, 0, 0);

-- Smolderthorn Headhunter. 
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range.

DELETE FROM `creature` WHERE `id`=9241;
DELETE FROM `creature` WHERE `guid`=43560;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151378, 9241, 229, 0, 0, -72.9836, -517.218, -7.14286, 4.7285, 7200, 0, 0, 8352, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43569;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151379, 9241, 229, 0, 0, -1.69604, -479.888, -18.794, 1.42591, 7200, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43571;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151380, 9241, 229, 0, 0, -62.05, -457.34, -18.46, 1.3, 10800, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43575;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151381, 9241, 229, 0, 0, -58.68, -450.553, -18.6442, 4.32324, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43749;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151382, 9241, 229, 0, 0, -19.2464, -563.486, -18.7757, 1.56728, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43750;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151383, 9241, 229, 0, 0, -19.0644, -557.877, -18.778, 4.6806, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43751;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151384, 9241, 229, 0, 0, -38.63, -525.21, -18.63, 1.59, 10800, 5, 0, 8097, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=43753;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151385, 9241, 229, 0, 0, -33.38, -519.36, -18.63, 3.09, 10800, 5, 0, 8097, 0, 0, 1);
DELETE FROM `creature` WHERE `guid`=660082;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151386, 9241, 229, 0, 0, -37.2773, -461.396, -18.6442, 2.44535, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=660086;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151387, 9241, 229, 0, 0, -1.07454, -517.358, -7.14288, 4.66332, 7200, 0, 0, 8097, 0, 0, 2);

-- Smolderthorn Shadow Hunters
-- Replace all our current ones with data from classic-db. (We were missing 2 of them)
-- Move them to a new GUID range.

DELETE FROM `creature` WHERE `id`=9265;
DELETE FROM `creature` WHERE `guid`=43532;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151388, 9265, 229, 0, 0, -37.39, -453.54, 16.64, 0.64, 10800, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43547;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151389, 9265, 229, 0, 0, -108.969, -486.557, 24.2551, 4.65311, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43552;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151390, 9265, 229, 0, 0, -35.08, -513.08, 4.69, 3.82, 10800, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=43577;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151391, 9265, 229, 0, 0, -42.036, -581.509, -18.84, 4.30046, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=660088;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151392, 9265, 229, 0, 0, -76.7771, -517.279, -7.14286, 4.7285, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=660087;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151393, 9265, 229, 0, 0, -4.98251, -517.704, -7.14246, 4.70072, 7200, 0, 0, 6477, 2163, 0, 0);

-- Firebrand Invokers 
-- Replace all our current ones with data from classic-db. (We were missing 1 of them)
-- Move them to a new GUID range.

DELETE FROM `creature` WHERE `id`=9262;
DELETE FROM `creature` WHERE `guid`=44008;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151394, 9262, 229, 0, 0, -61.0062, -412.273, -18.9348, 1.29317, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44149;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151395, 9262, 229, 0, 0, -42.426, -422.135, -18.935, 5.43458, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44150;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151396, 9262, 229, 0, 0, -52.1838, -411.215, -18.935, 3.17656, 7200, 0, 0, 6681, 3361, 0, 0);
DELETE FROM `creature` WHERE `guid`=44151;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151397, 9262, 229, 0, 0, -26.8415, -412.158, -18.9344, 0.788159, 7200, 0, 0, 6681, 3361, 0, 0);
DELETE FROM `creature` WHERE `guid`=44152;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151398, 9262, 229, 0, 0, 30.1009, -474.712, -18.6041, 3.16793, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44269;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151399, 9262, 229, 0, 0, 28.345, -494.843, -18.7528, 1.02144, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44305;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151400, 9262, 229, 0, 0, -77.619, -452.602, -18.935, 3.55826, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44309;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151401, 9262, 229, 0, 0, -96.723, -440.326, -18.935, 1.56413, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44311;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151402, 9262, 229, 0, 0, -94.2403, -421.059, -18.935, 6.19406, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44313;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151403, 9262, 229, 0, 0, -109.82, -434.25, -18.76, 3.18598, 10800, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=44334;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151404, 9262, 229, 0, 0, -117.666, -479.186, -18.4573, 5.29713, 7200, 0, 0, 6477, 3244, 0, 0);
DELETE FROM `creature` WHERE `guid`=660089;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151405, 9262, 229, 0, 0, 21.0812, -577.884, -18.6008, 4.93743, 7200, 0, 0, 6681, 3361, 0, 0);

-- Firebrand Darkweavers 
-- Replace all our current ones with data from classic-db. (We were missing 1 of them)
-- Move them to a new GUID range. 

DELETE FROM `creature` WHERE `id`=9261;
DELETE FROM `creature` WHERE `guid`=43771;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151406, 9261, 229, 0, 0, -112.677, -458.12, -18.9344, 4.69159, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44007;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151407, 9261, 229, 0, 0, -23.0763, -407.473, -18.935, 4.70572, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44009;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151408, 9261, 229, 0, 0, -56.3033, -407.741, -18.9349, 5.06701, 7200, 0, 0, 6681, 2241, 0, 0);
DELETE FROM `creature` WHERE `guid`=44019;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151409, 9261, 229, 0, 0, -61.5615, -407.644, -18.9348, 5.31284, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44078;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(151410, 9261, 229, 0, 0, -38.6279, -427.411, -18.935, 1.96469, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44153;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151411, 9261, 229, 0, 0, 25.39, -477.23, -18.32, 1.32, 10800, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44154;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151412, 9261, 229, 0, 0, 34.0536, -491.542, -18.9058, 4.95864, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44307;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151413, 9261, 229, 0, 0, -82.5495, -454.355, -18.9348, 1.00729, 7200, 0, 0, 6681, 2241, 0, 0);
DELETE FROM `creature` WHERE `guid`=44310;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151414, 9261, 229, 0, 0, -96.6062, -434.567, -18.935, 4.5243, 7200, 0, 0, 6681, 2241, 0, 0);
DELETE FROM `creature` WHERE `guid`=44314;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151415, 9261, 229, 0, 0, -114.098, -434.593, -18.9349, 0.0773761, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44317;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151416, 9261, 229, 0, 0, -119.079, -421.583, -18.9349, 6.17756, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=44330;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151417, 9261, 229, 0, 0, -106.142, -483.786, -18.4573, 3.15535, 7200, 0, 0, 6477, 2163, 0, 2);
DELETE FROM `creature` WHERE `guid`=44333;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151418, 9261, 229, 0, 0, -115.015, -483.19, -18.4573, 2.22151, 7200, 0, 0, 6477, 2163, 0, 0);
DELETE FROM `creature` WHERE `guid`=660090;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151419, 9261, 229, 0, 0, 19.9416, -583.695, -18.6008, 1.26648, 7200, 0, 0, 6681, 2241, 0, 0);

-- Firebrand Grunts 
-- Replace all our current ones with data from classic-db. (We were missing 3 of them)
-- Move them to a new GUID range. 

DELETE FROM `creature` WHERE `id`=9259;
DELETE FROM `creature` WHERE `guid`=43763;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151420, 9259, 229, 0, 0, -109.985, -456.958, -18.9344, 4.69159, 7200, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43764;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151421, 9259, 229, 0, 0, -111.52, -495.227, -18.4569, 1.48874, 7200, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43765;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151422, 9259, 229, 0, 0, -16.0105, -407.241, -18.9344, 6.2404, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43766;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151423, 9259, 229, 0, 0, 33.681, -473.821, -18.6236, 1.49503, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43767;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151424, 9259, 229, 0, 0, -41.9485, -425.748, -18.935, 0.458297, 7200, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=43768;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151425, 9259, 229, 0, 0, -36.5694, -424.192, -18.935, 3.4648, 7200, 0, 0, 8352, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=44020;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151426, 9259, 229, 0, 0, -74.91, -405.03, -18.76, 5.22, 10800, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44270;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151427, 9259, 229, 0, 0, 28.5412, -491.049, -18.7405, 5.15027, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44271;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151428, 9259, 229, 0, 0, -115.351, -425.966, -18.9349, 4.79055, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44304;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151429, 9259, 229, 0, 0, -80.9574, -451.587, -18.935, 4.81018, 7200, 0, 0, 8097, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=44306;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151430, 9259, 229, 0, 0, -84.647, -452.275, -18.9348, 0.0388896, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44308;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151431, 9259, 229, 0, 0, -94.53, -436.52, -18.76, 3.39, 10800, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44312;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151432, 9259, 229, 0, 0, -94.9831, -424.653, -18.935, 5.92388, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44316;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151433, 9259, 229, 0, 0, -119.271, -427.243, -18.9349, 0.8345, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44327;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151434, 9259, 229, 0, 0, -100.732, -491.571, -18.4573, 1.68901, 7200, 0, 0, 8097, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=44329;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151435, 9259, 229, 0, 0, -111.718, -484.087, -18.4573, 5.88854, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=660091;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151436, 9259, 229, 0, 0, 24.2473, -581.663, -18.6008, 2.75245, 7200, 0, 0, 8352, 0, 0, 2);
DELETE FROM `creature` WHERE `guid`=660092;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151437, 9259, 229, 0, 0, 22.9569, -567.826, -18.6008, 2.71711, 7200, 0, 0, 8352, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=660096;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151438, 9259, 229, 0, 0, 26.9751, -471.558, -18.4795, 4.47248, 7200, 0, 0, 8097, 0, 0, 2);

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/a72c278e19c3e1cc9f0a18c3e635e772ea5f6204
-- ----------------------------------
-- Added missing critters in Blackrock Spire
-- Thanks to Schmoozerd and UDB team for providing the data

-- Fixed some stats value (data from UDB):
UPDATE `creature_template` SET `MinLevelHealth`= 1, `MaxLevelHealth` = 1, `Armor` = 7 WHERE `entry` = 2110;
UPDATE `creature_template` SET `MinLevelHealth`= 8, `MaxLevelHealth` = 8, `Armor` = 7 WHERE `entry` = 4076;

-- Starting value for adding guid
SET @GUID := 151439;

-- Added missing creature 2110 (Black rat) in Blackrock Spire
DELETE FROM `creature` WHERE (`id` = 2110 AND `map` = 229) OR (`guid` BETWEEN @GUID AND @GUID + 9); 
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 1, 2110, 229, 57.87804, -423.529, 44.18297, 2.716429, 120, 5, 1),
(@GUID + 2, 2110, 229, 94.90471, -368.9881, 117.5154, 0.482208, 120, 5, 1),
(@GUID + 3, 2110, 229, 149.3026, -262.1802, 110.9015, 1.944676, 120, 5, 1),
(@GUID + 4, 2110, 229, 37.08282, -394.0792, 48.6343, 3.631807, 120, 5, 1),
(@GUID + 5, 2110, 229, 34.07501, -374.5409, 48.65482, 0.2464215, 120, 5, 1),
(@GUID + 6, 2110, 229, -31.47034, -373.2695, 49.60873, 0.3181981, 120, 5, 1),
(@GUID + 7, 2110, 229, -55.02018, -326.9198, 70.94196, 1.630944, 120, 5, 1),
(@GUID + 8, 2110, 229, 4.956253, -296.3802, 110.945, 5.842446, 120, 5, 1),
(@GUID + 9, 2110, 229, -13.49756, -342.7099, 110.941, 2.831304, 120, 5, 1);

-- Added missing creature 4076 (Roach) from Blackrock Spire
DELETE FROM `creature` WHERE (`id` = 4076 AND `map` = 229) OR (`guid` BETWEEN @GUID +10 AND @GUID + 21);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 10, 4076, 229, 139.9541, -340.7367, 110.9609, 0.8688918, 120, 5, 1, 8),
(@GUID + 11, 4076, 229, 17.79027, -326.4926, 110.9429, 3.700024, 120, 5, 1, 8),
(@GUID + 12, 4076, 229, 168.071, -424.0941, 110.4723, 3.03863, 120, 5, 1, 8),
(@GUID + 13, 4076, 229, 72.36562, -408.3839, 64.43105, 5.585053, 120, 5, 1, 8),
(@GUID + 14, 4076, 229, 148.7463, -321.8607, 110.9402, 1.586552, 120, 5, 1, 8),
(@GUID + 15, 4076, 229, 155.7934, -301.3404, 110.6554, 0.1693714, 120, 5, 1, 8),
(@GUID + 16, 4076, 229, 81.04874, -363.0222, 116.8424, 2.214636, 120, 5, 1, 8),
(@GUID + 17, 4076, 229, 8.892742, -264.8804, 110.9434, 3.528604, 120, 5, 1, 8),
(@GUID + 18, 4076, 229, 28.61547, -291.0789, 110.943, 2.378498, 120, 5, 1, 8),
(@GUID + 19, 4076, 229, -0.1538349, -260.8282, 110.9434, 3.360135, 120, 5, 1, 8),
(@GUID + 20, 4076, 229, 135.8507, -414.1771, 110.4723, 6.221058, 120, 5, 1, 8),
(@GUID + 21, 4076, 229, -16.09308, -392.4038, 48.51566, 1.319288, 120, 5, 1, 8);

-- ----------------------------------
-- Fix pools. In tbc-db all these 4 were in the same pool and one creature were missing. Ported from classic-db
-- ----------------------------------
DELETE FROM `creature` WHERE `guid`=43507;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(43507, 9199, 229, 11581, 0, -37.05, -387.07, 31.8, 4.65, 10800, 0, 0, 12665, 0, 0, 2);
DELETE FROM `creature_movement` WHERE `id`=43507;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43507, 1, -37.05, -387.07, 31.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65, 0, 0);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (43507, 2, -36.5, -478.69, 29.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6, 0, 0);

-- Delete old pool
DELETE FROM `pool_creature` WHERE `pool_entry`=25550;
DELETE FROM `pool_template` WHERE `entry`=25550;

-- Butcher
DELETE FROM `pool_creature` WHERE `guid`=43507;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (43507, 25504, 0, 'Spirestone Butcher/Spirestone Enforcer');
DELETE FROM `pool_creature` WHERE `guid`=43523;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (43523, 25504, 30, 'Spirestone Butcher/Spirestone Enforcer');

DELETE FROM `pool_template` WHERE `entry`=25504;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25504, 1, 'Spirestone Butcher/Spirestone Enforcer');

-- Spirestone Lord Magus
DELETE FROM `pool_creature` WHERE `guid`=43516;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (43516, 25503, 0, 'Spirestone Lord Magus/Placeholder');
DELETE FROM `pool_creature` WHERE `guid`=43521;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (43521, 25503, 30, 'Spirestone Lord Magus/Placeholder');

DELETE FROM `pool_template` WHERE `entry`=25503;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25503, 1, 'Spirestone Lord Magus/Placeholder');

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/612367ab2978798a439b43dad555ba01ad4e3979
-- https://github.com/cmangos/classic-db/commit/70d1fec769ffcbfe62c01c5e6d03b812da5f6222
-- ----------------------------------
-- Top room near Bijou
DELETE FROM creature WHERE guid=43559;
DELETE FROM creature_addon WHERE guid=43559;
DELETE FROM creature_movement WHERE id=43559;
DELETE FROM game_event_creature WHERE guid=43559;
DELETE FROM game_event_creature_data WHERE guid=43559;
DELETE FROM creature_battleground WHERE guid=43559;
DELETE FROM creature_linking WHERE guid=43559 OR master_guid=43559;
DELETE FROM creature WHERE guid=43559;
INSERT INTO creature VALUES (43559,9239,229,1,0,0,-39.0271,-547.342,16.1255,4.97512,2*60*60,0,0,6477,2163,0,2); -- patrol
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43559,1, -39.107231,-547.148987,16.125872, 4.97512, 60*1000),
(43559,2, -39.597519,-523.890381,4.992621, 1.545995, 30*1000),
(43559,3, -39.576500,-509.575165,5.856623, 4.753645, 0),
(43559,4, -39.994362,-493.414276,16.188383, 100, 0),
(43559,5, -47.637386,-472.980103,16.333862, 100, 0),
(43559,6, -48.089626,-460.303558,16.398632, 100, 0),
(43559,7, -8.386492,-461.059998,16.728352, 100, 0),
(43559,8, -47.694778,-460.330566,16.402576, 100, 0),
(43559,9, -47.758339,-472.839417,16.333258, 100, 0),
(43559,10, -40.366806,-493.487183,16.186602, 100, 0),
(43559,11, -39.576500,-509.575165,5.856623, 4.753645, 30*1000),
(43559,12, -39.597519,-523.890381,4.992621, 1.545995, 0);

-- Entrance: added movement to caster
DELETE FROM creature_movement WHERE id=43527;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(43527,1, 0.260554,-461.397125,16.094440, 100, 0),
(43527,2, -15.068926,-460.352875,16.579485, 100, 0),
(43527,3, -18.807304,-451.509888,16.537537, 100, 0),
(43527,4, -18.807304,-451.509888,16.537537, 1.912761, 30*1000);
UPDATE creature SET MovementType=2 WHERE guid=43527;

-- Big bottom room patrols
-- 2x Headhunters + Berserkers or 2x Headhunters + Shadowhunters
-- First patrol counter-clockwise headhunter+berserker
DELETE FROM creature WHERE guid=43560;
DELETE FROM creature_addon WHERE guid=43560;
DELETE FROM creature_movement WHERE id=43560;
DELETE FROM game_event_creature WHERE guid=43560;
DELETE FROM game_event_creature_data WHERE guid=43560;
DELETE FROM creature_battleground WHERE guid=43560;
DELETE FROM creature_linking WHERE guid=43560 OR master_guid=43560;
DELETE FROM creature WHERE guid=40154;
DELETE FROM creature_addon WHERE guid=40154;
DELETE FROM creature_movement WHERE id=40154;
DELETE FROM game_event_creature WHERE guid=40154;
DELETE FROM game_event_creature_data WHERE guid=40154;
DELETE FROM creature_battleground WHERE guid=40154;
DELETE FROM creature_linking WHERE guid=40154 OR master_guid=40154;
DELETE FROM creature WHERE guid=43561;
DELETE FROM creature_addon WHERE guid=43561;
DELETE FROM creature_movement WHERE id=43561;
DELETE FROM game_event_creature WHERE guid=43561;
DELETE FROM game_event_creature_data WHERE guid=43561;
DELETE FROM creature_battleground WHERE guid=43561;
DELETE FROM creature_linking WHERE guid=43561 OR master_guid=43561;
DELETE FROM creature WHERE guid=43561;
INSERT INTO creature VALUES (43561,9268,229,1,0,0,-76.7771,-517.279,-7.14286,4.7285,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature_movement WHERE id=151378;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES
(151378,1, -73.970467,-517.234009,-7.142864, 100),
(151378,2, -73.874817,-523.169250,-7.142920, 100),
(151378,3, -73.265968,-540.061218,-18.795183, 100),
(151378,4, -73.173820,-545.779480,-18.800999, 100),
(151378,5, -63.243862,-549.406189,-18.812057, 100),
(151378,6, -28.444887,-548.863220,-18.793848, 100),
(151378,7, -14.711938,-539.480225,-18.801619, 100),
(151378,8, -12.412103,-533.184204,-18.811506, 100),
(151378,9, -12.131589,-496.549164,-18.804089, 100),
(151378,10, -20.251728,-487.615662,-18.788418, 100),
(151378,11, -66.097374,-487.162323,-18.788757, 100),
(151378,12, -73.520866,-493.968750,-18.793919, 100),
(151378,13, -73.070999,-511.362244,-7.242242, 100);
DELETE FROM creature_linking WHERE guid=43561;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(43561, 151378, 515);

-- Second patrol clockwise headhunter+berserker
DELETE FROM creature_movement WHERE id=151387;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES 
(151387,1, -1.074543,-517.357666,-7.142882, 100),
(151387,2, -1.361253,-523.195618,-7.142882, 100),
(151387,3, -2.209020,-540.457825,-18.794813, 100),
(151387,4, -14.493629,-549.850037,-18.783758, 100),
(151387,5, -50.452591,-551.029968,-18.815395, 100),
(151387,6, -62.464249,-539.435242,-18.801228, 100),
(151387,7, -63.057953,-494.661407,-18.801294, 100),
(151387,8, -56.092567,-485.741974,-18.788551, 100),
(151387,9, -9.206081,-485.379852,-18.786659, 100),
(151387,10, -1.510508,-494.902344,-18.793882, 100),
(151387,11, -1.005701,-511.030334,-7.501270, 100);
DELETE FROM creature_linking WHERE guid=43565;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(43565, 151387, 515);

DELETE FROM creature_linking WHERE guid=151392;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(151392, 151378, 515);
DELETE FROM creature_linking WHERE guid=151393;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(151393, 151387, 515);

DELETE FROM pool_creature WHERE guid IN (43561, 43565, 151392, 151393);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(43561, 25573, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(151392, 25573, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(43565, 25574, 0, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(151393, 25574, 0, 'Lower Blackrock Spire - Tazz Alaor patrol');

DELETE FROM pool_template WHERE entry IN (25573, 25574);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25573, 1, 'Lower Blackrock Spire - Tazz Alaor patrol'),
(25574, 1, 'Lower Blackrock Spire - Tazz Alaor patrol');

-- ----------------------------------------------
-- HORDEMAR CITY
-- ----------------------------------------------
-- source: https://www.youtube.com/watch?v=NdA2fjMllxU

call script_npc(151177, 909704);
call script_npc(151179, 909702);

-- Ramp down: removed group of four wrongly placed and respawned it near brasero
DELETE FROM creature WHERE guid=42875;
DELETE FROM creature_addon WHERE guid=42875;
DELETE FROM creature_movement WHERE id=42875;
DELETE FROM game_event_creature WHERE guid=42875;
DELETE FROM game_event_creature_data WHERE guid=42875;
DELETE FROM creature_battleground WHERE guid=42875;
DELETE FROM creature_linking WHERE guid=42875 OR master_guid=42875;
DELETE FROM creature WHERE guid=42876;
DELETE FROM creature_addon WHERE guid=42876;
DELETE FROM creature_movement WHERE id=42876;
DELETE FROM game_event_creature WHERE guid=42876;
DELETE FROM game_event_creature_data WHERE guid=42876;
DELETE FROM creature_battleground WHERE guid=42876;
DELETE FROM creature_linking WHERE guid=42876 OR master_guid=42876;
DELETE FROM creature WHERE guid=42877;
DELETE FROM creature_addon WHERE guid=42877;
DELETE FROM creature_movement WHERE id=42877;
DELETE FROM game_event_creature WHERE guid=42877;
DELETE FROM game_event_creature_data WHERE guid=42877;
DELETE FROM creature_battleground WHERE guid=42877;
DELETE FROM creature_linking WHERE guid=42877 OR master_guid=42877;
DELETE FROM creature WHERE guid=42878;
DELETE FROM creature_addon WHERE guid=42878;
DELETE FROM creature_movement WHERE id=42878;
DELETE FROM game_event_creature WHERE guid=42878;
DELETE FROM game_event_creature_data WHERE guid=42878;
DELETE FROM creature_battleground WHERE guid=42878;
DELETE FROM creature_linking WHERE guid=42878 OR master_guid=42878;
call script_npc(151140, 909701);

-- Ramp bottom
-- Group right before the bridge: changed orientation
call script_npc(151142, 909702);
-- Group in the far right corner after the ramp bottom: changed orientation of the group of 4
call script_npc(151144, 909701);


-- After bridge far left corner:
call script_npc(151146, 909703);

call script_npc(151154, 909701);

-- Group next wall: the grunt are sleeping, the caster is removed
DELETE FROM creature WHERE guid=43482;
DELETE FROM creature_addon WHERE guid=43482;
DELETE FROM creature_movement WHERE id=43482;
DELETE FROM game_event_creature WHERE guid=43482;
DELETE FROM game_event_creature_data WHERE guid=43482;
DELETE FROM creature_battleground WHERE guid=43482;
DELETE FROM creature_linking WHERE guid=43482 OR master_guid=43482;
DELETE FROM `creature_addon` WHERE `guid`= 151156;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151156,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 151155;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151155,0,3,1,16,0,0,'6606');

-- Groups in the far left corner:
-- changed orientation of two grunts (delete/respawned)
DELETE FROM `creature_addon` WHERE `guid`= 151151;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151151,0,1,1,16,0,0,NULL);
call script_npc(151151, 909705);
DELETE FROM `creature_addon` WHERE `guid`= 151152;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151152,0,1,1,16,0,0,NULL);
call script_npc(151152, 909706);

-- Respawned the group of four around the plates
call script_npc(151150, 909703);

-- First group on the right: deleted and respawned three NPCs
call script_npc(151153, 909702);

-- Group under the tent: removed the three wrong spawns and respawned them

call script_npc(151157, 909702);

call script_npc(151159, 909701);

-- ----------------------------------------------
-- MOK'DOOM
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9197, 9198, 9199, 9200, 9201, 9216);

-- Changed orientation of two guards on the bridge: removed and respawned
DELETE FROM creature WHERE guid=43506;
DELETE FROM creature_addon WHERE guid=43506;
DELETE FROM creature_movement WHERE id=43506;
DELETE FROM game_event_creature WHERE guid=43506;
DELETE FROM game_event_creature_data WHERE guid=43506;
DELETE FROM creature_battleground WHERE guid=43506;
DELETE FROM creature_linking WHERE guid=43506 OR master_guid=43506;
DELETE FROM creature WHERE guid=43506;
INSERT INTO creature VALUES (43506,9201,229,1,0,0,-30.7344,-429.156,31.7927,3.94546,2*60*60,0,0,10130,10205,0,0);

-- Fixed entry of patrol along bridge
UPDATE creature SET id=9199, equipment_id=0, curhealth=12665 WHERE guid=43507;

-- Respawned a few ogres:
DELETE FROM creature WHERE guid=43511;
DELETE FROM creature_addon WHERE guid=43511;
DELETE FROM creature_movement WHERE id=43511;
DELETE FROM game_event_creature WHERE guid=43511;
DELETE FROM game_event_creature_data WHERE guid=43511;
DELETE FROM creature_battleground WHERE guid=43511;
DELETE FROM creature_linking WHERE guid=43511 OR master_guid=43511;
DELETE FROM creature WHERE guid=43511;
INSERT INTO creature VALUES (43511,9201,229,1,0,0,-25.5023,-346.151,31.6168,1.98312,2*60*60,0,0,10455,10585,0,0);
DELETE FROM creature WHERE guid=43509;
DELETE FROM creature_addon WHERE guid=43509;
DELETE FROM creature_movement WHERE id=43509;
DELETE FROM game_event_creature WHERE guid=43509;
DELETE FROM game_event_creature_data WHERE guid=43509;
DELETE FROM creature_battleground WHERE guid=43509;
DELETE FROM creature_linking WHERE guid=43509 OR master_guid=43509;
DELETE FROM creature WHERE guid=43509;
INSERT INTO creature VALUES (43509,9201,229,1,0,0,-44.9234,-363.5,31.6182,0.687995,2*60*60,0,0,10455,10585,0,0);
UPDATE creature SET MovementType=1, spawndist=2 WHERE guid=43508;

-- Updated position of one of Omokk counselor
DELETE FROM creature WHERE guid=43515;
DELETE FROM creature_addon WHERE guid=43515;
DELETE FROM creature_movement WHERE id=43515;
DELETE FROM game_event_creature WHERE guid=43515;
DELETE FROM game_event_creature_data WHERE guid=43515;
DELETE FROM creature_battleground WHERE guid=43515;
DELETE FROM creature_linking WHERE guid=43515 OR master_guid=43515;
DELETE FROM creature WHERE guid=43515;
INSERT INTO creature VALUES (43515,9201,229,1,0,0,-20.1226,-307.731,31.6163,2.21873,2*60*60,0,0,10455,10585,0,0);


-- ----------------------------------------------
-- TAZZ'ALAOR
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9239,9240,9241,9265,9266,9267,9268,9269);

-- Generic scripts for groups of Smolderthorn NPCs chatting
-- Two headhunter, one witch doctor, one seer
DELETE FROM `dbscripts_on_creature_movement` WHERE id=924101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(924101, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(924101, 6, 1, 1, 0, 0, 0, 0, 11, 21, 6, 0, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924101, 15, 1, 1, 0, 9269, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Seer random emote'),
(924101, 21, 1, 1, 0, 9241, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924101, 33, 1, 1, 0, 9266, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Witch Doctor random emote'),
(924101, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Two axe thrower, one shadow priest
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926701;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926701, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926701, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Axe Thrower random emote'),
(926701, 21, 1, 1, 0, 9267, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Axe Thrower random emote'),
(926701, 33, 1, 1, 0, 9240, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Shadow Priest random emote'),
(926701, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One headhunter, one shadow priest, one seer
DELETE FROM `dbscripts_on_creature_movement` WHERE id=924102;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(924102, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(924102, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Headhunter random emote'),
(924102, 21, 1, 1, 0, 9269, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Seer random emote'),
(924102, 33, 1, 1, 0, 9240, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Smolderthorn Shadow Priest random emote'),
(924102, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

call script_npc(43543, 926701);
call script_npc(151380, 924101);

-- Respawn group at the top near Bijou
DELETE FROM creature WHERE guid=43558;
DELETE FROM creature_addon WHERE guid=43558;
DELETE FROM creature_movement WHERE id=43558;
DELETE FROM game_event_creature WHERE guid=43558;
DELETE FROM game_event_creature_data WHERE guid=43558;
DELETE FROM creature_battleground WHERE guid=43558;
DELETE FROM creature_linking WHERE guid=43558 OR master_guid=43558;
DELETE FROM creature WHERE guid=43558;
INSERT INTO creature VALUES (43558,9240,229,1,0,0,-35.3191,-548.441,16.1143,4.47325,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43556;
DELETE FROM creature_addon WHERE guid=43556;
DELETE FROM creature_movement WHERE id=43556;
DELETE FROM game_event_creature WHERE guid=43556;
DELETE FROM game_event_creature_data WHERE guid=43556;
DELETE FROM creature_battleground WHERE guid=43556;
DELETE FROM creature_linking WHERE guid=43556 OR master_guid=43556;
DELETE FROM creature WHERE guid=43556;
INSERT INTO creature VALUES (43556,9267,229,1,0,0,-33.3368,-552.47,16.1143,3.02969,2*60*60,0,0,8097,0,0,0);
DELETE FROM creature WHERE guid=43557;
DELETE FROM creature_addon WHERE guid=43557;
DELETE FROM creature_movement WHERE id=43557;
DELETE FROM game_event_creature WHERE guid=43557;
DELETE FROM game_event_creature_data WHERE guid=43557;
DELETE FROM creature_battleground WHERE guid=43557;
DELETE FROM creature_linking WHERE guid=43557 OR master_guid=43557;
DELETE FROM creature WHERE guid=43557;
INSERT INTO creature VALUES (43557,9267,229,1,0,0,-40.495,-552.886,16.1286,0.352268,2*60*60,0,0,8097,0,0,0);

-- First room before War Master Voone: added a missing NPC (guid from NPC deleted in main room)
DELETE FROM creature WHERE guid=43575;
DELETE FROM creature_addon WHERE guid=43575;
DELETE FROM creature_movement WHERE id=43575;
DELETE FROM game_event_creature WHERE guid=43575;
DELETE FROM game_event_creature_data WHERE guid=43575;
DELETE FROM creature_battleground WHERE guid=43575;
DELETE FROM creature_linking WHERE guid=43575 OR master_guid=43575;

-- Second room before War Master Voone: added two missing NPCs
DELETE FROM `creature_addon` WHERE guid=43469;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43469,0,1,1,16,0,0,NULL);
DELETE FROM `creature_addon` WHERE guid=151386;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151386,0,1,1,16,0,0,NULL);

-- War Master Voone: udpated position
UPDATE creature SET position_x=-10.045, position_y=-458.635, position_z=-18.645, orientation=3.231534 WHERE id=9237;

-- Middle of the ramps: changed (respawned) two types
DELETE FROM creature WHERE guid=43554;
DELETE FROM creature_addon WHERE guid=43554;
DELETE FROM creature_movement WHERE id=43554;
DELETE FROM game_event_creature WHERE guid=43554;
DELETE FROM game_event_creature_data WHERE guid=43554;
DELETE FROM creature_battleground WHERE guid=43554;
DELETE FROM creature_linking WHERE guid=43554 OR master_guid=43554;
DELETE FROM creature WHERE guid=43554;
INSERT INTO creature VALUES (43554,9269,229,1,0,0,-44.4268,-513.147,4.50927,5.64349,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=43553;
DELETE FROM creature_addon WHERE guid=43553;
DELETE FROM creature_movement WHERE id=43553;
DELETE FROM game_event_creature WHERE guid=43553;
DELETE FROM game_event_creature_data WHERE guid=43553;
DELETE FROM creature_battleground WHERE guid=43553;
DELETE FROM creature_linking WHERE guid=43553 OR master_guid=43553;
DELETE FROM creature WHERE guid=43553;
INSERT INTO creature VALUES (43553,9269,229,1,0,0,-44.5597,-521.677,4.50925,0.779523,2*60*60,0,0,6477,2163,0,0);

-- Room of Vosh'Gajin
-- Removed two npcs, moved (deleted and respawned) four more and made them channel the braseros
DELETE FROM creature WHERE guid=43548;
DELETE FROM creature_addon WHERE guid=43548;
DELETE FROM creature_movement WHERE id=43548;
DELETE FROM game_event_creature WHERE guid=43548;
DELETE FROM game_event_creature_data WHERE guid=43548;
DELETE FROM creature_battleground WHERE guid=43548;
DELETE FROM creature_linking WHERE guid=43548 OR master_guid=43548;
DELETE FROM creature WHERE guid=43548;
INSERT INTO creature VALUES (43548,9239,229,1,0,0,-108.768,-475.778,24.2549,1.60891,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43549;
DELETE FROM creature_addon WHERE guid=43549;
DELETE FROM creature_movement WHERE id=43549;
DELETE FROM game_event_creature WHERE guid=43549;
DELETE FROM game_event_creature_data WHERE guid=43549;
DELETE FROM creature_battleground WHERE guid=43549;
DELETE FROM creature_linking WHERE guid=43549 OR master_guid=43549;
DELETE FROM creature WHERE guid=43549;
INSERT INTO creature VALUES (43549,9240,229,1,0,0,-106.384,-473.381,24.2549,3.19541,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43547;
DELETE FROM creature_addon WHERE guid=43547;
DELETE FROM creature_movement WHERE id=43547;
DELETE FROM game_event_creature WHERE guid=43547;
DELETE FROM game_event_creature_data WHERE guid=43547;
DELETE FROM creature_battleground WHERE guid=43547;
DELETE FROM creature_linking WHERE guid=43547 OR master_guid=43547;
DELETE FROM creature WHERE guid=43546;
DELETE FROM creature_addon WHERE guid=43546;
DELETE FROM creature_movement WHERE id=43546;
DELETE FROM game_event_creature WHERE guid=43546;
DELETE FROM game_event_creature_data WHERE guid=43546;
DELETE FROM creature_battleground WHERE guid=43546;
DELETE FROM creature_linking WHERE guid=43546 OR master_guid=43546;
DELETE FROM creature WHERE guid=43546;
INSERT INTO creature VALUES (43546,9269,229,1,0,0,-106.491,-488.549,24.2551,3.12944,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (43548,43549,151389,43546);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43546,0,0,1,16,0,0,'13236'),
(151389,0,0,1,16,0,0,'13236'),
(43548,0,0,1,16,0,0,'13236'),
(43549,0,0,1,16,0,0,'13236');
-- Changed orientation of Vosh'Gajin and its two nearby NPCs and made them kneel
UPDATE creature SET orientation=3.175776 WHERE guid=43522;
UPDATE creature SET orientation=1.633253 WHERE guid=43551;
UPDATE creature SET orientation=4.744217 WHERE guid=43550;
DELETE FROM `creature_addon` WHERE `guid` IN (43551,43550);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43551,0,8,1,16,0,0,'12380'),
(43550,0,8,1,16,0,0,'12380');
DELETE FROM `creature_template_addon` WHERE entry=9236;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(9236,0,8,1,16,0,0,'12380');

-- First room after ramp from Hordemar City
-- Spawned two mobs near the table
DELETE FROM creature WHERE guid=43544;
DELETE FROM creature_addon WHERE guid=43544;
DELETE FROM creature_movement WHERE id=43544;
DELETE FROM game_event_creature WHERE guid=43544;
DELETE FROM game_event_creature_data WHERE guid=43544;
DELETE FROM creature_battleground WHERE guid=43544;
DELETE FROM creature_linking WHERE guid=43544 OR master_guid=43544;
DELETE FROM creature WHERE guid=43545;
DELETE FROM creature_addon WHERE guid=43545;
DELETE FROM creature_movement WHERE id=43545;
DELETE FROM game_event_creature WHERE guid=43545;
DELETE FROM game_event_creature_data WHERE guid=43545;
DELETE FROM creature_battleground WHERE guid=43545;
DELETE FROM creature_linking WHERE guid=43545 OR master_guid=43545;
DELETE FROM creature WHERE guid=43544;
INSERT INTO creature VALUES (43544,9267,229,1,0,0,-29.9323,-481.091,16.3433,6.26701,2*60*60,0,0,8097,0,0,0);	-- sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 43544;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43544,0,1,1,16,0,0,NULL);
call script_npc(43544, 909705);
DELETE FROM creature WHERE guid=43545;
INSERT INTO creature VALUES (43545,9267,229,1,0,0,-20.9982,-480.733,16.3041,3.15055,2*60*60,0,0,7842,0,0,0); -- sitting drinking
DELETE FROM `creature_addon` WHERE `guid`= 43545;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43545,0,1,1,16,0,0,NULL);
call script_npc(43545, 909706);
DELETE FROM `creature_addon` WHERE `guid`= 43539;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43539,0,1,1,16,0,0,NULL);
call script_npc(43539, 909707);
-- Made sit the four NPCs in the far right corner
DELETE FROM `creature_addon` WHERE `guid` IN (43534,43535,43536,43537);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43534,0,1,1,16,0,0,NULL),
(43535,0,1,1,16,0,0,NULL),
(43536,0,1,1,16,0,0,NULL),
(43537,0,1,1,16,0,0,NULL);

-- Made group of four near the brasero cast a channel spell
DELETE FROM `creature_addon` WHERE `guid` IN (43530,43531,151388,43533);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43530,0,0,1,16,0,0,'13236'),
(43531,0,0,1,16,0,0,'13236'),
(151388,0,0,1,16,0,0,'13236'),
(43533,0,0,1,16,0,0,'13236');

-- Main bottom room
-- NW corner: respawned the group of four and removed berserker
DELETE FROM creature WHERE guid=43568;
DELETE FROM creature_addon WHERE guid=43568;
DELETE FROM creature_movement WHERE id=43568;
DELETE FROM game_event_creature WHERE guid=43568;
DELETE FROM game_event_creature_data WHERE guid=43568;
DELETE FROM creature_battleground WHERE guid=43568;
DELETE FROM creature_linking WHERE guid=43568 OR master_guid=43568;
DELETE FROM creature WHERE guid=43568;
INSERT INTO creature VALUES (43568,9240,229,1,0,0,-7.052,-474.520,-18.778,1.60419,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43569;
DELETE FROM creature_addon WHERE guid=43569;
DELETE FROM creature_movement WHERE id=43569;
DELETE FROM game_event_creature WHERE guid=43569;
DELETE FROM game_event_creature_data WHERE guid=43569;
DELETE FROM creature_battleground WHERE guid=43569;
DELETE FROM creature_linking WHERE guid=43569 OR master_guid=43569;
call script_npc(151379, 924102);
DELETE FROM creature WHERE guid=43566;
DELETE FROM creature_addon WHERE guid=43566;
DELETE FROM creature_movement WHERE id=43566;
DELETE FROM game_event_creature WHERE guid=43566;
DELETE FROM game_event_creature_data WHERE guid=43566;
DELETE FROM creature_battleground WHERE guid=43566;
DELETE FROM creature_linking WHERE guid=43566 OR master_guid=43566;
DELETE FROM creature WHERE guid=43566;
INSERT INTO creature VALUES (43566,9240,229,1,0,0,-4.16821,-477.159,-18.7882,5.8587,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43567;
DELETE FROM creature_addon WHERE guid=43567;
DELETE FROM creature_movement WHERE id=43567;
DELETE FROM game_event_creature WHERE guid=43567;
DELETE FROM game_event_creature_data WHERE guid=43567;
DELETE FROM creature_battleground WHERE guid=43567;
DELETE FROM creature_linking WHERE guid=43567 OR master_guid=43567;
DELETE FROM creature WHERE guid=43567;
INSERT INTO creature VALUES (43567,9269,229,1,0,0,-0.912777,-476.174,-18.7933,4.13553,2*60*60,0,0,6477,2163,0,0);

-- Middle: respawned (deleted and added) the two berserkers, made the group of four use random movement, changed entries
DELETE FROM creature WHERE guid=43563;
DELETE FROM creature_addon WHERE guid=43563;
DELETE FROM creature_movement WHERE id=43563;
DELETE FROM game_event_creature WHERE guid=43563;
DELETE FROM game_event_creature_data WHERE guid=43563;
DELETE FROM creature_battleground WHERE guid=43563;
DELETE FROM creature_linking WHERE guid=43563 OR master_guid=43563;
DELETE FROM creature WHERE guid=43564;
DELETE FROM creature_addon WHERE guid=43564;
DELETE FROM creature_movement WHERE id=43564;
DELETE FROM game_event_creature WHERE guid=43564;
DELETE FROM game_event_creature_data WHERE guid=43564;
DELETE FROM creature_battleground WHERE guid=43564;
DELETE FROM creature_linking WHERE guid=43564 OR master_guid=43564;
DELETE FROM creature WHERE guid=43564;
INSERT INTO creature VALUES (43564,9268,229,1,0,0,-37.0854,-507.072,-18.7812,5.36782,2*60*60,5,0,8352,0,0,1);
DELETE FROM creature WHERE guid=43562;
DELETE FROM creature_addon WHERE guid=43562;
DELETE FROM creature_movement WHERE id=43562;
DELETE FROM game_event_creature WHERE guid=43562;
DELETE FROM game_event_creature_data WHERE guid=43562;
DELETE FROM creature_battleground WHERE guid=43562;
DELETE FROM creature_linking WHERE guid=43562 OR master_guid=43562;
DELETE FROM creature WHERE guid=43562;
INSERT INTO creature VALUES (43562,9268,229,1,0,0,-42.1008,-527.685,-18.4778,2.12491,2*60*60,5,0,8613,0,0,1);
UPDATE creature SET id=9239, curhealth=6273, curmana=2117, spawndist=5, MovementType=1 WHERE guid=43754;

-- Western Wall : remade the group of four (deleted/respawned) and removed a wrong spawn
DELETE FROM creature WHERE guid=43757;
DELETE FROM creature_addon WHERE guid=43757;
DELETE FROM creature_movement WHERE id=43757;
DELETE FROM game_event_creature WHERE guid=43757;
DELETE FROM game_event_creature_data WHERE guid=43757;
DELETE FROM creature_battleground WHERE guid=43757;
DELETE FROM creature_linking WHERE guid=43757 OR master_guid=43757;
DELETE FROM creature WHERE guid=43757;
INSERT INTO creature VALUES (43757,9240,229,1,0,0,-35.417,-477.805,-18.7734,0.0451778,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43756;
DELETE FROM creature_addon WHERE guid=43756;
DELETE FROM creature_movement WHERE id=43756;
DELETE FROM game_event_creature WHERE guid=43756;
DELETE FROM game_event_creature_data WHERE guid=43756;
DELETE FROM creature_battleground WHERE guid=43756;
DELETE FROM creature_linking WHERE guid=43756 OR master_guid=43756;
DELETE FROM creature WHERE guid=43755;
DELETE FROM creature_addon WHERE guid=43755;
DELETE FROM creature_movement WHERE id=43755;
DELETE FROM game_event_creature WHERE guid=43755;
DELETE FROM game_event_creature_data WHERE guid=43755;
DELETE FROM creature_battleground WHERE guid=43755;
DELETE FROM creature_linking WHERE guid=43755 OR master_guid=43755;
DELETE FROM creature WHERE guid=43755;
INSERT INTO creature VALUES (43755,9269,229,1,0,0,-33.635,-472.792,-18.7668,0.88791,2*60*60,0,0,6477,2163,0,0);
DELETE FROM creature WHERE guid=43574;
DELETE FROM creature_addon WHERE guid=43574;
DELETE FROM creature_movement WHERE id=43574;
DELETE FROM game_event_creature WHERE guid=43574;
DELETE FROM game_event_creature_data WHERE guid=43574;
DELETE FROM creature_battleground WHERE guid=43574;
DELETE FROM creature_linking WHERE guid=43574 OR master_guid=43574;
DELETE FROM creature WHERE guid=43574;
INSERT INTO creature VALUES (43574,9240,229,1,0,0,-29.3655,-473.768,-18.7656,4.67667,2*60*60,0,0,6477,2163,0,0);

-- NE corner: removed wrong group of three and respawn proper group of four
DELETE FROM creature WHERE guid=43750;
DELETE FROM creature_addon WHERE guid=43750;
DELETE FROM creature_movement WHERE id=43750;
DELETE FROM game_event_creature WHERE guid=43750;
DELETE FROM game_event_creature_data WHERE guid=43750;
DELETE FROM creature_battleground WHERE guid=43750;
DELETE FROM creature_linking WHERE guid=43750 OR master_guid=43750;
DELETE FROM creature WHERE guid=43760;
DELETE FROM creature_addon WHERE guid=43760;
DELETE FROM creature_movement WHERE id=43760;
DELETE FROM game_event_creature WHERE guid=43760;
DELETE FROM game_event_creature_data WHERE guid=43760;
DELETE FROM creature_battleground WHERE guid=43760;
DELETE FROM creature_linking WHERE guid=43760 OR master_guid=43760;
DELETE FROM creature WHERE guid=43749;
DELETE FROM creature_addon WHERE guid=43749;
DELETE FROM creature_movement WHERE id=43749;
DELETE FROM game_event_creature WHERE guid=43749;
DELETE FROM game_event_creature_data WHERE guid=43749;
DELETE FROM creature_battleground WHERE guid=43749;
DELETE FROM creature_linking WHERE guid=43749 OR master_guid=43749;
DELETE FROM creature WHERE guid=43563;
INSERT INTO creature VALUES (43563,9269,229,1,0,0,-16.367,-557.751,-18.775,3.05325,2*60*60,0,0,6477,2163,0,0);

-- Eastern wall: full respawn of the group of four
DELETE FROM creature WHERE guid=43761;
DELETE FROM creature_addon WHERE guid=43761;
DELETE FROM creature_movement WHERE id=43761;
DELETE FROM game_event_creature WHERE guid=43761;
DELETE FROM game_event_creature_data WHERE guid=43761;
DELETE FROM creature_battleground WHERE guid=43761;
DELETE FROM creature_linking WHERE guid=43761 OR master_guid=43761;
DELETE FROM creature WHERE guid=43761;
INSERT INTO creature VALUES (43761,9269,229,1,0,0,-30.8244,-580.121,-18.8525,5.23194,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=43707;
DELETE FROM creature_addon WHERE guid=43707;
DELETE FROM creature_movement WHERE id=43707;
DELETE FROM game_event_creature WHERE guid=43707;
DELETE FROM game_event_creature_data WHERE guid=43707;
DELETE FROM creature_battleground WHERE guid=43707;
DELETE FROM creature_linking WHERE guid=43707 OR master_guid=43707;
DELETE FROM creature WHERE guid=43578;
DELETE FROM creature_addon WHERE guid=43578;
DELETE FROM creature_movement WHERE id=43578;
DELETE FROM game_event_creature WHERE guid=43578;
DELETE FROM game_event_creature_data WHERE guid=43578;
DELETE FROM creature_battleground WHERE guid=43578;
DELETE FROM creature_linking WHERE guid=43578 OR master_guid=43578;
DELETE FROM creature WHERE guid=43577;
DELETE FROM creature_addon WHERE guid=43577;
DELETE FROM creature_movement WHERE id=43577;
DELETE FROM game_event_creature WHERE guid=43577;
DELETE FROM game_event_creature_data WHERE guid=43577;
DELETE FROM creature_battleground WHERE guid=43577;
DELETE FROM creature_linking WHERE guid=43577 OR master_guid=43577;
DELETE FROM `creature_addon` WHERE `guid` =151391;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151391,0,0,1,16,0,0,'12380');

-- SE corner: full respawn of the group of four
DELETE FROM creature WHERE guid=43576;
DELETE FROM creature_addon WHERE guid=43576;
DELETE FROM creature_movement WHERE id=43576;
DELETE FROM game_event_creature WHERE guid=43576;
DELETE FROM game_event_creature_data WHERE guid=43576;
DELETE FROM creature_battleground WHERE guid=43576;
DELETE FROM creature_linking WHERE guid=43576 OR master_guid=43576;
DELETE FROM creature WHERE guid=43576;
INSERT INTO creature VALUES (43576,9240,229,1,0,0,-71.3291,-578.313,-18.8578,4.18635,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43758;
DELETE FROM creature_addon WHERE guid=43758;
DELETE FROM creature_movement WHERE id=43758;
DELETE FROM game_event_creature WHERE guid=43758;
DELETE FROM game_event_creature_data WHERE guid=43758;
DELETE FROM creature_battleground WHERE guid=43758;
DELETE FROM creature_linking WHERE guid=43758 OR master_guid=43758;
DELETE FROM creature WHERE guid=43758;
INSERT INTO creature VALUES (43758,9240,229,1,0,0,-75.1835,-582.664,-18.8456,0.769083,2*60*60,0,0,6273,2117,0,0);
DELETE FROM creature WHERE guid=43748;
DELETE FROM creature_addon WHERE guid=43748;
DELETE FROM creature_movement WHERE id=43748;
DELETE FROM game_event_creature WHERE guid=43748;
DELETE FROM game_event_creature_data WHERE guid=43748;
DELETE FROM creature_battleground WHERE guid=43748;
DELETE FROM creature_linking WHERE guid=43748 OR master_guid=43748;
DELETE FROM creature WHERE guid=43759;
DELETE FROM creature_addon WHERE guid=43759;
DELETE FROM creature_movement WHERE id=43759;
DELETE FROM game_event_creature WHERE guid=43759;
DELETE FROM game_event_creature_data WHERE guid=43759;
DELETE FROM creature_battleground WHERE guid=43759;
DELETE FROM creature_linking WHERE guid=43759 OR master_guid=43759;
DELETE FROM creature WHERE guid=43759;
INSERT INTO creature VALUES (43759,9269,229,1,0,0,-79.0262,-579.281,-18.8349,2.98783,2*60*60,0,0,6681,2241,0,0);

-- Shadow glow
DELETE FROM `creature_addon` WHERE `guid` IN (151390,151391,43757,43568);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151390,0,0,1,16,0,0,'12380'),
(151391,0,0,1,16,0,0,'12380'),
(43757,0,0,1,16,0,0,'12380'),
(43568,0,0,1,16,0,0,'12380');

-- ----------------------------------------------
-- FIREBRAND HALLS
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9259,9260,9261,9262,9263,9264, 9596);

-- Generic scripts for groups of Firebrand NPCs chatting
-- One grunt, one invoker, one darkweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=925901;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(925901, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(925901, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Grunt random emote'),
(925901, 21, 1, 1, 0, 9261, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Darkweaver random emote'),
(925901, 33, 1, 1, 0, 9262, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Evoker random emote'),
(925901, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One grunt, one darkweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926101, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926101, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Darkweaver random emote'),
(926101, 21, 1, 1, 0, 9259, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Grunt random emote'),
(926101, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One legionnaire, one pyromcancer, one dreadweaver
DELETE FROM `dbscripts_on_creature_movement` WHERE id=926001;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(926001, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(926001, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Legionnaire random emote'),
(926001, 21, 1, 1, 0, 9263, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Dreadweaver random emote'),
(926001, 33, 1, 1, 0, 9264, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Firebrand Pyromancer random emote'),
(926001, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');


-- Room near Tazz Alaor
call script_npc(151436, 925901);
DELETE FROM `creature_addon` WHERE `guid`= 151437;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151437,0,3,1,16,0,0,'6606');

-- First Corridor

-- Clean up: those spawns are not here (the guids are reused below)
DELETE FROM creature WHERE guid=43766;
DELETE FROM creature_addon WHERE guid=43766;
DELETE FROM creature_movement WHERE id=43766;
DELETE FROM game_event_creature WHERE guid=43766;
DELETE FROM game_event_creature_data WHERE guid=43766;
DELETE FROM creature_battleground WHERE guid=43766;
DELETE FROM creature_linking WHERE guid=43766 OR master_guid=43766;
DELETE FROM creature WHERE guid=44008;
DELETE FROM creature_addon WHERE guid=44008;
DELETE FROM creature_movement WHERE id=44008;
DELETE FROM game_event_creature WHERE guid=44008;
DELETE FROM game_event_creature_data WHERE guid=44008;
DELETE FROM creature_battleground WHERE guid=44008;
DELETE FROM creature_linking WHERE guid=44008 OR master_guid=44008;
DELETE FROM creature WHERE guid=44019;
DELETE FROM creature_addon WHERE guid=44019;
DELETE FROM creature_movement WHERE id=44019;
DELETE FROM game_event_creature WHERE guid=44019;
DELETE FROM game_event_creature_data WHERE guid=44019;
DELETE FROM creature_battleground WHERE guid=44019;
DELETE FROM creature_linking WHERE guid=44019 OR master_guid=44019;
DELETE FROM creature WHERE guid=44337;
DELETE FROM creature_addon WHERE guid=44337;
DELETE FROM creature_movement WHERE id=44337;
DELETE FROM game_event_creature WHERE guid=44337;
DELETE FROM game_event_creature_data WHERE guid=44337;
DELETE FROM creature_battleground WHERE guid=44337;
DELETE FROM creature_linking WHERE guid=44337 OR master_guid=44337;
DELETE FROM creature WHERE guid=44338;
DELETE FROM creature_addon WHERE guid=44338;
DELETE FROM creature_movement WHERE id=44338;
DELETE FROM game_event_creature WHERE guid=44338;
DELETE FROM game_event_creature_data WHERE guid=44338;
DELETE FROM creature_battleground WHERE guid=44338;
DELETE FROM creature_linking WHERE guid=44338 OR master_guid=44338;

-- First tent: removed wrong spawn (probably static from patrol) and respawned the group of 3
DELETE FROM creature WHERE guid=43762;
DELETE FROM creature_addon WHERE guid=43762;
DELETE FROM creature_movement WHERE id=43762;
DELETE FROM game_event_creature WHERE guid=43762;
DELETE FROM game_event_creature_data WHERE guid=43762;
DELETE FROM creature_battleground WHERE guid=43762;
DELETE FROM creature_linking WHERE guid=43762 OR master_guid=43762;

DELETE FROM creature WHERE guid=44269;
DELETE FROM creature_addon WHERE guid=44269;
DELETE FROM creature_movement WHERE id=44269;
DELETE FROM game_event_creature WHERE guid=44269;
DELETE FROM game_event_creature_data WHERE guid=44269;
DELETE FROM creature_battleground WHERE guid=44269;
DELETE FROM creature_linking WHERE guid=44269 OR master_guid=44269;
DELETE FROM creature WHERE guid=44270;
DELETE FROM creature_addon WHERE guid=44270;
DELETE FROM creature_movement WHERE id=44270;
DELETE FROM game_event_creature WHERE guid=44270;
DELETE FROM game_event_creature_data WHERE guid=44270;
DELETE FROM creature_battleground WHERE guid=44270;
DELETE FROM creature_linking WHERE guid=44270 OR master_guid=44270;
DELETE FROM creature WHERE guid=44154;
DELETE FROM creature_addon WHERE guid=44154;
DELETE FROM creature_movement WHERE id=44154;
DELETE FROM game_event_creature WHERE guid=44154;
DELETE FROM game_event_creature_data WHERE guid=44154;
DELETE FROM creature_battleground WHERE guid=44154;
DELETE FROM creature_linking WHERE guid=44154 OR master_guid=44154;
DELETE FROM `creature_addon` WHERE `guid`=151412;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151412,0,0,1,16,0,0,'13236');

-- Second tent: despawned and remade two of the group of three NPCs, spawned a missing NPC
call script_npc(151438, 925901);
DELETE FROM creature WHERE guid=44152;
DELETE FROM creature_addon WHERE guid=44152;
DELETE FROM creature_movement WHERE id=44152;
DELETE FROM game_event_creature WHERE guid=44152;
DELETE FROM game_event_creature_data WHERE guid=44152;
DELETE FROM creature_battleground WHERE guid=44152;
DELETE FROM creature_linking WHERE guid=44152 OR master_guid=44152;

-- Second corridor
-- 1st tent right side of corridor: respawned the whole group of three
DELETE FROM creature WHERE guid=43765;
DELETE FROM creature_addon WHERE guid=43765;
DELETE FROM creature_movement WHERE id=43765;
DELETE FROM game_event_creature WHERE guid=43765;
DELETE FROM game_event_creature_data WHERE guid=43765;
DELETE FROM creature_battleground WHERE guid=43765;
DELETE FROM creature_linking WHERE guid=43765 OR master_guid=43765;
DELETE FROM `creature_addon` WHERE `guid`= 151422;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151422,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44151;
DELETE FROM creature_addon WHERE guid=44151;
DELETE FROM creature_movement WHERE id=44151;
DELETE FROM game_event_creature WHERE guid=44151;
DELETE FROM game_event_creature_data WHERE guid=44151;
DELETE FROM creature_battleground WHERE guid=44151;
DELETE FROM creature_linking WHERE guid=44151 OR master_guid=44151;
DELETE FROM creature WHERE guid=44007;
DELETE FROM creature_addon WHERE guid=44007;
DELETE FROM creature_movement WHERE id=44007;
DELETE FROM game_event_creature WHERE guid=44007;
DELETE FROM game_event_creature_data WHERE guid=44007;
DELETE FROM creature_battleground WHERE guid=44007;
DELETE FROM creature_linking WHERE guid=44007 OR master_guid=44007;

-- 1st tent left side of corridor: respawned the whole group of four
DELETE FROM creature WHERE guid=43768;
DELETE FROM creature_addon WHERE guid=43768;
DELETE FROM creature_movement WHERE id=43768;
DELETE FROM game_event_creature WHERE guid=43768;
DELETE FROM game_event_creature_data WHERE guid=43768;
DELETE FROM creature_battleground WHERE guid=43768;
DELETE FROM creature_linking WHERE guid=43768 OR master_guid=43768;
call script_npc(151425, 925901);
DELETE FROM creature WHERE guid=44149;
DELETE FROM creature_addon WHERE guid=44149;
DELETE FROM creature_movement WHERE id=44149;
DELETE FROM game_event_creature WHERE guid=44149;
DELETE FROM game_event_creature_data WHERE guid=44149;
DELETE FROM creature_battleground WHERE guid=44149;
DELETE FROM creature_linking WHERE guid=44149 OR master_guid=44149;
DELETE FROM creature WHERE guid=44078;
DELETE FROM creature_addon WHERE guid=44078;
DELETE FROM creature_movement WHERE id=44078;
DELETE FROM game_event_creature WHERE guid=44078;
DELETE FROM game_event_creature_data WHERE guid=44078;
DELETE FROM creature_battleground WHERE guid=44078;
DELETE FROM creature_linking WHERE guid=44078 OR master_guid=44078;

-- Third tent right side of the corridor: respawned the group of two and added two missing spawns and made one of the grunt sit
DELETE FROM creature WHERE guid=44150;
DELETE FROM creature_addon WHERE guid=44150;
DELETE FROM creature_movement WHERE id=44150;
DELETE FROM game_event_creature WHERE guid=44150;
DELETE FROM game_event_creature_data WHERE guid=44150;
DELETE FROM creature_battleground WHERE guid=44150;
DELETE FROM creature_linking WHERE guid=44150 OR master_guid=44150;
DELETE FROM creature WHERE guid=44009;
DELETE FROM creature_addon WHERE guid=44009;
DELETE FROM creature_movement WHERE id=44009;
DELETE FROM game_event_creature WHERE guid=44009;
DELETE FROM game_event_creature_data WHERE guid=44009;
DELETE FROM creature_battleground WHERE guid=44009;
DELETE FROM creature_linking WHERE guid=44009 OR master_guid=44009;
DELETE FROM `creature_addon` WHERE `guid`=151408;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151408,0,0,1,16,0,0,'13236');

-- Bannok Grimaxe 2nd spawn, alternate and addon (sit)
DELETE FROM `creature_addon` WHERE `guid`=151426;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151426,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44337;
INSERT INTO creature VALUES (44337,9596,229,1,0,0,-74.7427,-405.157,-18.9348,5.15026,8*60*60,0,0,8883,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44337;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44337,0,1,1,16,0,0,'');
DELETE FROM `creature_addon` WHERE `guid`=45843;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45843,0,1,1,16,0,0,'');

DELETE FROM pool_creature WHERE guid IN (151426, 44337, 45843);
INSERT INTO pool_creature VALUES
(151426, 25624, 0, 'LBRS - Bannok Grimaxe'),
(44337, 25624, 25, 'LBRS - Bannok Grimaxe'),
(45843, 25624, 25, 'LBRS - Bannok Grimaxe');
DELETE FROM pool_template WHERE entry=25624;
INSERT INTO pool_template VALUES
(25624, 1, 'LBRS - Bannok Grimaxe');

-- Next room
-- Right corner: removed wrong spawns and respawned the two NPCs that should sleep
DELETE FROM creature WHERE guid=44271;
DELETE FROM creature_addon WHERE guid=44271;
DELETE FROM creature_movement WHERE id=44271;
DELETE FROM game_event_creature WHERE guid=44271;
DELETE FROM game_event_creature_data WHERE guid=44271;
DELETE FROM creature_battleground WHERE guid=44271;
DELETE FROM creature_linking WHERE guid=44271 OR master_guid=44271;
DELETE FROM creature WHERE guid=44272;
DELETE FROM creature_addon WHERE guid=44272;
DELETE FROM creature_movement WHERE id=44272;
DELETE FROM game_event_creature WHERE guid=44272;
DELETE FROM game_event_creature_data WHERE guid=44272;
DELETE FROM creature_battleground WHERE guid=44272;
DELETE FROM creature_linking WHERE guid=44272 OR master_guid=44272;
DELETE FROM creature WHERE guid=44339;
DELETE FROM creature_addon WHERE guid=44339;
DELETE FROM creature_movement WHERE id=44339;
DELETE FROM game_event_creature WHERE guid=44339;
DELETE FROM game_event_creature_data WHERE guid=44339;
DELETE FROM creature_battleground WHERE guid=44339;
DELETE FROM creature_linking WHERE guid=44339 OR master_guid=44339;
DELETE FROM creature WHERE guid=44312;
DELETE FROM creature_addon WHERE guid=44312;
DELETE FROM creature_movement WHERE id=44312;
DELETE FROM game_event_creature WHERE guid=44312;
DELETE FROM game_event_creature_data WHERE guid=44312;
DELETE FROM creature_battleground WHERE guid=44312;
DELETE FROM creature_linking WHERE guid=44312 OR master_guid=44312;
DELETE FROM `creature_addon` WHERE `guid`= 151432;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151432,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44311;
DELETE FROM creature_addon WHERE guid=44311;
DELETE FROM creature_movement WHERE id=44311;
DELETE FROM game_event_creature WHERE guid=44311;
DELETE FROM game_event_creature_data WHERE guid=44311;
DELETE FROM creature_battleground WHERE guid=44311;
DELETE FROM creature_linking WHERE guid=44311 OR master_guid=44311;
DELETE FROM `creature_addon` WHERE `guid`= 151402;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151402,0,3,1,16,0,0,'6606');
-- Tent: made the grunt sit, respawned the two others NPCs
DELETE FROM `creature_addon` WHERE `guid`=151431;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151431,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44310;
DELETE FROM creature_addon WHERE guid=44310;
DELETE FROM creature_movement WHERE id=44310;
DELETE FROM game_event_creature WHERE guid=44310;
DELETE FROM game_event_creature_data WHERE guid=44310;
DELETE FROM creature_battleground WHERE guid=44310;
DELETE FROM creature_linking WHERE guid=44310 OR master_guid=44310;
DELETE FROM creature WHERE guid=44309;
DELETE FROM creature_addon WHERE guid=44309;
DELETE FROM creature_movement WHERE id=44309;
DELETE FROM game_event_creature WHERE guid=44309;
DELETE FROM game_event_creature_data WHERE guid=44309;
DELETE FROM creature_battleground WHERE guid=44309;
DELETE FROM creature_linking WHERE guid=44309 OR master_guid=44309;
-- Near the wagon: changed orientation of a NPC and respawned the others
DELETE FROM creature WHERE guid=44314;
DELETE FROM creature_addon WHERE guid=44314;
DELETE FROM creature_movement WHERE id=44314;
DELETE FROM game_event_creature WHERE guid=44314;
DELETE FROM game_event_creature_data WHERE guid=44314;
DELETE FROM creature_battleground WHERE guid=44314;
DELETE FROM creature_linking WHERE guid=44314 OR master_guid=44314;
DELETE FROM `creature_addon` WHERE `guid`= 151415;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151415,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44316;
DELETE FROM creature_addon WHERE guid=44316;
DELETE FROM creature_movement WHERE id=44316;
DELETE FROM game_event_creature WHERE guid=44316;
DELETE FROM game_event_creature_data WHERE guid=44316;
DELETE FROM creature_battleground WHERE guid=44316;
DELETE FROM creature_linking WHERE guid=44316 OR master_guid=44316;
DELETE FROM `creature_addon` WHERE `guid`= 151433;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151433,0,3,1,16,0,0,'6606');
DELETE FROM creature WHERE guid=44317;
DELETE FROM creature_addon WHERE guid=44317;
DELETE FROM creature_movement WHERE id=44317;
DELETE FROM game_event_creature WHERE guid=44317;
DELETE FROM game_event_creature_data WHERE guid=44317;
DELETE FROM creature_battleground WHERE guid=44317;
DELETE FROM creature_linking WHERE guid=44317 OR master_guid=44317;
DELETE FROM `creature_addon` WHERE `guid`= 151416;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151416,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`=151428;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151428,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44315;
DELETE FROM creature_addon WHERE guid=44315;
DELETE FROM creature_movement WHERE id=44315;
DELETE FROM game_event_creature WHERE guid=44315;
DELETE FROM game_event_creature_data WHERE guid=44315;
DELETE FROM creature_battleground WHERE guid=44315;
DELETE FROM creature_linking WHERE guid=44315 OR master_guid=44315;

-- Group near the wagon on opposite side: full respawn
DELETE FROM creature WHERE guid=44304;
DELETE FROM creature_addon WHERE guid=44304;
DELETE FROM creature_movement WHERE id=44304;
DELETE FROM game_event_creature WHERE guid=44304;
DELETE FROM game_event_creature_data WHERE guid=44304;
DELETE FROM creature_battleground WHERE guid=44304;
DELETE FROM creature_linking WHERE guid=44304 OR master_guid=44304;
call script_npc(151429, 925901);
DELETE FROM creature WHERE guid=44305;
DELETE FROM creature_addon WHERE guid=44305;
DELETE FROM creature_movement WHERE id=44305;
DELETE FROM game_event_creature WHERE guid=44305;
DELETE FROM game_event_creature_data WHERE guid=44305;
DELETE FROM creature_battleground WHERE guid=44305;
DELETE FROM creature_linking WHERE guid=44305 OR master_guid=44305;
DELETE FROM creature WHERE guid=44307;
DELETE FROM creature_addon WHERE guid=44307;
DELETE FROM creature_movement WHERE id=44307;
DELETE FROM game_event_creature WHERE guid=44307;
DELETE FROM game_event_creature_data WHERE guid=44307;
DELETE FROM creature_battleground WHERE guid=44307;
DELETE FROM creature_linking WHERE guid=44307 OR master_guid=44307;
DELETE FROM creature WHERE guid=44306;
DELETE FROM creature_addon WHERE guid=44306;
DELETE FROM creature_movement WHERE id=44306;
DELETE FROM game_event_creature WHERE guid=44306;
DELETE FROM game_event_creature_data WHERE guid=44306;
DELETE FROM creature_battleground WHERE guid=44306;
DELETE FROM creature_linking WHERE guid=44306 OR master_guid=44306;
DELETE FROM `creature_addon` WHERE `guid`=44318;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44318,0,1,1,16,0,0,'');

-- Group before the ramp to spiders: full respawn and removed wrong pseudo patrols
DELETE FROM creature WHERE guid=44331;
DELETE FROM creature_addon WHERE guid=44331;
DELETE FROM creature_movement WHERE id=44331;
DELETE FROM game_event_creature WHERE guid=44331;
DELETE FROM game_event_creature_data WHERE guid=44331;
DELETE FROM creature_battleground WHERE guid=44331;
DELETE FROM creature_linking WHERE guid=44331 OR master_guid=44331;
DELETE FROM creature WHERE guid=44336;
DELETE FROM creature_addon WHERE guid=44336;
DELETE FROM creature_movement WHERE id=44336;
DELETE FROM game_event_creature WHERE guid=44336;
DELETE FROM game_event_creature_data WHERE guid=44336;
DELETE FROM creature_battleground WHERE guid=44336;
DELETE FROM creature_linking WHERE guid=44336 OR master_guid=44336;
DELETE FROM creature WHERE guid=44332;
DELETE FROM creature_addon WHERE guid=44332;
DELETE FROM creature_movement WHERE id=44332;
DELETE FROM game_event_creature WHERE guid=44332;
DELETE FROM game_event_creature_data WHERE guid=44332;
DELETE FROM creature_battleground WHERE guid=44332;
DELETE FROM creature_linking WHERE guid=44332 OR master_guid=44332;
DELETE FROM creature WHERE guid=44335;
DELETE FROM creature_addon WHERE guid=44335;
DELETE FROM creature_movement WHERE id=44335;
DELETE FROM game_event_creature WHERE guid=44335;
DELETE FROM game_event_creature_data WHERE guid=44335;
DELETE FROM creature_battleground WHERE guid=44335;
DELETE FROM creature_linking WHERE guid=44335 OR master_guid=44335;
DELETE FROM creature WHERE guid=44334;
DELETE FROM creature_addon WHERE guid=44334;
DELETE FROM creature_movement WHERE id=44334;
DELETE FROM game_event_creature WHERE guid=44334;
DELETE FROM game_event_creature_data WHERE guid=44334;
DELETE FROM creature_battleground WHERE guid=44334;
DELETE FROM creature_linking WHERE guid=44334 OR master_guid=44334;
DELETE FROM creature WHERE guid=44333;
DELETE FROM creature_addon WHERE guid=44333;
DELETE FROM creature_movement WHERE id=44333;
DELETE FROM game_event_creature WHERE guid=44333;
DELETE FROM game_event_creature_data WHERE guid=44333;
DELETE FROM creature_battleground WHERE guid=44333;
DELETE FROM creature_linking WHERE guid=44333 OR master_guid=44333;
DELETE FROM creature WHERE guid=44329;
DELETE FROM creature_addon WHERE guid=44329;
DELETE FROM creature_movement WHERE id=44329;
DELETE FROM game_event_creature WHERE guid=44329;
DELETE FROM game_event_creature_data WHERE guid=44329;
DELETE FROM creature_battleground WHERE guid=44329;
DELETE FROM creature_linking WHERE guid=44329 OR master_guid=44329;
DELETE FROM creature WHERE guid=44330;
DELETE FROM creature_addon WHERE guid=44330;
DELETE FROM creature_movement WHERE id=44330;
DELETE FROM game_event_creature WHERE guid=44330;
DELETE FROM game_event_creature_data WHERE guid=44330;
DELETE FROM creature_battleground WHERE guid=44330;
DELETE FROM creature_linking WHERE guid=44330 OR master_guid=44330;
DELETE FROM creature WHERE guid=44327;
DELETE FROM creature_addon WHERE guid=44327;
DELETE FROM creature_movement WHERE id=44327;
DELETE FROM game_event_creature WHERE guid=44327;
DELETE FROM game_event_creature_data WHERE guid=44327;
DELETE FROM creature_battleground WHERE guid=44327;
DELETE FROM creature_linking WHERE guid=44327 OR master_guid=44327;
DELETE FROM `creature_addon` WHERE `guid`=151435;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151435,0,1,1,16,0,0,'');
call script_npc(151417, 926101);
DELETE FROM `creature_addon` WHERE `guid`= 151434;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(151434,0,3,1,16,0,0,'6606');

-- Dreadweavers corner: respawned the three groups
-- group 1
DELETE FROM creature WHERE guid=44322;
DELETE FROM creature_addon WHERE guid=44322;
DELETE FROM creature_movement WHERE id=44322;
DELETE FROM game_event_creature WHERE guid=44322;
DELETE FROM game_event_creature_data WHERE guid=44322;
DELETE FROM creature_battleground WHERE guid=44322;
DELETE FROM creature_linking WHERE guid=44322 OR master_guid=44322;
DELETE FROM creature WHERE guid=44322;
INSERT INTO creature VALUES (44322,9260,229,1,0,0,-143.435,-512.94,-18.4564,0.774024,2*60*60,0,0,8613,0,0,0);
call script_npc(44322, 926001);
DELETE FROM creature WHERE guid=44323;
DELETE FROM creature_addon WHERE guid=44323;
DELETE FROM creature_movement WHERE id=44323;
DELETE FROM game_event_creature WHERE guid=44323;
DELETE FROM game_event_creature_data WHERE guid=44323;
DELETE FROM creature_battleground WHERE guid=44323;
DELETE FROM creature_linking WHERE guid=44323 OR master_guid=44323;
DELETE FROM creature WHERE guid=44323;
INSERT INTO creature VALUES (44323,9263,229,1,0,0,-143.495,-510.424,-18.4564,5.57438,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44326;
DELETE FROM creature_addon WHERE guid=44326;
DELETE FROM creature_movement WHERE id=44326;
DELETE FROM game_event_creature WHERE guid=44326;
DELETE FROM game_event_creature_data WHERE guid=44326;
DELETE FROM creature_battleground WHERE guid=44326;
DELETE FROM creature_linking WHERE guid=44326 OR master_guid=44326;
DELETE FROM creature WHERE guid=44326;
INSERT INTO creature VALUES (44326,9264,229,1,0,0,-140.14,-512.166,-18.456,2.83726,2*60*60,0,0,6681,2241,0,0);
-- group 2
DELETE FROM creature WHERE guid=44324;
DELETE FROM creature_addon WHERE guid=44324;
DELETE FROM creature_movement WHERE id=44324;
DELETE FROM game_event_creature WHERE guid=44324;
DELETE FROM game_event_creature_data WHERE guid=44324;
DELETE FROM creature_battleground WHERE guid=44324;
DELETE FROM creature_linking WHERE guid=44324 OR master_guid=44324;
DELETE FROM creature WHERE guid=44324;
INSERT INTO creature VALUES (44324,9263,229,1,0,0,-146.468,-497.174,-18.4564,6.17913,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid`=44324;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44324,0,1,1,16,0,0,'');
DELETE FROM creature WHERE guid=44321;
DELETE FROM creature_addon WHERE guid=44321;
DELETE FROM creature_movement WHERE id=44321;
DELETE FROM game_event_creature WHERE guid=44321;
DELETE FROM game_event_creature_data WHERE guid=44321;
DELETE FROM creature_battleground WHERE guid=44321;
DELETE FROM creature_linking WHERE guid=44321 OR master_guid=44321;
DELETE FROM creature WHERE guid=44321;
INSERT INTO creature VALUES (44321,9260,229,1,0,0,-142.639,-495.548,-18.4564,4.72143,2*60*60,0,0,8613,0,0,0);
call script_npc(44321, 926001);
DELETE FROM creature WHERE guid=44325;
DELETE FROM creature_addon WHERE guid=44325;
DELETE FROM creature_movement WHERE id=44325;
DELETE FROM game_event_creature WHERE guid=44325;
DELETE FROM game_event_creature_data WHERE guid=44325;
DELETE FROM creature_battleground WHERE guid=44325;
DELETE FROM creature_linking WHERE guid=44325 OR master_guid=44325;
DELETE FROM creature WHERE guid=44325;
INSERT INTO creature VALUES (44325,9264,229,1,0,0,-141.446,-499.833,-18.4564,2.61656,2*60*60,0,0,6681,2241,0,0);
-- group 3
DELETE FROM creature_addon WHERE guid=44319;
DELETE FROM creature_movement WHERE id=44319;
DELETE FROM game_event_creature WHERE guid=44319;
DELETE FROM game_event_creature_data WHERE guid=44319;
DELETE FROM creature_battleground WHERE guid=44319;
DELETE FROM creature_linking WHERE guid=44319 OR master_guid=44319;
DELETE FROM creature WHERE guid=44319;
INSERT INTO creature VALUES (44319,9264,229,1,0,0,-156.567,-495.882,-18.4564,2.97942,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=44320;
DELETE FROM creature_addon WHERE guid=44320;
DELETE FROM creature_movement WHERE id=44320;
DELETE FROM game_event_creature WHERE guid=44320;
DELETE FROM game_event_creature_data WHERE guid=44320;
DELETE FROM creature_battleground WHERE guid=44320;
DELETE FROM creature_linking WHERE guid=44320 OR master_guid=44320;
DELETE FROM creature WHERE guid=44320;
INSERT INTO creature VALUES (44320,9263,229,1,0,0,-158.99,-499.009,-18.4564,2.61185,2*60*60,0,0,6681,2241,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (44320,44319);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(44320,0,0,1,16,0,0,'12380'),
(44319,0,0,1,16,0,0,'12380');

-- ----------------------------------------------
-- BLOODAXE HALLS
-- ----------------------------------------------

UPDATE creature_template SET SpeedWalk=1 WHERE entry IN (9716,9717,9718,10221,9736);
UPDATE creature SET MovementType=1, spawndist=3 WHERE id=10221;

-- Generic scripts for groups of Bloodaxe NPCs chatting
-- Two Warmonger, one evoker
DELETE FROM `dbscripts_on_creature_movement` WHERE id=971601;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(971601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(971601, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971601, 21, 1, 1, 0, 9716, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971601, 33, 1, 1, 0, 9693, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Evoker random emote'),
(971601, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- Two Warmonger, one summoner
DELETE FROM `dbscripts_on_creature_movement` WHERE id=971602;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(971602, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(971602, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971602, 21, 1, 1, 0, 9716, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Warmonger random emote'),
(971602, 33, 1, 1, 0, 9717, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Summoner random emote'),
(971602, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

-- One veteran, one evoker
DELETE FROM `dbscripts_on_creature_movement` WHERE id=958301;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(958301, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(958301, 6, 1, 1, 0, 0, 0, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Veteran random emote'),
(958301, 33, 1, 1, 0, 9693, 15, 0, 11, 1, 1, 274, 0, 0, 0, 0, 'Bloodaxe Evoker random emote'),
(958301, 50, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');


-- First hall, stair left (to quatermaster)
-- Respawned group of three on first level
DELETE FROM creature WHERE guid=45742;
DELETE FROM creature_addon WHERE guid=45742;
DELETE FROM creature_movement WHERE id=45742;
DELETE FROM game_event_creature WHERE guid=45742;
DELETE FROM game_event_creature_data WHERE guid=45742;
DELETE FROM creature_battleground WHERE guid=45742;
DELETE FROM creature_linking WHERE guid=45742 OR master_guid=45742;
DELETE FROM creature WHERE guid=45742;
INSERT INTO creature VALUES (45742,9716,229,1,0,0,-168.491,-410.858,76.1473,4.65782,2*60*60,2,0,8352,0,0,1);
DELETE FROM creature WHERE guid=45741;
DELETE FROM creature_addon WHERE guid=45741;
DELETE FROM creature_movement WHERE id=45741;
DELETE FROM game_event_creature WHERE guid=45741;
DELETE FROM game_event_creature_data WHERE guid=45741;
DELETE FROM creature_battleground WHERE guid=45741;
DELETE FROM creature_linking WHERE guid=45741 OR master_guid=45741;
DELETE FROM creature WHERE guid=45741;
INSERT INTO creature VALUES (45741,9716,229,1,0,0,-168.363,-416.843,76.1473,1.57277,2*60*60,2,0,8613,0,0,1);
DELETE FROM creature WHERE guid=45734;
DELETE FROM creature_addon WHERE guid=45734;
DELETE FROM creature_movement WHERE id=45734;
DELETE FROM game_event_creature WHERE guid=45734;
DELETE FROM game_event_creature_data WHERE guid=45734;
DELETE FROM creature_battleground WHERE guid=45734;
DELETE FROM creature_linking WHERE guid=45734 OR master_guid=45734;
DELETE FROM creature WHERE guid=45734;
INSERT INTO creature VALUES (45734,9717,229,1,0,0,-164.702,-414.037,76.1473,3.1687,2*60*60,2,0,6681,2241,0,1);

-- Second level, right before quatermaster room
DELETE FROM creature WHERE guid=45748;
DELETE FROM creature_addon WHERE guid=45748;
DELETE FROM creature_movement WHERE id=45748;
DELETE FROM game_event_creature WHERE guid=45748;
DELETE FROM game_event_creature_data WHERE guid=45748;
DELETE FROM creature_battleground WHERE guid=45748;
DELETE FROM creature_linking WHERE guid=45748 OR master_guid=45748;
DELETE FROM creature WHERE guid=45744;
DELETE FROM creature_addon WHERE guid=45744;
DELETE FROM creature_movement WHERE id=45744;
DELETE FROM game_event_creature WHERE guid=45744;
DELETE FROM game_event_creature_data WHERE guid=45744;
DELETE FROM creature_battleground WHERE guid=45744;
DELETE FROM creature_linking WHERE guid=45744 OR master_guid=45744;
DELETE FROM creature WHERE guid=45744;
INSERT INTO creature VALUES (45744,9716,229,1,0,0,-171.586,-460.339,87.3903,1.59791,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45756;
DELETE FROM creature_addon WHERE guid=45756;
DELETE FROM creature_movement WHERE id=45756;
DELETE FROM game_event_creature WHERE guid=45756;
DELETE FROM game_event_creature_data WHERE guid=45756;
DELETE FROM creature_battleground WHERE guid=45756;
DELETE FROM creature_linking WHERE guid=45756 OR master_guid=45756;
DELETE FROM creature WHERE guid=45756;
INSERT INTO creature VALUES (45756,9716,229,1,0,0,-175.165,-459.312,87.3903,0.814864,2*60*60,0,0,8352,0,0,0);
call script_npc(45756, 971602);
DELETE FROM creature WHERE guid=45743;
DELETE FROM creature_addon WHERE guid=45743;
DELETE FROM creature_movement WHERE id=45743;
DELETE FROM game_event_creature WHERE guid=45743;
DELETE FROM game_event_creature_data WHERE guid=45743;
DELETE FROM creature_battleground WHERE guid=45743;
DELETE FROM creature_linking WHERE guid=45743 OR master_guid=45743;
DELETE FROM creature WHERE guid=45743;
INSERT INTO creature VALUES (45743,9717,229,1,0,0,-175.122,-454.259,87.3903,5.69062,2*60*60,0,0,6681,2241,0,0);

-- Quatermaster Zigris room
-- First group: full respawn
DELETE FROM creature WHERE guid=45751;
DELETE FROM creature_addon WHERE guid=45751;
DELETE FROM creature_movement WHERE id=45751;
DELETE FROM game_event_creature WHERE guid=45751;
DELETE FROM game_event_creature_data WHERE guid=45751;
DELETE FROM creature_battleground WHERE guid=45751;
DELETE FROM creature_linking WHERE guid=45751 OR master_guid=45751;
DELETE FROM creature WHERE guid=45751;
INSERT INTO creature VALUES (45751,9716,229,1,0,0,-206.131,-458.016,87.3903,4.69395,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45750;
DELETE FROM creature_addon WHERE guid=45750;
DELETE FROM creature_movement WHERE id=45750;
DELETE FROM game_event_creature WHERE guid=45750;
DELETE FROM game_event_creature_data WHERE guid=45750;
DELETE FROM creature_battleground WHERE guid=45750;
DELETE FROM creature_linking WHERE guid=45750 OR master_guid=45750;
DELETE FROM creature WHERE guid=45750;
INSERT INTO creature VALUES (45750,9716,229,1,0,0,-204.508,-463.535,87.3903,2.49248,2*60*60,0,0,8352,0,0,0);
call script_npc(45750, 971602);
DELETE FROM creature WHERE guid=45752;
DELETE FROM creature_addon WHERE guid=45752;
DELETE FROM creature_movement WHERE id=45752;
DELETE FROM game_event_creature WHERE guid=45752;
DELETE FROM game_event_creature_data WHERE guid=45752;
DELETE FROM creature_battleground WHERE guid=45752;
DELETE FROM creature_linking WHERE guid=45752 OR master_guid=45752;
DELETE FROM creature WHERE guid=45752;
INSERT INTO creature VALUES (45752,9717,229,1,0,0,-208.295,-463.045,87.3903,0.938958,2*60*60,0,0,6891,2289,0,0);

-- Quatermaster Zigris group: full respawn
DELETE FROM creature WHERE guid=45753;
DELETE FROM creature_addon WHERE guid=45753;
DELETE FROM creature_movement WHERE id=45753;
DELETE FROM game_event_creature WHERE guid=45753;
DELETE FROM game_event_creature_data WHERE guid=45753;
DELETE FROM creature_battleground WHERE guid=45753;
DELETE FROM creature_linking WHERE guid=45753 OR master_guid=45753;
DELETE FROM creature WHERE guid=45753;
INSERT INTO creature VALUES (45753,9717,229,1,0,0,-207.791,-477.928,87.3903,5.14162,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45754;
DELETE FROM creature_addon WHERE guid=45754;
DELETE FROM creature_movement WHERE id=45754;
DELETE FROM game_event_creature WHERE guid=45754;
DELETE FROM game_event_creature_data WHERE guid=45754;
DELETE FROM creature_battleground WHERE guid=45754;
DELETE FROM creature_linking WHERE guid=45754 OR master_guid=45754;
DELETE FROM creature WHERE guid=45754;
INSERT INTO creature VALUES (45754,9716,229,1,0,0,-207.922,-482.942,87.3903,0.937386,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45755;
DELETE FROM creature_addon WHERE guid=45755;
DELETE FROM creature_movement WHERE id=45755;
DELETE FROM game_event_creature WHERE guid=45755;
DELETE FROM game_event_creature_data WHERE guid=45755;
DELETE FROM creature_battleground WHERE guid=45755;
DELETE FROM creature_linking WHERE guid=45755 OR master_guid=45755;
DELETE FROM creature WHERE guid=45755;
INSERT INTO creature VALUES (45755,9716,229,1,0,0,-202.722,-481.842,87.3903,3.18127,2*60*60,0,0,8352,0,0,0);
call script_npc(45755, 971602);
DELETE FROM creature WHERE guid=45749;
DELETE FROM creature_addon WHERE guid=45749;
DELETE FROM creature_movement WHERE id=45749;
DELETE FROM game_event_creature WHERE guid=45749;
DELETE FROM game_event_creature_data WHERE guid=45749;
DELETE FROM creature_battleground WHERE guid=45749;
DELETE FROM creature_linking WHERE guid=45749 OR master_guid=45749;
DELETE FROM creature WHERE guid=45749;
INSERT INTO creature VALUES (45749,9736,229,1,0,0,-203.989,-478.353,87.3903,3.84964,8*60*60,0,0,23688,0,0,2); -- Zigriss patrols
DELETE FROM creature_movement_template WHERE entry=9736;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime) VALUES 
(9736,1, -203.918762,-478.135529,87.390259, 100, 0),
(9736,2, -203.918762,-478.135529,87.390259, 3.965122, 30000),
(9736,3, -190.850479,-475.261963,87.390259, 100, 0),
(9736,4, -190.850479,-475.261963,87.390259, 5.671793, 30000),
(9736,5, -203.945038,-478.388702,87.390259, 100, 0),
(9736,6, -203.945038,-478.388702,87.390259, 3.965122, 10000),
(9736,7, -198.345413,-469.427399,87.390259, 100, 0),
(9736,8, -199.085068,-461.424805,87.390259, 100, 0),
(9736,9, -202.574509,-459.329315,87.390259, 100, 0),
(9736,10, -202.574509,-459.329315,87.390259, 3.687093, 30000),
(9736,11, -198.197937,-461.801727,87.390259, 100, 0),
(9736,12, -198.052750,-469.985870,87.390259, 100, 0);
DELETE FROM creature WHERE guid=45748;
INSERT INTO creature VALUES (45748,9716,229,1,0,0,-188.459,-477.045,87.3903,5.61679,2*60*60,0,0,8352,0,0,0);

-- Corridor near Halycon: full respawn
DELETE FROM creature WHERE guid=45492;
DELETE FROM creature_addon WHERE guid=45492;
DELETE FROM creature_movement WHERE id=45492;
DELETE FROM game_event_creature WHERE guid=45492;
DELETE FROM game_event_creature_data WHERE guid=45492;
DELETE FROM creature_battleground WHERE guid=45492;
DELETE FROM creature_linking WHERE guid=45492 OR master_guid=45492;
DELETE FROM creature WHERE guid=45785;
DELETE FROM creature_addon WHERE guid=45785;
DELETE FROM creature_movement WHERE id=45785;
DELETE FROM game_event_creature WHERE guid=45785;
DELETE FROM game_event_creature_data WHERE guid=45785;
DELETE FROM creature_battleground WHERE guid=45785;
DELETE FROM creature_linking WHERE guid=45785 OR master_guid=45785;
DELETE FROM creature WHERE guid=45786;
DELETE FROM creature_addon WHERE guid=45786;
DELETE FROM creature_movement WHERE id=45786;
DELETE FROM game_event_creature WHERE guid=45786;
DELETE FROM game_event_creature_data WHERE guid=45786;
DELETE FROM creature_battleground WHERE guid=45786;
DELETE FROM creature_linking WHERE guid=45786 OR master_guid=45786;
DELETE FROM creature WHERE guid=45492;
INSERT INTO creature VALUES (45492,9716,229,1,0,0,-166.83,-328.162,64.4017,1.72829,2*60*60,0,0,8352,0,0,0);
call script_npc(45492, 971601);
DELETE FROM creature WHERE guid=45785;
INSERT INTO creature VALUES (45785,9716,229,1,0,0,-169.543,-324.113,64.4017,6.07546,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45786;
INSERT INTO creature VALUES (45786,9693,229,1,0,0,-163.763,-324.845,64.4017,3.04383,2*60*60,0,0,6891,2289,0,0);

-- Main hall
-- First group in the right: full respawn
DELETE FROM creature WHERE guid=45768;
DELETE FROM creature_addon WHERE guid=45768;
DELETE FROM creature_movement WHERE id=45768;
DELETE FROM game_event_creature WHERE guid=45768;
DELETE FROM game_event_creature_data WHERE guid=45768;
DELETE FROM creature_battleground WHERE guid=45768;
DELETE FROM creature_linking WHERE guid=45768 OR master_guid=45768;
DELETE FROM creature WHERE guid=45762;
DELETE FROM creature_addon WHERE guid=45762;
DELETE FROM creature_movement WHERE id=45762;
DELETE FROM game_event_creature WHERE guid=45762;
DELETE FROM game_event_creature_data WHERE guid=45762;
DELETE FROM creature_battleground WHERE guid=45762;
DELETE FROM creature_linking WHERE guid=45762 OR master_guid=45762;
DELETE FROM creature WHERE guid=45769;
DELETE FROM creature_addon WHERE guid=45769;
DELETE FROM creature_movement WHERE id=45769;
DELETE FROM game_event_creature WHERE guid=45769;
DELETE FROM game_event_creature_data WHERE guid=45769;
DELETE FROM creature_battleground WHERE guid=45769;
DELETE FROM creature_linking WHERE guid=45769 OR master_guid=45769;
DELETE FROM creature WHERE guid=45770;
DELETE FROM creature_addon WHERE guid=45770;
DELETE FROM creature_movement WHERE id=45770;
DELETE FROM game_event_creature WHERE guid=45770;
DELETE FROM game_event_creature_data WHERE guid=45770;
DELETE FROM creature_battleground WHERE guid=45770;
DELETE FROM creature_linking WHERE guid=45770 OR master_guid=45770;
DELETE FROM creature WHERE guid=45768;
INSERT INTO creature VALUES (45768,9716,229,1,0,0,-124,-351.438,70.9524,0.361695,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45762;
INSERT INTO creature VALUES (45762,9717,229,1,0,0,-122.095,-347.072,70.9524,5.27986,2*60*60,0,0,6681,2241,0,0);
DELETE FROM creature WHERE guid=45769;
INSERT INTO creature VALUES (45769,9716,229,1,0,0,-117.003,-347.917,70.9524,3.51742,2*60*60,0,0,8613,0,0,0);
call script_npc(45769, 971602);

-- Second group on left, near the corner
DELETE FROM creature WHERE guid=45777;
DELETE FROM creature_addon WHERE guid=45777;
DELETE FROM creature_movement WHERE id=45777;
DELETE FROM game_event_creature WHERE guid=45777;
DELETE FROM game_event_creature_data WHERE guid=45777;
DELETE FROM creature_battleground WHERE guid=45777;
DELETE FROM creature_linking WHERE guid=45777 OR master_guid=45777;
DELETE FROM creature WHERE guid=45775;
DELETE FROM creature_addon WHERE guid=45775;
DELETE FROM creature_movement WHERE id=45775;
DELETE FROM game_event_creature WHERE guid=45775;
DELETE FROM game_event_creature_data WHERE guid=45775;
DELETE FROM creature_battleground WHERE guid=45775;
DELETE FROM creature_linking WHERE guid=45775 OR master_guid=45775;
DELETE FROM creature WHERE guid=45776;
DELETE FROM creature_addon WHERE guid=45776;
DELETE FROM creature_movement WHERE id=45776;
DELETE FROM game_event_creature WHERE guid=45776;
DELETE FROM game_event_creature_data WHERE guid=45776;
DELETE FROM creature_battleground WHERE guid=45776;
DELETE FROM creature_linking WHERE guid=45776 OR master_guid=45776;
DELETE FROM creature WHERE guid=45771;
DELETE FROM creature_addon WHERE guid=45771;
DELETE FROM creature_movement WHERE id=45771;
DELETE FROM game_event_creature WHERE guid=45771;
DELETE FROM game_event_creature_data WHERE guid=45771;
DELETE FROM creature_battleground WHERE guid=45771;
DELETE FROM creature_linking WHERE guid=45771 OR master_guid=45771;
DELETE FROM creature WHERE guid=45767;
DELETE FROM creature_addon WHERE guid=45767;
DELETE FROM creature_movement WHERE id=45767;
DELETE FROM game_event_creature WHERE guid=45767;
DELETE FROM game_event_creature_data WHERE guid=45767;
DELETE FROM creature_battleground WHERE guid=45767;
DELETE FROM creature_linking WHERE guid=45767 OR master_guid=45767;
DELETE FROM creature WHERE guid=45764;
DELETE FROM creature_addon WHERE guid=45764;
DELETE FROM creature_movement WHERE id=45764;
DELETE FROM game_event_creature WHERE guid=45764;
DELETE FROM game_event_creature_data WHERE guid=45764;
DELETE FROM creature_battleground WHERE guid=45764;
DELETE FROM creature_linking WHERE guid=45764 OR master_guid=45764;
DELETE FROM creature WHERE guid=45772;
DELETE FROM creature_addon WHERE guid=45772;
DELETE FROM creature_movement WHERE id=45772;
DELETE FROM game_event_creature WHERE guid=45772;
DELETE FROM game_event_creature_data WHERE guid=45772;
DELETE FROM creature_battleground WHERE guid=45772;
DELETE FROM creature_linking WHERE guid=45772 OR master_guid=45772;
DELETE FROM creature WHERE guid=45791;
DELETE FROM creature_addon WHERE guid=45791;
DELETE FROM creature_movement WHERE id=45791;
DELETE FROM game_event_creature WHERE guid=45791;
DELETE FROM game_event_creature_data WHERE guid=45791;
DELETE FROM creature_battleground WHERE guid=45791;
DELETE FROM creature_linking WHERE guid=45791 OR master_guid=45791;
DELETE FROM creature WHERE guid=45777;
INSERT INTO creature VALUES (45777,9716,229,1,0,0,-139.884,-307.624,70.9524,1.46596,2*60*60,0,0,8352,0,0,0);	-- sitting + drinking
DELETE FROM `creature_addon` WHERE `guid`= 45777;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45777,0,1,1,16,0,0,NULL);
call script_npc(45777, 909705);
DELETE FROM `creature_addon` WHERE `guid`= 43494;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43494,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 43495;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43495,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 43493;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43493,0,3,1,16,0,0,'6606');

-- Third group between the two tents: full respawn
DELETE FROM creature WHERE guid=45803;
DELETE FROM creature_addon WHERE guid=45803;
DELETE FROM creature_movement WHERE id=45803;
DELETE FROM game_event_creature WHERE guid=45803;
DELETE FROM game_event_creature_data WHERE guid=45803;
DELETE FROM creature_battleground WHERE guid=45803;
DELETE FROM creature_linking WHERE guid=45803 OR master_guid=45803;
DELETE FROM creature WHERE guid=45789;
DELETE FROM creature_addon WHERE guid=45789;
DELETE FROM creature_movement WHERE id=45789;
DELETE FROM game_event_creature WHERE guid=45789;
DELETE FROM game_event_creature_data WHERE guid=45789;
DELETE FROM creature_battleground WHERE guid=45789;
DELETE FROM creature_linking WHERE guid=45789 OR master_guid=45789;
DELETE FROM creature WHERE guid=45790;
DELETE FROM creature_addon WHERE guid=45790;
DELETE FROM creature_movement WHERE id=45790;
DELETE FROM game_event_creature WHERE guid=45790;
DELETE FROM game_event_creature_data WHERE guid=45790;
DELETE FROM creature_battleground WHERE guid=45790;
DELETE FROM creature_linking WHERE guid=45790 OR master_guid=45790;
DELETE FROM creature WHERE guid=45780;
DELETE FROM creature_addon WHERE guid=45780;
DELETE FROM creature_movement WHERE id=45780;
DELETE FROM game_event_creature WHERE guid=45780;
DELETE FROM game_event_creature_data WHERE guid=45780;
DELETE FROM creature_battleground WHERE guid=45780;
DELETE FROM creature_linking WHERE guid=45780 OR master_guid=45780;
DELETE FROM creature WHERE guid=45779;
DELETE FROM creature_addon WHERE guid=45779;
DELETE FROM creature_movement WHERE id=45779;
DELETE FROM game_event_creature WHERE guid=45779;
DELETE FROM game_event_creature_data WHERE guid=45779;
DELETE FROM creature_battleground WHERE guid=45779;
DELETE FROM creature_linking WHERE guid=45779 OR master_guid=45779;
DELETE FROM creature WHERE guid=45778;
DELETE FROM creature_addon WHERE guid=45778;
DELETE FROM creature_movement WHERE id=45778;
DELETE FROM game_event_creature WHERE guid=45778;
DELETE FROM game_event_creature_data WHERE guid=45778;
DELETE FROM creature_battleground WHERE guid=45778;
DELETE FROM creature_linking WHERE guid=45778 OR master_guid=45778;
DELETE FROM creature WHERE guid=45803;
INSERT INTO creature VALUES (45803,9693,229,1,0,0,-119.934,-294.888,70.9524,0.42924,2*60*60,0,0,6891,2289,0,0);
call script_npc(43497, 958301);
DELETE FROM creature WHERE guid=45790;
INSERT INTO creature VALUES (45790,9693,229,1,0,0,-117.101,-291.242,70.9524,4.42299,2*60*60,0,0,6891,2289,0,0);
DELETE FROM creature WHERE guid=45780;
INSERT INTO creature VALUES (45780,9717,229,1,0,0,-90.6146,-304.129,70.9524,1.9482,2*60*60,8,0,6891,2289,0,1);

-- Fourth group, other side of the chiasm near the tents + crates and barrels: full respawn
DELETE FROM creature WHERE guid=45763;
DELETE FROM creature_addon WHERE guid=45763;
DELETE FROM creature_movement WHERE id=45763;
DELETE FROM game_event_creature WHERE guid=45763;
DELETE FROM game_event_creature_data WHERE guid=45763;
DELETE FROM creature_battleground WHERE guid=45763;
DELETE FROM creature_linking WHERE guid=45763 OR master_guid=45763;
DELETE FROM creature WHERE guid=45765;
DELETE FROM creature_addon WHERE guid=45765;
DELETE FROM creature_movement WHERE id=45765;
DELETE FROM game_event_creature WHERE guid=45765;
DELETE FROM game_event_creature_data WHERE guid=45765;
DELETE FROM creature_battleground WHERE guid=45765;
DELETE FROM creature_linking WHERE guid=45765 OR master_guid=45765;
DELETE FROM creature WHERE guid=45774;
DELETE FROM creature_addon WHERE guid=45774;
DELETE FROM creature_movement WHERE id=45774;
DELETE FROM game_event_creature WHERE guid=45774;
DELETE FROM game_event_creature_data WHERE guid=45774;
DELETE FROM creature_battleground WHERE guid=45774;
DELETE FROM creature_linking WHERE guid=45774 OR master_guid=45774;
DELETE FROM creature WHERE guid=45766;
DELETE FROM creature_addon WHERE guid=45766;
DELETE FROM creature_movement WHERE id=45766;
DELETE FROM game_event_creature WHERE guid=45766;
DELETE FROM game_event_creature_data WHERE guid=45766;
DELETE FROM creature_battleground WHERE guid=45766;
DELETE FROM creature_linking WHERE guid=45766 OR master_guid=45766;
DELETE FROM creature WHERE guid=45793;
DELETE FROM creature_addon WHERE guid=45793;
DELETE FROM creature_movement WHERE id=45793;
DELETE FROM game_event_creature WHERE guid=45793;
DELETE FROM game_event_creature_data WHERE guid=45793;
DELETE FROM creature_battleground WHERE guid=45793;
DELETE FROM creature_linking WHERE guid=45793 OR master_guid=45793;
DELETE FROM creature WHERE guid=45794;
DELETE FROM creature_addon WHERE guid=45794;
DELETE FROM creature_movement WHERE id=45794;
DELETE FROM game_event_creature WHERE guid=45794;
DELETE FROM game_event_creature_data WHERE guid=45794;
DELETE FROM creature_battleground WHERE guid=45794;
DELETE FROM creature_linking WHERE guid=45794 OR master_guid=45794;
DELETE FROM creature WHERE guid=45802;
DELETE FROM creature_addon WHERE guid=45802;
DELETE FROM creature_movement WHERE id=45802;
DELETE FROM game_event_creature WHERE guid=45802;
DELETE FROM game_event_creature_data WHERE guid=45802;
DELETE FROM creature_battleground WHERE guid=45802;
DELETE FROM creature_linking WHERE guid=45802 OR master_guid=45802;
DELETE FROM creature WHERE guid=160365; 	-- Alternate to Gosh Bashguud
DELETE FROM creature_addon WHERE guid=160365;
DELETE FROM creature_movement WHERE id=160365;
DELETE FROM game_event_creature WHERE guid=160365;
DELETE FROM game_event_creature_data WHERE guid=160365;
DELETE FROM creature_battleground WHERE guid=160365;
DELETE FROM creature_linking WHERE guid=160365 OR master_guid=160365;
DELETE FROM creature WHERE guid=45781;
DELETE FROM creature_addon WHERE guid=45781;
DELETE FROM creature_movement WHERE id=45781;
DELETE FROM game_event_creature WHERE guid=45781;
DELETE FROM game_event_creature_data WHERE guid=45781;
DELETE FROM creature_battleground WHERE guid=45781;
DELETE FROM creature_linking WHERE guid=45781 OR master_guid=45781;
DELETE FROM creature WHERE guid=45782;
DELETE FROM creature_addon WHERE guid=45782;
DELETE FROM creature_movement WHERE id=45782;
DELETE FROM game_event_creature WHERE guid=45782;
DELETE FROM game_event_creature_data WHERE guid=45782;
DELETE FROM creature_battleground WHERE guid=45782;
DELETE FROM creature_linking WHERE guid=45782 OR master_guid=45782;
DELETE FROM creature WHERE guid=45788;
DELETE FROM creature_addon WHERE guid=45788;
DELETE FROM creature_movement WHERE id=45788;
DELETE FROM game_event_creature WHERE guid=45788;
DELETE FROM game_event_creature_data WHERE guid=45788;
DELETE FROM creature_battleground WHERE guid=45788;
DELETE FROM creature_linking WHERE guid=45788 OR master_guid=45788;
DELETE FROM creature WHERE guid=45763;
INSERT INTO creature VALUES (45763,9716,229,1,0,0,-93.816,-347.709,70.9524,4.12352,2*60*60,0,0,8613,0,0,0);
DELETE FROM creature WHERE guid=45765;
INSERT INTO creature VALUES (45765,9716,229,1,0,0,-93.9198,-352.221,70.9524,2.32574,2*60*60,0,0,8352,0,0,0);
DELETE FROM creature WHERE guid=45774;
INSERT INTO creature VALUES (45774,9717,229,1,0,0,-87.6315,-341.359,70.9524,6.16241,2*60*60,0,0,6681,2241,0,0);

-- Fifth group: after the bridge, one the left
DELETE FROM creature WHERE guid=45783;
DELETE FROM creature_addon WHERE guid=45783;
DELETE FROM creature_movement WHERE id=45783;
DELETE FROM game_event_creature WHERE guid=45783;
DELETE FROM game_event_creature_data WHERE guid=45783;
DELETE FROM creature_battleground WHERE guid=45783;
DELETE FROM creature_linking WHERE guid=45783 OR master_guid=45783;
DELETE FROM creature WHERE guid=45784;
DELETE FROM creature_addon WHERE guid=45784;
DELETE FROM creature_movement WHERE id=45784;
DELETE FROM game_event_creature WHERE guid=45784;
DELETE FROM game_event_creature_data WHERE guid=45784;
DELETE FROM creature_battleground WHERE guid=45784;
DELETE FROM creature_linking WHERE guid=45784 OR master_guid=45784;
DELETE FROM creature WHERE guid=45800;
DELETE FROM creature_addon WHERE guid=45800;
DELETE FROM creature_movement WHERE id=45800;
DELETE FROM game_event_creature WHERE guid=45800;
DELETE FROM game_event_creature_data WHERE guid=45800;
DELETE FROM creature_battleground WHERE guid=45800;
DELETE FROM creature_linking WHERE guid=45800 OR master_guid=45800;
DELETE FROM creature WHERE guid=45795;
DELETE FROM creature_addon WHERE guid=45795;
DELETE FROM creature_movement WHERE id=45795;
DELETE FROM game_event_creature WHERE guid=45795;
DELETE FROM game_event_creature_data WHERE guid=45795;
DELETE FROM creature_battleground WHERE guid=45795;
DELETE FROM creature_linking WHERE guid=45795 OR master_guid=45795;
DELETE FROM creature WHERE guid=45799;
DELETE FROM creature_addon WHERE guid=45799;
DELETE FROM creature_movement WHERE id=45799;
DELETE FROM game_event_creature WHERE guid=45799;
DELETE FROM game_event_creature_data WHERE guid=45799;
DELETE FROM creature_battleground WHERE guid=45799;
DELETE FROM creature_linking WHERE guid=45799 OR master_guid=45799;
DELETE FROM creature WHERE guid=45798;
DELETE FROM creature_addon WHERE guid=45798;
DELETE FROM creature_movement WHERE id=45798;
DELETE FROM game_event_creature WHERE guid=45798;
DELETE FROM game_event_creature_data WHERE guid=45798;
DELETE FROM creature_battleground WHERE guid=45798;
DELETE FROM creature_linking WHERE guid=45798 OR master_guid=45798;
DELETE FROM creature WHERE guid=45797;
DELETE FROM creature_addon WHERE guid=45797;
DELETE FROM creature_movement WHERE id=45797;
DELETE FROM game_event_creature WHERE guid=45797;
DELETE FROM game_event_creature_data WHERE guid=45797;
DELETE FROM creature_battleground WHERE guid=45797;
DELETE FROM creature_linking WHERE guid=45797 OR master_guid=45797;
DELETE FROM creature WHERE guid=45796;
DELETE FROM creature_addon WHERE guid=45796;
DELETE FROM creature_movement WHERE id=45796;
DELETE FROM game_event_creature WHERE guid=45796;
DELETE FROM game_event_creature_data WHERE guid=45796;
DELETE FROM creature_battleground WHERE guid=45796;
DELETE FROM creature_linking WHERE guid=45796 OR master_guid=45796;
DELETE FROM creature WHERE guid=160101;
DELETE FROM creature_addon WHERE guid=160101;
DELETE FROM creature_movement WHERE id=160101;
DELETE FROM game_event_creature WHERE guid=160101;
DELETE FROM game_event_creature_data WHERE guid=160101;
DELETE FROM creature_battleground WHERE guid=160101;
DELETE FROM creature_linking WHERE guid=160101 OR master_guid=160101;
DELETE FROM creature WHERE guid=160102;
DELETE FROM creature_addon WHERE guid=160102;
DELETE FROM creature_movement WHERE id=160102;
DELETE FROM game_event_creature WHERE guid=160102;
DELETE FROM game_event_creature_data WHERE guid=160102;
DELETE FROM creature_battleground WHERE guid=160102;
DELETE FROM creature_linking WHERE guid=160102 OR master_guid=160102;
DELETE FROM creature WHERE guid=45783;
INSERT INTO creature VALUES (45783,9717,229,1,0,0,-51.6103,-304.008,70.9413,1.59768,2*60*60,0,0,6891,2289,0,0);
DELETE FROM `creature_addon` WHERE `guid`= 43496;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43496,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 43499;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43499,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 45799;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(45799,0,3,1,16,0,0,'6606');
DELETE FROM `creature_addon` WHERE `guid`= 43498;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(43498,0,3,1,16,0,0,'6606');

-- Bashguud 1st spawn
DELETE FROM `creature` WHERE `guid`=45798;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(45798, 9718, 229, 0, 0, -94.917, -339.754, 70.9524, 1.55013, 7200, 5, 0, 8883, 0, 0, 1);
-- Bashguud 2nd spawn
DELETE FROM creature WHERE guid=45799;
INSERT INTO creature VALUES (45799,9718,229,1,0,0,-50.3003,-298.146,70.9406,6.24567,8*60*60,0,0,8883,0,0,0);


-- Pool for Bashguud
DELETE FROM pool_creature WHERE pool_entry=1207;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45798, 1207, 15, 'Ghok Bashguud (9718) - Blackrock Spire');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45763, 1207, 0, 'Alternate to Ghok Bashguud (9718) - Blackrock Spire');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45799, 1207, 15, 'Ghok Bashguud (9718) - Blackrock Spire');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (43499, 1207, 0, 'Alternate to Ghok Bashguud (9718) - Blackrock Spire');

DELETE FROM `pool_template` WHERE `entry`=1207;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1207, 1, 'Ghok Bashguud (9718) - Blackrock Spire');



-- Sixth group: after the bridge, on the right, near the bonefire: full respawn
DELETE FROM creature WHERE guid=45804;
DELETE FROM creature_addon WHERE guid=45804;
DELETE FROM creature_movement WHERE id=45804;
DELETE FROM game_event_creature WHERE guid=45804;
DELETE FROM game_event_creature_data WHERE guid=45804;
DELETE FROM creature_battleground WHERE guid=45804;
DELETE FROM creature_linking WHERE guid=45804 OR master_guid=45804;
DELETE FROM creature WHERE guid=160104;
DELETE FROM creature_addon WHERE guid=160104;
DELETE FROM creature_movement WHERE id=160104;
DELETE FROM game_event_creature WHERE guid=160104;
DELETE FROM game_event_creature_data WHERE guid=160104;
DELETE FROM creature_battleground WHERE guid=160104;
DELETE FROM creature_linking WHERE guid=160104 OR master_guid=160104;
DELETE FROM creature WHERE guid=45805;
DELETE FROM creature_addon WHERE guid=45805;
DELETE FROM creature_movement WHERE id=45805;
DELETE FROM game_event_creature WHERE guid=45805;
DELETE FROM game_event_creature_data WHERE guid=45805;
DELETE FROM creature_battleground WHERE guid=45805;
DELETE FROM creature_linking WHERE guid=45805 OR master_guid=45805;
call script_npc(43501, 958301);
DELETE FROM creature WHERE guid=45805;
INSERT INTO creature VALUES (45805,9693,229,1,0,0,-60.9919,-337.156,70.9415,5.29612,2*60*60,0,0,7107,2369,0,0);

-- Clean up
DELETE FROM creature WHERE guid=45491;
DELETE FROM creature_addon WHERE guid=45491;
DELETE FROM creature_movement WHERE id=45491;
DELETE FROM game_event_creature WHERE guid=45491;
DELETE FROM game_event_creature_data WHERE guid=45491;
DELETE FROM creature_battleground WHERE guid=45491;
DELETE FROM creature_linking WHERE guid=45491 OR master_guid=45491;
DELETE FROM creature WHERE guid=45792;
DELETE FROM creature_addon WHERE guid=45792;
DELETE FROM creature_movement WHERE id=45792;
DELETE FROM game_event_creature WHERE guid=45792;
DELETE FROM game_event_creature_data WHERE guid=45792;
DELETE FROM creature_battleground WHERE guid=45792;
DELETE FROM creature_linking WHERE guid=45792 OR master_guid=45792;
DELETE FROM creature WHERE guid=45787;
DELETE FROM creature_addon WHERE guid=45787;
DELETE FROM creature_movement WHERE id=45787;
DELETE FROM game_event_creature WHERE guid=45787;
DELETE FROM game_event_creature_data WHERE guid=45787;
DELETE FROM creature_battleground WHERE guid=45787;
DELETE FROM creature_linking WHERE guid=45787 OR master_guid=45787;
DELETE FROM creature WHERE guid=45801;
DELETE FROM creature_addon WHERE guid=45801;
DELETE FROM creature_movement WHERE id=45801;
DELETE FROM game_event_creature WHERE guid=45801;
DELETE FROM game_event_creature_data WHERE guid=45801;
DELETE FROM creature_battleground WHERE guid=45801;
DELETE FROM creature_linking WHERE guid=45801 OR master_guid=45801;
DELETE FROM creature WHERE guid=45773;
DELETE FROM creature_addon WHERE guid=45773;
DELETE FROM creature_movement WHERE id=45773;
DELETE FROM game_event_creature WHERE guid=45773;
DELETE FROM game_event_creature_data WHERE guid=45773;
DELETE FROM creature_battleground WHERE guid=45773;
DELETE FROM creature_linking WHERE guid=45773 OR master_guid=45773;

-- Patrols
-- Raider + 2 worgs in the first corridor
DELETE FROM creature WHERE guid=45490;
DELETE FROM creature_addon WHERE guid=45490;
DELETE FROM creature_movement WHERE id=45490;
DELETE FROM game_event_creature WHERE guid=45490;
DELETE FROM game_event_creature_data WHERE guid=45490;
DELETE FROM creature_battleground WHERE guid=45490;
DELETE FROM creature_linking WHERE guid=45490 OR master_guid=45490;
DELETE FROM creature_movement WHERE id IN(45490,151342); -- 45490 old guid
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES
(151342,1, -166.922607,-331.402161,64.401016, 100, 0),
(151342,2, -167.266174,-368.529358,64.401016, 100, 0),
(151342,3, -129.449463,-369.072510,57.433342, 100, 0),
(151342,4, -129.024918,-369.200745,57.433613, 6.234918, 30*1000),
(151342,5, -167.143677,-368.785309,64.400810, 100, 0),
(151342,6, -167.813583,-406.761414,76.147301, 100, 0),
(151342,7, -167.835907,-422.338867,76.177452, 100, 0),
(151342,8, -167.857864,-444.912842,87.390289, 100, 0),
(151342,9, -167.933914,-449.224182,87.390289, 100, 0),
(151342,10, -167.933914,-449.224182,87.390289, 4.722242, 30*1000),
(151342,11, -167.494797,-422.652863,76.336769, 100, 0),
(151342,12, -167.503296,-405.514923,75.646942, 100, 0),
(151342,13, -166.791397,-383.119232,64.400887, 100, 0),
(151342,14, -166.695847,-368.117554,64.400887, 100, 0),
(151342,15, -166.553909,-331.739807,64.400887, 100, 0);
DELETE FROM creature_linking WHERE guid IN (151354, 151359);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(151354, 151342, 515),
(151359, 151342, 515);

-- Raider + 2 worgs on top level
DELETE FROM creature_movement WHERE id IN(45787,151345); -- 45787 old guid
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation, waittime) VALUES
(151345,1, -88.354103,-338.735352,70.951149, 100, 0),
(151345,2, -95.774902,-315.779785,70.951149, 100, 0),
(151345,3, -100.988670,-308.098663,70.951149, 100, 0),
(151345,4, -117.879654,-305.061462,70.951149, 100, 0),
(151345,5, -125.292870,-309.044708,70.951149, 100, 0),
(151345,6, -126.006050,-325.409180,70.951149, 100, 0),
(151345,7, -126.790848,-343.417084,70.951149, 100, 0),
(151345,8, -161.089569,-343.883759,64.401505, 100, 0),
(151345,9, -161.089569,-343.883759,64.401505, 3.166368, 30*1000),
(151345,10, -126.825516,-343.940918,70.953499, 100, 0),
(151345,11, -126.014862,-325.003235,70.953499, 100, 0),
(151345,12, -124.973389,-309.630676,70.953499, 100, 0),
(151345,13, -117.562660,-305.382324,70.953499, 100, 0),
(151345,14, -102.885040,-307.827393,70.953499, 100, 0),
(151345,15, -95.764694,-317.674896,70.953499, 100, 0),
(151345,16, -89.608856,-338.513550,70.953499, 100, 0);
DELETE FROM creature_linking WHERE guid IN (151356, 151351);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(151356, 151345, 515),
(151351, 151345, 515);


-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/1baa79b82558a45e11f7097c2c048435dcaba89e
-- ----------------------------------

-- Fixed missing female version of Firebrand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female 
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656);
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

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9259, 9260, 9261, 9262, 9263, 9264);

-- Marked the ModelId2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9872, 9885, 9868, 9878, 9870, 9889);

-- Fixed alternate ModelId2 & normal ModelId2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888, 9872, 9885, 9868, 9878, 9870, 9889);


-- ----------------------------------
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

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9045, 9097, 9098, 9257, 9258);

-- Marked as male the ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 1 WHERE `modelid` IN (9854, 9856, 9858, 9860, 9862, 9864, 9609);
-- Marked as female the alternate ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 0 WHERE `modelid` IN (9855, 9861, 9853, 9857, 9863, 9865, 9859);


-- ----------------------------------
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

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9583, 9692, 9693, 9696, 9716, 9717);

-- Marked as male the ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 0 WHERE `modelid` IN (9881, 9875, 9873, 9883, 9879);
-- Marked as female the alternate ModelId2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 1 WHERE `modelid` IN (9882, 9876, 9874, 9886, 9880);


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

-- ----------------------------------
-- https://github.com/cmangos/classic-db/commit/1dc560fcdc51169d2a2f700724e91c3a8ef79426
-- ----------------------------------
-- Fixed factions of creatures in Blackrock Spire
-- Many of them were wrong and obviously manually updated
-- Data backported from UDB
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9045;
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
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` = 9218;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9219;
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
UPDATE `creature_template` SET `FactionAlliance` = 90, `FactionHorde` = 90 WHERE `entry` = 9708;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9716;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9717;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9736;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9816;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9817;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9818;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 9819;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10083;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10220;
UPDATE `creature_template` SET `FactionAlliance` = 40, `FactionHorde` = 40 WHERE `entry` = 10221;
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 10257;
UPDATE `creature_template` SET `FactionAlliance` = 90, `FactionHorde` = 90 WHERE `entry` = 10261;
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` = 10263;
UPDATE `creature_template` SET `FactionAlliance` = 1080, `FactionHorde` = 1080 WHERE `entry` = 10296;
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
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 15560;
UPDATE `creature_template` SET `FactionAlliance` = 114, `FactionHorde` = 114 WHERE `entry` = 16044;
UPDATE `creature_template` SET `FactionAlliance` = 114, `FactionHorde` = 114 WHERE `entry` = 16048;