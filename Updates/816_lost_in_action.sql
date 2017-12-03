UPDATE creature_template SET GossipMenuId=7521 WHERE entry IN(17885);
UPDATE creature_template SET GossipMenuId=7525 WHERE entry IN(17894);

DELETE FROM gossip_menu WHERE entry IN(7521,7525);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('7521', '9121', '7521', '0'),
('7525', '9125', '7525', '0');

DELETE FROM dbscripts_on_gossip WHERE id IN(7521,7525);
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('7521', '0', '8', '17885', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'killcredit'),
('7525', '0', '8', '17894', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'killcredit');


