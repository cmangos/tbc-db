-- Clear dbscripts which use delay as priority (delay 1-100)
-- https://github.com/cmangos/tbc-db/blob/bb12637676b39aefddc8b00f879a8a51516a366d/Updates/0243_WDB-2392_quest_9457.sql#L4
UPDATE `dbscripts_on_event` SET delay = 0 WHERE id = 10554 AND `delay` = 10;
UPDATE `dbscripts_on_event` SET delay = 0, `priority` = 1 WHERE id = 10554 AND `delay` = 100;

-- https://github.com/cmangos/tbc-db/blob/bb12637676b39aefddc8b00f879a8a51516a366d/Updates/0023_WDB-1976_quest_10273.sql#L18
UPDATE `dbscripts_on_gossip` SET delay = 0 WHERE id = 807101 AND `delay` = 1 AND `command` = 21;
UPDATE `dbscripts_on_gossip` SET delay = 0, `priority` = 1 WHERE id = 807101 AND `delay` = 1 AND `command` = 29;
UPDATE `dbscripts_on_gossip` SET delay = 0, `priority` = 2 WHERE id = 807101 AND `delay` = 1 AND `command` = 0;
UPDATE `dbscripts_on_gossip` SET delay = 0, `priority` = 3 WHERE id = 807101 AND `delay` = 2 AND `command` = 20;

-- https://github.com/cmangos/tbc-db/blob/126b9f441d90ed10b2bbd089881af1fb94ff717a/Updates/0332_WDB-3090_q.997.sql#L5
UPDATE `dbscripts_on_quest_end` SET delay = 0, `priority` = 1 WHERE id = 997 AND `delay` = 1 AND `command` = 29;
UPDATE `dbscripts_on_quest_end` SET delay = 0, `priority` = 2 WHERE id = 997 AND `delay` = 10 AND `command` = 3;
UPDATE `dbscripts_on_quest_end` SET delay = 0, `priority` = 3 WHERE id = 997 AND `delay` = 100 AND `command` = 0;

-- https://github.com/cmangos/tbc-db/blob/bb12637676b39aefddc8b00f879a8a51516a366d/Updates/0328_WDB-2849_infernal_attacker.sql#L11
UPDATE `dbscripts_on_relay` SET delay = 0, `priority` = 0 WHERE id = 19998 AND `delay` = 100 AND `command` = 31;

