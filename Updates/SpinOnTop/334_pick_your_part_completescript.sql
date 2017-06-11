-- Add missing spell target and delete incorrect targetEntry 20139
DELETE FROM `spell_script_target` WHERE `entry`=34397;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
('34397', '1', '19655');

-- Remove CREATURE_EXTRA_FLAG_INVISIBLE
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE  `Entry`=19655;

-- Trigger NPC should always be flying for correct spell visual
UPDATE `creature_template` SET `InhabitType`=7 WHERE  `Entry`=19654;

-- Set CompleteScript and add emotes for quest
UPDATE `quest_template` SET `DetailsEmote1`='5', `DetailsEmote2`='1', `DetailsEmote3`='6', `DetailsEmoteDelay2`='1000', `DetailsEmoteDelay3`='1000', `IncompleteEmote`='6', `CompleteEmote`='6', `OfferRewardEmote1`='11', `OfferRewardEmote2`='1', `OfferRewardEmoteDelay2`='1000', `CompleteScript`=10206 WHERE `entry`=10206;

-- Add missing gameobject
DELETE FROM `gameobject` WHERE `guid`=200003;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
('200003', '183820', '530', '3058.785', '3622.131', '143.4428', '5.951575', '-0.1650467', '0.9862857', '-24', '-24');

-- Pathing for  Entry: 21751 'UDB FORMAT' 
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=21751;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=76063;
DELETE FROM `creature_movement_template` WHERE `entry`=21751;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- Default path
(21751,1,0,3054.805,3640.078,143.1212,7000,0,0.8726646),
(21751,2,0,3054.688,3639.063,143.1401,37000,2175101,6.126106),
(21751,3,0,3054.432,3633.92,143.1401,57000,2175102,5.288348),

-- Path triggered when player completes quest Pick Your Part (Quest Entry: 10206)
(21751,1,1,3051.439,3632.561,143.2127,0,0,0),
(21751,2,1,3053.262,3626.051,143.4786,0,0,0),
(21751,3,1,3057.071,3623.171,143.5574,6000,2175103,100),
(21751,4,1,3053.646,3627.604,143.4323,16000,2175104,0.3665192),
(21751,5,1,3053.646,3627.604,143.4323,21000,2175105,5.51524),
(21751,6,1,3050.686,3631.587,143.4126,0,0,0),
(21751,7,1,3051.865,3638.189,143.1401,500,2175106,100);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2175101 AND 2175106;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2175101,2,1,133,0,0,0,0,0,0,0,0,0,'Chubis - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(2175101,32,1,0,0,0,0,0,0,0,0,0,0,'Chubis - ONESHOT_NONE',0,0,0,0),

(2175102,1,1,133,0,0,0,0,0,0,0,0,0,'Chubis - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(2175102,52,1,0,0,0,0,0,0,0,0,0,0,'Chubis - ONESHOT_NONE',0,0,0,0),

-- (2175103,1,1,16,0,0,0,0,0,0,0,0,0,'Chubis - OneShotKneel',0,0,0,0), -- Sniff says he should kneel, but goblins don't have a kneel animation in tbc
(2175103,1,0,0,0,0,2000001194,0,0,0,0,0,0,'Chubis - This thing kind of reminds me of a Zed Power Nodule I once took half of Papa Wheeler''s old garage out with.',0,0,0,0),
(2175103,1,9,200003,24,0,0,0,0,0,0,0,0,'Chubis - Respawn Gameobject (Ethereal Technology)',0,0,0,0),

(2175104,1,1,133,0,0,0,0,0,0,0,0,0,'Chubis - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(2175104,1,0,0,0,0,2000001195,0,0,0,0,0,0,'Chubis - The Long Tube Gadget Analyzer should tell me what I need to know.',0,0,0,0),
(2175104,7,15,34397,0,0,0,0,0,0,19654,5,0,'Area 52 Analyzer Bunny - Cast Red Beam',0,0,0,0),
(2175104,16,14,34397,0,0,0,0,0,0,19655,10,0,'Area 52 Ethereal Technology Bunny - Cancel Aura',0,0,0,0),

(2175105,0,1,0,0,0,0,0,0,0,0,0,0,'Chubis - ONESHOT_NONE',0,0,0,0),
(2175105,1,0,0,0,0,2000001196,0,0,0,0,0,0,'Chubis - Ack, disintegrated!  I guess I had the power setting too high?  And it almost hit the Wheeler Mobile!  Yikes, don''t tell him!',0,0,0,0),
(2175105,12,0,0,0,0,2000001197,0,0,0,0,0,0,'Chubis - Good thing you brought us nine others.  I think I''ll finish this later.',0,0,0,0),
(2175105,12,42,1,0,0,0,0,0,0,0,0,0,'Chubis - Set Equipment Slots',0,0,0,0),

(2175106,0,20,0,0,0,0,0,0,0,0,0,0,'Chubis - Set Idle Movement',0,0,0,0),
(2175106,1,20,2,0,0,0,0,0,0,0,0,0,'Chubis - Set PathId 0',0,0,0,0);

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10206;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10206,0,31,21751,12,0,0,0,0,0,0,0,0,'Terminate Script if Chubis not found in range',0,0,0,0),
(10206,1,20,0,0,0,0,0,0,0,21751,20,0,'Chubis - Set Idle Movement',0,0,0,0),
(10206,2,1,0,0,0,0,0,0,0,21751,20,0,'Chubis - ONESHOT_NONE',0,0,0,0),
(10206,2,42,0,0,0,0,0,0,0,21751,20,0,'Chubis - Set Equipment Slots',0,0,0,0),
(10206,2,20,2,1,0,0,0,0,0,21751,20,0,'Chubis - Set PathId 1',0,0,0,0),
(10206,2,0,0,0,0,2000001193,0,0,0,21751,20,0,'Chubis - Alright, let''s see what makes this tech tick!',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001193 AND 2000001197;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001193, 'Alright, let''s see what makes this tech tick!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Chubis (Entry: 21751)'),
(2000001194, 'This thing kind of reminds me of a Zed Power Nodule I once took half of Papa Wheeler''s old garage out with.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Chubis (Entry: 21751)'),
(2000001195, 'The Long Tube Gadget Analyzer should tell me what I need to know.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Chubis (Entry: 21751)'),
(2000001196, 'Ack, disintegrated!  I guess I had the power setting too high?  And it almost hit the Wheeler Mobile!  Yikes, don''t tell him!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Chubis (Entry: 21751)'),
(2000001197, 'Good thing you brought us nine others.  I think I''ll finish this later.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Chubis (Entry: 21751)');

