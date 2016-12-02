-- Silvermoon City

-- Class Trainers in Sunstrider Isle
-- Julia Sunstriker <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 15279;
-- Jesthenis Sunstriker <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 15280;
-- Matron Arena <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 15284;
-- Ranger Sallina <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 15513;
-- Pathstalker Kariel <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 15285;
-- Summoner Teli'Larien <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 6628 WHERE Entry = 15283;
DELETE FROM gossip_menu WHERE entry = 6628; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6628, 7882, 0, 19),
(6628, 7903, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6628;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6628,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,'',19),
(6628,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',139),
(6628,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642);

-- Well Watcher Solanian
UPDATE creature_template SET GossipMenuId = 6569 WHERE Entry = 15295;
DELETE FROM gossip_menu WHERE entry = 6569; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6569, 7784, 0, 0);

-- Justin's Bunny Channeler
-- Honor Hold Target Dummy Right -- correct spawn point
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18563;
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (66727,66728);
-- Justin's Bunny Target
UPDATE creature_template SET InhabitType = 4 WHERE entry = 18650;
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid = 66725;


