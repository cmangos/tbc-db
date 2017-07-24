UPDATE `creature_template` SET `gossipmenuid`=7601 WHERE `entry`=18013; -- Shadow Hunter Denjai
UPDATE `creature_template` SET `gossipmenuid`=7602 WHERE `entry`=18014; -- Witch Doctor Torgash
UPDATE `creature_template` SET `gossipmenuid`=7603 WHERE `entry`=18017; -- Seer Janidi
UPDATE `creature_template` SET `gossipmenuid`=7608 WHERE `entry`=18015; -- Gambarinka
UPDATE `creature_template` SET `gossipmenuid`=7609 WHERE `entry`=18018; -- Zurjaya

DELETE FROM `gossip_menu` WHERE `entry` IN (7601,7602,7603,7608,7609);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(7601, 9248), -- Shadow Hunter Denjai
(7602, 9249), -- Witch Doctor Torgash
(7603, 9250), -- Seer Janidi
(7608, 9259), -- Gambarinka
(7609, 9260); -- Zurjaya

