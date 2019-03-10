-- Remove incorrect text from Leryda
-- text 10884 is empty too
-- https://github.com/mangosone/database/commit/2579ac1d6f02e919c3eb37e93cf876edde43e1e6
-- thanks @antisocial89
DELETE FROM `npc_text` WHERE `id`=10884;
DELETE FROM `gossip_menu` WHERE `entry`=8441 AND `text_id`=10884;

