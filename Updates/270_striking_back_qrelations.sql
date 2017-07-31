-- [Midsummer Fire Festival] Questline "Striking Back"
DELETE FROM conditions WHERE condition_entry BETWEEN 1200 AND 1215;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1200, 15, 22, 1),
(1201, 15, 28, 2),
(1202, -1, 1201, 1200),
(1203, 15, 29, 1),
(1204, 15, 38, 2),
(1205, -1, 1204, 1203),
(1206, 15, 39, 1),
(1207, 15, 48, 2),
(1208, -1, 1207, 1206),
(1209, 15, 49, 1),
(1210, 15, 55, 2),
(1211, -1, 1210, 1209),
(1212, 15, 56, 1),
(1213, 15, 63, 2),
(1214, -1, 1213, 1212),
(1215, 15, 64, 1);

UPDATE quest_template SET RequiredCondition = 1202 WHERE entry = 11917;
UPDATE quest_template SET RequiredCondition = 1205 WHERE entry = 11947;
UPDATE quest_template SET RequiredCondition = 1208 WHERE entry = 11948;
UPDATE quest_template SET RequiredCondition = 1211 WHERE entry = 11952;
UPDATE quest_template SET RequiredCondition = 1214 WHERE entry = 11953;
UPDATE quest_template SET RequiredCondition = 1215 WHERE entry = 11954;
