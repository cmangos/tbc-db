-- ayamiss should always fly
UPDATE creature_template SET InhabitType=7 WHERE entry IN(15369);
-- nefarian points should start from 1
UPDATE creature_movement_template SET point=point-1 WHERE entry IN(11583) AND pathId=0;
