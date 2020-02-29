-- Brown Marmot
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(6/7) WHERE Entry=22480;

UPDATE creature SET position_x=3348.166, position_y=5785.96, position_z=-6.303448, orientation=5.811702 WHERE guid=78921;
UPDATE creature SET position_x=3346.916, position_y=5784.191, position_z=-6.984365, MovementType=2 WHERE guid=78920;
DELETE FROM creature_movement WHERE id=78920;
INSERT INTO creature_movement (id, `point`, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(78920, 1, 3346.916, 5784.191, -6.984365, 100, 0, 0),
(78920, 2, 3345.968, 5786.326, -6.245351, 100, 0, 0),
(78920, 3, 3349.244, 5782.62, -7.311269, 100, 0, 0),
(78920, 4, 3352.729, 5782.019, -7.204213, 100, 0, 0);
UPDATE creature SET position_x=3352.253, position_y=5785.253, position_z=-4.099041, orientation=3.84743 WHERE guid=78922;


