-- q.10909 'Fel Spirits'
DELETE FROM spell_script_target WHERE entry IN (39184,39206);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) values 
(39184,1,16878,0),
(39206,1,22444,0);

DELETE FROM dbscripts_on_spell WHERE id = 39190;
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(39190,15,39206,0,'Cast - Summon Fel Spirit');
-- Anchorite Relic - we shouldnt be able to despawn this object
UPDATE gameobject_template SET flags = 4 WHERE entry = 185298;
-- Shattered Hand Berserker
UPDATE creature SET position_x = -1059.401001, position_y = 3215.944580, position_z = 61.930363, orientation = 4.758759, spawndist = 2, MovementType = 1 WHERE guid = 58291;
 

