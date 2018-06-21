UPDATE creature_template SET ModelId1 = 14533 WHERE entry=22432;
UPDATE creature SET spawntimesecs = 30 WHERE id = 22432; -- Prevent Colonel Jules from turning into female
DELETE FROM creature_movement_template WHERE entry = 22432;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(22432,1,-714.261,2747.754,103.391,0,0,0),
(22432,2,-713.113,2750.194,103.391,0,0,0),
(22432,3,-710.385,2750.896,103.391,0,0,0),
(22432,4,-708.309,2750.062,103.391,0,0,0),
(22432,5,-707.401,2747.696,103.391,0,0,0),
(22432,6,-708.591,2745.266,103.391,0,0,0),
(22432,7,-710.597,2744.035,103.391,0,0,0),
(22432,8,-713.089,2745.302,103.391,0,0,0);

UPDATE creature_template SET ModelId1 = 24721, MovementType=1, AIName = 'NullAI' WHERE entry = 22507; -- Darkness Released should not react
DELETE FROM creature_template_addon WHERE entry = 22507;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(22507, 0, 0, 0, 0, 0, 0, '39303 39304'); -- Flying Skull (DND) and Flying Skull PATH (DND)

UPDATE creature_template SET UnitFlags = 33554432 WHERE entry = 22505; -- The Exorcism Slimer Bunny (DND) is not selectable
DELETE FROM creature_template_addon WHERE entry = 22505;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(22505, 0, 0, 0, 0, 0, 0, '39300');

UPDATE creature_template SET MovementType = 1 WHERE entry = 22506; -- Foul Purge

-- The Exorcism Lightning Cloud Bunny
UPDATE creature_template SET UnitFlags=33554432, InhabitType=7 WHERE entry=22508;
DELETE FROM creature_template_addon WHERE entry=22508;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(22508, 0, 0, 0, 0, 0, 0, '39380'); -- The Exorcism Lightning Cloud Bunny Visual


