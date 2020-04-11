-- Delete gossip_menu_options for Dual Talent Specialization from class trainers in Silvermoon City
-- Apparently they believe dual spec came out in TBC

DELETE FROM gossip_menu_option WHERE menu_id IN(6648,6628,6649,6650,7437,7566) AND id=2; -- Delete menu option
DELETE FROM gossip_menu WHERE entry=10371; -- Delete the action_menu
DELETE FROM npc_text WHERE id=14391; -- Delete the text

