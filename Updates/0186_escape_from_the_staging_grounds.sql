-- 20763 Captured Protectorate Vanguard
-- 20854 Ethereum Gladiator
-- 20858 Arena Event Controller

UPDATE creature SET spawntimesecsmin=420, spawntimesecsmax=480 WHERE id IN (20854,20763);

UPDATE creature_template SET UnitFlags=768 WHERE entry=20854;
UPDATE creature_template SET Faction=35 WHERE entry=20858;
UPDATE creature_template SET UnitFlags=768 WHERE entry=20763;

DELETE FROM creature_linking WHERE master_guid=86834;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(86833, 86834, 1024); -- Captured Protectorate Vanguard -> Ethereum Gladiator

DELETE FROM creature_movement WHERE id IN (86833,86834);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(86833, 1, 4053.541, 2289.103, 113.7999, 100, 0, 0),
(86833, 2, 4055.439, 2300.95, 113.1935, 100, 0, 0),
(86833, 3, 4055.692, 2302.558, 113.0787, 100, 15000, 8683301),

(86834, 1, 4057.016, 2323.65, 112.3185, 100, 5000, 8683401),
(86834, 2, 4057.763, 2315.901, 112.5745, 100, 15000, 8683402);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8683301,8683401,8683402);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8683301, 2000, 0, 41, 0, 0, 0, 20854, 86834, 16+64+1, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Ethereum Gladiator'),
(8683301, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Protectorate Vanguard - Set Idle Movement Type'),
(8683301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000010181, 0, 0, 0, 0, 0, 0, 0, 'Captured Protectorate Vanguard - Say Text'),

(8683401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000010182, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Say Text'),
(8683401, 2000, 0, 41, 0, 0, 0, 20763, 86833, 16+64+1, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Captured Protectorate Vanguard'),

(8683402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000010183, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Say Text'),
(8683402, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Set Idle Movement Type'),
(8683402, 0, 0, 1, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Set EmoteState 27'),
(8683402, 2000, 0, 5, 46, 768, 0, 20763, 86833, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Protectorate Vanguard - Remove Unit Flag IMMUNE_TO_PLAYER and IMMUNE_TO_NPC'),
(8683402, 2000, 1, 5, 46, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Remove Unit Flag IMMUNE_TO_PLAYER and IMMUNE_TO_NPC'),
(8683402, 2000, 2, 26, 0, 0, 0, 20763, 86833, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereum Gladiator - Attack Captured Protectorate Vanguard');

DELETE FROM dbscript_string WHERE entry IN (2000010181,2000010182,2000010183);
INSERT INTO dbscript_string (entry, content_default, broadcast_text_id, comment) VALUES
(2000010181, 'For the Protectorate! DIE ETHEREUM FILTH!', 18561, 'Captured Protectorate Vanguard (20763)'),
(2000010182, 'Send it out!', 18560, 'Ethereum Gladiator (20854)'),
(2000010183, 'Time for the pain!', 18558, 'Ethereum Gladiator (20854)');


