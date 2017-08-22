-- Sharth Voldoun spawns Pathaleon the Calculator's Image on spawn and ever 3min after that.
-- They have a conversation and if Sharth Voldoun is attacked while Pathaleon the Calculator's Image is around, he will say a text, turn towards the player and then teleport away
-- -----------------
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7), MovementType=2 WHERE entry=18554; -- Sharth Voldoun
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, UnitFlags=33600 WHERE entry=21504; -- Pathaleon the Calculator's Image

-- He had 24.5min respawn. Wowhead comments say the spawntime should be around 3-5 minutes, so setting it to default 300sec for now.
UPDATE creature SET position_x=-2288.812, position_y=3091.442, position_z=152.9008, orientation=3.193953, MovementType=2, spawntimesecsmin=300, spawntimesecsmax=300 WHERE id=18554; -- Sharth Voldoun
DELETE FROM creature WHERE id=21504; -- Delete static spawn of Pathaleon the Calculator's Image

-- Update the other Pathaleon the Calculator''s Image to use pathId=1. This allows us to script him separately in Terokkar.
UPDATE dbscripts_on_event SET datalong3=1 WHERE id=13256 AND delay=8 AND command=10;
UPDATE creature_movement_template SET pathId=1 WHERE entry=21504 AND pathId=0;
-- Also fix the extraflags of the other script's triggers
UPDATE creature_template SET ExtraFlags=0 WHERE entry IN(20781,20617);


DELETE FROM `dbscripts_on_relay` WHERE `id` IN(2,3,4);
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2,0,45,3,0,0,0,0,0,0,21504,10,0,'Sharth Voldoun - Run Despawn Script for Pathaleon the Calculator\'s Image',0,0,0,0),
(2,0,32,1,0,0,0,0,0,0,0,0,0,'Sharth Voldoun - Pause Waypoints (Failsafe in case he resets within 10 seconds)',0,0,0,0),
(2,15,32,0,0,0,0,0,0,0,0,0,0,'Sharth Voldoun - Resume Waypoints',0,0,0,0),

(3,2,0,0,0,0,2000001329,0,0,0,0,0,0,'Pathaleon the Calculator''s Image - I believe I may recognize them.  Deal with this quickly, Sharth.  Then take the mana bomb and destroy their town!',0,0,0,0),
(3,10,15,34427,0,0,0,0,0,0,0,0,4,'Pathaleon the Calculator''s Image - Cast Ethereal Teleport',0,0,0,0),
(3,10,18,1500,0,0,0,0,0,0,0,0,2,'Pathaleon the Calculator''s Image - Despawn Self',0,0,0,0),

(4,0,36,0,0,0,0,0,0,0,21504,30,3,'Pathaleon the Calculator''s Image - Set Facing towards the player that attacked Sharth Voldoun',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1855401 AND 1855410;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2150402);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2150402,0,32,1,0,0,0,0,0,0,0,0,0,'Pathaleon the Calculator''s Image - Pause Waypoints',0,0,0,0),
(2150402,0,15,34427,0,0,0,0,0,0,0,0,0,'Pathaleon the Calculator''s Image - Cast Ethereal Teleport',0,0,0,0),

(1855401,0,10,21504,300000,2,0,0,0,0,0,0,0,'Sharth Voldoun - Summon Pathaleon the Calculator\'s Image',-2293.724,3091.194,152.9008,0.05235988),
(1855401,1,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855401,2,0,0,0,0,2000001320,0,0,0,0,0,0,'Sharth Voldoun - My master, we are honored by your presence.  How may I serve thee?',0,0,0,0),
(1855401,2,28,8,0,0,0,0,0,0,0,0,0,'Sharth Voldoun - Set Stand State Kneel',0,0,0,0),

(1855402,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855402,1,0,0,0,0,2000001321,0,0,0,21504,10,0,'Pathaleon the Calculator''s Image - Rise, young Voldoun.  Do not worry yourself with pleasantries.  I come at the behest of our master, Prince Kael''thas.  He bids me to check on the progress of the mana bomb.',0,0,0,0),
(1855402,3,15,33900,0,0,0,0,0,0,21504,10,7,'Pathaleon the Calculator''s Image - Cast Shroud of Death',0,0,0,0),
(1855402,4,28,0,0,0,0,0,0,0,0,0,0,'Sharth Voldoun - Set Stand State Stand',0,0,0,0),

(1855403,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855403,1,0,0,0,0,2000001322,0,0,0,0,0,0,'Sharth Voldoun - All goes exceedingly well, my lord.  Testing of the smaller prototype at the Cenarion Thicket was a complete success.  The second bomb is being ritually fueled in the courtyard below even as we speak.  And, I''ve sent...',0,0,0,0),

(1855404,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855404,1,0,0,0,0,2000001323,0,0,0,0,0,0,'Sharth Voldoun - You are satisfied?',0,0,0,0),

(1855405,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855405,1,0,0,0,0,2000001324,0,0,0,21504,10,0,'Pathaleon the Calculator''s Image - For the time being, yes.  However, allow my presence to be a motivator.  Prince Kael''thas was displeased with the failure of the crystal experiment on Fallen Sky Ridge.  This is...',0,0,0,0),

