UPDATE `quest_template` SET `DetailsEmote1`='6', `DetailsEmote2`='11', `DetailsEmote3`='1', `DetailsEmoteDelay2`='1000', `DetailsEmoteDelay3`='1000', `IncompleteEmote`='6', `CompleteEmote`='6', `OfferRewardEmote1`='4', `OfferRewardEmote2`='6', `OfferRewardEmoteDelay2`='1000', `CompleteScript`=10203 WHERE  `entry`=10203;

UPDATE `creature_template` SET `ExtraFlags`='0' WHERE  `entry` IN(21262,21261); -- Remove CREATURE_EXTRA_FLAG_INVISIBLE

DELETE FROM `gameobject` WHERE `guid` BETWEEN 200004 AND 200007;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
('200004', '184700', '530', '2923.395', '3584.406', '129.6645', '4.642576', '-0.7313538', '0.6819983', '-13', '-13', '100', '1'),
('200005', '183797', '530', '2923.793', '3587.238', '129.5693', '5.916668', '-0.1822348', '0.983255', '-43', '-43', '100', '1'),
('200006', '183797', '530', '2923.393', '3584.424', '129.6673', '1.710422', '0.7547092', '0.6560594', '-43', '-43', '100', '1'),
('200007', '183797', '530', '2923.412', '3581.182', '129.3627', '2.82743', '0.9876881', '0.1564362', '-43', '-43', '100', '1');

-- Pathing for  Entry: 19634 'UDB FORMAT' 
DELETE FROM `creature_movement_template` WHERE `entry`=19634;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19634,1,1,2923.388,3577.391,129.3778,3000,1963402,0.6806784),
(19634,2,1,2930.243,3579.115,129.5008,500,1963401,2.481788),
(19634,3,1,2923.388,3577.391,129.3778,500,3,0.6806784);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1963401,1963402);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1963401,0,32,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Pause Waypoints',0,0,0,0),
(1963401,0,25,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run Off',0,0,0,0),
(1963401,0,15,34427,0,0,0,0,0,0,21262,10,7,'Goblin Equipment Trigger - Cast Ethereal Teleport',0,0,0,0),
(1963401,1,0,0,0,0,2000001199,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Crash, get out of there!!!  Oh no!!!  Not another of my proteges!!!',0,0,0,0),
(1963401,1,15,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cast Permanent Feign Death',0,0,0,0),
(1963401,1,9,200004,13,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Big Wagon Full of Explosives)',0,0,0,0),
(1963401,10,15,30934,0,0,0,0,0,0,21261,74496,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(1963401,10,0,0,0,0,2000001200,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Uh oh.  The wagon looks unstable... it''s going to blow!!!',0,0,0,0),
(1963401,11,15,30934,0,0,0,0,0,0,21261,74498,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(1963401,12,15,30934,0,0,0,0,0,0,21261,74497,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(1963401,14,9,200005,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(1963401,14,9,200006,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(1963401,14,9,200007,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(1963401,14,14,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cancel Aura',0,0,0,0),
(1963401,16,0,0,0,0,2000001201,0,0,0,21259,10,7,'Crash Bigbomb - I''m ok!  It''s just a flesh wound...  That was fun!!!',0,0,0,0),
(1963401,20,0,0,0,0,2000001202,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Fun?!!  You nearly gave me a heart attack!  Yeah, I guess you''re right.  That was fun!!!',0,0,0,0),
(1963401,28,32,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Resume Waypoints',0,0,0,0),

(1963402,0,1,5,0,0,0,0,0,0,21259,10,0,'Crash Bigbomb - OneShotExclamation',0,0,0,0),
(1963402,0,25,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run On',0,0,0,0),
(1963402,3,0,0,0,0,2000001198,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Ack!  Everyone run... the last asset is materializing!!!',0,0,0,0);

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10203;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10203,0,20,2,1,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Waypoint Movement PathId 1',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001198 AND 2000001202;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001198, 'Ack!  Everyone run... the last asset is materializing!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001199, 'Crash, get out of there!!!  Oh no!!!  Not another of my proteges!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001200, 'Uh oh.  The wagon looks unstable... it''s going to blow!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001201, 'I''m ok!  It''s just a flesh wound...  That was fun!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 'Crash Bigbomb (Entry: 21259)'),
(2000001202, 'Fun?!!  You nearly gave me a heart attack!  Yeah, I guess you''re right.  That was fun!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'Lead Sapper Blastfizzle (Entry: 19634)');


