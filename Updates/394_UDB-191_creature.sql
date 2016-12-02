-- Terokkar Forest
-- Levixus <The Soul Caller>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 70974;
DELETE FROM creature_movement WHERE id = 70974;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19847;
DELETE FROM creature_movement_template WHERE entry = 19847;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(19847,1,-3565.73,4943.27,-8.91791,20000,1984701,6.26573,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1984701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1984701,1,0,0,0,0,0,0,2000000488,0,0,0,0,0,0,0,''),
(1984701,2,0,0,0,0,0,0,2000000489,2000000490,2000000491,2000000492,0,0,0,0,''),
(1984701,10,0,0,0,0,0,0,2000000488,0,0,0,0,0,0,0,''),
(1984701,11,0,0,0,0,0,0,2000000491,2000000492,2000000489,2000000490,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000488 AND 2000000492;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000488,'%s reads from the book of the dead.',0,2,0,0,NULL),
(2000000489,'Shane Dabiri, Lee, Alex T., Rob F., J. A. B.,  A. Mayberry!',0,0,8,15,NULL),
(2000000490,'Jeffrey Kaplan! Tom Chilton! Rob Pardo!',0,0,8,15,NULL),
(2000000491,'Justin Thavirat! Roman Kenney! Our entire awesome art and animation team!',0,0,8,15,NULL),
(2000000492,'Kevin Jordan and Jonathan LeCraft!',0,0,8,15,NULL);


