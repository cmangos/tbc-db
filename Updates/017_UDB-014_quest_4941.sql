-- Eitrigg's Wisdom(q.4941)
SET @GOSSIP = 2901;
-- Add gossip options for each menu id
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN @GOSSIP AND @GOSSIP+7;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(@GOSSIP, 0, 0, 'Hello, Eitrigg. I bring news from Blackrock Spire.', 1, 1, @GOSSIP+1, 0, 0, 0, 0, '',973),
(@GOSSIP+1, 0, 0, 'There is only one Warchief, Eitrigg!', 1, 1, @GOSSIP+2, 0, 0, 0, 0, '',0),
(@GOSSIP+2, 0, 0, 'What do you mean?', 1, 1, @GOSSIP+3, 0, 0, 0, 0, '',0),
(@GOSSIP+3, 0, 0, 'Hearthglen? But...', 1, 1, @GOSSIP+4, 0, 0, 0, 0, '',0),
(@GOSSIP+4, 0, 0, 'I will take you up on that offer, Eitrigg.', 1, 1, @GOSSIP+5, 0, 0, 0, 0, '',0),
(@GOSSIP+5, 0, 0, 'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.', 1, 1, @GOSSIP+6, 0, 0, 0, 0, '',0),
(@GOSSIP+6, 0, 0, 'Perhaps there exists a way?', 1, 1, @GOSSIP+7, 0, 0, 0, 0, '',0),
(@GOSSIP+7, 0, 0, 'As you wish, Eitrigg.', 1, 1, -1, 0, @GOSSIP+7, 0, 0, '',0);
-- Add gossip menus (text values already in db)
DELETE FROM gossip_menu WHERE entry BETWEEN @GOSSIP+1 AND @GOSSIP+7;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(@GOSSIP+1, 3574),
(@GOSSIP+2, 3575),
(@GOSSIP+3, 3576),
(@GOSSIP+4, 3577),
(@GOSSIP+5, 3578),
(@GOSSIP+6, 3579),
(@GOSSIP+7, 3580);
DELETE FROM conditions WHERE condition_entry = 973;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(973, 9, 4941, 0);
DELETE FROM dbscripts_on_gossip WHERE id = @GOSSIP+7;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(@GOSSIP+7,0,7,4941,20,0,0,0,0,0,0,0,0,0,0,0,'');

