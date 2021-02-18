-- Fix Gavis Greyshield 23941 giving Quest Credit with s.42660 for q.27213
-- cant hit players when he executes it after turning friendly to players
UPDATE `dbscripts_on_relay` SET `priority` = 1 WHERE `id` = 10124 AND `delay` = 0 AND `priority` = 0 AND `datalong` != 42660;

