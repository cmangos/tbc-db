-- Steamwheedle Cartel's Arena Battlemasters
DELETE FROM `npc_text` WHERE `ID` IN (10214, 10215);
DELETE FROM `npc_text_broadcast_text` WHERE `Id` IN (10214, 10215);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(10214, 1, 18596),
(10215, 1, 18597);

UPDATE `gossip_menu` SET `condition_id`=107 WHERE `entry`=8218 AND `text_id`=10215;

-- Max Luna
UPDATE `creature_template` SET `GossipMenuId`=8218 WHERE `Entry`=19859;

-- "Lefty" Puddemup
UPDATE `creature_template` SET `NpcFlags`=`NpcFlags`|1 WHERE `Entry`=19858;

-- Steamwheedle Cartel's Arena Organizers
DELETE FROM `npc_text` WHERE `ID`=10608;
DELETE FROM `npc_text_broadcast_text` WHERE `Id`=10608;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(10608, 1, 19850);

-- "King" Dond, Steamwheedle Sam and Bip Nigstrom
UPDATE `creature_template` SET `GossipMenuId`=8494 WHERE `Entry` IN (18897, 19856, 19861);

