/*
10507: turning-point
This quest is just simply to kill Socrethar. Did not really require any attention
10409: deathblow-to-the-legion
This quest required a lot of scripts to get his special dialog event to happen. 
Example video: youtube.com/watch?v=Ncfb5hyiy9E
############################## Gossip and Text ####################################################### 
#It is time to face Socrethar,$B$N. Are you ready?$B$B

/*
X: 4874.79 Y: 3775.888 Z: 207.0963
X: 4864.959 Y: 3771.685 Z: 207.0281
X: 4854.847 Y: 3768.162 Z: 206.8053
X: 4844.401 Y: 3771.839 Z: 206.8293

X: 4849.502 Y: 3808.271 Z: 207.0963
X: 4846.495 Y: 3797.641 Z: 207.0281
X: 4839.137 Y: 3782.313 Z: 206.7041
*/

DELETE FROM game_tele WHERE id IN(423);
INSERT INTO game_tele(id, position_x, position_y, position_z, orientation, map, name) VALUES
(423,4803.008,3761.212,210.823,0.858616,530,'SocretharsSeat');

DELETE FROM gossip_menu WHERE entry IN(8215) AND text_id=10268;
INSERT INTO gossip_menu VALUES
(8215,10268,0,0); -- Used when someone is already in combat with Socrethar

