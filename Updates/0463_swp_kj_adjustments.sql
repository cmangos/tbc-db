-- sinister reflection dual weild needs to be handled in core based on target copied
DELETE FROM creature_template_addon WHERE entry IN(25708);
-- kj needs to fly 1yd above ground
UPDATE creature_template SET InhabitType=4 WHERE entry IN(25315);

