-- q.9544 'The Prophecy of Akida'
DELETE FROM dbscripts_on_quest_start WHERE id = 9544;
INSERT INTO dbscripts_on_quest_start  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9544,1,10,17410,15000,0,0,0,0,0,0,0,-4489.97,-11645.7,11.577,2.5501,'summon Stillpine Ancestor Vark'),
(9544,3,0,0,0,17410,50,0,2000000679,0,0,0,0,0,0,0,'');
UPDATE quest_template SET ReqCreatureOrGOId1 = 17375, ReqSpellCast1 = 0, StartScript = 9544 WHERE entry = 9544; -- correct WDB data
DELETE FROM db_script_string WHERE entry = 2000000679;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000679,' [Furbolg] Bear witness to the savage acts of our adversaries, $n. They steal our young... our weak... Imprisoned here, they are left to the devices of the Bristlelimb. Set them free, Promised One!',0,0,0,0,NULL);
UPDATE creature_template SET MovementType = 0 WHERE Entry = 17410;

-- Brislelimb Cage
UPDATE gameobject_template SET data2 = 300000 WHERE entry = 181714;
DELETE FROM dbscripts_on_go_template_use WHERE id = 181714;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(181714,1,31,17375,10,0,0,0,0,0,0,0,0,0,0,0,'search for 17375'),
(181714,2,0,0,0,17375,10,3,2000000680,2000000681,2000000682,2000000700,0,0,0,0,'random say'),
(181714,2,25,1,0,17375,10,7,0,0,0,0,0,0,0,0,'RUN ON'),
(181714,3,8,17375,0,0,0,0,0,0,0,0,0,0,0,0,'killcredit'),
(181714,3,21,1,0,17375,10,7,0,0,0,0,0,0,0,0,'Buddy - active'),
(181714,4,20,2,0,17375,10,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000680 AND 2000000682;
DELETE FROM db_script_string WHERE entry = 2000000700;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000680,'[Furbolg] Thank you, $n!', 0, 0, 0, 0, NULL),
(2000000681,'[Furbolg] The prophecy is true!', 0, 0, 0, 0, NULL),
(2000000682,'[Furbolg] The Stillpine furbolgs will not soon forget your bravery!', 0, 0, 0, 0, NULL),
(2000000700,'[Furbolg] Those remaining at Stillpine Hold will welcome you as a hero!', 0, 0, 0, 0, NULL);
-- Stillpine Captive
UPDATE creature SET orientation = 0.365682 WHERE guid = 90994;
UPDATE creature SET orientation = 3.155424 WHERE guid = 90995;
UPDATE creature SET orientation = 4.971260 WHERE guid = 91001;
UPDATE creature SET orientation = 2.285983 WHERE guid = 91002;
UPDATE creature SET orientation = 1.334086 WHERE guid = 91003;
UPDATE creature SET orientation = 0.408888 WHERE guid = 91004;
UPDATE creature SET orientation = 4.620978 WHERE guid = 91005;
UPDATE creature SET orientation = 3.218260 WHERE guid = 91007;
UPDATE creature SET orientation = 4.423052 WHERE guid = 91008;
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (90994,90995,90996,90997,90998,90999,91000,91001,91002,91003,91004,91005,91006,91007,91008); -- waypoints will be set by script
DELETE FROM creature_movement WHERE id IN (90994,90995,90996,90997,90998,90999,91000,91001,91002,91003,91004,91005,91006,91007,91008);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #90994
(90994,1,-4616.35,-11646.3,20.9185, 0, 0,5.85916, 0, 0),
(90994,2,-4597.68,-11659.9,19.9798, 0, 0,5.21042, 0, 0),
(90994,3,-4585.35,-11682.6,19.4543, 0, 0,5.04942, 0, 0),
(90994,4,-4585.35,-11682.6,19.4543, 6000, 1737501,5.04942, 0, 0),
-- #90995
(90995,1,-4576.57,-11625.6,17.7847, 0, 0,1.46074, 0, 0),
(90995,2,-4571.72,-11613.7,17.8211, 0, 0,0.718534, 0, 0),
(90995,3,-4547.22,-11602.9,15.7619, 0, 0,0.196244, 0, 0),
(90995,4,-4547.22,-11602.9,15.7619, 6000, 1737501,0.196244, 0, 0),
-- #90996
(90996,1,-4607.84,-11661.3,20.1229, 0, 0,5.80732, 0, 0),
(90996,2,-4585.93,-11683.3,19.4376, 0, 0,5.0235, 0, 0),
(90996,3,-4585.93,-11683.3,19.4376, 6000, 1737501,5.0235, 0, 0),
-- #90997
(90997,1,-4514.16,-11636.2,13.2484, 0, 0,1.0085, 0, 0),
(90997,2,-4486.92,-11666.6,10.1438, 0, 0,5.3871, 0, 0),
(90997,3,-4486.92,-11666.6,10.1438, 6000, 1737501,5.3871, 0, 0),
-- #90998
(90998,1,-4500.7,-11599.9,12.4237, 0, 0,5.34445, 0, 0),
(90998,2,-4466.86,-11611.1,12.5875, 0, 0,5.98454, 0, 0),
(90998,3,-4466.86,-11611.1,12.5875, 6000, 1737501,5.98454, 0, 0),
-- #90999
(90999,1,-4488.83,-11626.2,10.9745, 0, 0,3.7189, 0, 0),
(90999,2,-4499.94,-11635.9,12.4551, 0, 0,4.73184, 0, 0),
(90999,3,-4486.48,-11666.1,10.0948, 0, 0,5.14417, 0, 0),
(90999,4,-4486.48,-11666.1,10.0948, 6000, 1737501,5.14417, 0, 0),
-- #91000
(91000,1,-4486.69,-11613.6,11.0187, 0, 0,2.89008, 0, 0),
(91000,2,-4481.08,-11605.5,11.5851, 0, 0,0.482046, 0, 0),
(91000,3,-4449.55,-11613.6,10.2269, 0, 0,5.94921, 0, 0),
(91000,4,-4449.55,-11613.6,10.2269, 6000, 1737501,5.94921, 0, 0),
-- #91001
(91001,1,-4609.22,-11616.5,18.0117, 0, 0,4.78709, 0, 0),
(91001,2,-4601.83,-11652.7,18.9373, 0, 0,4.91668, 0, 0),
(91001,3,-4601.83,-11652.7,18.9373, 6000, 1737501,4.91668, 0, 0),
-- #91002
(91002,1,-4586.47,-11641.1,19.3945, 0, 0,3.37317, 0, 0),
(91002,2,-4592.15,-11651,20.6222, 0, 0,4.75154, 0, 0),
(91002,3,-4586.04,-11682.2,19.4636, 0, 0,4.97145, 0, 0),
(91002,4,-4586.04,-11682.2,19.4636, 6000, 1737501,4.97145, 0, 0),
-- #91003
(91003,1,-4630.73,-11541.2,17.2353, 0, 0,0.675526, 0, 0),
(91003,2,-4606.58,-11554.9,18.5432, 0, 0,5.68244, 0, 0),
(91003,3,-4606.58,-11554.9,18.5432, 6000, 1737501,5.68244, 0, 0),
-- #91004
(91004,1,-4643.38,-11533.1,17.4496, 0, 0,6.1741, 0, 0),
(91004,2,-4608.98,-11550,18.4467, 0, 0,5.57249, 0, 0),
(91004,3,-4608.98,-11550,18.4467, 6000, 1737501,5.57249, 0, 0),
-- #91005
(91005,1,-4634.94,-11502,19.9331, 0, 0,5.25592, 0, 0),
(91005,2,-4601.03,-11510.5,19.9801, 0, 0,6.0775, 0, 0),
(91005,3,-4601.03,-11510.5,19.9801, 6000, 1737501,6.0775, 0, 0),
-- #91006
(91006,1,-4619.91,-11503.7,20.3987, 0, 0,5.07921, 0, 0),
(91006,2,-4583.83,-11514.8,19.4313, 0, 0,6.02954, 0, 0),
(91006,3,-4583.83,-11514.8,19.4313, 6000, 1737501,6.02954, 0, 0),
-- #91007
(91007,1,-4606.49,-11519.3,19.3579, 0, 0,2.54337, 0, 0),
(91007,2,-4608.57,-11512.2,20.0682, 0, 0,0.241155, 0, 0),
(91007,3,-4572.14,-11514.7,19.567, 0, 0,6.09808, 0, 0),
(91007,4,-4572.14,-11514.7,19.567, 6000, 1737501,6.09808, 0, 0),
-- #91008
(91008,1,-4606.48,-11538.3,17.9555, 0, 0,3.41124, 0, 0),
(91008,2,-4603.26,-11543.9,18.3778, 0, 0,5.97635, 0, 0),
(91008,3,-4575.63,-11540.1,17.8463, 0, 0,0.140836, 0, 0),
(91008,4,-4575.63,-11540.1,17.8463, 6000, 1737501,0.140836, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1737501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1737501,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1737501,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1737501,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');


