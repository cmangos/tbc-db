DELETE FROM gossip_menu WHERE entry IN(543);
INSERT INTO gossip_menu(entry,text_id) VALUES
(543,1060);

DELETE FROM gossip_menu WHERE entry IN(542);
INSERT INTO gossip_menu(entry,text_id) VALUES
(542,1059);

DELETE FROM gossip_menu WHERE entry IN(2985);
INSERT INTO gossip_menu(entry,text_id) VALUES
(2985,3677);

DELETE FROM gossip_menu WHERE entry IN(6030);
INSERT INTO gossip_menu(entry,text_id) VALUES
(6030,7181);

DELETE FROM gossip_menu WHERE entry IN(7182);
INSERT INTO gossip_menu(entry,text_id) VALUES
(6029,7182);


-- tbc+
DELETE FROM gameobject WHERE guid IN(150001) AND id IN(182066);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('150001', '182066', '530', '1', '-216.416', '5441.638', '22.15844', '-2.181661', '0', '0', '0', '0', '180', '180', '100', '1');

DELETE FROM gossip_menu WHERE entry IN(7570);
INSERT INTO gossip_menu(entry,text_id) VALUES
(7570,9197);

DELETE FROM gossip_menu WHERE entry IN(8373);
INSERT INTO gossip_menu(entry,text_id) VALUES
(8373,10448);
