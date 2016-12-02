-- Quest updates for 10674 and 10859
UPDATE creature_template SET MovementType=0 WHERE entry IN (21926,22333);
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN (10859,10674);
-- Note: creature 21926 has wrong model