DELETE FROM npc_text WHERE id IN(10268);
INSERT INTO npc_text VALUES
('10268', 'It looks like there''s a skirmish up ahead, $n.  Let us wait til the situation clears up.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

DELETE FROM creature_template_addon WHERE entry IN(19467);
DELETE FROM creature_addon WHERE guid IN(69727);
INSERT INTO creature_addon(guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('69727', '0', '6', '1', '16', '0', '0', NULL);

UPDATE creature SET position_x=4946.936,position_y=3849.208,position_z=211.5767,orientation=3.892084 WHERE id IN(20132);

-- It looks like there's a skirmish up ahead, $n. Let us wait til the situation clears up.

-- Timeline of script
-- 11:25:46.661 - Areatrigger tripped by client
-- 11:25:47.036 - NPCs spawned through Areatrigger
-- 11:25:51.489 - Adyen salutes
-- 11:26:16.817 - received gossip data for adyen
-- 11:26:30.911 - selected start event gossip
-- 11:26:31.442 - adyen starts moving
-- 11:26:31.442 - npcs and socrethar unit flags and faction changes - socrethar flags 33600, others faction 495
-- 11:26:43.646 - adyen aggros wrath lord
-- adyen moves
-- 11:27:36.052 - adyen text to socrethar (effective event start)
-- 11:27:42.427 - Socrethar emote - 153
-- 11:27:42.536 - socrethar to party text
-- 11:27:48.942 - adyen to socrethar
-- 11:27:48.958 - kavlaan the lost spawns
-- 11:27:55.599 - Socrethar talk emote - 1
-- 11:27:55.692 - socrethar to party
-- 11:28:18.474 - kaylaan - [0] UNIT_FIELD_BYTES_1: 8/1.121039E-44
-- 11:28:18.583 - Exarch Orelis text to players
-- 11:28:24.927 - Kaylaan removes kneel and moves to point Points: X: 4940.221 Y: 3847.434 Z: 211.5027
-- 11:28:30.942 - Kaylaan to others
-- 11:28:39.661 - Kaylaan to others
-- 11:28:48.130 - Kaylaan to others
-- 11:28:54.286 - Adyen to Kaylaan
-- 11:29:01.536 - Kaylaan to others
-- 11:29:07.833 - Socrethar cast 35596 onto Kaylaan
-- 11:29:08.849 - Socrethar finish casting
-- 11:29:11.411 - Socrethar point emote to player
-- 11:29:11.411 - kaylaan faction to 14 
-- 11:29:11.521 - Socrethar to Kaylaan
-- 11:29:12.880 - Kaylaan attacks players
-- 11:29:13.161 - Kaylaan and Adyen engage
-- 11:29:22.146 - Socrethar roar emote - 53
-- 11:29:22.364 - Socrethar to Kaylaan
-- 11:29:22.005 - Fight stops -- happens on death prevention kicking in
-- 11:29:22.005 - Kaylaan casts 35614
-- 11:29:22.458 - Ishanah spawns
-- 11:29:23.255 - Ishanah Moves
-- 11:29:29.427 - Kaylaan to Socrethar
-- 11:29:35.583 - Kaylaan to Ishanah
-- 11:29:42.005 - Ishanah to Kaylaan
-- 11:29:48.896 - Ishanah to Socrethar
-- 11:29:56.411 - Socrethar to Kaylaan
-- 11:29:59.708 - Socrethar cast 35598
-- 11:30:01.224 - Socrethar finish cast onto Ishanah - 18538
-- 11:30:01.224 - Ishanah cast 29266 on self and flag changes
-- 11:30:07.036 - Kaylaan cast 35597 on self and move to [0] Points: X: 4941.518 Y: 3837.293 Z: 211.5089
-- 11:30:07.130 - Kaylaan to self
-- 11:30:11.458 - Kaylaan change faction to 290
-- 11:30:15.521 - Kaylaan cast 13874 on self
-- 11:30:15.630 - Kaylaan to self
-- 11:30:16.755 - Kaylaan cast 35599 - script target ishanah
-- 11:30:20.755 - Kaylaan finish cast - rezzurect ishanah
-- 11:30:22.786 - Socrethar to others
-- 11:30:28.849 - Socrethar cast 35600 - target script Kaylaan
-- 11:30:30.396 - Socrethar finish casting
-- 11:30:32.489 - Socrethar start attacking
-- 11:30:32.489 - Socrethar change flags
-- 11:30:32.817 - Adyen starts attacking
-- 11:30:53.146 - Anchorite Karja dies - non script, simple combat
-- 11:31:35.146 - Exarch Orelis dies - non script, simple combat
-- 11:31:49.036 - Adyen stops attacking, Ishanah stops attacking
-- 11:31:49.036 - flag changes
-- 11:31:49.427 - adyen moves
-- 11:31:49.427 - ishanah moves
-- 11:31:51.442 - Ishanah finishes moving and gets npc flags
-- 11:32:33.099 - stuff despawns

# Spell targets:
DELETE FROM spell_script_target WHERE entry IN(35596,35598,35599,35600);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('35596', '1', '20794', '0'), -- power of the legion on kaylaan
('35598', '1', '18538', '0'), -- wrath of socrethar on ishanah
('35599', '1', '18538', '0'), -- resurrection on ishanah
('35600', '1', '20794', '0'); -- wrath of socrethar on kaylaan

-- correct flags for the 3 NPCs
UPDATE creature_template SET UnitFlags=33024 WHERE entry IN(19467);
UPDATE creature_template SET UnitFlags=33024 WHERE entry IN(19466);
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(18537);
UPDATE creature_template SET UnitFlags=33344 WHERE entry IN(20132);
UPDATE creature_template SET UnitFlags=0, FactionAlliance=35,FactionHorde=35 WHERE entry IN(20794);

UPDATE `creature_template` SET `MovementType`='0' WHERE `Entry`='18538';
UPDATE `creature_template` SET `MovementType`='0' WHERE `Entry`='18537';
UPDATE `creature_template` SET `MovementType`='0' WHERE `Entry`='19467';
UPDATE `creature_template` SET `MovementType`='2' WHERE `Entry`='20794';

UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(20794);
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(18537);
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(19466);
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(19467);

-- correct model data for Kaylaan the Lost
UPDATE creature_model_info SET bounding_radius=1,combat_reach=1.5 WHERE modelid IN(20182,21001);

-- Kaylaan the Lost only spawns during script
DELETE FROM creature WHERE id IN(20794);

# Adyen the Lightwarden: 18537
# Kaylaan the Lost: 20794
# Socrethar: 20132
# Ishanah: 18538
# Orelis 19466
# Karja 19467

-- adyens spells - 14518, 13005 - sd2
-- ishanah spells - 22187,15238,35096
-- exarch spells - 13730,29426,16509
-- anchorite spells - 17141
-- socrethar spells - 28448,37540,15496
-- kaylaan - sd2

# Conditions
DELETE FROM conditions WHERE condition_entry IN(1184,1185,1186,1187,1188,1189);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('1184', '4', '3703', '0'),
('1185', '4', '3742', '0'),
('1186', '9', '10409', '0'),
('1187', '-1', '1185', '1186'),
('1188', '37', '20132', '200'),
('1189', '-1', '1187', '1188');

# Waypointing for Adyen and friends
-- adyen
DELETE FROM creature_movement_template WHERE entry IN(18537) AND pathId IN(1);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(18537,1,1,4819.196,3769.345,210.5016,0,0,100),
(18537,1,2,4842.188,3776.26,206.5281,0,0,100),
(18537,1,3,4860.452,3791.828,199.5865,0,0,100),
(18537,1,4,4883.19,3808.028,198.9821,0,0,100),
(18537,1,5,4889.043,3810.052,201.3117,0,0,100),
(18537,1,6,4898.159,3817.545,208.1413,0,0,100),
(18537,1,7,4912.548,3827.186,211.5156,0,0,100),
(18537,1,8,4925.748,3835.356,211.4949,1000,0,100);
-- ishanah
DELETE FROM creature_movement_template WHERE entry IN(18538) AND pathId IN(1);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(18538,1,1,4866.2,3799.016,199.141,0,0,100),
(18538,1,2,4881.334,3806.666,198.9821,0,0,100),
(18538,1,3,4894.203,3814.932,205.5267,0,0,100),
(18538,1,4,4909.888,3824.375,211.5238,0,0,100),
(18538,1,5,4923.284,3827.536,211.4991,0,0,100),
(18538,1,6,4933.633,3830.117,211.4426,0,0,100),
(18538,1,7,4935.647,3831.146,211.4859,0,0,100),
(18538,1,8,4940.156,3835.829,211.487,1000,0,100);
-- kaylaan
DELETE FROM creature_movement_template WHERE entry IN(20794) AND pathId IN(1);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(20794,1,1,4955.793,3926.349,208.391,0,0,100),
(20794,1,2,4952.11,3900.603,211.5737,0,0,100),
(20794,1,3,4950.149,3887.851,212.3316,0,0,100),
(20794,1,4,4946.882,3872.507,211.5159,0,0,100),
(20794,1,5,4939.232,3853.85,211.4933,0,0,100),
(20794,1,6,4941.726,3852.189,211.4896,1000,0,100);

DELETE FROM areatrigger_teleport WHERE id IN(4523);

-- Update Teleport Spell to sniff data to have failsave event start
UPDATE `spell_target_position` SET `target_position_x` = '4799.16', `target_position_y` = '3779.25', `target_position_z` = '211.595', `target_orientation` = '5.32531' WHERE `id` = 35741;

DELETE FROM gossip_menu WHERE entry IN(8215) AND text_id=10210;
INSERT INTO gossip_menu VALUES
(8215,10210,0,10087);

INSERT INTO conditions(condition_entry,type,value1,value2) VALUES
(10087,18,8215,0),
(10088,-3,10087,0);

DELETE FROM gossip_menu_option WHERE menu_id IN(8215);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8215,0,0,'I''m ready, Adyen.',1,1,-1,0,0,0,0,NULL,10088);

DELETE FROM creature_movement_template WHERE entry IN(20929) AND pathId IN(1);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(20929,1,1,4874.79,3775.888,207.0963,0,0,100),
(20929,1,2,4864.959,3771.685,207.0281,0,0,100),
(20929,1,3,4854.847,3768.162,206.8053,0,0,100),
(20929,1,4,4844.401,3771.839,206.8293,60000,0,100),
(20929,1,5,4888.753,3778.494,206.9831,1000,3,3.490659);

DELETE FROM creature_movement_template WHERE entry IN(20929) AND pathId IN(2);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(20929,2,1,4849.502,3808.271,207.0963,0,0,100),
(20929,2,2,4846.495,3797.641,207.0281,0,0,100),
(20929,2,3,4839.137,3782.313,206.7041,60000,0,100),
(20929,2,4,4854.88,3821.945,207.0635,1000,3,4.049164);


