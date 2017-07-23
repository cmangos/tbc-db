UPDATE db_script_string SET type=2 WHERE entry IN(2000005492,2000005496); -- fix merge mistake
UPDATE creature_template SET NpcFlags=2, UnitFlags=768, FactionAlliance=35, FactionHorde=35 WHERE entry in(21073,21097,21109,21116); -- fix attackability
DELETE FROM spell_script_target WHERE entry IN(36035); -- target only enraged spirits
INSERT INTO spell_script_target VALUES
(36035,1,21050,0),
(36035,1,21061,0),
(36035,1,21059,0),
(36035,1,21060,0);

-- Demonic Crystal Prisons 10528

UPDATE quest_template SET CompleteEmote=0 WHERE entry=10528;
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Set Emote 1'),
(10528,1,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Cast Death Touch'),
(10528,4,0,0,0,21318,25,0,2000009036,0,0,0,0,0,0,0,'Artor - Make spirit talk');

-- Set proper aura for Spirit of Ar'tor
UPDATE `creature_template_addon` SET `auras`='32648' WHERE `entry`=21318;

-- Add spell_area
DELETE FROM spell_area WHERE spell=32649 AND area=3752;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(32649, 3752, 0, 0, 0, 1195, 0, 0, 2, 1);

-- Condition
DELETE FROM conditions WHERE condition_entry=1195;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES 
(1195, 8, 10528); -- Quest 10528 Rewarded

-- Of Thistleheads and Eggs 10547

UPDATE quest_template SET CompleteScript=10547 WHERE entry=10547;
DELETE FROM dbscripts_on_quest_end WHERE id=10547;
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10547,0,29,2,2,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Remove NPC Questgiver flag'),
(10547,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Make active'),
-- TODO: add drinking from green bottle
(10547,2,0,0,0,0,0,0x04,2000006090,0,0,0,0,0,0,0,'Tobias - EMOTE 1'),
(10547,9,0,0,0,0,0,0x04,2000006091,0,0,0,0,0,0,0,'Tobias - SAY 1'),
(10547,10,20,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Start WP movement');
DELETE FROM creature_movement_template WHERE entry IN(21411);
INSERT INTO creature_movement_template VALUES
(21411, 1, -2080.785,5296.885,-37.323, 8000, 1054701, 0, 0, 0, 0, 0, 0, 0, 5.422, 0, 0),
(21411, 2, -2083.83,5299.95,-37.3236, 1000, 1054702, 0, 0, 0, 0, 0, 0, 0, 0.314159, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1054701,1054702);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1054701,0,0,0,0,0,0,0,2000006092,0,0,0,0,0,0,0,'Tobias - EMOTE 2'),
(1054701,0,15,36823,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Cast Overwhelming Odor'),
(1054702,0,0,0,0,0,0,0,2000006093,0,0,0,0,0,0,0,'Tobias - SAY 2'),
(1054702,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Add NPC Questgiver flag'),
(1054702,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Set Idle movement'),
(1054702,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Remove active');
DELETE FROM db_script_string WHERE entry IN(2000006090,2000006091,2000006092,2000006093);
INSERT INTO db_script_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000006090,'%s cracks the rotton egg open and - to the horror and dismay of all around him - begins to drink from its putrid core.',0,2,0,0,'Tobias - EMOTE 1'),
(2000006091,'That was life-changing... Excuse me for one minute',0,0,0,273,'Tobias - SAY 1'),
(2000006092,'%s lets loose the most foul belch ever heard or smelled.',0,2,0,0,'Tobias - EMOTE 2'),
(2000006093,'Ok then, back to business.',0,0,0,1,'Tobias - SAY 2');

-- The Shadowmoon Shuffle 10576
UPDATE creature_loot_template SET ChanceOrQuestChance=-25 WHERE item=30640 AND entry IN(19792,19796,19806);
UPDATE creature_loot_template SET ChanceOrQuestChance=-5 WHERE item=30640 AND entry IN(19795);

-- What Illidan wants Illidan gets 10577
UPDATE gossip_menu_option SET action_script_id=8341 WHERE menu_id=8341 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id=8340;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8341,0,0,0,0,21639,75468,16,2000006094,0,0,0,0,0,0,0,'Ilidan Slayer - Play emote'),
(8341,1,3,0,0,21639,75468,16,0,0,0,0,-4579.364,1671.540,175.868,3.371,'Ilidan Slayer - Move behind player'),
(8341,1,3,0,0,21639,75469,16,0,0,0,0,-4579.287,1667.287,175.849,2.513,'Ilidan Slayer - Move behind player');
DELETE FROM db_script_string WHERE entry IN(2000006094);
INSERT INTO db_script_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000006094,'%s moves in behind you with his axe at the ready.',0,2,0,0,'Ilidan Slayer - emote');
DELETE FROM dbscripts_on_gossip WHERE id=8338;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8338, 0, 7, 10577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 10577 complete'),
(8338,1,3,0,0,21639,75468,16,0,0,0,0,-4578.17,1674.25,176.243,0,'Ilidan Slayer - Move home'),
(8338,1,3,0,0,21639,75469,16,0,0,0,0,-4578.82,1664.22,176.243,0.296706,'Ilidan Slayer - Move home');

-- The Cipher of Damnation 10588
UPDATE creature_template SET MinLevel=70,MaxLevel=70 WHERE entry IN(21685,21687,21686);
UPDATE creature_template SET MinLevelHealth=20250,MaxLevelHealth=20250 WHERE entry=21685;
UPDATE creature_template SET MinLevelHealth=16200,MaxLevelHealth=16200 WHERE entry=21686;
UPDATE creature_template SET MinLevelHealth=55888,MaxLevelHealth=55888 WHERE entry=21687;

-- Trial of the Naaru: Mercy
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=31716;


