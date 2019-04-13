DELETE FROM `creature` WHERE `id`=12371 AND `guid`=86173;

DELETE FROM `creature` WHERE `id`=12370 AND `guid`=86174;
DELETE FROM `game_event_creature` WHERE `guid`=86174; -- it turns out this shouldn't be present at all


