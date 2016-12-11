-- =======================================
-- Fix Some Backported Conditions from UDB
-- =======================================
UPDATE gossip_menu_option SET condition_id=139 WHERE menu_id IN (7437,7566) AND condition_id=543;


