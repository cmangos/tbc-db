-- Prevent multiple spawns using CONDITION_SPAWN_COUNT and CREATURE_EXTRA_FLAG_COUNT_SPAWNS
-- These NPCs spawn too far away to use CONDITION_CREATURE_IN_RANGE

-- Demetria <The Scarlet Oracle>
UPDATE creature_template SET ExtraFlags = ExtraFlags|2097152 WHERE entry = 12339;
UPDATE creature_template SET SpeedWalk = 1 WHERE entry = 12352;

DELETE FROM `conditions` WHERE `condition_entry` = 1173;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(1173, 39, 12339, 1);

DELETE FROM dbscripts_on_quest_start WHERE id = 6148 AND delay = 0;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6148, 0, 34, 1173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if Demetria is already spawned');

-- Stitches <Gift from the Embalmer>
UPDATE creature_template SET ExtraFlags = ExtraFlags|2097152 WHERE entry = 412;

DELETE FROM `conditions` WHERE `condition_entry` = 486;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(486, 39, 412, 1);

DELETE FROM dbscripts_on_quest_end WHERE id = 252 AND delay = 0;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(252, 0, 34, 486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if Stitches is already spawned');


