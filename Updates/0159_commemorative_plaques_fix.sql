/*small fix for the commemorative plaques in the royal gallery*/

DELETE FROM `game_event_gameobject` WHERE `guid` IN (31619);
-- shouldn't be part of a game event

UPDATE gameobject SET position_x=-8337.82, position_y=519.653, rotation0=0.668, rotation1=0.233, rotation2=0.667571, rotation3=-0.233126 WHERE guid=20458;
-- correct fix

UPDATE gameobject SET rotation0=0.668, rotation1=0.233, rotation2=0.667571, rotation3=-0.233126 WHERE guid=20459;
-- not perfect but better than what it is currently

UPDATE gameobject SET position_z=122.939, rotation0=0.668, rotation1=0.233, rotation2=0.667571, rotation3=-0.233126 WHERE guid=31619;
-- not perfect but better than what it is currently
