-- Quest 11174
-- Zeppelin Power Core -- update
UPDATE creature_template SET MovementType=0, InhabitType=4 WHERE entry=23832;
UPDATE creature SET spawndist=0, MovementType=0 WHERE id=23832;
DELETE FROM creature_addon WHERE guid BETWEEN 18582 and 18588;
DELETE FROM creature_template_addon WHERE entry=23832;


