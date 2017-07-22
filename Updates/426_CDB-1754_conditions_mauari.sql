-- Fixed conditions for Witch Doctor Mau'ari gossips
DELETE FROM `conditions` WHERE `condition_entry` IN(523,524);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(523, 23, 12384, 1), -- Has item 12384
(524, -1, 342, 523); -- Completed quest 975 AND Has item 12384

UPDATE `gossip_menu_option` SET `condition_id`=524 WHERE `menu_id`=2703 AND `id`=0; -- Completed quest 975 AND Has item 12384
UPDATE `gossip_menu_option` SET `condition_id`=342 WHERE `menu_id`=2703 AND `id`=1; -- Completed quest 975

