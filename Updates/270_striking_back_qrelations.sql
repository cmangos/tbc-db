-- [Midsummer Fire Festival] Questline "Striking Back"
DELETE FROM conditions WHERE condition_entry BETWEEN 1126 AND 1141;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1126, 15, 22, 1),
(1127, 15, 28, 2),
(1128, -1, 1127, 1126),
(1129, 15, 29, 1),
(1130, 15, 38, 2),
(1131, -1, 1130, 1129),
(1132, 15, 39, 1),
(1133, 15, 48, 2),
(1134, -1, 1133, 1132),
(1135, 15, 49, 1),
(1136, 15, 55, 2),
(1137, -1, 1136, 1135),
(1138, 15, 56, 1),
(1139, 15, 63, 2),
(1140, -1, 1139, 1138),
(1141, 15, 64, 1);

UPDATE quest_template SET RequiredCondition = 1128 WHERE entry = 11917;
UPDATE quest_template SET RequiredCondition = 1131 WHERE entry = 11947;
UPDATE quest_template SET RequiredCondition = 1134 WHERE entry = 11948;
UPDATE quest_template SET RequiredCondition = 1137 WHERE entry = 11952;
UPDATE quest_template SET RequiredCondition = 1140 WHERE entry = 11953;
UPDATE quest_template SET RequiredCondition = 1141 WHERE entry = 11954;
