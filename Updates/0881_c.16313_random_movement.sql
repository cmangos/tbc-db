-- Add random movement for most Nerubis Guard 16313
UPDATE `creature` SET `position_z` = 144.804 WHERE `guid` = 81792 AND `id` = 16313;
UPDATE `creature` SET `spawndist` = 5, `movementtype` = 1 WHERE `guid` NOT IN (81780,81810) AND `id` = 16313; -- seemingly waypoints

