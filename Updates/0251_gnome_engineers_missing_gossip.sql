-- Delete wrong npc_gossip...
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43; -- Hey, don't open the cage!  Okay?$B$BThese ogres have got me right where I want them.
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41; -- Greetings $N

UPDATE `creature_template` SET `GossipMenuId`=4150 WHERE `Entry`=5174;
UPDATE `creature_template` SET `GossipMenuId`=4147 WHERE `Entry`=11029;

