-- Dire Maul:
-- Patch 2.1.0 (22-May-2007): The three Guards no longer buff players above level 63.
UPDATE gossip_menu_option SET condition_id=1213 WHERE menu_id IN(5735,5731,5733); -- Use already existing condition

