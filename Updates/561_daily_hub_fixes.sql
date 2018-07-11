-- OGRI'LA

-- Ogri'la Steelshaper (22264)
UPDATE creature SET position_x=2328.495, position_y=7252.813, position_z=365.6172, orientation=1.245117 WHERE guid=91785;

-- Ogri'la Peacekeeper (23115)
UPDATE creature SET position_x=2341.349, position_y=7253.382, position_z=366.5562, orientation=1.291544 WHERE guid=78265;
UPDATE creature SET position_x=2364.8, position_y=7232.03, position_z=365.7612, orientation=6.073746 WHERE guid=91796;
UPDATE creature SET position_x=2349.576, position_y=7335.804, position_z=364.8706, orientation=3.909538 WHERE guid=78264;
UPDATE creature SET position_x=2273.845, position_y=7253.965, position_z=363.9946, orientation=3.787364 WHERE guid=91795;
-- add missing, free guids used
DELETE FROM creature WHERE guid IN (101376,101377);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('101376', '23115', '530', '1', '0', '0', '2337.57', '7298.993', '365.7002', '3.438299', '300', '300', '0', '0', '72539', '0', '0', '0'),
('101377', '23115', '530', '1', '0', '0', '2309.648', '7288.834', '365.8902', '0.5061455', '300', '300', '0', '0', '72539', '0', '0', '0');

-- Mingo (23112)
UPDATE creature SET position_x=2310.672, position_y=7263.942, position_z=365.6422, orientation=1.518153 WHERE guid=91781;

-- Torkus (23316)
UPDATE creature SET position_x=2323.509, position_y=7306.479, position_z=365.7002, orientation=4.415683 WHERE guid=91793;

-- Tork (23347)
-- Have we taken enough magical flasks to join the Skyguard yet?
-- We can't wait to join the Skyguard. We just need to take a few more magical flasks, right?
-- The Skyguard need our help! We need to get more magical flasks.
-- When are we going to get some more magical flasks?

-- random movement at 2353.833, 7318.889, 365.7466
-- move to 2335.927, 7303.471, 365.6216 -> 2331.868, 7304.9958, speak, go back to random movement

-- Kronk (23253)
UPDATE creature SET position_x=2313.486, position_y=7278.127, position_z=368.6539, orientation=1.134464 WHERE guid=91790;
UPDATE creature_template_addon SET auras='40570' WHERE entry=23253; -- Kronk's Aura
UPDATE creature_template SET InhabitType=4 WHERE entry=23253;

UPDATE gossip_menu_option SET action_menu_id=8757 WHERE menu_id=8679;
DELETE FROM gossip_menu WHERE entry=8757;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8757,11094,0,0);

-- SKYGUARD OUTPOST

-- Skyguard Khatie
-- Moved and mounted in Patch 2.4
UPDATE creature SET position_x=2547.623, position_y=7329.488, position_z=373.5052, orientation=4.58621 WHERE guid=44255;
DELETE FROM creature_template_addon WHERE entry=23335;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(23335,21152,0,0,0,0,0,'');

-- Skyguard Navigator (-0/+3)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(79866, 22982, 530, 1, 0, 0, 2522.945, 7322.241, 373.4666, 6.161012, 300, 300, 0, 0, 9250, 0, 0, 0),
(79867, 22982, 530, 1, 0, 0, 2530.897, 7333.324, 373.7191, 4.694936, 300, 300, 0, 0, 9250, 0, 0, 0),
(79868, 22982, 530, 1, 0, 0, 2514.656, 7355.287, 380.8192, 2.932153, 300, 300, 0, 0, 9250, 0, 0, 0);

-- Skyguard Windcharger (-5/+10)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- reused guid of existing spawns
(79497, 23257, 530, 1, 0, 0, 2490.252, 7325.627, 369.0517, 3.525565, 300, 300, 0, 0, 45400, 0, 0, 0),
(79487, 23257, 530, 1, 0, 0, 2494.185, 7315.573, 370.1561, 3.246312, 300, 300, 0, 0, 45400, 0, 0, 0),
(74807, 23257, 530, 1, 0, 0, 2495.589, 7353.026, 380.3745, 5.166174, 300, 300, 0, 0, 45400, 0, 0, 0),
(79503, 23257, 530, 1, 0, 0, 2504.483, 7330.934, 375.9446, 5.67232, 300, 300, 0, 0, 45400, 0, 0, 0),
(79512, 23257, 530, 1, 0, 0, 2512.041, 7361.339, 380.8073, 4.118977, 300, 300, 0, 0, 45400, 0, 0, 0),
-- free guids used
(79263, 23257, 530, 1, 0, 0, 2510.727, 7336.824, 376.875, 5.305801, 300, 300, 0, 0, 45400, 0, 0, 0),
(79264, 23257, 530, 1, 0, 0, 2536.8, 7311.079, 373.7191, 2.251475, 300, 300, 0, 0, 45400, 0, 0, 0),
(79265, 23257, 530, 1, 0, 0, 2544.75, 7335.582, 373.5071, 4.24115, 300, 300, 0, 0, 45400, 0, 0, 0),
(79266, 23257, 530, 1, 0, 0, 2562.316, 7307.93, 366.5525, 5.77704, 300, 300, 0, 0, 45400, 0, 0, 0),
(79267, 23257, 530, 1, 0, 0, 2568.269, 7316.616, 366.208, 5.427974, 300, 300, 0, 0, 45400, 0, 0, 0);

/*
When Skyguard patrol over Ogri'la...

Torek:
The Skyguard are here! The Skyguard are here!
Chases them around circle (runs) gets to edge of town, "Tork cheers!"
Woo hoo! Go Skyguard!
*/


