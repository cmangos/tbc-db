-- Remove duplicated persistant auras data (ACID/_addon)
DELETE FROM creature_template_addon WHERE entry=8532; -- Diseased Flayer - ACID
DELETE FROM creature_template_addon WHERE entry=8538; -- Unseen Servant (had s.30831, which probably was added due to invisible npcs not being able to aggro unitl recently) - ACID
DELETE FROM creature_template_addon WHERE entry=8539; -- Eyeless Watcher (had s.30831, which probably was added due to invisible npcs not being able to aggro unitl recently) - ACID
DELETE FROM creature_template_addon WHERE entry=8553; -- Necromancer - ACID
DELETE FROM creature_template_addon WHERE entry=712; -- Redridge Thrasher - ACID
DELETE FROM creature_template_addon WHERE entry=723; -- Mosh'Ogg Butcher - ACID

-- Update addon of a few NPCs 8546 (Dark Adept) that don't have all the auras from their template
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8546); -- ACID, s.8734 handled by creature_movement spawn specific as it also goes together with creature_spawn_entry

