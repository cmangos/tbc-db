UPDATE gameobject_template SET data3='10219',type=2,data1=0 WHERE entry=181606; -- change GO to questgiver, remove redundant quest list, set correct gossip option
DELETE FROM gossip_menu_option where menu_id=20282;
DELETE FROM gossip_menu where entry=20282;
UPDATE gossip_menu SET script_id=1021901 WHERE entry IN(10219);
UPDATE gossip_menu_option SET action_script_id=1021902 WHERE menu_id IN(10219);
DELETE FROM dbscripts_on_gossip where id in(196608,196609);
DELETE FROM dbscripts_on_gossip where id in(1021901,1021902);
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1021901', '1', '10', '17085', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '-1323.91', '4042.45', '116.626', '0.296706', 'Summon aeranas'),
('1021901', '0', '31', '17085', '20', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', 'Check for Aeranas'),
('1021902', '0', '0', '0', '0', '0', '17085', '20', '7', '2000005784', '0', '0', '0', '0', '0', '0', '0', 'Aeranas SAY'),
('1021902', '6', '22', '14', '3', '0', '17085', '20', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Aeranas Change Faction');


