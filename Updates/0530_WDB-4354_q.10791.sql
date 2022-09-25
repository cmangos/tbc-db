-- q.10791 'Welcoming the Wolf Spirit' - UPDATE
-- .go c id 18384

-- removed wrong part
DELETE FROM `dbscripts_on_quest_start` WHERE id IN (10791);
UPDATE `quest_template` SET `StartScript` = 0 WHERE entry IN (10791);

-- event
DELETE FROM `dbscripts_on_event` WHERE `id` = 12650;
INSERT INTO `dbscripts_on_event` (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(12650,1,31,19616,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19616 - terminate if alive'),
(12650,101,20,2,0,0,18384,50,7,0,0,0,0,0,0,0,0,'18384 - movement chenged to 2:waypoint'),
(12650,29000,31,18384,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 18384 - make sure player wont go to far'),
(12650,32000,8,18384,0,0,0,0,0,0,0,0,0,0,0,0,0,'Quest Credit');

DELETE FROM `creature_movement_template` WHERE `Entry` = 18384;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(18384, 0, 1, -2671.77, 4373.86, 35.9781, 0.680678, 32000, 1838401, NULL),
(18384, 0, 2, -2671.77, 4373.86, 35.9781, 0.680678, 2000, 0, NULL);

DELETE FROM `creature_movement_template` WHERE entry = 19616;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(19616,0,1,-2662.967,4402.927,36.75782,100,0,0),
(19616,0,2,-2657.96,4388.163,36.22264,100,0,0),
(19616,0,3,-2668.853,4376.318,36.32446,100,10000,1961601);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1838401,1961601,1961602);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- 1838401
(1838401,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Active'),
(1838401,2,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags Removed'),
(1838401,10,0,0,0,0,0,0,0x04,17039,0,0,0,0,0,0,0,'text_emote'),
(1838401,2000,15,34317,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast Transform Malukaz 34317'),
(1838401,3000,15,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast Nature Channeling 28892'),
(1838401,7000,0,0,0,0,0,0,0x04,17044,0,0,0,0,0,0,0,'say'),
(1838401,9000,0,0,0,0,0,0,0x04,17046,0,0,0,0,0,0,0,'say'),
(1838401,14000,0,0,0,0,0,0,0x04,17047,0,0,0,0,0,0,0,'say'),
(1838401,14001,15,34312,0,0,0,0,0,0,0,0,0,0,0,0,0,'Malukaz  - Cast Summon Terokkar Wolf Spirit 34312'),
(1838401,14002,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Interrupt Channelling'),
(1838401,15000,10,19616,20000,0,0,0,0x08,1,0,0,1,-2670.76,4399.93,36.4068,5.05927,'summon Terokkar Wolf Spirit'),
(1838401,22000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1838401,24000,0,0,0,0,0,0,0x04,17055,0,0,0,0,0,0,0,'say'),
(1838401,30000,0,0,0,0,0,0,0x04,17066,0,0,0,0,0,0,0,'say'),
(1838401,31000,14,34317,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove Transform Malukaz 34317'),
(1838401,31001,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags added'),
(1838401,31100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'0:idle'),
(1838401,32000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnActive'),
-- 1961601
(1961601,3000,1,393,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Terokkar Wolf Spirit - Emote'),
(1961601,5000,0,0,0,0,0,0,0x04,17051,0,0,0,0,0,0,0,'Terokkar Wolf Spirit - text_emote'),
(1961601,6000,0,0,0,0,0,0,0x04,17086,0,0,0,0,0,0,0,'Terokkar Wolf Spirit - text_emote'),
(1961601,6001,1,393,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Terokkar Wolf Spirit - Emote'),
(1961601,9000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Terokkar Wolf Spirit - Emote'),
(1961601,9001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UnActive');

