-- Engineer "Spark" Overgrind c.17243 should only fight the player if he/she is on quest Show Gnomercy q.9537
DELETE FROM conditions WHERE condition_entry=10228 AND `value1`=9537;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(10228, 9, 9537, 0, 'Quest ID 9537 Taken');
UPDATE gossip_menu_option SET condition_id=10228 WHERE menu_id=7426 AND id=0;

