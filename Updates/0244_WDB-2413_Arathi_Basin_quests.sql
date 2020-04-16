-- Quests 'Cut Arathor Supply Lines' removed from World of Warcraft in patch 2.4.0.
DELETE FROM creature_questrelation WHERE quest IN (8123,8160,8161,8162,8299); 
DELETE FROM creature_involvedrelation WHERE quest IN (8123,8160,8161,8162,8299);
