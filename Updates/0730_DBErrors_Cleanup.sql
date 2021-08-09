-- Missing creature_spawn_data_template Data
-- 0 still had curhealth = 1, 1-3 were missing
DELETE FROM `creature_spawn_data_template` WHERE `entry` BETWEEN 0 AND 3;
INSERT INTO creature_spawn_data_template (`entry`, `SpawnFlags`) VALUES
(0,0),(1,0x01),(2,0x02),(3,0x03);

-- Remove Pre Wotlk Zeppelin Triggers
-- 2021-08-09 19:43:48 Creature (GUID: 12403) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 12404) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 12922) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 12923) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 12924) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45074) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45076) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45077) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45100) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45101) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45102) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45206) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45207) does not exist but has a record in `creature_addon`
-- 2021-08-09 19:43:48 Creature (GUID: 45209) does not exist but has a record in `creature_addon`
-- Removed Zeppelin TRIGGERS - Invisible Stalker (Scale x0.5) 25171
-- 2021-08-09 19:43:48 Creature (GUID: 57894) does not exist but has a record in `creature_addon` - Removed Idle Nethergarde Infantry 16831
DELETE FROM `creature_addon` where guid IN (12403,12404,12922,12923,12924,45074,45076,45077,45100,45101,45102,45206,45207,45209,57894);
DELETE FROM `creature` WHERE `guid` IN (12925,12402,45075,45099,45136,45208);
DELETE FROM `creature_addon` WHERE `guid` IN (12925,12402,45075,45099,45136,45208);

-- Add missing pool_templates
-- 2021-08-09 19:59:46 `pool_gameobject` has gameobject guid spawned at map 1 when one or several other spawned at different instanceable map 530 in pool id 25611, skipped.
-- 2021-08-09 19:59:46 `pool_gameobject` has gameobject guid spawned at map 1 when one or several other spawned at different instanceable map 530 in pool id 25611, skipped.
DELETE FROM `pool_template` WHERE `entry` = 25611;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25611, 1, 'Un\'Goro - Green/Red Crystal'); -- replace with gameobject_spawn_entry
DELETE FROM `pool_creature` WHERE `pool_entry` = 25611;

-- missing
DELETE FROM `pool_template` WHERE `entry` IN (1207,1208);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1207, 1, 'Morcrush (18690)'), -- 18690	1207	0	Morcrush (18690)
(1208, 1, 'Hemathion (18692)'); -- 18692	1208	0	Hemathion (18692)

-- somehow not deleted
DELETE FROM `pool_template` WHERE `entry` BETWEEN 25588 AND 25592; -- Old: MC - Firelord / Lava Annihilator
DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 25588 AND 25592;

-- 2021-08-09 20:24:35 `pool_gameobject` has a non existing gameobject spawn (GUID: 137354) defined for pool id (13026), skipped. - missing somehow
DELETE FROM `gameobject` WHERE `guid` = 137354;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(137354, 1618, 530, 1, -2989.82, -12580.9, 12.1264, 3.14159, 0, 0, 0, 0, 45, 90, 100, 1);

-- 2021-08-09 20:28:41 Table 'creature_loot_template' entry 1 isn't creature entry and not referenced from loot, and then useless.
UPDATE `creature_template` SET `LootId` = 1 WHERE `entry` = 1; -- used as dummy befor these template get used in more cases to prevent error

-- 2021-08-09 20:37:52 Table 'reference_loot_template' entry 34010 isn't reference id and not referenced from loot, and then useless.
DELETE FROM `creature_loot_template` WHERE `entry` = 1 AND `mincountOrRef` = -34010;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Classic template unused after 2.3 Scarlet Judge 1837 rework
(1, 34010, 1, 0, -34010, 1, 0, '');

-- c.19178 in undercity - text 11966 - Hallows End Text
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 11003) entry, ignore.
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 11002) entry, ignore.
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 11001) entry, ignore.
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 11004) entry, ignore.
-- c.21859 in terokkar (corpse) - text 10051 & 9457
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 66695) entry, ignore.
-- 2021-08-09 20:40:22 Table `npc_gossip` have nonexistent creature (GUID: 66697) entry, ignore.
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (11003,11002,11001,11004,66697,66695);

