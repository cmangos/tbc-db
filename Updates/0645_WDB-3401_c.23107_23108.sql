-- Sa'rah 23108 & Chaddo 23107
DELETE FROM `creature` WHERE `id` IN (23107,23108);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(72683, 23107, 530, 1, 0, 0, -494.073, 7472.15, 180.074, 4.14145, 300, 300, 0, 0),
(72684, 23108, 530, 1, 0, 0, -495.808, 7469.44, 180.109, 4.14145, 300, 300, 0, 2);


UPDATE creature_template SET MovementType = 2 WHERE entry = 23108;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 23108;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 23108);
DELETE FROM creature_movement_template WHERE entry = 23108;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(23108,1,-494.969,7462.91,180.932,100,0,0),
(23108,2,-493.364,7449.09,178.542,100,0,0),
(23108,3,-486.697,7452.25,181.785,100,0,0),
(23108,4,-480.69,7455.04,183.271,100,0,0),
(23108,5,-473.747,7458.7,182.132,100,0,0),
(23108,6,-476.559,7468.76,181.325,100,0,0),
(23108,7,-479.369,7478.33,180.638,100,0,0),
(23108,8,-476.982,7484.51,181.798,100,0,0),
(23108,9,-473.571,7490.72,181.379,100,0,0),
(23108,10,-464.893,7490.82,182.036,100,0,0),
(23108,11,-459.332,7490.17,182.915,100,0,0),
(23108,12,-458.357,7486.38,185.116,100,0,0),
(23108,13,-456.242,7482.12,187.101,100,0,0),
(23108,14,-454.639,7476.76,186.521,100,0,0),
(23108,15,-457.451,7473.51,187.083,100,0,0),
(23108,16,-461.155,7470.09,185.741,100,0,0),
(23108,17,-466.631,7465.9,182.997,100,0,0),
(23108,18,-476.989,7469.88,181.385,100,0,0),
(23108,19,-490.074,7475.09,179.934,100,0,0),
(23108,20,-495.423,7470.01,180.13,100,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid IN (72684);
DELETE FROM creature_linking_template WHERE master_entry IN (23108);
INSERT INTO creature_linking_template (entry, master_entry, flag, map) VALUES
(23107, 23108, 512, 530);
-- let 23108 run from spawn
DELETE FROM creature_spawn_data WHERE Guid IN (72684);
INSERT INTO creature_spawn_data (Guid,Id) VALUES
(72684,1);
