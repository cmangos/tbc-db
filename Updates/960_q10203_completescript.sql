-- CompleteScript for q.10203 Invaluable Asset Zapping

UPDATE `quest_template` SET `DetailsEmote1`='6', `DetailsEmote2`='11', `DetailsEmote3`='1', `DetailsEmoteDelay2`='1000', `DetailsEmoteDelay3`='1000', `IncompleteEmote`='6', `CompleteEmote`='6', `OfferRewardEmote1`='4', `OfferRewardEmote2`='6', `OfferRewardEmoteDelay2`='1000', `CompleteScript`=10203 WHERE  `entry`=10203;

UPDATE `creature_template` SET `ExtraFlags`='0' WHERE  `entry` IN(21262,21261); -- Remove CREATURE_EXTRA_FLAG_INVISIBLE

-- ----------------------------
-- Lead Sapper Blastfizzle (Entry: 19634) - Convert old npc_gossip entry to gossip_menu with correct IDs
UPDATE creature_template SET GossipMenuId=8003 WHERE entry=19634;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=19634);

DELETE FROM `gossip_menu` WHERE `entry`=8003;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8003, 9869, 0, 0);


DELETE FROM `gameobject` WHERE `guid` BETWEEN 200004 AND 200007;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(200004, 184700, 530, 2923.395, 3584.406, 129.6645, 4.642576, -0.7313538, 0.6819983, -12, -12, 100, 1),
(200005, 183797, 530, 2923.793, 3587.238, 129.5693, 5.916668, -0.1822348, 0.983255, -15, -15, 100, 1),
(200006, 183797, 530, 2923.393, 3584.424, 129.6673, 1.710422, 0.7547092, 0.6560594, -15, -15, 100, 1),
(200007, 183797, 530, 2923.412, 3581.182, 129.3627, 2.82743, 0.9876881, 0.1564362, -15, -15, 100, 1);

-- Delete the old version of this script that used creature_movement
-- Doing everything in dbscripts_on_quest_end is better because this way Blastfizzle won't stop moving when a player talks to him 
-- (Yes, it's Blizzlike that he keeps gossip and quest flags during the script)
DELETE FROM `creature_movement_template` WHERE `entry`=19634;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1963401,1963402);
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10203;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10203,0,25,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run On',0,0,0,0),
(10203,9,0,0,0,0,2000001198,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Ack!  Everyone run... the last asset is materializing!!!',0,0,0,0),
(10203,9,3,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Move Point 1',2930.243,3579.115,129.5008,2.481788),
(10203,10,36,0,0,0,0,0,0,0,21259,10,1,'Lead Sapper Blastfizzle - Face Crash Bigbomb',0,0,0,0),
(10203,11,15,34427,0,0,0,0,0,0,21262,10,7,'Goblin Equipment Trigger - Cast Ethereal Teleport',0,0,0,0),
(10203,12,1,5,0,0,0,0,0,0,21259,10,0,'Crash Bigbomb - OneShotExclamation',0,0,0,0),
(10203,12,25,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Set Run Off',0,0,0,0),
(10203,12,0,0,0,0,2000001199,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Crash, get out of there!!!  Oh no!!!  Not another of my proteges!!!',0,0,0,0),
(10203,12,9,200004,13,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Big Wagon Full of Explosives)',0,0,0,0),
(10203,12,15,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cast Permanent Feign Death',0,0,0,0),
(10203,20,0,0,0,0,2000001200,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Uh oh.  The wagon looks unstable... it''s going to blow!!!',0,0,0,0),
(10203,21,15,30934,0,0,0,0,0,0,21261,74496,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,23,15,30934,0,0,0,0,0,0,21261,74498,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,23,15,30934,0,0,0,0,0,0,21261,74497,23,'Big Wagon Full of Explosives Trigger - Cast Explosion',0,0,0,0),
(10203,25,9,200005,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,25,9,200006,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,25,9,200007,43,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Respawn Gameobject (Smoke)',0,0,0,0),
(10203,26,14,29266,0,0,0,0,0,0,21259,10,7,'Crash Bigbomb - Cancel Aura',0,0,0,0),
(10203,28,0,0,0,0,2000001201,0,0,0,21259,10,7,'Crash Bigbomb - I''m ok!  It''s just a flesh wound...  That was fun!!!',0,0,0,0),
(10203,32,0,0,0,0,2000001202,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Fun?!!  You nearly gave me a heart attack!  Yeah, I guess you''re right.  That was fun!!!',0,0,0,0),
(10203,40,3,0,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Move Point 2',2923.388,3577.391,129.3778,0.6806784),
(10203,44,36,1,0,0,0,0,0,0,0,0,0,'Lead Sapper Blastfizzle - Reset Facing',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001198 AND 2000001202;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001198, 'Ack!  Everyone run... the last asset is materializing!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001199, 'Crash, get out of there!!!  Oh no!!!  Not another of my proteges!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001200, 'Uh oh.  The wagon looks unstable... it''s going to blow!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lead Sapper Blastfizzle (Entry: 19634)'),
(2000001201, 'I''m ok!  It''s just a flesh wound...  That was fun!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 'Crash Bigbomb (Entry: 21259)'),
(2000001202, 'Fun?!!  You nearly gave me a heart attack!  Yeah, I guess you''re right.  That was fun!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'Lead Sapper Blastfizzle (Entry: 19634)');

