UPDATE `gossip_menu` SET `condition_id`=1606 WHERE `entry`=1961 AND `text_id`=2634;
DELETE FROM `conditions` WHERE `condition_entry`=1606;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1606, 8, 3845, 0, 0, 0, 0, 'Quest \'It\'s a Secret to Everybody\' is rewarded');

