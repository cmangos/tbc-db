INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(10101, 17, 27090, 0, 'Player Has Learned Spell: 27090'),
(10102, 17, 33717, 0, 'Player Has Learned Spell: 33717'),
(10103, -1, 10101, 10102, '(Player Has Learned Spell: 27090 AND Player Has Learned Spell: 33717)');

UPDATE `npc_trainer` SET `condition_id` = 10103 WHERE `spell` = 43987;
UPDATE `npc_trainer_template` SET `condition_id` = 10103 WHERE `spell` = 43987;
