-- Fix the old invalid linking. The creature with the waypoints had the follow flag, so the result was that none of them moved.

DELETE FROM creature_linking WHERE guid IN(65506,65507,65508);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(65507,65506,643),
(65508,65506,643);

-- Also the master spawned way off from where the first point and his followers are.
UPDATE creature SET position_x=-2109.808, position_y=8512.809, position_z=23.422432, orientation=1.747480 WHERE guid=65506 AND id=18238;
UPDATE creature SET position_x=-2108.487, position_y=8503.266, position_z=23.706165, orientation=1.747480 WHERE guid=65507 AND id=18238;
UPDATE creature SET position_x=-2107.4, position_y=8492.934, position_z=23.749432, orientation=1.696428 WHERE guid=65508 AND id=18238;

