-- Mounted Ironforge Mountaineer (Entry: 12996)
-- Dun Morogh Mountaineer (Entry: 13076)
UPDATE creature_template SET GossipMenuId=3533 WHERE entry IN (12996,13076);

-- Lunaraa (Entry: 16755)
UPDATE creature_template SET GossipMenuId=4824 WHERE entry=16755;

-- Birgitte Cranston (Entry: 5957)
DELETE FROM npc_gossip WHERE npc_guid=24768;

DELETE FROM gossip_menu WHERE entry=4825;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(4825, 5881, 18),
(4825, 5882, 23);

DELETE FROM gossip_menu_option WHERE menu_id=4825;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4825, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, '', 18);

-- Noellene (Entry: 16275)
-- Master Pyreanor (Entry: 23128)
UPDATE creature_template SET GossipMenuId=6647 WHERE entry IN (16275,23128);

-- Thane Yoregar (Entry: 21773)
-- Lost item option thanks to TrinityCore
DELETE FROM npc_gossip WHERE npc_guid=76075;

UPDATE creature_template SET GossipMenuId=8457 WHERE entry=21773;

DELETE FROM gossip_menu WHERE entry=8457;
INSERT INTO gossip_menu (entry, text_id) VALUES
(8457, 10563);

DELETE FROM gossip_menu_option WHERE menu_id=8457;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8457, 0, 0, 'I need another Wildhammer Flare Gun, Thane.', 1, 1, 0, 0, 8457, 0, 0, '', 3698);

DELETE FROM conditions WHERE condition_entry IN (3693,3694,3695,3696,3697,3698);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3693, 24, 31310, 1, 'Player does not have item Wildhammer Flare Gun'),
(3694, 8, 10772, 0, 'Quest 10772 The Path of Conquest rewarded'),
(3695, 8, 10776, 0, 'Quest 10776 Dissension Amongst the Ranks rewarded'),
(3696, -3, 3695, 0, 'Not 3695'),
(3697, -1, 3694, 3693, '3694 AND 3693'),
(3698, -1, 3697, 3696, '3697 AND 3696');

DELETE FROM dbscripts_on_gossip WHERE id=8457;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8457, 0, 17, 31310, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Wildhammer Flare Gun');

-- Overlord Or'barokh (Entry: 21769)
-- Lost item option thanks to TrinityCore
DELETE FROM npc_gossip WHERE npc_guid=76072;

UPDATE creature_template SET GossipMenuId=8443 WHERE entry=21769;

DELETE FROM gossip_menu WHERE entry=8443;
INSERT INTO gossip_menu (entry, text_id) VALUES
(8443, 10549);

DELETE FROM gossip_menu_option WHERE menu_id=8443;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8443, 0, 0, 'I''ve lost my Kor''kron Flare Gun, sir. May I have another?', 1, 1, 0, 0, 8443, 0, 0, '', 3704);

DELETE FROM conditions WHERE condition_entry IN (3699,3700,3701,3702,3703,3704);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3699, 24, 31108, 1, 'Player does not have item Kor''kron Flare Gun'),
(3700, 8, 10750, 0, 'Quest 10750 The Path of Conquest rewarded'),
(3701, 8, 10769, 0, 'Quest 10769 Dissension Amongst the Ranks rewarded'),
(3702, -3, 3701, 0, 'Not 3701'),
(3703, -1, 3700, 3699, '3700 AND 3699'),
(3704, -1, 3703, 3702, '3703 AND 3702');

DELETE FROM dbscripts_on_gossip WHERE id=8443;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8443, 0, 17, 31108, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Kor''kron Flare Gun');

-- Ravandwyr (Entry: 19217)
-- Lost item option thanks to TrinityCore
DELETE FROM npc_gossip WHERE npc_guid=68747;

UPDATE creature_template SET GossipMenuId=7981 WHERE entry=19217;

DELETE FROM gossip_menu WHERE entry=7981;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(7981, 9826, 0),
(7981, 9828, 3706);

