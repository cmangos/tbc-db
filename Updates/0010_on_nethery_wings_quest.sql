-- Misc fixes for quest: "On Nethery Wings" - https://www.wowhead.com/tbc/quest=10438/on-nethery-wings
UPDATE `creature_template_addon` SET `auras` = '35242 18430' WHERE `entry` = 20899; -- missed Dragon Hover s.18430
-- UNIT_FIELD_BOUNDINGRADIUS: 10, UNIT_FIELD_COMBATREACH: 10
UPDATE dbscripts_on_creature_death SET priority = 1, buddy_entry = 19554, search_radius = 1000, data_flags = (1+2+4) where id = 20899; -- Dimensius the All-Devouring 19554 -> Void Conduit 20899
DELETE FROM `dbscripts_on_creature_death` WHERE `id` = 20899 AND `command` = 31;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(20899, 0, 0, 31, 19554, 1000, 0, 0, 0, 0, 18602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 19554 - terminate if not alive');
-- UPDATE gameobject_template SET data1 = 100 WHERE entry = 184643;
-- https://github.com/TrinityCore/TrinityCore/commit/b3de6afdac1ace43ffcf4afc5c9873328f6ca3de use this solution instead
DELETE FROM `gameobject` WHERE `guid` IN (99956,9381,9385,9386) AND `id` = 184643; -- maybe the taxi path is wrong?
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(99956, 184643, 530, 3964.10376, 2008.44445, 383.94104, 0.176697, 0, 0, 0, 1, 180, 180),
(9381, 184643, 530, 3930.18457, 2038.26062, 383.50134, 1.720004, 0, 0, 0, 1, 180, 180),
(9385, 184643, 530, 3902.93530, 1996.42260, 383.64352, 3.275094, 0, 0, 0, 1, 180, 180),
(9386, 184643, 530, 3942.99975, 1970.09973, 383.32125, 5.105074, 0, 0, 0, 1, 180, 180);
UPDATE creature_template SET InhabitType = 4 WHERE Entry = 19565; -- Enormous Void Storm (512 (DisableGravity))
UPDATE creature_template SET InhabitType = 4 WHERE Entry = 19336; -- Void Spawner XL (512 (DisableGravity))
UPDATE creature_template SET InhabitType = 4 WHERE Entry = 21090; -- Professor Dabiri (1536 (DisableGravity, Root))
UPDATE creature_template SET InhabitType = 4 WHERE Entry = 20933; -- Camera Shakers Manaforge Ultris (1536 (DisableGravity, Root))

