-- Infernal Attacker 21419
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 21419;
-- remove unnused data
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 21419);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2141901 AND 2141904;
DELETE FROM dbscripts_on_creature_death WHERE id = 21419;

-- Part of Infernal Attacker EAI: 
DELETE FROM dbscripts_on_relay WHERE id = 19998;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19998,100,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Infernal Attacker EAI: search for 21417'),
(19998,1000,15,37277,1,0,21417,30,3,0,0,0,0,0,0,0,0,'Part of Infernal Attacker EAI: cast 37277 b->s');

