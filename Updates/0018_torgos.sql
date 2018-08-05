DELETE FROM creature WHERE id=18707; -- remove static spawn (temp summoned via event dbscript)
DELETE FROM creature_movement_template WHERE entry=18707;
UPDATE creature_template SET MovementType=0 WHERE entry=18707;


