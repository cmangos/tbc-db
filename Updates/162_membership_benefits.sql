DELETE FROM creature_questrelation WHERE quest IN(9884,9885,9886,9887);
INSERT INTO creature_questrelation VALUES
(18265,9884),
(18265,9885),
(18265,9886),
(18265,9887);
DELETE FROM creature_involvedrelation WHERE quest IN(9884,9885,9886,9887);
INSERT INTO creature_involvedrelation VALUES
(18265,9884),
(18265,9885),
(18265,9886),
(18265,9887);


DELETE FROM creature_questrelation WHERE quest=8417; -- warrior quest proper questgivers
INSERT INTO creature_questrelation VALUES
(3354,8417),
(4593,8417),
(5113,8417),
(5479,8417),
(7315,8417),
(17120,8417),
(3041,8417);


