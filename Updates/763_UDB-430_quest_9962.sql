-- q.9962 'The Ring of Blood: Brokentoe'
DELETE FROM dbscripts_on_quest_start WHERE id = 9962;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9962,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9962,2,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(9962,12,0,0,0,0,0,0,2000000002,0,0,0,0,0,0,0,''),
(9962,17,10,18398,180000,0,0,0,0,0,0,0,-701.265,7872.87,45.6482,2.59646,''),
(9962,19,26,0,0,18398,100,0,0,0,0,0,0,0,0,0,''),
(9962,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
UPDATE db_script_string SET content_default = 'The battle is about to begin! $n versus the ferocious clefthoof, Brokentoe!', type = 1 WHERE entry = 2000000002;
UPDATE db_script_string SET content_default = '$n has defeated Brokentoe!', type = 1 WHERE entry = 2000000003;
-- Brokentoe
DELETE FROM dbscripts_on_creature_death WHERE id = 18398;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18398,1,0,0,0,18471,66480,0 | 0x10,2000000003,0,0,0,0,0,0,0,'buddy : yell');


