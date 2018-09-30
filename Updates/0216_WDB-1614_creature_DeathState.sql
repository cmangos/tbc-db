-- Correct spells used instead of DeathState(workaround solution)

-- Aged Clefthoof c.17133
-- s.29266 should be used instead of DeathState      
UPDATE creature SET DeathState = 0 WHERE id=17133;

-- Cooling Infernal c.19760
-- s.31261 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (84620,84621);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
-- death squad
(84620,0,0,1,0,0,0,'12743 31261'),
(84621,0,0,1,0,0,0,'12743 31261');
UPDATE creature SET DeathState = 0 WHERE id = 19760;

-- Eva c.21307
-- s.31261 should be used instead of DeathState
DELETE FROM creature_template_addon WHERE entry = 21307;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21307,0,0,1,0,0,0,'31261');
UPDATE creature SET DeathState = 0 WHERE id = 21307;

-- Coilskar Cobra c.19784
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70799,70800);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(70799,0,7,1,0,0,0,NULL),
(70800,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70799,70800);
DELETE FROM creature_movement WHERE id IN (70799,70800);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70799,1,-2837,1761.92,59.1028,3000,1978401,2.72271),
(70800,1,-2829.58,1760.66,59.5666,3000,1978401,2.21657);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1978401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1978401,0,4,46,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1978401,0,4,46,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1978401,0,4,46,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1978401,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');

-- Coilskar Siren c.19768
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70724,70725);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(70724,0,7,1,0,0,0,NULL),
(70725,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70724,70725);
DELETE FROM creature_movement WHERE id IN (70724,70725);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70724,1,-2851.98,1770.35,58.0096,3000,1976801,3.10669),
(70725,1,-2878.18,1743.32,44.2677,3000,1976801,4.67748);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1976801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1976801,0,4,46,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1976801,0,4,46,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976801,0,4,46,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976801,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');

-- Coilskar Defender c.19762
-- has no aura ... but UNIT_FIELD_FLAGS: 33587968 must be set for 2 guids
DELETE FROM creature_addon WHERE guid IN (70697,70698);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(70697,0,7,1,0,0,0,NULL),
(70698,0,7,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2, DeathState = 0 WHERE guid IN (70697,70698);
DELETE FROM creature_movement WHERE id IN (70697,70698);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(70697,1,-2889.64,1783.95,53.7678,3000,1976201,4.10152),
(70698,1,-2869.77,1773.73,55.5464,3000,1976201,3.4383);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1976201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1976201,0,4,46,256,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46  
(1976201,0,4,46,512,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976201,0,4,46,33554432,0,0,0,0,0,0,0,0,0,0,0,0,''), -- for TBC datalong = 46 
(1976201,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');

-- Coilskar Screamer c.19769
-- Only one spawn and UnitFlags already set in template, so no DeathState needed
UPDATE creature SET DeathState=0 WHERE id=19769;
-- Remove conflicting addon
DELETE FROM creature_addon WHERE guid=70727;