(1855406,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855406,1,0,0,0,0,2000001325,0,0,0,21504,10,0,'Pathaleon the Calculator''s Image - I need not tell you what will happen should the mana bomb down in the courtyard fail to be used on its target soon?  Since moving into the forest, they''ve become increasingly...',0,0,0,0),

(1855407,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855407,1,0,0,0,0,2000001326,0,0,0,21504,10,0,'Pathaleon the Calculator''s Image - I think that we should teach a lesson to both the Horde and the Alliance.  One that they will not soon forget!',0,0,0,0),

(1855408,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855408,1,0,0,0,0,2000001327,0,0,0,0,0,0,'Sharth Voldoun - I can assure you that we will not fail, my master.  I am personally overseeing every aspect of the construction, and I hold the final codes, myself.  Within a day''s time, I will have the bomb detonated on those nearby pests.',0,0,0,0),

(1855409,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855409,1,0,0,0,0,2000001328,0,0,0,21504,10,0,'Pathaleon the Calculator''s Image - See to it that you do, Sharth, or I will personally see to your slow torture and death.',0,0,0,0),

(1855410,0,31,21504,10,0,0,0,0,0,0,0,0,'Sharth Voldoun - Terminate Script if Pathaleon the Calculator''s Image Not Found',0,0,0,0),
(1855410,1,15,34427,0,0,0,0,0,0,21504,10,7,'Pathaleon the Calculator''s Image - Cast Ethereal Teleport',0,0,0,0),
(1855410,1,18,1500,0,0,0,0,0,0,21504,10,7,'Pathaleon the Calculator''s Image - Despawn Self',0,0,0,0);

DELETE FROM creature_movement_template WHERE entry=18554;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18554,1,0,-2288.812,3091.442,152.9008,6000,1855401,3.193953),
(18554,2,0,-2288.812,3091.442,152.9008,10000,1855402,3.193953),
(18554,3,0,-2288.812,3091.442,152.9008,13500,1855403,3.193953),
(18554,4,0,-2288.812,3091.442,152.9008,2600,1855404,3.193953),
(18554,5,0,-2288.812,3091.442,152.9008,15000,1855405,3.193953),
(18554,6,0,-2288.812,3091.442,152.9008,15000,1855406,3.193953),
(18554,7,0,-2288.812,3091.442,152.9008,10000,1855407,3.193953),
(18554,8,0,-2288.812,3091.442,152.9008,12300,1855408,3.193953),
(18554,9,0,-2288.812,3091.442,152.9008,7500,1855409,3.193953),
(18554,10,0,-2288.812,3091.442,152.9008,180000,1855410,3.193953);

DELETE FROM creature_movement_template WHERE entry=21504 AND pathId=2;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21504,1,2,-2293.724,3091.194,152.9008,1000,2150402,0.05235988);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001320 AND 2000001329;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001320, 'My master, we are honored by your presence.  How may I serve thee?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sharth Voldoun (Entry: 18554)'),
(2000001321, 'Rise, young Voldoun.  Do not worry yourself with pleasantries.  I come at the behest of our master, Prince Kael''thas.  He bids me to check on the progress of the mana bomb.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Pathaleon the Calculator''s Image (Entry: 21504)'),
(2000001322, 'All goes exceedingly well, my lord.  Testing of the smaller prototype at the Cenarion Thicket was a complete success.  The second bomb is being ritually fueled in the courtyard below even as we speak.  And, I''ve sent a courier to Tuurem to bring the rest of the parts to us here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Sharth Voldoun (Entry: 18554)'),
(2000001323, 'You are satisfied?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Sharth Voldoun (Entry: 18554)'),
(2000001324, 'For the time being, yes.  However, allow my presence to be a motivator.  Prince Kael''thas was displeased with the failure of the crystal experiment on Fallen Sky Ridge.  This is one of the reasons for why we chose the Cenarion druids as the testing grounds for the bomb.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Pathaleon the Calculator''s Image (Entry: 21504)'),
(2000001325, 'I need not tell you what will happen should the mana bomb down in the courtyard fail to be used on its target soon?  Since moving into the forest, they''ve become increasingly annoying to our operations: here, at Tuurem and to the south at the Bonechewer Ruins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Pathaleon the Calculator''s Image (Entry: 21504)'),
(2000001326, 'I think that we should teach a lesson to both the Horde and the Alliance.  One that they will not soon forget!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Pathaleon the Calculator''s Image (Entry: 21504)'),
(2000001327, 'I can assure you that we will not fail, my master.  I am personally overseeing every aspect of the construction, and I hold the final codes, myself.  Within a day''s time, I will have the bomb detonated on those nearby pests.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 'Sharth Voldoun (Entry: 18554)'),
(2000001328, 'See to it that you do, Sharth, or I will personally see to your slow torture and death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'Pathaleon the Calculator''s Image (Entry: 21504)'),
(2000001329, 'I believe I may recognize them.  Deal with this quickly, Sharth.  Then take the mana bomb and destroy their town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Pathaleon the Calculator''s Image (Entry: 21504)');





