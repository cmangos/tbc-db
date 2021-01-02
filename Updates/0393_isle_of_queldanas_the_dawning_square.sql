-- ----------------------------
-- Shattered Sun Marksman 24938
-- ----------------------------
-- the ones standing on the Bridge leading to SWP use 1 of 4 special RP "Shoot" spells
-- Shoot 45219 - facing North-West (Blood Elf, either gender)
-- Shoot 45223 - facing North-West (Draenei, either gender)
-- Shoot 45229 - facing South-East (Blood Elf, either gender)
-- Shoot 45233 - facing South-East (Draenei, either gender)
-- Shoot 96189 -> hits 25063 Dawnblade Hawkrider (TBC version - spell 38858)

-- add missing targets for new spells that will be used via script
-- all Shoot spells hit invisible targets 25192 Bridge Marksman Target Bunny
-- 45223 already had proper target assigned
DELETE FROM spell_script_target WHERE entry IN (45219,45229,45233);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(45219, 1, 25192, 0),
(45229, 1, 25192, 0),
(45233, 1, 25192, 0);

-- North-West
UPDATE creature_movement SET script_id=2493804 WHERE script_id=2493801 AND `point`=1 AND id IN (5300119,5300120,5300123,5300126);
DELETE FROM creature_movement WHERE id IN (5300119,5300120,5300123,5300126) AND `point` BETWEEN 2 AND 4;
-- South-East
UPDATE creature_movement SET script_id=2493805 WHERE script_id=2493801 AND `point`=1 AND id IN (5300121,5300122,5300124,5300125);
DELETE FROM creature_movement WHERE id IN (5300121,5300122,5300124,5300125) AND `point` BETWEEN 2 AND 4;

-- use AI event to kick off special Dawning Square Marksman Shoot RP SD2 script (occurs every 8-14 seconds)
-- see npc_shattered_sun_marksman
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2493804,2493805);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
-- North-West
(2493804, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Set Idle Movement'),
(2493804, 0, 0, 35, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Send AI_EVENT_CUSTOM_A to Self'),
-- South-East
(2493805, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Set Idle Movement'),
(2493805, 0, 0, 35, 1001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Send AI_EVENT_CUSTOM_B to Self');

-- Dawnblade Marksman 24979
-- remove passive emote from all  (only certain spawns should have this)
DELETE FROM creature_template_addon WHERE entry=24979;


