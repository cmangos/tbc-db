UPDATE creature_template SET UnitFlags = 768 WHERE Entry = 23789;
UPDATE gameobject_template SET `size` = 2 WHERE entry = 186335;

DELETE FROM dbscript_string WHERE entry IN (2000005662, 2000005663); -- replaced by script_texts
DELETE FROM dbscripts_on_event WHERE id = 15406;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15406, 0, 31, 23789, 50, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'prevent rerun'),
(15406, 1, 10, 23789, 120000, 0, 0, 0, 0, 0, 0, 0, -1, -4709.063, -3728.228, 54.53986, 0.5934119, 'spawn Smolderwing');


