-- Add condition for Akoru the Firecaller 20678 q.10368 gossip_menu_option
DELETE FROM `conditions` WHERE `condition_entry` = 10993;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(10993, 9, 10368, 1, 'Quest ID 10368 Taken AND NOT Completed');

UPDATE `gossip_menu_option` SET `condition_id` = 10993 WHERE `menu_id` = 8163;

-- He should pro also run away or do more then just giving quest credit and say something

