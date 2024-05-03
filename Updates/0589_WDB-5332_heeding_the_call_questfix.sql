
-- Heeding the Call (Alliance)
DELETE FROM `creature_questrelation` WHERE `quest` IN (5923, 5924, 5925);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(4218, 5923), -- Denatharion
(5505, 5924), -- Theridran
(16721, 5924), -- Shalannius
(3602, 5925); -- Kal

-- he isn't a quest-npc at all (remove questgiver flag)
UPDATE `creature_template` SET `NpcFlags` = 49 WHERE `entry` = 4219; -- 19

-- Heeding the Call (Horde)
DELETE FROM `creature_questrelation` WHERE `quest` IN (5926, 5927, 5928);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(6746, 5926), -- Innkeeper Pala
(6929, 5927), -- Innkeeper Gryshka
(16655, 5927), -- Harene Plainwalker
(3064, 5928); -- Gennia Runetotem

-- --------------------------------------------------------------------- --

DELETE FROM `npc_gossip` WHERE `npc_guid` = 54984; -- textid 7781 - wotlkmangos
UPDATE `creature_template` SET `GossipMenuId` = 6566 WHERE `entry` = 15278; -- https://www.wowhead.com/tbc/npc=15278/magistrix-erona
DELETE FROM `gossip_menu` WHERE `entry` = 6566 AND `text_id` = 7781;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6566, 7781, 0, 0);

