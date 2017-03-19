-- q.11875 'Gaining the Advantage'
-- you have to be a master miner/skinner/herbalist
DELETE FROM conditions WHERE condition_entry BETWEEN 1168 AND 1172;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
('1168', '17', '28695', '0'), 
('1169', '17', '29354', '0'), 
('1170', '17', '32678', '0'), 
('1171', '-2', '1169', '1168'), 
('1172', '-2', '1171', '1170');
UPDATE quest_template SET RequiredCondition = 1172 WHERE entry = 11875;


