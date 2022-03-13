UPDATE `gossip_menu` SET `condition_id`=1605 WHERE `entry`=1301 AND `text_id`=1934;

DELETE FROM `conditions` WHERE `condition_entry`=1605;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1605, 7, 197, 230, 0, 0, 0, 'Has Tailoring at 230 or above');

