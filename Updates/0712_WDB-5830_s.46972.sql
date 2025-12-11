-- s.46972 summons c.id.26401
DELETE FROM `game_event_creature` where `guid` IN (SELECT `guid` FROM `creature` where `id` = 26401); -- -27
DELETE FROM `creature` WHERE `id` = 26401; -- -27

