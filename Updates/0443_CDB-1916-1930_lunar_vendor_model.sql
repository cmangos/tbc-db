-- remove static model hack
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 15898;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 15898);

-- Fixed model of Alliance NPC Lunar Festival Vendor in Moonglade
DELETE FROM game_event_creature_data WHERE guid IN (91689,91636,91626,91625,91632,152966,94919);
INSERT INTO game_event_creature_data (guid, spell_start, event) VALUES
(91689, 26384, 7),
(91636, 26384, 7),
(91626, 26520, 7),
(91625, 26384, 7),
(91632, 26520, 7),
(152966, 26384, 7), -- 94920
(94919, 26520, 7);

