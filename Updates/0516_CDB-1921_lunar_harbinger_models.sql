-- Remove Static model for Lunar Festival Harbinger 15895
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 15895; -- (ss.26383 morphs to 15900)

-- Correct Lunar Festival NE Harbinger UnitFlags
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 15900;
UPDATE `creature_template` SET `GossipMenuId` = 6918 WHERE `entry` = 15895;

-- Made the Alliance NPC use correct modelid
-- https://www.wowhead.com/npc=15895/lunar-festival-harbinger#screenshots:id=70982
DELETE FROM `game_event_creature_data` WHERE `guid` IN (91626, 91632, 152965);
INSERT INTO `game_event_creature_data` (`guid`, `spell_start`, `event`) VALUES
(91626, 26383, 7),
(91632, 26383, 7),
(152965, 26383, 7); -- 94919 :-/

-- Port textid 8205 npc_gossip to gossip_menu
DELETE FROM `npc_gossip` WHERE `textid` = 8205;
DELETE FROM `gossip_menu` WHERE `entry` = 6918;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6918, 8205, 0, 0);

