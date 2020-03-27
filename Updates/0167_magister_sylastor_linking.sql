DELETE FROM creature_linking WHERE guid IN (152569,152570,86594);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(152569, 86594, 3),
(152570, 86594, 3);


