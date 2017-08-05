-- q.961 'Onu is meditating'
-- This quest shows how blizz tried to handle q. item missing before gossip_options were made. (why it was never updated?)
-- thanks to @killerwifes condition system, we can make this correctly.
DELETE FROM creature_questrelation WHERE id = 3616 AND quest = 961;
INSERT INTO creature_questrelation (id, quest) values
(3616,961); 
DELETE FROM creature_involvedrelation WHERE id = 3616 AND quest = 961; 
INSERT INTO creature_involvedrelation (id, quest) values
(3616,961);

-- Q should become available only if q.944 'The Master's Glaive' is active & q. item is missing
DELETE FROM conditions WHERE condition_entry BETWEEN 1222 AND 1224;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1222, 9, 944, 0),
(1223, 16, 5251, 1),
(1224, -1, 1223, 1222);
UPDATE quest_template SET RequiredCondition = 1224 WHERE entry = 961;
-- Q. must be repeatable
UPDATE quest_template SET SpecialFlags = 1 WHERE entry = 961;
