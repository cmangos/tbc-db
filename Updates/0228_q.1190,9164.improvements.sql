-- tbc+
-- Revert based on https://github.com/cmangos/wotlk-db/commit/ed687a27f2d503620b515b35b5b452e40de12f11 to make them both work again
-- Fix Faction, UnitFlags for npcs involved in quest 9164 - Captives at Deatholme

-- https://tbc.wowhead.com/quest=1190/keeping-pace - collusion with https://tbc.wowhead.com/quest=9164/captives-at-deatholme
-- https://github.com/cmangos/wotlk-db/commit/5ce09710c5c9619ef992861640f5ae88673b94a7#r71992255
-- Assign correct gossip_menu for Apothecary Enith 16208
UPDATE `creature_template` SET `GossipMenuId` = 7182 WHERE `entry` = 16208; -- old 7182
DELETE FROM `gossip_menu` WHERE `entry` IN (6029,7182,7179);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(6029, 7182, 0, 0), -- 7182	These papers are guarded.  Speak with Zamek to create a distraction!

-- tbc+
-- [0] (GossipOptions) Text: A bit ungrateful, aren't we?  The way out is clear, flee quickly!
(7179, 8460, 0, 445), -- 873 "(Quest ID 9164 Taken OR Player Has 1 or more of Item ID 22628 in Inventory)"
(7182, 8459, 0, 0); -- [0] (GossipOptions) Text: <Administer the restorative draught.>
/*
ServerToClient: SMSG_GOSSIP_MESSAGE (0x2A97) Length: 84 ConnIdx: 0 Time: 05/05/2017 10:14:28.643 Number: 51619
GossipGUID: Full: 0x203ADC42400FD40000162C00000C2EFD Creature/0 R3767/S5676 Map: 530 Entry: 16208 Low: 798461
GossipID: 7182
FriendshipFactionID: 0
TextID: 8459

ServerToClient: SMSG_GOSSIP_MESSAGE (0x2A97) Length: 112 ConnIdx: 0 Time: 05/05/2017 10:14:30.003 Number: 51638
GossipGUID: Full: 0x203ADC42400FD40000162C00000C2EFD Creature/0 R3767/S5676 Map: 530 Entry: 16208 Low: 798461
GossipID: 7179
FriendshipFactionID: 0
TextID: 8460
*/

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6029,7182,7179);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(7182, 0, 0, '<Administer the restorative draught.>', 0, 1, 1, 7179, 0, 0, 0, 0, NULL, 0, 445),
(7179, 0, 0, 'A bit ungrateful, aren\'t we?  The way out is clear, flee quickly!', 0, 1, 1, 0, 0, 7179, 0, 0, NULL, 0, 445);

-- dbscript on gossip 7179 - Enith gives credit

UPDATE `creature` SET `spawntimesecsmin` = 15, `spawntimesecsmax` = 30 WHERE `id` IN (16206,16208,16209); -- 300 to 600
UPDATE `creature_template` SET `Faction` = 1604, `UnitFlags` = 33024 WHERE `entry` IN (16206,16208,16209);

