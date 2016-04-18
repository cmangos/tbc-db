-- =========================================================================================
-- Fix Dark Portal Flight Path Learning (Requires Core Fix To Propderly Implement Blizzlike)
-- =========================================================================================
UPDATE gossip_menu_option SET condition_id=0 WHERE (menu_id IN(7939,7938)) AND id=0;