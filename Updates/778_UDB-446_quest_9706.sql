-- q.9706 'Galaen's Journal - The Fate of Vindicator Saruan'
DELETE FROM dbscripts_on_quest_end WHERE id = 9706;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9706,0,10,17875,120000,0,0,0,0,0,0,0,-1962.1,-11909.4,51.1,1.57135,''),
(9706,1,20,2,0,17875,100,7,0,0,0,0,0,0,0,0,'Buddy - movement chenged to 2:waypoint');
UPDATE quest_template SET CompleteScript = 9706 WHERE entry = 9706;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000851 AND 2000000855;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000851,'I am at your service, my lord.',0,0,0,0,NULL),
(2000000852,'I want all of your trackers out in search of the criminal, Matis the Cruel. I have given trusted agents of the Hand flare guns. Should you or one of your trackers see the flare, it means that an agent has found Matis and needs assistance. And remember, tracker, Matis is to be brought back to me alive.',0,0,0,378,NULL),
(2000000853,'It will be done, my lord.',0,0,0,1,NULL),
(2000000854,'%s calls forth their bretheren.',0,2,0,0,NULL),
(2000000855,'Brothers and sisters, tonight we hunt! A blood elf known as Matis must be brought to justice! The first to find him gets one week\'s vacation aboard the Exodar!',0,0,0,1,NULL);

-- Hunter of the Hand
UPDATE creature_template SET MovementType = 0 WHERE entry = 17875; -- waypoints will be set by script
DELETE FROM creature_movement_template WHERE entry = 17875;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(17875,1,-1962.1,-11909.4,51.1,1000,1787501,1.57135,0,0),
(17875,2,-1963.41,-11892.6,49.3676,22000,1787502,0.892762,0,0),
(17875,3,-1958.35,-11897.4,49.4711,0,0,6.07246,0,0),
(17875,4,-1952.03,-11896.6,48.8108,10000,1787503,0.258155,0,0),
(17875,5,-1919.85,-11880.6,44.0878,0,1787504,6.17142,0,0), -- delay time must be "0" 
(17875,6,-1863.07,-11876.3,31.4979,0,0,0.163122,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1787501 AND 1787504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1787501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1787501,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1787502,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1787502,1,0,0,0,0,0,0,2000000851,0,0,0,0,0,0,0,''),
(1787502,3,3,0,0,17843,63515,7 | 0x10,0,0,0,0,0,0,0,3.69035,''),
(1787502,4,0,0,0,17843,63515,7 | 0x10,2000000852,0,0,0,0,0,0,0,''),
(1787502,14,1,0,0,17843,63515,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: state emote removed'),
(1787502,15,3,0,0,17843,63515,7 | 0x10,0,0,0,0,0,0,0,1.5708,''),
(1787502,16,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1787502,17,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1787502,18,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1787502,20,0,0,0,0,0,0,2000000853,0,0,0,0,0,0,0,''),
(1787503,1,0,0,0,0,0,0,2000000854,0,0,0,0,0,0,0,''),
(1787503,2,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1787503,3,10,17875,15000,0,0,0,0,0,0,0,-1922.09,-11905.6,47.2478,2.59079,''),
(1787503,3,10,17875,15000,0,0,0,0,0,0,0,-1933.06,-11854.6,51.7203,4.20478,''),
(1787503,3,10,17875,15000,0,0,0,0,0,0,0,-2000.41,-11883.6,50.1702,5.93658,''),
(1787503,4,3,0,700,17875,100,7,0,0,0,0,-1943.73,-11899.5,48.2471,2.7243,''),
(1787503,7,0,0,0,0,0,0,2000000855,0,0,0,0,0,0,0,''),
(1787503,13,3,0,700,17875,100,7,0,0,0,0,-1920.34,-11877.7,44.137,6.28143,''),
(1787504,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1787504,3,18,0,0,0,0,0x4,0,0,0,0,0,0,0,0,'desp');


