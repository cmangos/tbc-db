UPDATE gossip_menu_option SET condition_id=1150,action_menu_id=-1 WHERE menu_id = 7722 AND id=0; -- horde
UPDATE gossip_menu_option SET condition_id=1149,action_menu_id=-1 WHERE menu_id = 7724 AND id=0; -- ally
-- special World PvP condition
DELETE FROM conditions WHERE condition_entry IN(1149,1150);
INSERT INTO conditions VALUES
(1149,38,3521,0),
(1150,38,3521,1);