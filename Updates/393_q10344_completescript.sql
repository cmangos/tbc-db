UPDATE quest_template SET CompleteScript=10344 WHERE entry=10344;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10344;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10344,10,36,0,0,0,0,0,0,0,0,0,0,'Wing Commander Gryphongar - Face Player',0,0,0,0),
(10344,11,15,6245,0,0,0,0,0,0,0,0,2,'Wing Commander Gryphongar - Cast Force Target - Salute',0,0,0,0),
(10344,11,0,0,0,0,2000001308,0,0,0,0,0,0,'Wing Commander Gryphongar - Welcome to Shatter Point, $n!  I hope you survive the experience!',0,0,0,0),
(10344,14,36,1,0,0,0,0,0,0,0,0,0,'Wing Commander Gryphongar - Reset Facing',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry`=2000001308;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001308, 'Welcome to Shatter Point, $n!  I hope you survive the experience!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Wing Commander Gryphongar (Entry: 20232)');
