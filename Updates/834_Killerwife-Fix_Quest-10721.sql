-- ===================
-- Fixes by Killerwife
-- ===================
-- A Boaring time for Grulloc quest fix
-- http://www.wowhead.com/quest=10721/a-boaring-time-for-grulloc

UPDATE creature_template SET MovementType=0,SpeedRun=1.48,FactionHorde=775,FactionAlliance=775 WHERE entry=22114; -- got most likely proper faction from sunwell core
UPDATE creature_template SET SpeedRun=1.48 WHERE entry=20216; -- speed is guesswork, tried to adjust to videos
-- MovementType is set to 0 because waypoint movement is initiated from SD2 script
DELETE FROM creature_movement_template WHERE entry = 22114; -- proper pathing for script
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(22114,0,2684.386230,5578.241211,-10.645893,1500,0,0,0,0,0,0,0,0,4.809,0,0),
(22114,1,2702.812256,5615.286621,-10.883612,0,0,0,0,0,0,0,0,0,1.350126,0,0),
(22114,2,2684.344482,5654.894043,-13.495503,0,0,0,0,0,0,0,0,0,2.944486,0,0),
(22114,3,2665.054443,5629.924316,-12.279298,0,0,0,0,0,0,0,0,0,4.848290,0,0),
(22114,4,2678.074219,5580.177734,-10.694089,0,0,0,0,0,0,0,0,0,4.891488,0,0);

DELETE FROM dbscripts_on_event WHERE id=14274; -- different summoning position
INSERT INTO dbscripts_on_event(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('14274', '2', '10', '22114', '3000000', '0', '0', '0', '0', '0', '0', '0', 2670.823242,5609.273438,-11.709463,5.233066, 'A Boaring Time for Grulloc - Summon Huffer');