-- 2021-08-09 21:03:47 Creature (Entry: 25883) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25887) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25888) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25889) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25890) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25891) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25892) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25893) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25894) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25896) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25897) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25898) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25899) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25900) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25901) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25902) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25903) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25904) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25905) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25906) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25907) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25908) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25909) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25910) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25911) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25912) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25913) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25914) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25915) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25916) has GossipMenuId = 9203 for nonexistent menu
-- 2021-08-09 21:03:47 Creature (Entry: 25917) has GossipMenuId = 9203 for nonexistent menu
DELETE FROM `gossip_menu` WHERE `entry` = 9203;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (9203, 12504, 0, 0);

-- Path for Incandescent Fel Spark 22323 - Reworked Thorne of Kil'jaeden
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97020, but this creature guid does not exist. Skipping.
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97021, but this creature guid does not exist. Skipping.
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97066, but this creature guid does not exist. Skipping.
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97067, but this creature guid does not exist. Skipping.
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97068, but this creature guid does not exist. Skipping.
-- 2021-08-09 21:11:23 Table creature_movement contain path for creature guid 97069, but this creature guid does not exist. Skipping.
DELETE FROM `creature_movement` WHERE id IN (97020,97021,97066,97067,97068,97069);

-- 2021-08-09 21:21:48 Table creature_movement entry 160664 point 30 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 160664 AND `point` = 30;
-- 2021-08-09 21:21:48 Table creature_movement entry 160665 point 26 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 160665 AND `point` = 26;
-- 2021-08-09 21:21:48 Table creature_movement entry 160666 point 22 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 160666 AND `point` = 22;
-- 2021-08-09 21:21:48 Table creature_movement entry 160669 point 25 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 160669 AND `point` = 25;
-- 2021-08-09 21:21:48 Table creature_movement entry 69971 point 6 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69971 AND `point` = 6;
-- 2021-08-09 21:21:48 Table creature_movement entry 69972 point 6 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69972 AND `point` = 6;
-- 2021-08-09 21:21:48 Table creature_movement entry 69998 point 6 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69998 AND `point` = 6;
-- 2021-08-09 21:21:48 Table creature_movement entry 69974 point 10 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69974 AND `point` = 10;
-- 2021-08-09 21:21:48 Table creature_movement entry 69975 point 6 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69975 AND `point` = 6;
-- 2021-08-09 21:21:48 Table creature_movement entry 70004 point 10 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 70004 AND `point` = 10;
-- 2021-08-09 21:21:48 Table creature_movement entry 69993 point 9 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69993 AND `point` = 9;
-- 2021-08-09 21:21:48 Table creature_movement entry 69982 point 6 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69982 AND `point` = 6;
-- 2021-08-09 21:21:48 Table creature_movement entry 69994 point 7 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69994 AND `point` = 7;
-- 2021-08-09 21:21:48 Table creature_movement entry 69987 point 7 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69987 AND `point` = 7;
-- 2021-08-09 21:21:48 Table creature_movement entry 69983 point 5 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 69983 AND `point` = 5;
-- 2021-08-09 21:21:48 Table creature_movement entry 191185 point 15 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 191185 AND `point` = 15;

-- 2021-08-09 21:29:45 Table creature_movement_template for entry 20845, point 1 have script_id 20845 that does not exist in `dbscripts_on_creature_movement`, ignoring
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 20845; -- should be 2084501
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(20845, 3000, 0, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadsoul Orb despawn self');

-- 2021-08-09 21:29:45 Table `dbscripts_on_creature_movement` contain unused script, id 5665601. - old not removed "Lava Surger - Run" subsituted by generic 5
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 5665601; -- .go xyz 1039.56 -666.497 -175.569 409

-- 2021-08-09 21:29:45 BattleGroundEvent: creature with guid 97116 is registered, for a nonexistent event: map:530, event1:0, event2:3
-- 2021-08-09 21:29:45 BattleGroundEvent: creature with guid 97117 is registered, for a nonexistent event: map:530, event1:0, event2:4
-- 2021-08-09 21:29:45 BattleGroundEvent: creature with guid 97118 is registered, for a nonexistent event: map:530, event1:1, event2:3
-- 2021-08-09 21:29:45 BattleGroundEvent: creature with guid 97119 is registered, for a nonexistent event: map:530, event1:1, event2:4
-- 2021-08-09 21:29:45 BattleGroundEvent: creature with guid 97120 is registered, for a nonexistent event: map:530, event1:2, event2:3
-- Shattrath The Tauren Chieftains Event .event start 63
-- 97116	23625	530
-- 97117	23619	530
-- 97118	23626	530
-- 97119	23624	530
-- 97120	23623	530,
DELETE FROM `creature_battleground` WHERE `guid` IN (97116,97117,97118,97119,97120);

