-- Z'kral should not move on a path
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id=18974);
UPDATE creature SET position_x=-637.222, position_y=2636.5, position_z=-3.06047, MovementType=1, spawndist=10 WHERE id=18974;

-- Fix Thrall using invisible model
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=19015;

-- Proper invisible model for Thrall's Hero Music
UPDATE creature_template SET ModelId2=17612 WHERE entry=19597; -- Thrall's Hero Music

-- Thrall should not move around randomly in Garadar. He should only exist as part of the CompleteScript for Hero of the Mag'har.
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id=19556);
DELETE FROM creature WHERE id=19556;

