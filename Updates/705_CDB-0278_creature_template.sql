-- Malgin Barleybrew is important because he is the only vendor for Alliance located in proximity to Razorfen Kraul and Razorfen Downs instances.
-- Unfortunately, his shop is missing from DB, his faction is neutral and he is attackable for Alliance.
-- source: http://www.wowwiki.com/Malgin_Barleybrew?oldid=345778
-- source: http://www.wowhead.com/npc=5848#sells
UPDATE `creature_template` SET `FactionAlliance` = 122, `FactionHorde` = 122, `NPCFlags` = `NPCFlags`|128 WHERE `entry` = 5848;
-- Added items to vendor list
DELETE FROM `npc_vendor` WHERE `entry` = 5848;
INSERT INTO `npc_vendor` (entry,item,maxcount,incrtime,condition_id) VALUES
(5848, 2593, 0, 0, 0),
(5848, 2594, 0, 0, 0),
(5848, 2595, 0, 0, 0),
(5848, 2596, 0, 0, 0),
(5848, 2723, 0, 0, 0);

