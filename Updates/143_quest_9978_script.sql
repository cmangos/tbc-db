-- Quest: By Any Means Necessary (9978)

-- Fixes:
-- Fight should be repeatable for those who completed By Any Means Necessary, but somehow didn't pick up Wind Trader Lathrai (different text for option and menu)
-- No fight gossip option should be available after completing Wind Trader Lathrai

-- TODO: 
-- Empoor says "I'm leaving now!" and starts walking after awhile instead of despawning after fight
-- Should have different gossip text when in "defeated" state, no way to do this currently

-- cleanup
DELETE FROM conditions WHERE condition_entry IN (62,3167);
DELETE FROM dbscripts_on_gossip WHERE id=7704;
UPDATE creature_template SET NpcFlags=3 WHERE entry=18482; -- suppress DB error

UPDATE `creature_linking` SET `flag`=1|128|512|8192 WHERE `guid`=66606; -- FLAG_AGGRO_ON_AGGRO, FLAG_RESPAWN_ON_RESPAWN, FLAG_FOLLOW, FLAG_DESPAWN_ON_DESPAWN
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`=18482;

-- Empoor 18482
DELETE FROM gossip_menu_option WHERE menu_id=7704;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7704, 0, 0, 'Empoor, you''re going to tell me what I want to know, or else!', 1, 1, -1, 0, 1848201, 0, 0, '', 3163),
(7704, 1, 0, 'Tell me again what you know!', 1, 1, -1, 0, 1848201, 0, 0, '', 3166);

DELETE FROM gossip_menu WHERE entry=7704;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7704, 9405, 0, 0), -- Very busy... very busy! What?
-- (7704, 9406, 0, 0), -- Now that I've been beaten to within an inch of my life what do you want? (not in use currently)
(7704, 9425, 0, 3165); -- Oh no, not you again!  Go away!

DELETE FROM conditions WHERE condition_entry IN (3166,3165,3164,3163);
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`) VALUES
(3163, 9, 9978, 0), -- Taken - By Any Means Necessary
(3164, 22, 9979, 0), -- Not Taken or Rewarded - Wind Trader Lathrai
(3165, 8, 9978, 0), -- Rewarded - By Any Means Necessary
(3166, -1, 3165, 3164);

DELETE FROM dbscripts_on_gossip WHERE id=1848201;
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES 
(1848201,0,0,0,0,0,0,0,2000007704,0,0,0,0,0,0,0,'Empoor say on start event'),
(1848201,0,22,14,2,0,0,0,0,0,0,0,0,0,0,0,'Empoor change faction to hostile'),
(1848201,0,22,14,2,18483,20,4,0,0,0,0,0,0,0,0,'Empoor''s Bodyguard change faction to hostile'),
(1848201,1,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'Empoor start attack');
-- (1848201,2,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'Empoor remove gossip flag');

DELETE FROM `db_script_string` WHERE `entry`=2000007704;
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(2000007704,'What is the meaning of this?!',null,null,null,null,null,null,null,null,0,0,0,0,null);


