-- Xar'Ti 7953
-- .mod rep 530 43000
-- gossip corrected (V2) - thx @lixiaozheng for noticing
-- https://github.com/cmangos/classic-db/commit/23d5e8695cf780864066cdd9eaf5871814d58db8

-- I can teach you the finer points of Raptor Riding, provided you have enough gold to cover the lesson! - 4875
UPDATE gossip_menu SET condition_id=1082 WHERE entry = 4022 AND text_id=4875; -- 810 (I can Teach you for money text, being troll or being exalted)

-- You need to be exalted with the trolls of the Darkspear tribe before I will teach you a riding skill, $c. - 5865
UPDATE gossip_menu SET condition_id=9038 WHERE entry = 4022 AND text_id=5865; -- 0 (Not Exalted or Not Troll denial text)

-- I seek training to ride a steed. (https://www.wowhead.com/tbc/npc=7953/xarti#comments:id=129990)
UPDATE gossip_menu_option SET condition_id=1082 WHERE `id` = 0 AND menu_id=4022; -- 810 -> (Has Minimum Rank Exalted With Faction ID: 530) OR (Player RaceMask: 128)

-- CLASSIC + WOTLK
-- 842	14	128	0	0	0	0	
-- 810	5	530	7	0	0	0	

-- TBC
-- 300	14	128	0	0	0	0	Player RaceMask: 128
-- 268	5	530	7	0	0	0	Has Minimum Rank Exalted With Faction ID: 530

-- NEW
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 9035 AND 9038;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
-- (9035, -2, 268, 300, 0, 0, 0, '(Has Minimum Rank Exalted With Faction ID: 530) OR (Player RaceMask: 128)'), -- 268,300 in tbc
-- 1082	-2	268	300	0	0	0	(Has Minimum Rank Exalted With Faction ID: 530 OR Player RaceMask: 128)

(9036, 14, 128, 0, 0, 0, 1, 'NOT (Player RaceMask: 128)'),
(9037, 5, 530, 7, 0, 0, 1, 'NOT (Has Minimum Rank Exalted With Faction ID: 530)'),
(9038, -1, 9036, 9037, 0, 0, 0, 'NOT (NOT (Player RaceMask: 128)) AND (NOT (Has Minimum Rank Exalted With Faction ID: 530))');

