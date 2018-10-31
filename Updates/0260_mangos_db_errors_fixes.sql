-- Add movements, correct waypoints and scripts for NPC 550 (Defias Messenger). This basically fixes
-- DB errors stating that two DB strings were unused while they are indeed used by these scripts
-- Making the NPC capable of following waypoints (source TBC-DB)
UPDATE creature_template SET ExtraFlags=2050, MovementType=2 WHERE entry=550;

-- Spawning the NPC at the right place (1st waypoint)
UPDATE creature SET position_x=-11017.7, position_y=1438.34, position_z=43.0221, orientation=5.30596 WHERE guid=45525;

-- Updates the spawndist of creature 7319 (Lady Sathrah) to allow random movement
UPDATE creature SET spawndist=5, `MovementType` = 1 WHERE guid=12596 AND id=7319;

-- Updates the spawndist of creature 2038 (Lord Menelas) to allow random movement
UPDATE creature SET spawndist=2, `MovementType` = 1 WHERE guid=49850 AND id=2038;

