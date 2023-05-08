-- c.12999 should use static modelid 11686 always, no need for a spawn_data_template
-- SELECT * FROm dbscripts_on_event where id IN (14143);
UPDATE `dbscripts_on_event` SET `dataint4` = 0 WHERE `id` = 14143 AND `command` = 10; -- Spawn World Invisible Trigger 1 path ID 1, Spawn World Invisible Trigger 2 path ID 2, Spawn World Invisible Trigger 3 path ID 3
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 10003; -- World Invisible Trigger - ModelId (dscripts_on_event 14143), set model 11686

