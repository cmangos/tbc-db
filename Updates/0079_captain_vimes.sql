-- Quest The Orc Report (1219)
-- You should be able to get this quest from Lieutenant Aden
DELETE FROM creature_involvedrelation WHERE quest = 1219;
INSERT INTO creature_involvedrelation (`id`, `quest`) VALUES 
(23951, 1219); -- Lieutenant Aden
 
-- Quest Captain Vimes (1220)
-- You should be able to get tgus quest from Lieutenant Aden
DELETE FROM creature_questrelation WHERE quest = 1220;
INSERT INTO creature_questrelation (`id`, `quest`) VALUES 
(23951, 1220); -- Lieutenant Aden