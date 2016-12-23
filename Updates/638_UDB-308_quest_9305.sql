-- q.9305 'Spare Parts'
-- Emitter Spare Part - should despawn after item collected
UPDATE gameobject_template SET data2 = 0 WHERE entry = 181283;
UPDATE gameobject SET spawntimesecs = 300 WHERE id = 181283;


