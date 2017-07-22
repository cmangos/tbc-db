-- Pandemonius - Mana Tombs (18341 is N, 20267 is H)

UPDATE creature_template SET DamageSchool='5' WHERE Entry='20267';

-- Pandemonius Trash Linking
DELETE FROM creature_linking WHERE master_guid='91163';
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83309, 91163, 1),
(83310, 91163, 1),
(83311, 91163, 1),
(83312, 91163, 1),
(83313, 91163, 1),
(83314, 91163, 1),
(83315, 91163, 1),
(83316, 91163, 1),
(83317, 91163, 1),
(83318, 91163, 1),
(83319, 91163, 1),
(83320, 91163, 1),
(83321, 91163, 1);

