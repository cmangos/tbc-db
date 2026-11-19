UPDATE creature_template SET GossipMenuId=26751 WHERE entry=26075;
DELETE FROM `npc_text_broadcast_text` WHERE `Id` IN (39288);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(39288, 1, 39288);