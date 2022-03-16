DELETE FROM `conditions` WHERE `condition_entry`=11159;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(11159, 7, 202, 200, 0, 0, 0, 'Has Engineering at 200 or higher');

UPDATE `conditions` SET `value2`=11159, `comments`="((NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222) AND (Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded))) AND Has Skill ID 202, Minimum Skill Value 200" WHERE `condition_entry`=11004;

