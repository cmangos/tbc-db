-- Add Revered Responses for Ogri'la and Skyguard
-- This is sent after the player reaches revered reputation with the respective faction

DELETE FROM dbscripts_on_relay WHERE id IN(10193,10194,10195,10196,10197) AND command IN(0,1);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10193,0,0,1,0,0,0,0,0,2,16,6,0,0,0.000000,0.000000,0.000000,0.000000,'Gahk - Random Random Emote'),

(10194,0,0,1,0,0,0,0,0,2,273,4,66,0,0.000000,0.000000,0.000000,0.000000,'Grella/Sky Sergeant Doryn - Random Random Emote Group 1'),
(10195,0,0,1,0,0,0,0,0,2,6,25,5,0,0.000000,0.000000,0.000000,0.000000,'Grella/Sky Sergeant Doryn - Random Random Emote Group 2'),

(10196,0,0,0,10167,0,0,0,0,2,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Grella/Sky Sergeant Doryn - Random Text'),

(10197,0,0,0,10166,0,0,0,0,2,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Gahk - Random Text');


-- Add Revered Aura that triggers a reaction from Skyguard NPCs when nearby (Ogri'la aura already added previously)
DELETE FROM spell_area WHERE spell=41574; -- Revered Skyguard Aura
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(41574, 3964, 0, 0, 0, 10150, 0, 0, 2, 1), -- Skyguard Outpost
(41574, 3973, 0, 0, 0, 10150, 0, 0, 2, 1); -- Blackwind Landing

DELETE FROM spell_script_target WHERE entry IN(41557,41575);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(41557,1,23256,0),
(41557,1,23428,0),
(41557,1,22270,0),
(41557,1,22266,0),
(41557,1,23316,0),
(41557,1,23233,0),
(41557,1,23115,0),
(41557,1,23300,0),
(41557,1,23253,0),
(41557,1,23112,0),
(41557,1,22271,0),
(41557,1,22264,0),
(41557,1,23110,0),

(41575,1,23257,0),
(41575,1,22982,0),
(41575,1,23413,0),
(41575,1,23335,0),
(41575,1,23120,0),
(41575,1,23208,0),
(41575,1,23334,0),
(41575,1,23392,0),
(41575,1,23016,0),
(41575,1,23042,0),
(41575,1,23048,0),
(41575,1,23415,0),
(41575,1,23367,0);

DELETE FROM dbscript_random_templates WHERE id IN(10176,10177) AND target_id IN(10193,10194,10195,10196,10197);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10176,1,10194,25,'Grella/Sky Sergeant Doryn Revered Aura Reaction (Emote)'),
(10176,1,10195,25,'Grella/Sky Sergeant Doryn Revered Aura Reaction (Emote)'),
(10176,1,10196,50,'Grella/Sky Sergeant Doryn Revered Aura Reaction (Text)'),

(10177,1,10193,50,'Gahk c.23300 Revered Aura Reaction (Emote)'),
(10177,1,10197,50,'Gahk c.23300 Revered Aura Reaction (Text)');

-- Ogri'la Storyteller c.23256
-- If event is running the NPC should not greet nearby players
UPDATE creature SET MovementType=2 WHERE id=23256;
DELETE FROM `creature_movement_template` WHERE `entry`=23256;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`,`comment`) VALUES
(23256,1,2278.665,7314.88,365.4426,1800000,12,5.340707,'Send AI Event 6 to Self and Wait approx 30min'),
(23256,2,2278.665,7314.88,365.4426,0,2325601,5.340707,'Resume path, do start stuff'),
(23256,3,2316.355,7303.424,367.0267,1000,2325602,100,NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2325601);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2325601,0,35,5,0,0,0,0,0,0,0,0,0,'Ogri''la Storyteller - Send AI Event 5 to Self',0,0,0,0),
(2325601,6000,35,5,0,0,0,0,0,0,21234,161459,17,'Ogri''la Storyteller - Send AI Event 5 to Blade''s Edge Invisible Stalker',0,0,0,0),
(2325601,8000,32,0,0,0,0,0,0,0,23115,161447,23,'Ogri''la Peacekeeper - Resume Waypoints',0,0,0,0);


