-- Link remaining two pairs of Fleshbeasts following chess event
DELETE FROM creature_linking WHERE guid IN (85360,85361,85362,85363);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(85361,85362,3),
(85360,85363,3);