DELETE FROM conditions WHERE condition_entry IN (3705,3706,3707,3708,3709,3710);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3705, 24, 28455, 1, 'Player does not have item Archmage Vargoth''s Staff'),
(3706, 8, 10174, 0, 'Quest 10750 Curse of the Violet Tower rewarded'),
(3707, 8, 10209, 0, 'Quest 10209 Summoner Kanthin''s Prize rewarded'),
(3708, -3, 3707, 0, 'Not 3707'),
(3709, -1, 3706, 3705, '3706 AND 3705'),
(3710, -1, 3709, 3708, '3709 AND 3708');

DELETE FROM gossip_menu_option WHERE menu_id=7981;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7981, 0, 0, 'I''ve lost Archmage Vargoth''s Staff. Can you replace it?', 1, 1, 0, 0, 7981, 0, 0, '', 3710);

DELETE FROM dbscripts_on_gossip WHERE id=7981;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7981, 0, 17, 28455, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give Archmage Vargoth''s Staff');

-- Eversong Partygoer (Entry: 17056)
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=17056);

UPDATE creature_template SET GossipMenuId=7346 WHERE entry=17056;

DELETE FROM conditions WHERE condition_entry=3711;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3711, 2, 23500, 1, 'Player has item Saltheril''s Haven Party Invitation');

DELETE FROM gossip_menu WHERE entry=7346;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(7346, 8759, 0),
(7346, 8760, 3711);

-- Mosswood the Ancient (Entry: 22053)
DELETE FROM npc_gossip WHERE npc_guid=77277;

UPDATE creature_template SET GossipMenuId=8508 WHERE entry=22053;

DELETE FROM gossip_menu WHERE entry=8508;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(8508, 10640, 0),
(8508, 10641, 3712);

DELETE FROM conditions WHERE condition_entry=3712;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3712, 8, 10771, 0, 'Quest 10771 From the Ashes rewarded');

-- Chief Researcher Amereldine (Entry: 18816)
UPDATE creature_template SET GossipMenuId=7838, NpcFlags=NpcFlags|1 WHERE entry=18816;

DELETE FROM gossip_menu WHERE entry=7838;
INSERT INTO gossip_menu (entry, text_id) VALUES
(7838, 9595);

-- Overseer Seylanna (Entry: 20397)
UPDATE creature_template SET GossipMenuId=8046 WHERE entry=20397;

DELETE FROM gossip_menu WHERE entry IN (8045,8046);
INSERT INTO gossip_menu (entry, text_id) VALUES
(8045, 9934),
(8046, 9931);

DELETE FROM gossip_menu_option WHERE menu_id=8046;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8046, 0, 0, 'Where did this technology come from?', 1, 1, 8045, 0, 0, 0, 0, '', 0);

-- Commander Dawnforge (Entry: 19831)
UPDATE creature_template SET GossipMenuId=8041 WHERE entry=19831;

DELETE FROM gossip_menu WHERE entry IN (8041,8042);
INSERT INTO gossip_menu (entry, text_id) VALUES
(8041, 9929),
(8042, 9930);

DELETE FROM gossip_menu_option WHERE menu_id=8041;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8041, 0, 0, 'Who attacked Manaforge Duro?', 1, 1, 8042, 0, 0, 0, 0, '', 0);

-- Arcanist Ardonis (Entry: 19830)
UPDATE creature_template SET GossipMenuId=8040 WHERE entry=19830;

DELETE FROM gossip_menu WHERE entry IN (8039,8040);
INSERT INTO gossip_menu (entry, text_id) VALUES
(8039, 9927),
(8040, 9926);

DELETE FROM gossip_menu_option WHERE menu_id=8040;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8040, 0, 0, 'Ultris?', 1, 1, 8039, 0, 0, 0, 0, '', 0);

-- Amin (Entry: 16703)
UPDATE creature_template SET GossipMenuId=8379 WHERE entry=16703;

-- Zebig (Entry: 18752)
-- Felannia (Entry: 18753)
UPDATE creature_template SET GossipMenuId=8760 WHERE entry IN (18752,18753);


