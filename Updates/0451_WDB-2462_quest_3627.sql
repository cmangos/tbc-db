-- q.3627 'Uniting the Shattered Amulet'
-- https://gitlab.com/lights-vengeance/issues/-/issues/1368
-- The Fallen Hero Of The Horde 7572 - https://classic.wowhead.com/npc=7572/fallen-hero-of-the-horde

-- targets corrected
DELETE FROM spell_script_target WHERE entry = 12938;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(12938,1,7664,0), -- Razelikh the Defiler (this one was missing in tbc-db)
(12938,1,7665,0), -- Grol the Destroyer
(12938,1,7666,0), -- Archmage Allistarj
(12938,1,7667,0); -- Lady Sevine

-- add missing option
DELETE FROM gossip_menu_option WHERE menu_id = 840 AND id = 3;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(840,3,0,'I have destroyed my Azsharite weaponry! I need your assistance in defeating the triad of power.',1,1,-1,0,84002,0,0,NULL,3718);

-- quest req. is only needed. (weapon can still be in players inventory)
-- only one item can be given to player
DELETE FROM conditions WHERE condition_entry BETWEEN 3716 AND 3718;
INSERT INTO conditions (condition_entry, type, value1, value2,flags) VALUES
(3716,9,3627,1,0), -- quest is taken but not completed
(3717,23,11582,1,1), -- player has less than 1 item (including inventory stored in the bank)
(3718,-1,3717,3716,0);

DELETE FROM dbscripts_on_gossip WHERE id=84002;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(84002,0,15,15247,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Conjure Fel Salve'); -- only executes once every 30secs (CategoryRecoveryTime: 30000 ms)

