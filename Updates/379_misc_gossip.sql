-- Jira report https://jira.vengeancewow.com/browse/TBC-1628

UPDATE creature_template SET GossipMenuId=4308 WHERE entry=12656; -- Thamarian (Data from classic-db)
UPDATE creature_template SET GossipMenuId=10482 WHERE entry=3701; -- Tharnariun Treetender (Data from classic-db)
UPDATE creature_template SET GossipMenuId=50001 WHERE entry=3693; -- Terenthis
UPDATE creature_template SET GossipMenuId=50002 WHERE entry=3692; -- Volcor

DELETE FROM `gossip_menu` WHERE `entry` IN(10482,50001,50002);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(10482, 769, 0, 0), -- Tharnariun Treetender (Data from classic-db)
(50001, 3334, 0, 0), -- Terenthis (Text from classic-db, gossip ID unknown)
(50002, 3214, 0, 0); -- Volcor (Text from wotlk-db, gossip ID unknown)


