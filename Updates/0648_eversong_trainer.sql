-- Fix 2 Profession Trainers - missing 'Train me.' option in gossip menu, always opened vendor list before

-- Botanist Tyniarrel - 16367
-- Sempstress Ambershine - 16366
DELETE FROM gossip_menu_option WHERE menu_id = 7524 AND id = 1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`) VALUES ('7524', '1', '3', 'Train me.', '3266', '5', '16');