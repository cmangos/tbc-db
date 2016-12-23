-- Fix Windcaller Claw Gossip in Underbog
DELETE FROM `npc_gossip` WHERE `npc_guid`=56862 AND `textid`=9125;
insert into `npc_gossip` (`npc_guid`, `textid`) values('56862','9125');


