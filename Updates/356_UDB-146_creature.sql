-- Gossips in 'Forest Song' 

-- Architect Nemos
UPDATE creature_template SET GossipMenuId = 7404 WHERE entry = 17291;
DELETE FROM gossip_menu WHERE entry = 7404; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7404, 8873, 0, 0);

-- Artificer
UPDATE creature_template SET GossipMenuId = 7382 WHERE entry = 17406;
DELETE FROM gossip_menu WHERE entry = 7382; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7382, 8838, 0, 0);

-- Vindicator Vedaar <Hand of Argus>
UPDATE creature_template SET GossipMenuId = 7407 WHERE entry = 17303;
DELETE FROM gossip_menu WHERE entry = 7407; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7407, 8876, 0, 0);

-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
UPDATE creature_template SET GossipMenuId = 7405 WHERE entry = 17287;
DELETE FROM gossip_menu WHERE entry = 7405; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7405, 8874, 0, 0);

-- Gnarl <Ancient of War>
UPDATE creature_template SET GossipMenuId = 8080 WHERE entry = 17310;
DELETE FROM gossip_menu WHERE entry = 8080; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8080, 9986, 0, 0);


