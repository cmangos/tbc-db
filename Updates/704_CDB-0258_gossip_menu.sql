-- Added gossip menu to creature 9460 (Gadgetzan Bruiser) and linked menu to creature template
-- Source: YTDB
DELETE FROM `gossip_menu` WHERE `entry` = 7956;
INSERT INTO `gossip_menu` VALUES
(7956, 9774, 0, 242),   -- Gossip for the two bruisers in Un'Goro
(7956, 15532, 0, 0);    -- Default gossip
UPDATE `creature_template` SET `GossipMenuId` = 7956, `NPCFlags` = `NPCFlags`|1 WHERE `entry` = 9460;

-- Added gossip text associated with the two previous menu
DELETE FROM `npc_text` WHERE `id` IN (15532);
INSERT INTO `npc_text` VALUES
(15532, 'On behalf of the illustrious and still neutral Steamwheedle Cartel, I hope you enjoy your stay.$B$BRemember, everyone is welcome in Gadgetzan! Everyone except pirates.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Added condition if player in zone = Un'Goro (242)
DELETE FROM `conditions` WHERE `condition_entry` = 242;
INSERT INTO `conditions` VALUES (242, 4, 490, 0, NULL);

