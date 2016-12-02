-- Silvermoon City
-- Blood Elf Magister
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 63517;
UPDATE creature_addon SET emote = 0 WHERE guid = 63517;
DELETE FROM creature_movement WHERE id = 63517;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(63517,1,9547.9,-7454.35,15.475,0,0,5.6233,0,0),
(63517,2,9550.803,-7458.872,15.5169,30000,1784501,5.313836,0,0),
(63517,3,9547.9,-7454.35,15.475,0,0,3.01972,0,0),
(63517,4,9542.652,-7453.76,15.4635,30000,1784502,3.03394,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1784501,1784502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1784501,9,31,18560,20,0,0,0,0,0,0,0,0,0,0,0,'search for 18560'),
(1784501,10,15,32760,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1784501,28,14,32760,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1784502,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1784502,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 32760;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(32760,1,18560);
-- Justin's Bunny Target
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18560;
UPDATE creature SET position_x = 9553.435, position_y = -7463.052, position_z = 19.48198, Spawndist = 0, MovementType = 0 WHERE guid = 66726;

-- Talmar <Apprentice Leatherworker>
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 16687;

-- Amin <Apprentice Jewelcrafter>
-- Until patch 2.3, he was a journeyman jewelcrafting trainer.
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 8379 WHERE entry = 16703;
DELETE FROM npc_trainer WHERE entry = 16703;
UPDATE creature_template SET GossipMenuId = 8379 WHERE Entry = 16703;




