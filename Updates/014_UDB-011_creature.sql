-- Apothecary Azethen - c.16794 -- Falcon Watch
-- Emote comes only with quest
UPDATE creature_template_addon SET emote = 0 WHERE entry = 16794;
-- Twinkle c.17230
-- movement, script
UPDATE creature SET MovementType = 2 WHERE guid = 61963;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17230;
DELETE FROM creature_movement_template WHERE entry = 17230;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(17230,1,-603.059,4166.03,64.3336,0,0,0,0,0,0,0,0,0,4.63706,0,0),
(17230,2,-600.881,4161.52,64.9931,0,0,0,0,0,0,0,0,0,5.42795,0,0),
(17230,3,-595.116,4157.8,65.2767,0,0,0,0,0,0,0,0,0,5.75546,0,0),
(17230,4,-590.633,4155.53,67.8345,0,0,0,0,0,0,0,0,0,5.82222,0,0),
(17230,5,-576.829,4149.44,68.1243,5000,1723001,0,0,0,0,0,0,0,5.86542,0,0),
(17230,6,-591.253,4155.71,67.667,0,0,0,0,0,0,0,0,0,2.71597,0,0),
(17230,7,-594.879,4158.15,65.2685,0,0,0,0,0,0,0,0,0,2.23766,0,0),
(17230,8,-599.785,4161.72,65.0972,0,0,0,0,0,0,0,0,0,1.9667,0,0),
(17230,9,-601.114,4164.75,64.754,0,0,0,0,0,0,0,0,0,1.20172,0,0),
(17230,10,-597.099,4176,64.9199,240000,0,0,0,0,0,0,0,0,0.944113,0,0),
(17230,11,-597.099,4176,64.9199,1000,1723002,0,0,0,0,0,0,0,0.944113,0,0),
(17230,12,-602.987,4163.88,64.5397,0,0,0,0,0,0,0,0,0,3.80201,0,0),
(17230,13,-605.388,4162.12,64.4036,0,0,0,0,0,0,0,0,0,3.27186,0,0),
(17230,14,-618.198,4162.71,63.1639,0,0,0,0,0,0,0,0,0,2.73779,0,0),
(17230,15,-620.134,4163.85,63.0323,0,0,0,0,0,0,0,0,0,2.11968,0,0),
(17230,16,-621.806,4167.84,62.6762,0,0,0,0,0,0,0,0,0,1.72384,0,0),
(17230,17,-623.2,4175.55,61.4847,0,0,0,0,0,0,0,0,0,1.74602,0,0),
(17230,18,-628.983,4190.44,58.1583,0,0,0,0,0,0,0,0,0,1.95808,0,0),
(17230,19,-623.776,4177.94,60.921,0,0,0,0,0,0,0,0,0,5.28581,0,0),
(17230,20,-613.522,4175.35,62.6926,1000,1723003,0,0,0,0,0,0,0,0.0464096,0,0),
(17230,21,-597.789,4176.94,64.7764,240000,0,0,0,0,0,0,0,0,0.186996,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1723001,1723002,1723003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1723001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1723002,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1723002,0,31,16793,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1723002,1,0,0,0,16793,20,7,2000000088,2000000089,0,0,0,0,0,0,'force buddy to: say random text'),
(1723003,0,31,17282,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1723003,1,0,0,0,17282,62075,7 | 0x10,2000000090,0,0,0,0,0,0,0,'force buddy to: say random text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000088 AND 2000000090;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000088,'Did you find something fun to chase around, Twinkle?  I bet you did!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000000089,'It\'s just you and me, Twinkle.  Daddy\'s not going to be coming home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000000090,'I wonder how far this would launch that white cat...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);


