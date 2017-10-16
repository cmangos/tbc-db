-- Fixed miscellaneous database errors

-- Fixed addon applying triggered spell instead of aura
UPDATE creature_template_addon SET auras='8876' WHERE entry=14882;

-- Removed unused linking
DELETE FROM creature_linking_template WHERE entry IN (17647, 17996);

